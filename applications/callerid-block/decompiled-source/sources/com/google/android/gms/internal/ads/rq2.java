package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/rq2.class */
public final class rq2 {

    /* renamed from: a */
    private int f8397a;

    /* renamed from: b */
    private final jq2[] f8398b;

    public rq2(jq2[] jq2VarArr, byte... bArr) {
        this.f8398b = jq2VarArr;
    }

    /* renamed from: a */
    public final jq2 m5872a(int i) {
        return this.f8398b[i];
    }

    /* renamed from: b */
    public final jq2[] m5871b() {
        return (jq2[]) this.f8398b.clone();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || rq2.class != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.f8398b, ((rq2) obj).f8398b);
    }

    public final int hashCode() {
        int i = this.f8397a;
        int i2 = i;
        if (i == 0) {
            i2 = Arrays.hashCode(this.f8398b) + 527;
            this.f8397a = i2;
        }
        return i2;
    }
}
