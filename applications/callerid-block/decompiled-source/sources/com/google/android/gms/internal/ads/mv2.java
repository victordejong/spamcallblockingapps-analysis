package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/mv2.class */
final /* synthetic */ class mv2 implements Runnable {

    /* renamed from: b */
    private final qv2 f7660b;

    /* renamed from: c */
    private final hv2 f7661c;

    /* renamed from: d */
    private final zzts f7662d;

    /* renamed from: e */
    private final fp f7663e;

    mv2(qv2 qv2Var, hv2 hv2Var, zzts zztsVar, fp fpVar) {
        this.f7660b = qv2Var;
        this.f7661c = hv2Var;
        this.f7662d = zztsVar;
        this.f7663e = fpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        qv2 qv2Var = this.f7660b;
        hv2 hv2Var = this.f7661c;
        zzts zztsVar = this.f7662d;
        fp fpVar = this.f7663e;
        try {
            jv2 X = hv2Var.X();
            zztp M4 = hv2Var.W() ? X.M4(zztsVar) : X.w4(zztsVar);
            if (!M4.zza()) {
                fpVar.d(new RuntimeException("No entry contents."));
                sv2.m5565b(qv2Var.c);
                return;
            }
            ov2 ov2Var = new ov2(qv2Var, M4.a(), 1);
            int read = ov2Var.read();
            if (read != -1) {
                ov2Var.unread(read);
                fpVar.c(uv2.m5341a(ov2Var, M4.x(), M4.F(), M4.C(), M4.B()));
                return;
            }
            throw new IOException("Unable to read from cache.");
        } catch (RemoteException | IOException e) {
            C1894po.m6182d("Unable to obtain a cache service instance.", e);
            fpVar.d(e);
            sv2.m5565b(qv2Var.c);
        }
    }
}
