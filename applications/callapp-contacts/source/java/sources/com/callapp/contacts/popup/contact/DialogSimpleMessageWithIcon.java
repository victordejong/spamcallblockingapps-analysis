package com.callapp.contacts.popup.contact;

import android.graphics.ColorFilter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ImageUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/DialogSimpleMessageWithIcon.class */
public class DialogSimpleMessageWithIcon extends DialogSimpleMessage {

    /* renamed from: a */
    private int f27244a;

    public DialogSimpleMessageWithIcon(String str, String str2, String str3, String str4, DialogPopup.IDialogOnClickListener iDialogOnClickListener, DialogPopup.IDialogOnClickListener iDialogOnClickListener2, int i) {
        super(str, str2, str3, str4, iDialogOnClickListener, iDialogOnClickListener2);
        this.f27244a = i;
    }

    @Override // com.callapp.contacts.popup.contact.DialogSimpleMessage
    protected int getLayoutResId() {
        return 2131558627;
    }

    @Override // com.callapp.contacts.popup.contact.DialogSimpleMessage, com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        setPositiveBtnText(Activities.getString(2131887338));
        setNegativeBtnText(Activities.getString(2131886505));
        return super.ovViewCreated(layoutInflater, viewGroup);
    }

    @Override // com.callapp.contacts.popup.contact.DialogSimpleMessage
    public void setupViews(View view) {
        super.setupViews(view);
        ImageUtils.m27529a((ImageView) view.findViewById(2131362989), this.f27244a, (ColorFilter) null);
    }
}
