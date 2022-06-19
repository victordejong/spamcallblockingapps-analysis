package com.google.android.exoplayer2.util;

import java.util.NoSuchElementException;
/* renamed from: com.google.android.exoplayer2.util.l */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/l.class */
public final class C11612l {

    /* renamed from: a */
    private int f38680a = 0;

    /* renamed from: b */
    private int f38681b = -1;

    /* renamed from: c */
    private int f38682c = 0;

    /* renamed from: d */
    private int[] f38683d;

    /* renamed from: e */
    private int f38684e;

    public C11612l() {
        int[] iArr = new int[16];
        this.f38683d = iArr;
        this.f38684e = iArr.length - 1;
    }

    /* renamed from: d */
    private void m19873d() {
        int[] iArr = this.f38683d;
        int length = iArr.length << 1;
        if (length >= 0) {
            int[] iArr2 = new int[length];
            int length2 = iArr.length;
            int i = this.f38680a;
            int i2 = length2 - i;
            System.arraycopy(iArr, i, iArr2, 0, i2);
            System.arraycopy(this.f38683d, 0, iArr2, i2, i);
            this.f38680a = 0;
            this.f38681b = this.f38682c - 1;
            this.f38683d = iArr2;
            this.f38684e = iArr2.length - 1;
            return;
        }
        throw new IllegalStateException();
    }

    /* renamed from: a */
    public final int m19877a() {
        int i = this.f38682c;
        if (i != 0) {
            int[] iArr = this.f38683d;
            int i2 = this.f38680a;
            int i3 = iArr[i2];
            this.f38680a = (i2 + 1) & this.f38684e;
            this.f38682c = i - 1;
            return i3;
        }
        throw new NoSuchElementException();
    }

    /* renamed from: a */
    public final void m19876a(int i) {
        if (this.f38682c == this.f38683d.length) {
            m19873d();
        }
        int i2 = (this.f38681b + 1) & this.f38684e;
        this.f38681b = i2;
        this.f38683d[i2] = i;
        this.f38682c++;
    }

    /* renamed from: b */
    public final boolean m19875b() {
        return this.f38682c == 0;
    }

    /* renamed from: c */
    public final void m19874c() {
        this.f38680a = 0;
        this.f38681b = -1;
        this.f38682c = 0;
    }
}
