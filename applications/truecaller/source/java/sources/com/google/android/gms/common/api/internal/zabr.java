package com.google.android.gms.common.api.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/internal/zabr.class */
public final class zabr extends BroadcastReceiver {

    /* renamed from: a */
    public Context f5863a;

    /* renamed from: b */
    public final zabq f5864b;

    public zabr(zabq zabqVar) {
        this.f5864b = zabqVar;
    }

    /* renamed from: a */
    public final void m38951a() {
        synchronized (this) {
            Context context = this.f5863a;
            if (context != null) {
                context.unregisterReceiver(this);
            }
            this.f5863a = null;
        }
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        Uri data = intent.getData();
        if ("com.google.android.gms".equals(data != null ? data.getSchemeSpecificPart() : null)) {
            this.f5864b.mo4281a();
            m38951a();
        }
    }
}
