package com.google.android.exoplayer2.util;

import android.util.SparseBooleanArray;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/r.class */
public class r {

    /* renamed from: b  reason: collision with root package name */
    public final SparseBooleanArray f22319b = new SparseBooleanArray();

    public boolean a(int i) {
        return this.f22319b.get(i);
    }

    public boolean a(int... iArr) {
        for (int i : iArr) {
            if (a(i)) {
                return true;
            }
        }
        return false;
    }

    public int b(int i) {
        a.a(i >= 0 && i < this.f22319b.size());
        return this.f22319b.keyAt(i);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof r)) {
            return false;
        }
        return this.f22319b.equals(((r) obj).f22319b);
    }

    public int hashCode() {
        return this.f22319b.hashCode();
    }
}
