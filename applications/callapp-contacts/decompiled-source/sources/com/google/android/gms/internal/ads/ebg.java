package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ebg.class */
public final class ebg {

    /* renamed from: a  reason: collision with root package name */
    public final int f27568a;

    /* renamed from: b  reason: collision with root package name */
    final zzht[] f27569b;

    /* renamed from: c  reason: collision with root package name */
    private int f27570c;

    public ebg(zzht... zzhtVarArr) {
        ecr.b(zzhtVarArr.length > 0);
        this.f27569b = zzhtVarArr;
        this.f27568a = zzhtVarArr.length;
    }

    public final int a(zzht zzhtVar) {
        int i = 0;
        while (true) {
            zzht[] zzhtVarArr = this.f27569b;
            if (i >= zzhtVarArr.length) {
                return -1;
            }
            if (zzhtVar == zzhtVarArr[i]) {
                return i;
            }
            i++;
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
        return this.f27568a == ebgVar.f27568a && Arrays.equals(this.f27569b, ebgVar.f27569b);
    }

    public final int hashCode() {
        if (this.f27570c == 0) {
            this.f27570c = Arrays.hashCode(this.f27569b) + 527;
        }
        return this.f27570c;
    }
}
