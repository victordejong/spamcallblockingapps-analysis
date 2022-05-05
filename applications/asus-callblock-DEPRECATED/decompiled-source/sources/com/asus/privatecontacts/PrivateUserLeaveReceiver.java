package com.asus.privatecontacts;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
/* loaded from: classes-dex2jar.jar:com/asus/privatecontacts/PrivateUserLeaveReceiver.class */
public class PrivateUserLeaveReceiver extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2985a = PrivateUserLeaveReceiver.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    private a f2986b;

    /* loaded from: classes-dex2jar.jar:com/asus/privatecontacts/PrivateUserLeaveReceiver$a.class */
    public interface a {
        void onUserLeave();
    }

    public PrivateUserLeaveReceiver(a aVar) {
        this.f2986b = aVar;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent != null && intent.getBooleanExtra("key_user_leave", false) && this.f2986b != null) {
            this.f2986b.onUserLeave();
        }
    }
}
