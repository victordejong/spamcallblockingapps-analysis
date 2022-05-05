package com.asus.snapcall;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/asus/snapcall/SnapCallSignalReceiver.class */
public class SnapCallSignalReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Log.d("SnapCallSignalReceiver", "Fake receive signal to trigger the setting option");
    }
}
