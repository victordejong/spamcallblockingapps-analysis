package zendesk.support.request;

import android.content.Intent;
import android.net.Uri;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.design.widget.TextInputLayout;
import android.support.p001v4.util.PatternsCompat;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.MenuItem;
import android.view.View;
import android.widget.EditText;
import com.zendesk.sdk.C1790R;
import com.zendesk.util.CollectionUtils;
import com.zendesk.util.StringUtils;
import java.util.List;
import zendesk.belvedere.KeyboardHelper;
import zendesk.suas.Dispatcher;
import zendesk.suas.Listener;
import zendesk.suas.State;
import zendesk.suas.StateSelector;
import zendesk.support.request.RequestViewConversationsDisabled;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/ComponentInputForm.class */
public class ComponentInputForm implements Listener<InputFormModel>, RequestViewConversationsDisabled.MenuItemsDelegate, KeyboardHelper.Listener {
    private final ActionFactory actionFactory;
    private final AttachmentHelper attachmentHelper;
    private final Dispatcher dispatcher;
    private final EditText emailField;
    private final TextInputLayout emailLayout;
    private final Validator<String> emailValidator;
    private boolean inlineValidation = false;
    private final View logo;
    private final EditText messageField;
    private final TextInputLayout messageLayout;
    private final EditText nameField;
    private final TextInputLayout nameLayout;
    private MenuItem sendButton;

    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/ComponentInputForm$EditTextTextWatcher.class */
    private static class EditTextTextWatcher implements TextWatcher {
        private final ComponentInputForm componentInputForm;

        private EditTextTextWatcher(ComponentInputForm componentInputForm) {
            this.componentInputForm = componentInputForm;
        }

        static void install(ComponentInputForm componentInputForm, EditText... editTextArr) {
            for (EditText editText : editTextArr) {
                editText.addTextChangedListener(new EditTextTextWatcher(componentInputForm));
            }
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            if (this.componentInputForm.inlineValidation) {
                this.componentInputForm.updateEmailValidation();
            }
            this.componentInputForm.updateSendButton();
        }
    }

    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/ComponentInputForm$EmailFieldFocusListener.class */
    private static class EmailFieldFocusListener implements View.OnFocusChangeListener {
        private final ComponentInputForm componentInputForm;
        private final EditText editText;

        private EmailFieldFocusListener(ComponentInputForm componentInputForm, EditText editText) {
            this.componentInputForm = componentInputForm;
            this.editText = editText;
        }

