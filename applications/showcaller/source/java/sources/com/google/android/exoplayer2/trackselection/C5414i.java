package com.google.android.exoplayer2.trackselection;

import com.google.android.exoplayer2.C5416u0;
import com.google.android.exoplayer2.util.C5515h0;
/* renamed from: com.google.android.exoplayer2.trackselection.i */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/trackselection/i.class */
public final class C5414i {

    /* renamed from: a */
    public final int f17389a;

    /* renamed from: b */
    public final C5416u0[] f17390b;

    /* renamed from: c */
    public final C5411g f17391c;

    /* renamed from: d */
    public final Object f17392d;

    public C5414i(C5416u0[] c5416u0Arr, AbstractC5408f[] abstractC5408fArr, Object obj) {
        this.f17390b = c5416u0Arr;
        this.f17391c = new C5411g(abstractC5408fArr);
        this.f17392d = obj;
        this.f17389a = c5416u0Arr.length;
    }

    /* renamed from: a */
    public boolean m19273a(C5414i c5414i) {
        if (c5414i == null || c5414i.f17391c.f17384a != this.f17391c.f17384a) {
            return false;
        }
        for (int i = 0; i < this.f17391c.f17384a; i++) {
            if (!m19272b(c5414i, i)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: b */
    public boolean m19272b(C5414i c5414i, int i) {
        if (c5414i == null) {
            return false;
        }
        boolean z = false;
        if (C5515h0.m18843b(this.f17390b[i], c5414i.f17390b[i])) {
            z = false;
            if (C5515h0.m18843b(this.f17391c.m19279a(i), c5414i.f17391c.m19279a(i))) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: c */
    public boolean m19271c(int i) {
        return this.f17390b[i] != null;
    }
}
