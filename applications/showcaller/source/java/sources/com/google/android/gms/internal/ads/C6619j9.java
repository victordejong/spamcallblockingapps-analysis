package com.google.android.gms.internal.ads;

import android.util.SparseBooleanArray;
/* renamed from: com.google.android.gms.internal.ads.j9 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/j9.class */
public final class C6619j9 {

    /* renamed from: a */
    private final SparseBooleanArray f24812a;

    /* renamed from: a */
    public final int m14159a() {
        return this.f24812a.size();
    }

    /* renamed from: b */
    public final int m14158b(int i) {
        C7173y8.m8896c(i, 0, this.f24812a.size());
        return this.f24812a.keyAt(i);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C6619j9)) {
            return false;
        }
        C6619j9 c6619j9 = (C6619j9) obj;
        if (C7101wa.f31475a >= 24) {
            return this.f24812a.equals(c6619j9.f24812a);
        }
        if (this.f24812a.size() != c6619j9.f24812a.size()) {
            return false;
        }
        for (int i = 0; i < this.f24812a.size(); i++) {
            if (m14158b(i) != c6619j9.m14158b(i)) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        if (C7101wa.f31475a < 24) {
            int size = this.f24812a.size();
            for (int i = 0; i < this.f24812a.size(); i++) {
                size = (size * 31) + m14158b(i);
            }
            return size;
        }
        return this.f24812a.hashCode();
    }
}
