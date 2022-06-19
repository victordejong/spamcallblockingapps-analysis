package com.google.android.exoplayer2.util;

import android.util.SparseBooleanArray;
/* renamed from: com.google.android.exoplayer2.util.r */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/r.class */
public class C11623r {

    /* renamed from: b */
    public final SparseBooleanArray f38708b = new SparseBooleanArray();

    /* renamed from: a */
    public boolean mo19839a(int i) {
        return this.f38708b.get(i);
    }

    /* renamed from: a */
    public boolean mo19838a(int... iArr) {
        for (int i : iArr) {
            if (mo19839a(i)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    public int mo19837b(int i) {
        C11593a.m20022a(i >= 0 && i < this.f38708b.size());
        return this.f38708b.keyAt(i);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C11623r) {
            return this.f38708b.equals(((C11623r) obj).f38708b);
        }
        return false;
    }

    public int hashCode() {
        return this.f38708b.hashCode();
    }
}