        static void install(ComponentInputForm componentInputForm, EditText editText) {
            editText.setOnFocusChangeListener(new EmailFieldFocusListener(componentInputForm, editText));
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            if (!z && StringUtils.hasLength(this.editText.getText().toString())) {
                this.componentInputForm.updateEmailValidation();
                this.componentInputForm.updateSendButton();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/ComponentInputForm$InputFormModel.class */
    public static class InputFormModel {
        private final boolean hasIdentityEmailAddress;
        private final boolean hasIdentityName;
        private final boolean isLoading;
        private final boolean neverRequestEmail;
        private final String referrerUrl;
        private final boolean showZendeskLogo;

        InputFormModel(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, String str) {
            this.neverRequestEmail = z;
            this.hasIdentityEmailAddress = z2;
            this.hasIdentityName = z3;
            this.isLoading = z4;
            this.showZendeskLogo = z5;
            this.referrerUrl = str;
        }

        private boolean isEmailFieldEnabled() {
            return !this.hasIdentityEmailAddress && !this.neverRequestEmail;
        }

        private boolean isNameFieldEnabled() {
            return !this.hasIdentityName;
        }

        int getEmailFieldVisibility() {
            return isEmailFieldEnabled() ? 0 : 8;
        }

        int getLogoVisibility() {
            return isLogoEnabled() ? 0 : 8;
        }

        int getMessageFieldVisibility() {
            return 0;
        }

        int getNameFieldVisibility() {
            return isNameFieldEnabled() ? 0 : 8;
        }

        String getReferrerUrl() {
            return this.referrerUrl;
        }

        public boolean isLoading() {
            return this.isLoading;
        }

        boolean isLogoEnabled() {
            return this.showZendeskLogo;
        }
    }

    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/ComponentInputForm$InputFormSelector.class */
    static class InputFormSelector implements StateSelector<InputFormModel> {
        InputFormSelector() {
        }

        @Override // zendesk.suas.StateSelector
        @Nullable
        public InputFormModel selectData(@NonNull State state) {
            StateSettings settings = StateConfig.fromState(state).getSettings();
            return new InputFormModel(settings.isNeverRequestEmailOn(), settings.hasIdentityEmailAddress(), settings.hasIdentityName(), StateProgress.fomState(state).getRunningRequests() > 0, settings.isShowZendeskLogo(), settings.getReferrerUrl());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/ComponentInputForm$Validator.class */
    public interface Validator<T> {
        boolean isValid(T t);
    }

    ComponentInputForm(View view, EditText editText, TextInputLayout textInputLayout, EditText editText2, TextInputLayout textInputLayout2, Validator<String> validator, EditText editText3, TextInputLayout textInputLayout3, Dispatcher dispatcher, ActionFactory actionFactory, AttachmentHelper attachmentHelper) {
        this.logo = view;
        this.nameField = editText;
        this.emailField = editText2;
        this.messageField = editText3;
        this.nameLayout = textInputLayout;
        this.emailLayout = textInputLayout2;
        this.messageLayout = textInputLayout3;
        this.emailValidator = validator;
        this.dispatcher = dispatcher;
        this.actionFactory = actionFactory;
        this.attachmentHelper = attachmentHelper;
        EditTextTextWatcher.install(this, editText, editText2, editText3);
        EmailFieldFocusListener.install(this, editText2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ComponentInputForm create(View view, Dispatcher dispatcher, ActionFactory actionFactory, AttachmentHelper attachmentHelper) {
        Validator<String> validator = new Validator<String>() { // from class: zendesk.support.request.ComponentInputForm.1
            public boolean isValid(String str) {
                return PatternsCompat.EMAIL_ADDRESS.matcher(str).matches();
            }
        };
        TextInputLayout textInputLayout = (TextInputLayout) view.findViewById(C1790R.C1793id.request_name_layout);
        EditText editText = (EditText) view.findViewById(C1790R.C1793id.request_name_field);
        TextInputLayout textInputLayout2 = (TextInputLayout) view.findViewById(C1790R.C1793id.request_email_layout);
        EditText editText2 = (EditText) view.findViewById(C1790R.C1793id.request_email_field);
        TextInputLayout textInputLayout3 = (TextInputLayout) view.findViewById(C1790R.C1793id.request_message_layout);
        return new ComponentInputForm(view.findViewById(C1790R.C1793id.request_zendesk_logo), editText, textInputLayout, editText2, textInputLayout2, validator, (EditText) view.findViewById(C1790R.C1793id.request_message_field), textInputLayout3, dispatcher, actionFactory, attachmentHelper);
    }

    private boolean doFieldsContainText() {
        String obj = this.nameField.getText().toString();
        String obj2 = this.emailField.getText().toString();
        String obj3 = this.messageField.getText().toString();
        boolean z = true;
        boolean z2 = !isNameFieldVisible() || StringUtils.hasLength(obj);
        boolean z3 = !isEmailFieldVisible() || StringUtils.hasLength(obj2);
        boolean hasLength = StringUtils.hasLength(obj3);
        if (!z2 || !z3 || !hasLength) {
            z = false;
        }
        return z;
    }

    private boolean isEmailFieldVisible() {
        return this.emailLayout.getVisibility() == 0;
    }

    private boolean isEmailInputValid() {
        return !isEmailFieldVisible() || this.emailValidator.isValid(this.emailField.getText().toString());
    }

    private boolean isNameFieldVisible() {
        return this.nameLayout.getVisibility() == 0;
    }

    private void setSendButtonEnabled(boolean z) {
        if (this.sendButton != null) {
            int i = 255;
            if (!z) {
                i = (this.messageLayout.getContext().getResources().getInteger(C1790R.integer.zs_request_menu_send_btn_alpha_inactive) * 255) / 100;
            }
            this.sendButton.getIcon().setAlpha(i);
            this.sendButton.setEnabled(z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateEmailValidation() {
        if (isEmailInputValid()) {
            this.emailLayout.setError(null);
            return;
        }
        this.inlineValidation = true;
        this.emailLayout.setError(this.emailField.getContext().getString(C1790R.string.error_msg_invalid_email));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateSendButton() {
        setSendButtonEnabled(this.inlineValidation ? doFieldsContainText() && isEmailInputValid() : doFieldsContainText());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public StateSelector<InputFormModel> getSelector() {
        return new InputFormSelector();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean hasUnsavedInput() {
        String obj = this.nameField.getText().toString();
        String obj2 = this.emailField.getText().toString();
        String obj3 = this.messageField.getText().toString();
        if (this.nameField.isEnabled() && StringUtils.hasLength(obj)) {
            return true;
        }
        if (this.emailField.isEnabled() && StringUtils.hasLength(obj2)) {
            return true;
        }
        boolean z = true;
        if (!StringUtils.hasLength(obj3)) {
            z = CollectionUtils.isNotEmpty(this.attachmentHelper.getSelectedAttachments());
        }
        return z;
    }

    @Override // zendesk.belvedere.KeyboardHelper.Listener
    public void onKeyboardDismissed() {
        if (this.logo.getVisibility() != 8) {
            this.logo.post(new Runnable() { // from class: zendesk.support.request.ComponentInputForm.3
                @Override // java.lang.Runnable
                public void run() {
                    ComponentInputForm.this.logo.setVisibility(0);
                }
            });
        }
    }

    @Override // zendesk.belvedere.KeyboardHelper.Listener
    public void onKeyboardVisible() {
        if (this.logo.getVisibility() != 8) {
            this.logo.setVisibility(4);
        }
    }

    @Override // zendesk.support.request.RequestViewConversationsDisabled.MenuItemsDelegate
    public void onMenuItemsClicked(MenuItem menuItem) {
        if (menuItem.getItemId() == C1790R.C1793id.request_conversations_disabled_menu_ic_send) {
            onSendMessageRequested();
        }
    }

    @Override // zendesk.support.request.RequestViewConversationsDisabled.MenuItemsDelegate
    public void onMenuItemsInflated(MenuItem menuItem, MenuItem menuItem2) {
        this.sendButton = menuItem;
        updateSendButton();
    }

    void onSendMessageRequested() {
        if (!doFieldsContainText() || !isEmailInputValid()) {
            updateEmailValidation();
            updateSendButton();
            return;
        }
        if (isNameFieldVisible() || isEmailFieldVisible()) {
            this.dispatcher.dispatch(this.actionFactory.updateNameEmailAsync(this.nameField.getText().toString(), this.emailField.getText().toString()));
        }
        String obj = this.messageField.getText().toString();
        List<StateRequestAttachment> ensureEmpty = CollectionUtils.ensureEmpty(this.attachmentHelper.getSelectedAttachments());
        this.dispatcher.dispatch(this.actionFactory.clearMessages());
        this.dispatcher.dispatch(this.actionFactory.createCommentAsync(obj, ensureEmpty));
    }

    public void update(@NonNull final InputFormModel inputFormModel) {
        this.logo.setVisibility(inputFormModel.getLogoVisibility());
        this.nameLayout.setVisibility(inputFormModel.getNameFieldVisibility());
        this.emailLayout.setVisibility(inputFormModel.getEmailFieldVisibility());
        this.messageLayout.setVisibility(inputFormModel.getMessageFieldVisibility());
        this.nameLayout.setEnabled(!inputFormModel.isLoading());
        this.emailLayout.setEnabled(!inputFormModel.isLoading());
        this.messageLayout.setEnabled(!inputFormModel.isLoading());
        if (inputFormModel.isLoading()) {
            setSendButtonEnabled(false);
            return;
        }
        View.OnClickListener onClickListener = null;
        if (inputFormModel.isLogoEnabled()) {
            onClickListener = null;
            if (StringUtils.hasLength(inputFormModel.getReferrerUrl())) {
                onClickListener = new View.OnClickListener() { // from class: zendesk.support.request.ComponentInputForm.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        view.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(inputFormModel.getReferrerUrl())));
                    }
                };
            }
        }
        this.logo.setOnClickListener(onClickListener);
        updateSendButton();
    }
}
