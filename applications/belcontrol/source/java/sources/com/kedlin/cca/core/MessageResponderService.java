package com.kedlin.cca.core;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import p000.fa1;
/* loaded from: classes3-dex2jar.jar:com/kedlin/cca/core/MessageResponderService.class */
public class MessageResponderService extends Service {
    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        String str;
        if (intent == null || intent.getData() == null) {
            return super.onStartCommand(intent, i, i2);
        }
        if (!intent.hasExtra("android.intent.extra.TEXT")) {
            return super.onStartCommand(intent, i, i2);
        }
        i91 m1800o = fa1.C1420e.m1800o(intent.getData().getSchemeSpecificPart());
        String stringExtra = intent.getStringExtra("android.intent.extra.SUBJECT");
        if (stringExtra == null) {
            str = "";
        } else {
            str = stringExtra + " - ";
        }
        fa1.C1422f.m1789e(m1800o, str + intent.getStringExtra("android.intent.extra.TEXT"), 0L, 0L);
        return super.onStartCommand(intent, i, i2);
    }
}
