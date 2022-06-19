package com.callapp.contacts.popup.contact;

import android.app.Activity;
import android.text.Editable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.popup.contact.DialogWithEditTextDelegate;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import com.callapp.contacts.widget.CompoundEditText;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/DialogEditText.class */
public class DialogEditText extends DialogSimpleWithContent {

    /* renamed from: a */
    private final DialogWithEditTextDelegate f27087a;

    /* renamed from: c */
    private final int f27088c;

    /* renamed from: d */
    private final int f27089d;

    /* renamed from: e */
    private String f27090e;

    public DialogEditText(int i, final String str, String str2, int i2, DialogWithEditTextDelegate.SingleChoiceWithTextListener singleChoiceWithTextListener) {
        this.f27088c = i;
        this.f27089d = i2;
        this.f27087a = new DialogWithEditTextDelegate(singleChoiceWithTextListener, str2, str, new DefaultInterfaceImplUtils.TextWatcherImpl() { // from class: com.callapp.contacts.popup.contact.DialogEditText.1
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.TextWatcherImpl, android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (editable != null) {
                    boolean m26042b = StringUtils.m26042b(str, editable.toString());
                    DialogEditText dialogEditText = DialogEditText.this;
                    if (dialogEditText.f27235b == null) {
                        return;
                    }
                    dialogEditText.f27235b.setVisibility(m26042b ^ true ? 0 : 8);
                }
            }
        });
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public boolean dismissOnBtnClicked() {
        return false;
    }

    @Override // com.callapp.contacts.popup.contact.DialogSimpleWithContent
    protected int getContentResId() {
        return 2131558558;
    }

    @Override // com.callapp.contacts.popup.contact.DialogSimple
    protected String getNegativeBtnText() {
        return Activities.getString(2131886563);
    }

    @Override // com.callapp.contacts.popup.contact.DialogSimple
    protected DialogPopup.IDialogOnClickListener getNegativeListener() {
        return new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.popup.contact.DialogEditText.3
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public void onClickListener(Activity activity) {
                DialogEditText.this.dismiss();
            }
        };
    }

    @Override // com.callapp.contacts.popup.contact.DialogSimple
    protected String getNeutralBtnText() {
        return StringUtils.m26045b((CharSequence) this.f27090e) ? this.f27090e : Activities.getString(2131887757);
    }

    @Override // com.callapp.contacts.popup.contact.DialogSimple
    protected DialogPopup.IDialogOnClickListener getNeutralListener() {
        return new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.popup.contact.DialogEditText.2
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public void onClickListener(Activity activity) {
                DialogEditText.this.f27087a.m27947a(DialogEditText.this, 0, false);
            }
        };
    }

    @Override // com.callapp.contacts.popup.contact.DialogSimple
    protected int getTitleResId() {
        return this.f27088c;
    }

    @Override // com.callapp.contacts.popup.contact.DialogSimple, com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View ovViewCreated = super.ovViewCreated(layoutInflater, viewGroup);
        CompoundEditText compoundEditText = (CompoundEditText) ovViewCreated.findViewById(2131362395);
        compoundEditText.setHintText(Activities.getString(2131886746));
        compoundEditText.setInputType(this.f27089d | 1);
        this.f27087a.m27946a(compoundEditText);
        return ovViewCreated;
    }

    public void setNeutralBtnText(String str) {
        this.f27090e = str;
    }
}
