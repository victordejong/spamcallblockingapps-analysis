package com.apptentive.android.sdk.module.messagecenter.view.holder;

import android.os.Build;
import android.support.design.widget.TextInputLayout;
import android.support.p004v7.widget.RecyclerView;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.apptentive.android.sdk.Apptentive;
import com.apptentive.android.sdk.C0724R;
import com.apptentive.android.sdk.module.messagecenter.model.WhoCard;
import com.apptentive.android.sdk.module.messagecenter.view.MessageCenterRecyclerViewAdapter;
import com.apptentive.android.sdk.util.Util;
import com.apptentive.android.sdk.util.threading.DispatchQueue;
import com.apptentive.android.sdk.util.threading.DispatchTask;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/messagecenter/view/holder/WhoCardHolder.class */
public class WhoCardHolder extends RecyclerView.ViewHolder {
    private MessageCenterRecyclerViewAdapter adapter;
    private EditText emailEditText;
    private TextView emailExplanation;
    private TextInputLayout emailLayout;
    private EditText nameEditText;
    private TextInputLayout nameLayout;
    private Button saveButton;
    private Button skipButton;
    private TextView title;

    public WhoCardHolder(MessageCenterRecyclerViewAdapter messageCenterRecyclerViewAdapter, View view) {
        super(view);
        this.adapter = messageCenterRecyclerViewAdapter;
        this.title = (TextView) view.findViewById(C0724R.C0727id.who_title);
        this.nameEditText = (EditText) view.findViewById(C0724R.C0727id.who_name);
        this.nameLayout = (TextInputLayout) view.findViewById(C0724R.C0727id.input_layout_who_name);
        this.emailEditText = (EditText) view.findViewById(C0724R.C0727id.who_email);
        this.emailLayout = (TextInputLayout) view.findViewById(C0724R.C0727id.input_layout_who_email);
        this.emailExplanation = (TextView) view.findViewById(C0724R.C0727id.email_explanation);
        this.skipButton = (Button) view.findViewById(C0724R.C0727id.btn_skip);
        this.saveButton = (Button) view.findViewById(C0724R.C0727id.btn_send);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isWhoCardContentValid(boolean z) {
        String trim = this.emailEditText.getText().toString().trim();
        if (Util.isEmailValid(trim)) {
            return true;
        }
        return TextUtils.isEmpty(trim) && !z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateSaveButton(WhoCard whoCard) {
        String trim = this.nameEditText.getText().toString().trim();
        String trim2 = this.emailEditText.getText().toString().trim();
        if (trim.isEmpty() && trim2.isEmpty()) {
            this.saveButton.setEnabled(false);
        } else if (Util.isEmailValid(trim2)) {
            this.saveButton.setEnabled(true);
        } else if (!TextUtils.isEmpty(trim2) || whoCard.isRequire()) {
            this.saveButton.setEnabled(false);
        } else {
            this.saveButton.setEnabled(true);
        }
    }

    public void bindView(RecyclerView recyclerView, final WhoCard whoCard) {
        if (TextUtils.isEmpty(whoCard.getTitle())) {
            this.title.setVisibility(8);
        } else {
            this.title.setVisibility(0);
            this.title.setText(whoCard.getTitle());
            this.itemView.setContentDescription(whoCard.getTitle());
        }
        if (TextUtils.isEmpty(whoCard.getNameHint())) {
            this.nameLayout.setVisibility(8);
        } else {
            this.nameLayout.setVisibility(0);
            this.nameLayout.setHint(whoCard.getNameHint());
        }
        this.nameEditText.setText(Apptentive.getPersonName());
        this.nameEditText.addTextChangedListener(new TextWatcher() { // from class: com.apptentive.android.sdk.module.messagecenter.view.holder.WhoCardHolder.1
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                WhoCardHolder.this.updateSaveButton(whoCard);
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }
        });
        this.emailLayout.setHint(whoCard.getEmailHint());
        this.emailEditText.setText(Apptentive.getPersonEmail());
        if (Util.isEmailValid(this.emailEditText.getText().toString().trim())) {
            this.saveButton.setEnabled(true);
        } else {
            this.saveButton.setEnabled(false);
        }
        this.emailEditText.addTextChangedListener(new TextWatcher() { // from class: com.apptentive.android.sdk.module.messagecenter.view.holder.WhoCardHolder.2
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                WhoCardHolder.this.updateSaveButton(whoCard);
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                if (Util.isEmailValid(charSequence.toString().trim())) {
                    WhoCardHolder.this.saveButton.setEnabled(true);
                } else {
                    WhoCardHolder.this.saveButton.setEnabled(false);
                }
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }
        });
        if (TextUtils.isEmpty(whoCard.getEmailExplanation())) {
            this.emailExplanation.setVisibility(8);
        } else {
            this.emailExplanation.setVisibility(0);
            this.emailExplanation.setText(whoCard.getEmailExplanation());
        }
        if (TextUtils.isEmpty(whoCard.getSkipButton())) {
            this.skipButton.setVisibility(8);
        } else {
            this.skipButton.setVisibility(0);
            this.skipButton.setText(whoCard.getSkipButton());
            this.skipButton.setOnClickListener(Util.guarded(new View.OnClickListener() { // from class: com.apptentive.android.sdk.module.messagecenter.view.holder.WhoCardHolder.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (WhoCardHolder.this.adapter.getListener() != null) {
                        WhoCardHolder.this.adapter.getListener().onCloseWhoCard(WhoCardHolder.this.skipButton.getText().toString());
                    }
                }
            }));
        }
        if (TextUtils.isEmpty(whoCard.getSaveButton())) {
            this.saveButton.setVisibility(8);
        } else {
            this.saveButton.setVisibility(0);
            this.saveButton.setText(whoCard.getSaveButton());
        }
        this.saveButton.setOnClickListener(Util.guarded(new View.OnClickListener() { // from class: com.apptentive.android.sdk.module.messagecenter.view.holder.WhoCardHolder.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (WhoCardHolder.this.isWhoCardContentValid(whoCard.isRequire())) {
                    Apptentive.setPersonEmail(WhoCardHolder.this.emailEditText.getText().toString().trim());
                    Apptentive.setPersonName(WhoCardHolder.this.nameEditText.getText().toString().trim());
                    if (WhoCardHolder.this.adapter.getListener() != null) {
                        WhoCardHolder.this.adapter.getListener().onSubmitWhoCard(WhoCardHolder.this.saveButton.getText().toString());
                    }
                }
            }
        }));
        if (this.adapter.getListener() != null) {
            this.adapter.getListener().onWhoCardViewCreated(this.nameEditText, this.emailEditText, null);
        }
        DispatchQueue.mainQueue().dispatchAsync(new DispatchTask() { // from class: com.apptentive.android.sdk.module.messagecenter.view.holder.WhoCardHolder.5
            @Override // com.apptentive.android.sdk.util.threading.DispatchTask
            protected void execute() {
                if (Build.VERSION.SDK_INT >= 16) {
                    WhoCardHolder.this.itemView.sendAccessibilityEvent(16384);
                }
            }
        }, 500L);
    }
}
