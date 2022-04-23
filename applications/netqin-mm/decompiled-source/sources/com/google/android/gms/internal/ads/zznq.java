package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zznq.class */
public final class zznq {

    /* renamed from: a */
    public final int f28689a;

    /* renamed from: b */
    public final zzho[] f28690b;

    /* renamed from: c */
    public int f28691c;

    public zznq(zzho... zzhoVarArr) {
        zzoz.m11694b(zzhoVarArr.length > 0);
        this.f28690b = zzhoVarArr;
        this.f28689a = zzhoVarArr.length;
    }

    /* renamed from: a */
    public final int m11751a(zzho zzhoVar) {
        int i = 0;
        while (true) {
            zzho[] zzhoVarArr = this.f28690b;
            if (i >= zzhoVarArr.length) {
                return -1;
            }
            if (zzhoVar == zzhoVarArr[i]) {
                return i;
            }
            i++;
        }
    }

    /* renamed from: a */
    public final zzho m11752a(int i) {
        return this.f28690b[i];
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zznq.class != obj.getClass()) {
            return false;
        }
        zznq zznqVar = (zznq) obj;
        return this.f28689a == zznqVar.f28689a && Arrays.equals(this.f28690b, zznqVar.f28690b);
    }

    public final int hashCode() {
        if (this.f28691c == 0) {
            this.f28691c = Arrays.hashCode(this.f28690b) + 527;
        }
        return this.f28691c;
    }
}
