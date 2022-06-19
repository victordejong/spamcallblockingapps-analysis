package com.google.android.play.core.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
/* renamed from: com.google.android.play.core.internal.q */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/q.class */
public final class ServiceConnectionC15081q implements ServiceConnection {

    /* renamed from: a */
    final /* synthetic */ C15082r f54786a;

    public /* synthetic */ ServiceConnectionC15081q(C15082r c15082r) {
        this.f54786a = c15082r;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        C15072h c15072h;
        c15072h = this.f54786a.f54788a;
        c15072h.m9508c("ServiceConnectionImpl.onServiceConnected(%s)", componentName);
        this.f54786a.m9500b(new C15079o(this, iBinder));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        C15072h c15072h;
        c15072h = this.f54786a.f54788a;
        c15072h.m9508c("ServiceConnectionImpl.onServiceDisconnected(%s)", componentName);
        this.f54786a.m9500b(new C15080p(this));
    }
}
