package com.callapp.contacts.popup.contact;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.callapp.contacts.popup.contact.DialogSelectSingleChoiceBase;
import com.callapp.contacts.util.Activities;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/DialogSelectSingleChoice.class */
public class DialogSelectSingleChoice extends DialogSelectSingleChoiceWithActionButtons {
    public DialogSelectSingleChoice(String str, Object[] objArr, int i, DialogSelectSingleChoiceBase.SingleChoiceListener singleChoiceListener) {
        super(str, objArr, i, false, singleChoiceListener);
    }

    @Override // com.callapp.contacts.popup.contact.DialogSelectSingleChoiceBase
    protected int getChosenIndex() {
        return this.f15507d.getCheckedRadioButtonId();
    }

    @Override // com.callapp.contacts.popup.contact.DialogSelectSingleChoiceBase
    protected int getLayoutResourceId() {
        return 2131558628;
    }

    @Override // com.callapp.contacts.popup.contact.DialogSelectSingleChoiceWithActionButtons, com.callapp.contacts.popup.contact.DialogSelectSingleChoiceBase, com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View ovViewCreated = super.ovViewCreated(layoutInflater, viewGroup);
        TextView textView = (TextView) ovViewCreated.findViewById(2131362584);
        if (textView != null) {
            textView.setText(Activities.getString(2131887338));
        }
        TextView textView2 = (TextView) ovViewCreated.findViewById(2131362581);
        if (textView2 != null) {
            textView2.setText(Activities.getString(2131886505));
        }
        return ovViewCreated;
    }
}
