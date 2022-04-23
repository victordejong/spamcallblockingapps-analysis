package com.google.android.play.core.internal;

import android.content.Context;
import android.content.ServiceConnection;
import android.os.IInterface;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/l.class */
public final class l extends i {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ r f31378a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(r rVar) {
        this.f31378a = rVar;
    }

    @Override // com.google.android.play.core.internal.i
    public final void a() {
        IInterface iInterface;
        h hVar;
        Context context;
        ServiceConnection serviceConnection;
        iInterface = this.f31378a.e;
        if (iInterface != null) {
            hVar = this.f31378a.f31383a;
            hVar.c("Unbind from service.", new Object[0]);
            context = this.f31378a.g;
            serviceConnection = this.f31378a.l;
            context.unbindService(serviceConnection);
            this.f31378a.h = false;
            this.f31378a.e = null;
            this.f31378a.l = null;
        }
    }
}
