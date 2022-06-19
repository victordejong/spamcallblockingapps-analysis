package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/wf3.class */
public final class wf3 implements jf3 {

    /* renamed from: a */
    private final mf3 f31568a;

    /* renamed from: b */
    private final String f31569b;

    /* renamed from: c */
    private final Object[] f31570c;

    /* renamed from: d */
    private final int f31571d;

    public wf3(mf3 mf3Var, String str, Object[] objArr) {
        this.f31568a = mf3Var;
        this.f31569b = str;
        this.f31570c = objArr;
        int charAt = str.charAt(0);
        if (charAt < 55296) {
            this.f31571d = charAt;
            return;
        }
        int i = charAt & 8191;
        int i2 = 13;
        int i3 = 1;
        while (true) {
            int charAt2 = str.charAt(i3);
            if (charAt2 < 55296) {
                this.f31571d = i | (charAt2 << i2);
                return;
            }
            i |= (charAt2 & 8191) << i2;
            i3++;
            i2 += 13;
        }
    }

    /* renamed from: a */
    public final String m9593a() {
        return this.f31569b;
    }

    @Override // com.google.android.gms.internal.ads.jf3
    /* renamed from: b */
    public final mf3 mo9592b() {
        return this.f31568a;
    }

    @Override // com.google.android.gms.internal.ads.jf3
    /* renamed from: c */
    public final int mo9591c() {
        return (this.f31571d & 1) == 1 ? 1 : 2;
    }

    /* renamed from: d */
    public final Object[] m9590d() {
        return this.f31570c;
    }

    @Override // com.google.android.gms.internal.ads.jf3
    public final boolean zza() {
        return (this.f31571d & 2) == 2;
    }
}
