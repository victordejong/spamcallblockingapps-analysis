package com.google.android.gms.common.api.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zabq.class */
public final class zabq extends BroadcastReceiver {

    /* renamed from: a */
    private Context f7243a;

    /* renamed from: b */
    private final zabp f7244b;

    public zabq(zabp zabpVar) {
        this.f7244b = zabpVar;
    }

    /* renamed from: a */
    public final void m14781a() {
        synchronized (this) {
            if (this.f7243a != null) {
                this.f7243a.unregisterReceiver(this);
            }
            this.f7243a = null;
        }
    }

    /* renamed from: b */
    public final void m14780b(Context context) {
        this.f7243a = context;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        Uri data = intent.getData();
        if ("com.google.android.gms".equals(data != null ? data.getSchemeSpecificPart() : null)) {
            this.f7244b.mo14716a();
            m14781a();
        }
    }
}
