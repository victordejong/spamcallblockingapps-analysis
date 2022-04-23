package com.google.android.gms.common.api.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zabl.class */
public final class zabl extends BroadcastReceiver {

    /* renamed from: a */
    public Context f23247a;

    /* renamed from: b */
    public final zabk f23248b;

    public zabl(zabk zabkVar) {
        this.f23248b = zabkVar;
    }

    /* renamed from: a */
    public final void m17521a() {
        synchronized (this) {
            if (this.f23247a != null) {
                this.f23247a.unregisterReceiver(this);
            }
            this.f23247a = null;
        }
    }

    /* renamed from: a */
    public final void m17520a(Context context) {
        this.f23247a = context;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        Uri data = intent.getData();
        if ("com.google.android.gms".equals(data != null ? data.getSchemeSpecificPart() : null)) {
            this.f23248b.mo17522a();
            m17521a();
        }
    }
}
