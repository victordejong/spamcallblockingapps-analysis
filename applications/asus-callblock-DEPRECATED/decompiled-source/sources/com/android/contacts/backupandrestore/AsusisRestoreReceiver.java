package com.android.contacts.backupandrestore;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
/* loaded from: classes-dex2jar.jar:com/android/contacts/backupandrestore/AsusisRestoreReceiver.class */
public class AsusisRestoreReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        context.startService(new Intent(context, AsusBackupService.class));
    }
}
