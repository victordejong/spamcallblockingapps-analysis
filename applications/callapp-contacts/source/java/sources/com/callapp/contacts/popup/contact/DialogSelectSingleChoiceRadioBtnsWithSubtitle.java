package com.callapp.contacts.popup.contact;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.callapp.contacts.manager.popup.Popup;
import com.callapp.contacts.popup.contact.DialogSelectSingleChoiceBase;
import com.callapp.contacts.util.ThemeUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/DialogSelectSingleChoiceRadioBtnsWithSubtitle.class */
public class DialogSelectSingleChoiceRadioBtnsWithSubtitle extends DialogSelectSingleChoice {

    /* renamed from: g */
    private String f27221g;

    public DialogSelectSingleChoiceRadioBtnsWithSubtitle(String str, String str2, Object[] objArr, int i, DialogSelectSingleChoiceBase.SingleChoiceListener singleChoiceListener) {
        super(str, objArr, i, singleChoiceListener);
        this.f27221g = str2;
    }

    @Override // com.callapp.contacts.popup.contact.DialogSelectSingleChoice, com.callapp.contacts.popup.contact.DialogSelectSingleChoiceBase
    protected int getLayoutResourceId() {
        return 2131558629;
    }

    @Override // com.callapp.contacts.popup.contact.DialogSelectSingleChoiceBase, com.callapp.contacts.manager.popup.DialogPopup
    public Popup.DialogType getPopupType() {
        return Popup.DialogType.roundedCenter;
    }

    @Override // com.callapp.contacts.popup.contact.DialogSelectSingleChoice, com.callapp.contacts.popup.contact.DialogSelectSingleChoiceWithActionButtons, com.callapp.contacts.popup.contact.DialogSelectSingleChoiceBase, com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View ovViewCreated = super.ovViewCreated(layoutInflater, viewGroup);
        TextView textView = (TextView) ovViewCreated.findViewById(2131364030);
        textView.setText(this.f27221g);
        textView.setTextColor(ThemeUtils.getColor(2131100108));
        return ovViewCreated;
    }
}
