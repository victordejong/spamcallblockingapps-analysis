package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ev3.class */
public final class ev3 implements lv3 {

    /* renamed from: a */
    private final kv3 f22566a;

    /* renamed from: b */
    private final long f22567b;

    /* renamed from: c */
    private final long f22568c;

    /* renamed from: d */
    private final qv3 f22569d;

    /* renamed from: e */
    private int f22570e;

    /* renamed from: f */
    private long f22571f;

    /* renamed from: g */
    private long f22572g;

    /* renamed from: h */
    private long f22573h;

    /* renamed from: i */
    private long f22574i;

    /* renamed from: j */
    private long f22575j;

    /* renamed from: k */
    private long f22576k;

    /* renamed from: l */
    private long f22577l;

    public ev3(qv3 qv3Var, long j, long j2, long j3, long j4, boolean z) {
        C7173y8.m8898a(j >= 0 && j2 > j);
        this.f22569d = qv3Var;
        this.f22567b = j;
        this.f22568c = j2;
        if (j3 == j2 - j || z) {
            this.f22571f = j4;
            this.f22570e = 4;
        } else {
            this.f22570e = 0;
        }
        this.f22566a = new kv3();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x014a  */
    /* JADX WARN: Type inference failed for: r0v121, types: [long] */
    /* JADX WARN: Type inference failed for: r0v137, types: [long] */
    /* JADX WARN: Type inference failed for: r0v148, types: [long] */
    /* JADX WARN: Type inference failed for: r0v152 */
    /* JADX WARN: Type inference failed for: r0v153 */
    /* JADX WARN: Type inference failed for: r0v24 */
    @Override // com.google.android.gms.internal.ads.lv3
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long mo12122a(com.google.android.gms.internal.ads.vq3 r10) {
        /*
            Method dump skipped, instructions count: 671
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.ev3.mo12122a(com.google.android.gms.internal.ads.vq3):long");
    }

    @Override // com.google.android.gms.internal.ads.lv3
    /* renamed from: b */
    public final void mo12121b(long j) {
        this.f22573h = C7101wa.m9694d0(j, 0L, this.f22571f - 1);
        this.f22570e = 2;
        this.f22574i = this.f22567b;
        this.f22575j = this.f22568c;
        this.f22576k = 0L;
        this.f22577l = this.f22571f;
    }

    @Override // com.google.android.gms.internal.ads.lv3
    public final /* bridge */ /* synthetic */ ur3 zzg() {
        if (this.f22571f != 0) {
            return new cv3(this, null);
        }
        return null;
    }
}
