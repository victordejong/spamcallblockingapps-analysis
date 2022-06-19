package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dpk.class */
public final class dpk implements dor {

    /* renamed from: a */
    final dot f47363a;

    /* renamed from: b */
    final String f47364b;

    /* renamed from: c */
    final Object[] f47365c;

    /* renamed from: d */
    private final int f47366d;

    public dpk(dot dotVar, String str, Object[] objArr) {
        this.f47363a = dotVar;
        this.f47364b = str;
        this.f47365c = objArr;
        int charAt = str.charAt(0);
        if (charAt < 55296) {
            this.f47366d = charAt;
            return;
        }
        int i = charAt & 8191;
        int i2 = 13;
        int i3 = 1;
        while (true) {
            int charAt2 = str.charAt(i3);
            if (charAt2 < 55296) {
                this.f47366d = i | (charAt2 << i2);
                return;
            }
            i |= (charAt2 & 8191) << i2;
            i3++;
            i2 += 13;
        }
    }

    @Override // com.google.android.gms.internal.ads.dor
    /* renamed from: a */
    public final int mo16151a() {
        return (this.f47366d & 1) == 1 ? dpe.f47353a : dpe.f47354b;
    }

    @Override // com.google.android.gms.internal.ads.dor
    /* renamed from: b */
    public final boolean mo16150b() {
        return (this.f47366d & 2) == 2;
    }

    @Override // com.google.android.gms.internal.ads.dor
    /* renamed from: c */
    public final dot mo16149c() {
        return this.f47363a;
    }
}
