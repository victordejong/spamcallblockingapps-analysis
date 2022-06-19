package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/r12.class */
final class r12 implements i41 {

    /* renamed from: a */
    boolean f28734a = false;

    /* renamed from: b */
    final /* synthetic */ tw1 f28735b;

    /* renamed from: c */
    final /* synthetic */ vi0 f28736c;

    /* renamed from: d */
    final /* synthetic */ s12 f28737d;

    public r12(s12 s12Var, tw1 tw1Var, vi0 vi0Var) {
        this.f28737d = s12Var;
        this.f28735b = tw1Var;
        this.f28736c = vi0Var;
    }

    /* renamed from: c */
    private final void m11736c(zzbcz zzbczVar) {
        int i = 1;
        if (true == ((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25535M3)).booleanValue()) {
            i = 3;
        }
        this.f28736c.m10014f(new zzeeg(i, zzbczVar));
    }

    @Override // com.google.android.gms.internal.ads.i41
    /* renamed from: R */
    public final void mo11739R(zzbcz zzbczVar) {
        synchronized (this) {
            this.f28734a = true;
            m11736c(zzbczVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.i41
    /* renamed from: a */
    public final void mo11738a(int i) {
        if (this.f28734a) {
            return;
        }
        m11736c(new zzbcz(i, s12.m11180e(this.f28735b.f30385a, i), "undefined", null, null));
    }

    @Override // com.google.android.gms.internal.ads.i41
    /* renamed from: b */
    public final void mo11737b(int i, String str) {
        synchronized (this) {
            if (this.f28734a) {
                return;
            }
            this.f28734a = true;
            String str2 = str;
            if (str == null) {
                str2 = s12.m11180e(this.f28735b.f30385a, i);
            }
            m11736c(new zzbcz(i, str2, "undefined", null, null));
        }
    }

    @Override // com.google.android.gms.internal.ads.i41
    public final void zza() {
        synchronized (this) {
            this.f28736c.m10016c(null);
        }
    }
}
