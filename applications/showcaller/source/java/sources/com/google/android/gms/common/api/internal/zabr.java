package com.google.android.gms.common.api.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zabr.class */
public final class zabr extends BroadcastReceiver {

    /* renamed from: a */
    Context f19374a;

    /* renamed from: b */
    private final AbstractC6032h0 f19375b;

    public zabr(AbstractC6032h0 abstractC6032h0) {
        this.f19375b = abstractC6032h0;
    }

    /* renamed from: a */
    public final void m17249a(Context context) {
        this.f19374a = context;
    }

    /* renamed from: b */
    public final void m17248b() {
        synchronized (this) {
            Context context = this.f19374a;
            if (context != null) {
                context.unregisterReceiver(this);
            }
            this.f19374a = null;
        }
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        Uri data = intent.getData();
        if ("com.google.android.gms".equals(data != null ? data.getSchemeSpecificPart() : null)) {
            this.f19375b.mo17323a();
            m17248b();
        }
    }
}
