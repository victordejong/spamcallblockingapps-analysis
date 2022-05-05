package gogolook.callgogolook2.messaging.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import p459j.p460a.p474c0.p488f.C11843o;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/receiver/StorageStatusReceiver.class */
public class StorageStatusReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if ("android.intent.action.DEVICE_STORAGE_LOW".equals(intent.getAction())) {
            C11843o.m8049c();
        } else if ("android.intent.action.DEVICE_STORAGE_OK".equals(intent.getAction())) {
            C11843o.m8048d();
        }
    }
}
