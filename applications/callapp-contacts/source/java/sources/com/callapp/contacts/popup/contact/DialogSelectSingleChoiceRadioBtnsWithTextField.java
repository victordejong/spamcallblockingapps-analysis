package com.callapp.contacts.popup.contact;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.callapp.contacts.popup.contact.DialogSelectSingleChoiceBase;
import com.callapp.contacts.popup.contact.DialogWithEditTextDelegate;
import com.callapp.contacts.widget.CompoundEditText;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/DialogSelectSingleChoiceRadioBtnsWithTextField.class */
public class DialogSelectSingleChoiceRadioBtnsWithTextField extends DialogSelectSingleChoice implements DialogSelectSingleChoiceBase.SingleChoiceListener {

    /* renamed from: g */
    private final DialogWithEditTextDelegate f27222g;

    public DialogSelectSingleChoiceRadioBtnsWithTextField(String str, String str2, Object[] objArr, int i, String str3, DialogWithEditTextDelegate.SingleChoiceWithTextListener singleChoiceWithTextListener) {
        super(str, objArr, i, null);
        this.f27222g = new DialogWithEditTextDelegate(singleChoiceWithTextListener, str2, str3, null);
        setListener(this);
        setDismissOnDone(false);
    }

    @Override // com.callapp.contacts.popup.contact.DialogSelectSingleChoiceBase.SingleChoiceListener
    /* renamed from: a */
    public final void mo27951a(int i) {
        if (this.f27222g.f27257a != null) {
            this.f27222g.f27257a.mo27337a(this, i);
        }
    }

    @Override // com.callapp.contacts.popup.contact.DialogSelectSingleChoiceBase.SingleChoiceListener
    /* renamed from: b */
    public final void mo26631b(int i) {
        this.f27222g.m27947a(this, i, isBottomBarCheckBoxChecked());
    }

    @Override // com.callapp.contacts.popup.contact.DialogSelectSingleChoice, com.callapp.contacts.popup.contact.DialogSelectSingleChoiceWithActionButtons, com.callapp.contacts.popup.contact.DialogSelectSingleChoiceBase, com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View ovViewCreated = super.ovViewCreated(layoutInflater, viewGroup);
        this.f27222g.m27946a((CompoundEditText) ovViewCreated.findViewById(2131362769));
        setCancelable(false);
        return ovViewCreated;
    }

    public void setInputType(int i) {
        this.f27222g.setInputType(i);
    }
}
