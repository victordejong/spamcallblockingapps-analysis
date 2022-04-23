package com.callapp.contacts.manager.popup;

import android.app.Activity;
import android.content.Intent;
import com.callapp.contacts.manager.phone.PhoneStateManager;
import com.callapp.contacts.util.Activities;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/popup/ResultPopup.class */
public abstract class ResultPopup implements ActivityResult, Popup {
    int e;

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void a(Activity activity);

    public final void a(Activity activity, Intent intent) {
        if (!PhoneStateManager.get().isIncomingCallRingingState() && Activities.a(intent)) {
            a(intent);
            PopupManager.get().a(this.e, this);
            try {
                activity.startActivityForResult(intent, this.e);
                return;
            } catch (SecurityException e) {
            }
        }
        activity.finish();
    }

    protected void a(Intent intent) {
        intent.addFlags(Activities.getIntentFlagForNewDocument()).addFlags(536870912);
    }
}
