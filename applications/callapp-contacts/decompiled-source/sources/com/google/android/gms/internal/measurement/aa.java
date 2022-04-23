package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/aa.class */
public abstract class aa implements Runnable {
    final long h;
    final long i;
    final boolean j;
    final /* synthetic */ ak k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aa(ak akVar, boolean z) {
        this.k = akVar;
        this.h = akVar.f28930a.a();
        this.i = akVar.f28930a.b();
        this.j = z;
    }

    abstract void a() throws RemoteException;

    protected void b() {
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        z = this.k.i;
        if (z) {
            b();
            return;
        }
        try {
            a();
        } catch (Exception e) {
            this.k.a(e, false, this.j);
            b();
        }
    }
}
