package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.AbstractC6227e;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/d02.class */
public final class d02 implements f03 {

    /* renamed from: a */
    final /* synthetic */ long f21427a;

    /* renamed from: b */
    final /* synthetic */ String f21428b;

    /* renamed from: c */
    final /* synthetic */ ej2 f21429c;

    /* renamed from: d */
    final /* synthetic */ jj2 f21430d;

    /* renamed from: e */
    final /* synthetic */ e02 f21431e;

    public d02(e02 e02Var, long j, String str, ej2 ej2Var, jj2 jj2Var) {
        this.f21431e = e02Var;
        this.f21427a = j;
        this.f21428b = str;
        this.f21429c = ej2Var;
        this.f21430d = jj2Var;
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x00e5, code lost:
        if (r0 == 0) goto L33;
     */
    @Override // com.google.android.gms.internal.ads.f03
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo8126a(java.lang.Throwable r9) {
        /*
            Method dump skipped, instructions count: 298
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.d02.mo8126a(java.lang.Throwable):void");
    }

    @Override // com.google.android.gms.internal.ads.f03
    /* renamed from: b */
    public final void mo8125b(Object obj) {
        AbstractC6227e abstractC6227e;
        boolean z;
        uw1 uw1Var;
        f02 f02Var;
        abstractC6227e = this.f21431e.f21959a;
        long mo16806b = abstractC6227e.mo16806b() - this.f21427a;
        e02.m15614f(this.f21431e, this.f21428b, 0, mo16806b, this.f21429c.f22224c0);
        z = this.f21431e.f21962d;
        if (z) {
            f02Var = this.f21431e.f21960b;
            f02Var.m15328a(this.f21430d, this.f21429c, 0, null, mo16806b);
        }
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25625X5)).booleanValue()) {
            uw1Var = this.f21431e.f21963e;
            uw1Var.m10169c(this.f21429c, mo16806b, null);
        }
    }
}
