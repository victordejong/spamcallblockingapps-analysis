package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ebg.class */
public final class ebg {

    /* renamed from: a */
    public final int f48593a;

    /* renamed from: b */
    final zzht[] f48594b;

    /* renamed from: c */
    private int f48595c;

    public ebg(zzht... zzhtVarArr) {
        ecr.m15247b(zzhtVarArr.length > 0);
        this.f48594b = zzhtVarArr;
        this.f48593a = zzhtVarArr.length;
    }

    /* renamed from: a */
    public final int m15314a(zzht zzhtVar) {
        int i = 0;
        while (true) {
            zzht[] zzhtVarArr = this.f48594b;
            if (i < zzhtVarArr.length) {
                if (zzhtVar == zzhtVarArr[i]) {
                    return i;
                }
                i++;
            } else {
                return -1;
            }
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ebg ebgVar = (ebg) obj;
        return this.f48593a == ebgVar.f48593a && Arrays.equals(this.f48594b, ebgVar.f48594b);
    }

    public final int hashCode() {
        if (this.f48595c == 0) {
            this.f48595c = Arrays.hashCode(this.f48594b) + 527;
        }
        return this.f48595c;
    }
}
