package com.callapp.contacts.popup.contact.callrecorder;

import android.os.Build;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.popup.DialogPopup;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderFactory.class */
public class DialogCallRecorderFactory {
    public static DialogCallRecorderWelcome a(DialogPopup.IDialogOnClickListener iDialogOnClickListener, DialogPopup.IDialogOnClickListener iDialogOnClickListener2) {
        return (Build.VERSION.SDK_INT < 23 || PhoneManager.get().isDefaultPhoneApp()) ? new DialogCallRecorderWelcome(iDialogOnClickListener, iDialogOnClickListener2) : new DialogCallRecorderWelcomeNoDefaultDialer(iDialogOnClickListener, iDialogOnClickListener2);
    }
}
