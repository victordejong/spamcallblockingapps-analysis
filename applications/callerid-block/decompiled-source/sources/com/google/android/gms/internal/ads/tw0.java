package com.google.android.gms.internal.ads;

import android.os.Binder;
import com.google.android.gms.ads.internal.C1407r;
import com.google.android.gms.ads.internal.util.C1433l1;
import java.io.InputStream;
import java.util.concurrent.ExecutionException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/tw0.class */
public final class tw0 {

    /* renamed from: a */
    private final sz1 f8734a;

    /* renamed from: b */
    private final dw0 f8735b;

    /* renamed from: c */
    private final yg2<jx0> f8736c;

    public tw0(sz1 sz1Var, dw0 dw0Var, yg2<jx0> yg2Var) {
        this.f8734a = sz1Var;
        this.f8735b = dw0Var;
        this.f8736c = yg2Var;
    }

    /* renamed from: g */
    private final <RetT> rz1<RetT> m5454g(zzawc zzawcVar, sw0<InputStream> sw0Var, sw0<InputStream> sw0Var2, uy1<InputStream, RetT> uy1Var) {
        String str = zzawcVar.e;
        C1407r.m8920d();
        return kz1.f(kz1.h(bz1.E(C1433l1.m8763e(str) ? kz1.b(new zzcsk(1)) : kz1.f(sw0Var.m5560a(zzawcVar), ExecutionException.class, kw0.a, this.f8734a)), uy1Var, this.f8734a), zzcsk.class, new lw0(this, sw0Var2, zzawcVar, uy1Var), this.f8734a);
    }

    /* renamed from: a */
    public final rz1<zzawc> m5460a(zzawc zzawcVar) {
        return m5454g(zzawcVar, nw0.b(this.f8735b), new ow0(this), new mw0(zzawcVar));
    }

    /* renamed from: b */
    public final rz1<Void> m5459b(zzawc zzawcVar) {
        if (vi2.m5239c(zzawcVar.k)) {
            return kz1.b(new zzcql(2, "Pool key missing from removeUrl call."));
        }
        return m5454g(zzawcVar, new qw0(this), new rw0(this), pw0.a);
    }

    /* renamed from: c */
    final /* synthetic */ rz1 m5458c(zzawc zzawcVar) {
        return this.f8736c.m4759b().B6(zzawcVar.k);
    }

    /* renamed from: d */
    final /* synthetic */ rz1 m5457d(zzawc zzawcVar) {
        return this.f8735b.f(zzawcVar.k);
    }

    /* renamed from: e */
    final /* synthetic */ rz1 m5456e(zzawc zzawcVar) {
        return this.f8736c.m4759b().A6(zzawcVar, Binder.getCallingUid());
    }

    /* renamed from: f */
    final /* synthetic */ rz1 m5455f(sw0 sw0Var, zzawc zzawcVar, uy1 uy1Var, zzcsk zzcskVar) {
        return kz1.h(sw0Var.m5560a(zzawcVar), uy1Var, this.f8734a);
    }
}
