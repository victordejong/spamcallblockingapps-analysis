package com.callapp.contacts.popup.contact;

import android.app.Activity;
import android.text.Editable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.popup.contact.DialogSelectSingleChoiceBase;
import com.callapp.contacts.popup.contact.DialogWithEditTextDelegate;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import com.callapp.contacts.widget.CompoundEditText;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextField.class */
public class DialogSelectSingleChoiceTabsWithTextField extends DialogSelectSingleChoiceTabs implements DialogSelectSingleChoiceBase.SingleChoiceListener {

    /* renamed from: i */
    private final DialogWithEditTextDelegate f27226i;

    /* renamed from: j */
    private View f27227j;

    public DialogSelectSingleChoiceTabsWithTextField(String str, String str2, String str3, Object[] objArr, int i, boolean z, DialogWithEditTextDelegate.SingleChoiceWithTextListener singleChoiceWithTextListener) {
        this(str, str3, objArr, i, z, str2, singleChoiceWithTextListener);
    }

    public DialogSelectSingleChoiceTabsWithTextField(String str, String str2, Object[] objArr, int i, boolean z, String str3, DialogWithEditTextDelegate.SingleChoiceWithTextListener singleChoiceWithTextListener) {
        super(str, objArr, i, z, null);
        this.f27226i = new DialogWithEditTextDelegate(singleChoiceWithTextListener, str2, str3, new DefaultInterfaceImplUtils.TextWatcherImpl() { // from class: com.callapp.contacts.popup.contact.DialogSelectSingleChoiceTabsWithTextField.1
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.TextWatcherImpl, android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (DialogSelectSingleChoiceTabsWithTextField.this.f27227j != null) {
                    DialogSelectSingleChoiceTabsWithTextField.this.f27227j.setVisibility(StringUtils.m26059a(editable) ? 8 : 0);
                }
            }
        });
        setListener(this);
        setDismissOnDone(false);
    }

    @Override // com.callapp.contacts.popup.contact.DialogSelectSingleChoiceBase
    /* renamed from: a */
    protected final String mo27952a() {
        return Activities.getString(2131886765);
    }

    @Override // com.callapp.contacts.popup.contact.DialogSelectSingleChoiceBase.SingleChoiceListener
    /* renamed from: a */
    public final void mo27951a(int i) {
        if (this.f27226i.f27257a != null) {
            this.f27226i.f27257a.mo27337a(this, i);
        }
    }

    @Override // com.callapp.contacts.popup.contact.DialogSelectSingleChoiceBase.SingleChoiceListener
    /* renamed from: b */
    public final void mo26631b(int i) {
        this.f27226i.m27947a(this, i, isBottomBarCheckBoxChecked());
    }

    @Override // com.callapp.contacts.popup.contact.DialogSelectSingleChoiceTabs, com.callapp.contacts.popup.contact.DialogSelectSingleChoiceWithActionButtons, com.callapp.contacts.popup.contact.DialogSelectSingleChoiceBase, com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View ovViewCreated = super.ovViewCreated(layoutInflater, viewGroup);
        View findViewById = ovViewCreated.findViewById(2131362574);
        this.f27227j = setupButton(findViewById, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.popup.contact.DialogSelectSingleChoiceTabsWithTextField.2
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public void onClickListener(Activity activity) {
                AnalyticsManager.get().m28449a(Constants.SPAM, "SubmitSpam", DialogSelectSingleChoiceTabsWithTextField.this.f27216e ? "markAsSpam" : "unMarkAsSpam");
                DialogSelectSingleChoiceTabsWithTextField.this.m27954b();
            }
        }, 2131362583, Activities.getString(2131887757));
        setupButton(findViewById, null, 2131362584, null);
        setCancelable(false);
        this.f27226i.m27946a((CompoundEditText) ovViewCreated.findViewById(2131362769));
        return ovViewCreated;
    }
}
