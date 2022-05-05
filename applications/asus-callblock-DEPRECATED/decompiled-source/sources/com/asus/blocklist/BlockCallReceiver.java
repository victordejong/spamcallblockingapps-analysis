package com.asus.blocklist;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import com.android.contacts.util.PhoneCapabilityTester;
import com.asus.blocklist.b;
/* loaded from: classes-dex2jar.jar:com/asus/blocklist/BlockCallReceiver.class */
public class BlockCallReceiver extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    private static String f2385a = BlockCallReceiver.class.getSimpleName();

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent != null) {
            String action = intent.getAction();
            Log.d(f2385a, "<BlockCallReceiver> onReceive action:" + action);
            char c = 65535;
            switch (action.hashCode()) {
                case 991358588:
                    if (action.equals("com.asus.AsusBlockCheck")) {
                        c = 0;
                        break;
                    }
                    break;
                case 1805440354:
                    if (action.equals("asus.intent.action.action_send_call_log_uri")) {
                        c = 1;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    boolean z = d.a().a(context, getResultData()) > 0;
                    if (z) {
                        Bundle bundle = new Bundle();
                        bundle.putInt("iBlockType", 1);
                        setResultExtras(bundle);
                    }
                    Log.d(f2385a, "<BlockCallReceiver> iBlockType = 1?" + z);
                    return;
                case 1:
                    Uri uri = (Uri) intent.getParcelableExtra("asus.intent.extra.call_log_uri");
                    if (uri == null) {
                        Log.d(f2385a, "<BlockCallReceiver> newCallLogUri is null, return");
                        return;
                    } else if (PhoneCapabilityTester.IsAsusDevice()) {
                        new b.f(context, uri).execute(new Void[0]);
                        return;
                    } else {
                        b a2 = b.a();
                        Log.d(b.f2457a, "handleIncomingCallEndForODM");
                        new b.AsyncTaskC0065b(context, uri).execute(new Void[0]);
                        return;
                    }
                default:
                    return;
            }
        }
    }
}
