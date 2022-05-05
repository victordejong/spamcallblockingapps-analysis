package com.asus.blocklist;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import com.asus.a.a;
/* loaded from: classes-dex2jar.jar:com/asus/blocklist/BlockListOutgoingCallReceiver.class */
public class BlockListOutgoingCallReceiver extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    public static final String f2424a = e.f2514a;

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (context == null || intent == null) {
            Log.d(f2424a, "onReceive: context == null || intent == null");
            return;
        }
        String action = intent.getAction();
        Log.d(f2424a, "onReceive: action = " + action);
        if (action.equalsIgnoreCase("android.intent.action.NEW_OUTGOING_CALL")) {
            Bundle extras = intent.getExtras();
            if (extras == null) {
                Log.d(f2424a, "onReceive: intent.getExtras() == null");
                return;
            }
            String string = extras.getString("android.intent.extra.PHONE_NUMBER");
            Log.d(f2424a, "onReceive: New outgoing number = " + a.c(string));
            e.a(string);
            return;
        }
        Log.e(f2424a, "onReceive: action not supported");
    }
}
