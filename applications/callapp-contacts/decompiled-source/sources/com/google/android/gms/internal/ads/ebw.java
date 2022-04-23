package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ebw.class */
public final class ebw {

    /* renamed from: a  reason: collision with root package name */
    public final int f27599a;

    /* renamed from: b  reason: collision with root package name */
    final ebu[] f27600b;

    /* renamed from: c  reason: collision with root package name */
    private int f27601c;

    public ebw(ebu... ebuVarArr) {
        this.f27600b = ebuVarArr;
        this.f27599a = ebuVarArr.length;
    }

    public final ebu[] a() {
        return (ebu[]) this.f27600b.clone();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.f27600b, ((ebw) obj).f27600b);
    }

    public final int hashCode() {
        if (this.f27601c == 0) {
            this.f27601c = Arrays.hashCode(this.f27600b) + 527;
        }
        return this.f27601c;
    }
}
