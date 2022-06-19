package com.truecaller.service;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import p193e.p194a.p1075n3.p1076a.C18479b;
/* loaded from: classes13-dex2jar.jar:com/truecaller/service/AccountsChangedReceiver.class */
public class AccountsChangedReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if ("android.accounts.LOGIN_ACCOUNTS_CHANGED".equals(intent.getAction())) {
            C18479b.m14875a("Account was changed (LOGIN_ACCOUNTS_CHANGED_ACTION).");
        }
    }
}
