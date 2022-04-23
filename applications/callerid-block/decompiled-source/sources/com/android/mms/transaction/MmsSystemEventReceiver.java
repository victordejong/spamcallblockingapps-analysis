package com.android.mms.transaction;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import com.klinker.android.send_message.C2717j;
import e.d.a.a.a;
/* loaded from: classes-dex2jar.jar:com/android/mms/transaction/MmsSystemEventReceiver.class */
public class MmsSystemEventReceiver extends BroadcastReceiver {

    /* renamed from: a */
    private static ConnectivityManager f3333a;

    /* renamed from: a */
    public static void m11415a(Context context) {
        if (Build.VERSION.SDK_INT < 21) {
            if (a.f("Mms", 2)) {
                a.k("Mms", "wakeUpService: start transaction service ...");
            }
            context.startService(new Intent(context, TransactionService.class));
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String str;
        if (a.f("Mms", 2)) {
            a.k("Mms", "Intent received: " + intent);
        }
        if (!C2717j.m2023o(context)) {
            str = "not default sms app, cancelling";
        } else {
            String action = intent.getAction();
            if (action.equals("android.intent.action.CONTENT_CHANGED")) {
                Uri uri = (Uri) intent.getParcelableExtra("deleted_contents");
                return;
            }
            if (action.equals("android.net.conn.CONNECTIVITY_CHANGE")) {
                if (f3333a == null) {
                    f3333a = (ConnectivityManager) context.getSystemService("connectivity");
                }
                if (C2717j.m2021q(context)) {
                    NetworkInfo networkInfo = f3333a.getNetworkInfo(1);
                    if (networkInfo != null && networkInfo.isConnected()) {
                        a.k("Mms", "TYPE_WIFI connected");
                    } else {
                        return;
                    }
                } else if (!C2717j.m2020r(context).booleanValue()) {
                    str = "mobile data turned off, bailing";
                } else {
                    NetworkInfo networkInfo2 = f3333a.getNetworkInfo(2);
                    if (networkInfo2 != null) {
                        boolean isAvailable = networkInfo2.isAvailable();
                        boolean isConnected = networkInfo2.isConnected();
                        if (a.f("Mms", 2)) {
                            a.k("Mms", "TYPE_MOBILE_MMS available = " + isAvailable + ", isConnected = " + isConnected);
                        }
                        if (!isAvailable || isConnected) {
                            return;
                        }
                    } else {
                        return;
                    }
                }
            } else if (!action.equals("android.intent.action.BOOT_COMPLETED")) {
                return;
            }
            m11415a(context);
            return;
        }
        a.k("Mms", str);
    }
}
