package com.callapp.contacts.popup.contact;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RadioGroup;
import android.widget.TextView;
import com.callapp.contacts.popup.contact.DialogSelectSingleChoiceBase;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/DialogSelectSingleChoiceWithActionButtons.class */
public abstract class DialogSelectSingleChoiceWithActionButtons extends DialogSelectSingleChoiceBase {
    public DialogSelectSingleChoiceWithActionButtons(String str, Object[] objArr, int i, boolean z, DialogSelectSingleChoiceBase.SingleChoiceListener singleChoiceListener) {
        super(str, objArr, i, z, singleChoiceListener);
    }

    @Override // com.callapp.contacts.popup.contact.DialogSelectSingleChoiceBase
    protected RadioGroup.OnCheckedChangeListener getCheckedChangeListener() {
        return new RadioGroup.OnCheckedChangeListener() { // from class: com.callapp.contacts.popup.contact.DialogSelectSingleChoiceWithActionButtons.3
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public void onCheckedChanged(RadioGroup radioGroup, int i) {
                DialogSelectSingleChoiceWithActionButtons.this.m27953c(i);
            }
        };
    }

    @Override // com.callapp.contacts.popup.contact.DialogSelectSingleChoiceBase, com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View ovViewCreated = super.ovViewCreated(layoutInflater, viewGroup);
        int color = ThemeUtils.getColor(2131099784);
        TextView textView = (TextView) ovViewCreated.findViewById(2131362581);
        textView.setText(Activities.getString(2131886505));
        textView.setTextColor(color);
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.popup.contact.DialogSelectSingleChoiceWithActionButtons.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DialogSelectSingleChoiceWithActionButtons.this.dismiss();
            }
        });
        TextView textView2 = (TextView) ovViewCreated.findViewById(2131362584);
        textView2.setText(Activities.getString(2131887338));
        textView2.setTextColor(color);
        textView2.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.popup.contact.DialogSelectSingleChoiceWithActionButtons.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DialogSelectSingleChoiceWithActionButtons.this.m27954b();
            }
        });
        return ovViewCreated;
    }
}
