package com.google.android.gms.common.api.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/zabr.class */
public final class zabr extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    public Context f22776a;

    /* renamed from: b  reason: collision with root package name */
    private final ak f22777b;

    public zabr(ak akVar) {
        this.f22777b = akVar;
    }

    public final void a() {
        synchronized (this) {
            Context context = this.f22776a;
            if (context != null) {
                context.unregisterReceiver(this);
            }
            this.f22776a = null;
        }
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        Uri data = intent.getData();
        if ("com.google.android.gms".equals(data != null ? data.getSchemeSpecificPart() : null)) {
            this.f22777b.a();
            a();
        }
    }
}
