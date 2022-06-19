package com.google.android.play.core.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
/* renamed from: com.google.android.play.core.internal.m */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/internal/m.class */
public final class ServiceConnectionC8502m implements ServiceConnection {

    /* renamed from: a */
    final /* synthetic */ C8504n f38047a;

    public /* synthetic */ ServiceConnectionC8502m(C8504n c8504n) {
        this.f38047a = c8504n;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        C8466a c8466a;
        c8466a = this.f38047a.f38050c;
        c8466a.m3564d("ServiceConnectionImpl.onServiceConnected(%s)", componentName);
        this.f38047a.m3488r(new C8498k(this, iBinder));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        C8466a c8466a;
        c8466a = this.f38047a.f38050c;
        c8466a.m3564d("ServiceConnectionImpl.onServiceDisconnected(%s)", componentName);
        this.f38047a.m3488r(new C8500l(this));
    }
}
