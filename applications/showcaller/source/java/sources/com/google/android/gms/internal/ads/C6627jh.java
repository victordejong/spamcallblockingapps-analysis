package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* renamed from: com.google.android.gms.internal.ads.jh */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/jh.class */
public final class C6627jh {

    /* renamed from: a */
    private int f24869a;

    /* renamed from: b */
    private final C6329bh[] f24870b;

    public C6627jh(C6329bh[] c6329bhArr, byte... bArr) {
        this.f24870b = c6329bhArr;
    }

    /* renamed from: a */
    public final C6329bh m14128a(int i) {
        return this.f24870b[i];
    }

    /* renamed from: b */
    public final C6329bh[] m14127b() {
        return (C6329bh[]) this.f24870b.clone();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C6627jh.class == obj.getClass()) {
            return Arrays.equals(this.f24870b, ((C6627jh) obj).f24870b);
        }
        return false;
    }

    public final int hashCode() {
        int i = this.f24869a;
        int i2 = i;
        if (i == 0) {
            i2 = Arrays.hashCode(this.f24870b) + 527;
            this.f24869a = i2;
        }
        return i2;
    }
}
