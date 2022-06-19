package com.google.android.gms.common.api.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/zabr.class */
public final class zabr extends BroadcastReceiver {

    /* renamed from: a */
    public Context f39414a;

    /* renamed from: b */
    private final AbstractC11843ak f39415b;

    public zabr(AbstractC11843ak abstractC11843ak) {
        this.f39415b = abstractC11843ak;
    }

    /* renamed from: a */
    public final void m19300a() {
        synchronized (this) {
            Context context = this.f39414a;
            if (context != null) {
                context.unregisterReceiver(this);
            }
            this.f39414a = null;
        }
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        Uri data = intent.getData();
        if ("com.google.android.gms".equals(data != null ? data.getSchemeSpecificPart() : null)) {
            this.f39415b.mo19377a();
            m19300a();
        }
    }
}
