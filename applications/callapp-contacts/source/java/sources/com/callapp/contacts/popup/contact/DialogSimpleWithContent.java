package com.callapp.contacts.popup.contact;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.callapp.contacts.manager.popup.DialogPopup;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/DialogSimpleWithContent.class */
public abstract class DialogSimpleWithContent extends DialogSimple {
    public DialogSimpleWithContent() {
        this(null);
    }

    private DialogSimpleWithContent(DialogPopup.IDialogSimpleListener iDialogSimpleListener) {
        setDialogCustomListener(iDialogSimpleListener);
    }

    protected abstract int getContentResId();

    @Override // com.callapp.contacts.popup.contact.DialogSimple
    protected int getDialogLayoutResId() {
        return 2131558626;
    }

    @Override // com.callapp.contacts.popup.contact.DialogSimple
    public void setupViews(View view) {
        super.setupViews(view);
        int contentResId = getContentResId();
        if (contentResId != 0) {
            LayoutInflater.from(view.getContext()).inflate(contentResId, (ViewGroup) view.findViewById(2131363870));
        }
    }
}
