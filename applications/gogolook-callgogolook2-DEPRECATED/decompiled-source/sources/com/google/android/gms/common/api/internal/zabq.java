package com.google.android.gms.common.api.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6883i1;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/internal/zabq.class */
public final class zabq extends BroadcastReceiver {

    /* renamed from: a */
    public Context f6536a;

    /* renamed from: b */
    public final AbstractC6883i1 f6537b;

    public zabq(AbstractC6883i1 i1Var) {
        this.f6537b = i1Var;
    }

    /* renamed from: a */
    public final void m31968a() {
        synchronized (this) {
            if (this.f6536a != null) {
                this.f6536a.unregisterReceiver(this);
            }
            this.f6536a = null;
        }
    }

    /* renamed from: a */
    public final void m31967a(Context context) {
        this.f6536a = context;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        Uri data = intent.getData();
        if ("com.google.android.gms".equals(data != null ? data.getSchemeSpecificPart() : null)) {
            this.f6537b.mo21529a();
            m31968a();
        }
    }
}
