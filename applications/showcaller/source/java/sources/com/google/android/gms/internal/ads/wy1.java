package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.dynamic.BinderC6255b;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/wy1.class */
final class wy1 implements qc1 {

    /* renamed from: a */
    private final ej2 f31840a;

    /* renamed from: b */
    private final r90 f31841b;

    /* renamed from: c */
    private final boolean f31842c;

    /* renamed from: d */
    private q31 f31843d = null;

    public wy1(ej2 ej2Var, r90 r90Var, boolean z) {
        this.f31840a = ej2Var;
        this.f31841b = r90Var;
        this.f31842c = z;
    }

    @Override // com.google.android.gms.internal.ads.qc1
    /* renamed from: a */
    public final void mo9015a(boolean z, Context context, l31 l31Var) {
        try {
            if (!(this.f31842c ? this.f31841b.mo11639y5(BinderC6255b.m16744m2(context)) : this.f31841b.mo11638z0(BinderC6255b.m16744m2(context)))) {
                throw new zzdkm("Adapter failed to show.");
            }
            if (this.f31843d == null) {
                return;
            }
            if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25645a1)).booleanValue() || this.f31840a.f22213U != 2) {
                return;
            }
            this.f31843d.zza();
        } catch (Throwable th) {
            throw new zzdkm(th);
        }
    }

    /* renamed from: b */
    public final void m9416b(q31 q31Var) {
        this.f31843d = q31Var;
    }
}
