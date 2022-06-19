package com.google.android.gms.common.api.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
/* renamed from: com.google.android.gms.common.api.internal.ag */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/ag.class */
public final class C2511ag extends BroadcastReceiver {

    /* renamed from: a */
    private Context f7086a;

    /* renamed from: b */
    private final AbstractC2510af f7087b;

    public C2511ag(AbstractC2510af abstractC2510af) {
        this.f7087b = abstractC2510af;
    }

    /* renamed from: a */
    public final void m14395a() {
        synchronized (this) {
            if (this.f7086a != null) {
                this.f7086a.unregisterReceiver(this);
            }
            this.f7086a = null;
        }
    }

    /* renamed from: a */
    public final void m14394a(Context context) {
        this.f7086a = context;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        Uri data = intent.getData();
        String str = null;
        if (data != null) {
            str = data.getSchemeSpecificPart();
        }
        if ("com.google.android.gms".equals(str)) {
            this.f7087b.mo14347a();
            m14395a();
        }
    }
}
