package com.android.contacts.asuscallerid;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.android.contacts.asuscallerid.c;
import com.asus.a.a;
/* loaded from: classes-dex2jar.jar:com/android/contacts/asuscallerid/InCallReceiver.class */
public class InCallReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String stringExtra = intent.getStringExtra("ASUS_CALLER_QUERY_NUMBER");
        String stringExtra2 = intent.getStringExtra("ASUS_CALLER_QUERY_CALL_ID");
        Log.d("InCallReceiver", "callId:" + stringExtra2 + " ,number:" + a.c(stringExtra));
        new c.a(context, stringExtra, stringExtra2).execute(new Void[0]);
    }
}
