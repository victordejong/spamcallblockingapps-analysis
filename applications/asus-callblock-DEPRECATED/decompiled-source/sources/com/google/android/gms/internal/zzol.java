package com.google.android.gms.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/zzol.class */
public final class zzol extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    protected Context f4241a;

    private void a() {
        synchronized (this) {
            if (this.f4241a != null) {
                this.f4241a.unregisterReceiver(this);
            }
            this.f4241a = null;
        }
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        Uri data = intent.getData();
        String str = null;
        if (data != null) {
            str = data.getSchemeSpecificPart();
        }
        if ("com.google.android.gms".equals(str)) {
            a();
        }
    }
}
