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

    /* renamed from: a  reason: collision with root package name */
    private final DialogWithEditTextDelegate f15479a;

    /* renamed from: c  reason: collision with root package name */
    private final int f15480c;

    /* renamed from: d  reason: collision with root package name */
    private final int f15481d;
    private String e;

    public DialogEditText(int i, final String str, String str2, int i2, DialogWithEditTextDelegate.SingleChoiceWithTextListener singleChoiceWithTextListener) {
        this.f15480c = i;
        this.f15481d = i2;
        this.f15479a = new DialogWithEditTextDelegate(singleChoiceWithTextListener, str2, str, new DefaultInterfaceImplUtils.TextWatcherImpl() { // from class: com.callapp.contacts.popup.contact.DialogEditText.1
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.TextWatcherImpl, android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (editable != null) {
                    boolean b2 = StringUtils.b(str, editable.toString());
                    DialogEditText dialogEditText = DialogEditText.this;
                    if (dialogEditText.f15515b != null) {
                        dialogEditText.f15515b.setVisibility(b2 ^ true ? 0 : 8);
                    }
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
        return StringUtils.b((CharSequence) this.e) ? this.e : Activities.getString(2131887757);
    }

    @Override // com.callapp.contacts.popup.contact.DialogSimple
    protected DialogPopup.IDialogOnClickListener getNeutralListener() {
        return new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.popup.contact.DialogEditText.2
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public void onClickListener(Activity activity) {
                DialogEditText.this.f15479a.a(DialogEditText.this, 0, false);
            }
        };
    }

    @Override // com.callapp.contacts.popup.contact.DialogSimple
    protected int getTitleResId() {
        return this.f15480c;
    }

    @Override // com.callapp.contacts.popup.contact.DialogSimple, com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View ovViewCreated = super.ovViewCreated(layoutInflater, viewGroup);
        CompoundEditText compoundEditText = (CompoundEditText) ovViewCreated.findViewById(2131362395);
        compoundEditText.setHintText(Activities.getString(2131886746));
        compoundEditText.setInputType(this.f15481d | 1);
        this.f15479a.a(compoundEditText);
        return ovViewCreated;
    }

    public void setNeutralBtnText(String str) {
        this.e = str;
    }
}
