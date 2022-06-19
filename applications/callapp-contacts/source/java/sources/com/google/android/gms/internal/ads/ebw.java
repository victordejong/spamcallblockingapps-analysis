package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ebw.class */
public final class ebw {

    /* renamed from: a */
    public final int f48641a;

    /* renamed from: b */
    final ebu[] f48642b;

    /* renamed from: c */
    private int f48643c;

    public ebw(ebu... ebuVarArr) {
        this.f48642b = ebuVarArr;
        this.f48641a = ebuVarArr.length;
    }

    /* renamed from: a */
    public final ebu[] m15296a() {
        return (ebu[]) this.f48642b.clone();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return Arrays.equals(this.f48642b, ((ebw) obj).f48642b);
        }
        return false;
    }

    public final int hashCode() {
        if (this.f48643c == 0) {
            this.f48643c = Arrays.hashCode(this.f48642b) + 527;
        }
        return this.f48643c;
    }
}
