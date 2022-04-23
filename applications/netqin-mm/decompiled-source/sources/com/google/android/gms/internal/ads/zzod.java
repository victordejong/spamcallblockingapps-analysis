package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzod.class */
public final class zzod {

    /* renamed from: a */
    public final int f28709a;

    /* renamed from: b */
    public final zzob[] f28710b;

    /* renamed from: c */
    public int f28711c;

    public zzod(zzob... zzobVarArr) {
        this.f28710b = zzobVarArr;
        this.f28709a = zzobVarArr.length;
    }

    /* renamed from: a */
    public final zzob m11739a(int i) {
        return this.f28710b[i];
    }

    /* renamed from: a */
    public final zzob[] m11740a() {
        return (zzob[]) this.f28710b.clone();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzod.class != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.f28710b, ((zzod) obj).f28710b);
    }

    public final int hashCode() {
        if (this.f28711c == 0) {
            this.f28711c = Arrays.hashCode(this.f28710b) + 527;
        }
        return this.f28711c;
    }
}
