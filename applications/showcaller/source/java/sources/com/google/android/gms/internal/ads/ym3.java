package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ym3.class */
public final class ym3 implements Comparable<ym3> {

    /* renamed from: d */
    public final boolean f32546d;

    /* renamed from: e */
    private final tm3 f32547e;

    /* renamed from: f */
    private final boolean f32548f;

    /* renamed from: g */
    private final boolean f32549g;

    /* renamed from: h */
    private final int f32550h;

    /* renamed from: i */
    private final int f32551i;

    /* renamed from: j */
    private final int f32552j;

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0049, code lost:
        if (r0 <= 2.14748365E9f) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0082, code lost:
        if (r0 >= 0) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0099, code lost:
        if (r0 >= 0) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00b4, code lost:
        if (r0 >= 0.0f) goto L33;
     */
    /* JADX WARN: Removed duplicated region for block: B:21:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x012f A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ym3(com.google.android.gms.internal.ads.C7021u4 r5, com.google.android.gms.internal.ads.tm3 r6, int r7, boolean r8) {
        /*
            Method dump skipped, instructions count: 312
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.ym3.<init>(com.google.android.gms.internal.ads.u4, com.google.android.gms.internal.ads.tm3, int, boolean):void");
    }

    /* renamed from: a */
    public final int compareTo(ym3 ym3Var) {
        dy2 dy2Var;
        dy2 dy2Var2;
        dy2 dy2Var3;
        dy2 dy2Var4;
        if (!this.f32546d || !this.f32549g) {
            dy2Var3 = zm3.f33001d;
            dy2Var = dy2Var3.zza();
        } else {
            dy2Var4 = zm3.f33001d;
            dy2Var = dy2Var4;
        }
        uw2 mo10166a = uw2.m10158i().mo10163d(this.f32549g, ym3Var.f32549g).mo10163d(this.f32546d, ym3Var.f32546d).mo10163d(this.f32548f, ym3Var.f32548f).mo10166a(Integer.valueOf(this.f32552j), Integer.valueOf(ym3Var.f32552j), dy2.zzb().zza());
        int i = this.f32550h;
        int i2 = ym3Var.f32550h;
        boolean z = this.f32547e.f20217x;
        Integer valueOf = Integer.valueOf(i);
        Integer valueOf2 = Integer.valueOf(i2);
        dy2Var2 = zm3.f33002e;
        return mo10166a.mo10166a(valueOf, valueOf2, dy2Var2).mo10166a(Integer.valueOf(this.f32551i), Integer.valueOf(ym3Var.f32551i), dy2Var).mo10166a(Integer.valueOf(this.f32550h), Integer.valueOf(ym3Var.f32550h), dy2Var).mo10162e();
    }
}
