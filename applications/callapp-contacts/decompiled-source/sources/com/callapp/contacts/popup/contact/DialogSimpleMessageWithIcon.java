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

    /* renamed from: a  reason: collision with root package name */
    private int f15520a;

    public DialogSimpleMessageWithIcon(String str, String str2, String str3, String str4, DialogPopup.IDialogOnClickListener iDialogOnClickListener, DialogPopup.IDialogOnClickListener iDialogOnClickListener2, int i) {
        super(str, str2, str3, str4, iDialogOnClickListener, iDialogOnClickListener2);
        this.f15520a = i;
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

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.callapp.contacts.popup.contact.DialogSimpleMessage
    public void setupViews(View view) {
        super.setupViews(view);
        ImageUtils.a((ImageView) view.findViewById(2131362989), this.f15520a, (ColorFilter) null);
    }
}
