package com.google.android.exoplayer2.util;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
/* renamed from: com.google.android.exoplayer2.util.z */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/util/z.class */
public class C5540z {

    /* renamed from: a */
    private static final Comparator<C5542b> f17948a = C5502b.f17857d;

    /* renamed from: b */
    private static final Comparator<C5542b> f17949b = C5504c.f17858d;

    /* renamed from: c */
    private final int f17950c;

    /* renamed from: g */
    private int f17954g;

    /* renamed from: h */
    private int f17955h;

    /* renamed from: i */
    private int f17956i;

    /* renamed from: e */
    private final C5542b[] f17952e = new C5542b[5];

    /* renamed from: d */
    private final ArrayList<C5542b> f17951d = new ArrayList<>();

    /* renamed from: f */
    private int f17953f = -1;

    /* renamed from: com.google.android.exoplayer2.util.z$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/util/z$b.class */
    public static class C5542b {

        /* renamed from: a */
        public int f17957a;

        /* renamed from: b */
        public int f17958b;

        /* renamed from: c */
        public float f17959c;

        private C5542b() {
        }
    }

    public C5540z(int i) {
        this.f17950c = i;
    }

    /* renamed from: b */
    private void m18636b() {
        if (this.f17953f != 1) {
            Collections.sort(this.f17951d, f17948a);
            this.f17953f = 1;
        }
    }

    /* renamed from: c */
    private void m18635c() {
        if (this.f17953f != 0) {
            Collections.sort(this.f17951d, f17949b);
            this.f17953f = 0;
        }
    }

    /* renamed from: e */
    public static /* synthetic */ int m18633e(C5542b c5542b, C5542b c5542b2) {
        return c5542b.f17957a - c5542b2.f17957a;
    }

    /* renamed from: a */
    public void m18637a(int i, float f) {
        C5542b c5542b;
        m18636b();
        int i2 = this.f17956i;
        if (i2 > 0) {
            C5542b[] c5542bArr = this.f17952e;
            int i3 = i2 - 1;
            this.f17956i = i3;
            c5542b = c5542bArr[i3];
        } else {
            c5542b = new C5542b();
        }
        int i4 = this.f17954g;
        this.f17954g = i4 + 1;
        c5542b.f17957a = i4;
        c5542b.f17958b = i;
        c5542b.f17959c = f;
        this.f17951d.add(c5542b);
        this.f17955h += i;
        while (true) {
            int i5 = this.f17955h;
            int i6 = this.f17950c;
            if (i5 > i6) {
                int i7 = i5 - i6;
                C5542b c5542b2 = this.f17951d.get(0);
                int i8 = c5542b2.f17958b;
                if (i8 <= i7) {
                    this.f17955h -= i8;
                    this.f17951d.remove(0);
                    int i9 = this.f17956i;
                    if (i9 < 5) {
                        C5542b[] c5542bArr2 = this.f17952e;
                        this.f17956i = i9 + 1;
                        c5542bArr2[i9] = c5542b2;
                    }
                } else {
                    c5542b2.f17958b = i8 - i7;
                    this.f17955h -= i7;
                }
            } else {
                return;
            }
        }
    }

    /* renamed from: d */
    public float m18634d(float f) {
        float f2;
        m18635c();
        float f3 = this.f17955h;
        int i = 0;
        for (int i2 = 0; i2 < this.f17951d.size(); i2++) {
            C5542b c5542b = this.f17951d.get(i2);
            i += c5542b.f17958b;
            if (i >= f * f3) {
                return c5542b.f17959c;
            }
        }
        if (this.f17951d.isEmpty()) {
            f2 = Float.NaN;
        } else {
            ArrayList<C5542b> arrayList = this.f17951d;
            f2 = arrayList.get(arrayList.size() - 1).f17959c;
        }
        return f2;
    }

    /* renamed from: g */
    public void m18631g() {
        this.f17951d.clear();
        this.f17953f = -1;
        this.f17954g = 0;
        this.f17955h = 0;
    }
}
