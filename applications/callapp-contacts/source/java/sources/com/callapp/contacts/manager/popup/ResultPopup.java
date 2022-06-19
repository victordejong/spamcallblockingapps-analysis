package com.callapp.contacts.manager.popup;

import android.app.Activity;
import android.content.Intent;
import com.callapp.contacts.manager.phone.PhoneStateManager;
import com.callapp.contacts.util.Activities;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/popup/ResultPopup.class */
public abstract class ResultPopup implements ActivityResult, Popup {

    /* renamed from: e */
    int f26194e;

    /* renamed from: a */
    public abstract void mo27637a(Activity activity);

    /* renamed from: a */
    public final void m28185a(Activity activity, Intent intent) {
        if (!PhoneStateManager.get().isIncomingCallRingingState() && Activities.m27672a(intent)) {
            mo27902a(intent);
            PopupManager.get().m28210a(this.f26194e, this);
            try {
                activity.startActivityForResult(intent, this.f26194e);
                return;
            } catch (SecurityException e) {
            }
        }
        activity.finish();
    }

    /* renamed from: a */
    protected void mo27902a(Intent intent) {
        intent.addFlags(Activities.getIntentFlagForNewDocument()).addFlags(536870912);
    }
}
