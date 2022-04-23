package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dpk.class */
public final class dpk implements dor {

    /* renamed from: a  reason: collision with root package name */
    final dot f27062a;

    /* renamed from: b  reason: collision with root package name */
    final String f27063b;

    /* renamed from: c  reason: collision with root package name */
    final Object[] f27064c;

    /* renamed from: d  reason: collision with root package name */
    private final int f27065d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dpk(dot dotVar, String str, Object[] objArr) {
        this.f27062a = dotVar;
        this.f27063b = str;
        this.f27064c = objArr;
        char charAt = str.charAt(0);
        if (charAt < 55296) {
            this.f27065d = charAt;
            return;
        }
        int i = charAt & 8191;
        int i2 = 13;
        int i3 = 1;
        while (true) {
            char charAt2 = str.charAt(i3);
            if (charAt2 >= 55296) {
                i |= (charAt2 & 8191) << i2;
                i2 += 13;
                i3++;
            } else {
                this.f27065d = i | (charAt2 << i2);
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.dor
    public final int a() {
        return (this.f27065d & 1) == 1 ? dpe.f27052a : dpe.f27053b;
    }

    @Override // com.google.android.gms.internal.ads.dor
    public final boolean b() {
        return (this.f27065d & 2) == 2;
    }

    @Override // com.google.android.gms.internal.ads.dor
    public final dot c() {
        return this.f27062a;
    }
}
