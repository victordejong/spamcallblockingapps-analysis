package com.google.android.play.core.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/q.class */
public final class q implements ServiceConnection {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ r f31382a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ q(r rVar) {
        this.f31382a = rVar;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        h hVar;
        hVar = this.f31382a.f31383a;
        hVar.c("ServiceConnectionImpl.onServiceConnected(%s)", componentName);
        this.f31382a.b(new o(this, iBinder));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        h hVar;
        hVar = this.f31382a.f31383a;
        hVar.c("ServiceConnectionImpl.onServiceDisconnected(%s)", componentName);
        this.f31382a.b(new p(this));
    }
}
