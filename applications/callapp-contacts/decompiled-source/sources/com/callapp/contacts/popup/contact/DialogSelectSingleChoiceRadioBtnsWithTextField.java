package com.callapp.contacts.popup.contact;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.callapp.contacts.popup.contact.DialogSelectSingleChoiceBase;
import com.callapp.contacts.popup.contact.DialogWithEditTextDelegate;
import com.callapp.contacts.widget.CompoundEditText;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/DialogSelectSingleChoiceRadioBtnsWithTextField.class */
public class DialogSelectSingleChoiceRadioBtnsWithTextField extends DialogSelectSingleChoice implements DialogSelectSingleChoiceBase.SingleChoiceListener {
    private final DialogWithEditTextDelegate g;

    public DialogSelectSingleChoiceRadioBtnsWithTextField(String str, String str2, Object[] objArr, int i, String str3, DialogWithEditTextDelegate.SingleChoiceWithTextListener singleChoiceWithTextListener) {
        super(str, objArr, i, null);
        this.g = new DialogWithEditTextDelegate(singleChoiceWithTextListener, str2, str3, null);
        setListener(this);
        setDismissOnDone(false);
    }

    @Override // com.callapp.contacts.popup.contact.DialogSelectSingleChoiceBase.SingleChoiceListener
    public final void a(int i) {
        if (this.g.f15531a != null) {
            this.g.f15531a.a(this, i);
        }
    }

    @Override // com.callapp.contacts.popup.contact.DialogSelectSingleChoiceBase.SingleChoiceListener
    public final void b(int i) {
        this.g.a(this, i, isBottomBarCheckBoxChecked());
    }

    @Override // com.callapp.contacts.popup.contact.DialogSelectSingleChoice, com.callapp.contacts.popup.contact.DialogSelectSingleChoiceWithActionButtons, com.callapp.contacts.popup.contact.DialogSelectSingleChoiceBase, com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View ovViewCreated = super.ovViewCreated(layoutInflater, viewGroup);
        this.g.a((CompoundEditText) ovViewCreated.findViewById(2131362769));
        setCancelable(false);
        return ovViewCreated;
    }

    public void setInputType(int i) {
        this.g.setInputType(i);
    }
}
