package com.android.mms.transaction;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.NetworkInfo;
import android.text.TextUtils;
import com.klinker.android.send_message.C2704b;
import com.klinker.android.send_message.C2717j;
import e.d.a.a.a;
/* loaded from: classes-dex2jar.jar:com/android/mms/transaction/TransactionService$b.class */
class TransactionService$b extends BroadcastReceiver {

    /* renamed from: a */
    final /* synthetic */ TransactionService f3340a;

    private TransactionService$b(TransactionService transactionService) {
        this.f3340a = transactionService;
    }

    /* synthetic */ TransactionService$b(TransactionService transactionService, TransactionService$a transactionService$a) {
        this(transactionService);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        NetworkInfo networkInfo;
        String action = intent.getAction();
        if (a.f("Mms", 2)) {
            a.l("Mms", "ConnectivityBroadcastReceiver.onReceive() action: " + action);
        }
        if (!action.equals("android.net.conn.CONNECTIVITY_CHANGE")) {
            return;
        }
        if (TransactionService.e(this.f3340a) == null || !C2717j.m2020r(context).booleanValue()) {
            if (a.f("Mms", 2)) {
                a.k("Mms", "mConnMgr is null, bail");
            }
            networkInfo = null;
        } else {
            networkInfo = TransactionService.e(this.f3340a).getNetworkInfo(2);
        }
        if (a.f("Mms", 2)) {
            a.k("Mms", "Handle ConnectivityBroadcastReceiver.onReceive(): " + networkInfo);
        }
        if (networkInfo == null) {
            if (!a.f("Mms", 2)) {
                return;
            }
            a.k("Mms", "mms type is null or mobile data is turned off, bail");
        } else if ("2GVoiceCallEnded".equals(networkInfo.getReason())) {
            if (a.f("Mms", 2)) {
                a.k("Mms", "   reason is 2GVoiceCallEnded, retrying mms connectivity");
            }
            TransactionService.c(this.f3340a);
        } else if (!networkInfo.isConnected()) {
            if (a.f("Mms", 2)) {
                a.k("Mms", "   TYPE_MOBILE_MMS not connected, bail");
            }
            if (!networkInfo.isAvailable()) {
                return;
            }
            if (a.f("Mms", 2)) {
                a.k("Mms", "   retrying mms connectivity for it's available");
            }
            TransactionService.c(this.f3340a);
        } else {
            C0698p c0698p = new C0698p(this.f3340a, networkInfo.getExtraInfo());
            if (!TextUtils.isEmpty(c0698p.m11376a())) {
                TransactionService.f(this.f3340a).m11403d(null, c0698p);
                return;
            }
            a.k("Mms", "   empty MMSC url, bail");
            C2704b.m2107b(this.f3340a, new Intent(), "com.klinker.android.send_message.MMS_ERROR");
            TransactionService.f(this.f3340a).m11404c();
            this.f3340a.j();
            this.f3340a.stopSelf();
        }
    }
}
