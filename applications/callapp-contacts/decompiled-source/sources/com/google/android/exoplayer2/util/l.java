package com.google.android.exoplayer2.util;

import java.util.NoSuchElementException;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/l.class */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    private int f22296a = 0;

    /* renamed from: b  reason: collision with root package name */
    private int f22297b = -1;

    /* renamed from: c  reason: collision with root package name */
    private int f22298c = 0;

    /* renamed from: d  reason: collision with root package name */
    private int[] f22299d;
    private int e;

    public l() {
        int[] iArr = new int[16];
        this.f22299d = iArr;
        this.e = iArr.length - 1;
    }

    private void d() {
        int[] iArr = this.f22299d;
        int length = iArr.length << 1;
        if (length >= 0) {
            int[] iArr2 = new int[length];
            int length2 = iArr.length;
            int i = this.f22296a;
            int i2 = length2 - i;
            System.arraycopy(iArr, i, iArr2, 0, i2);
            System.arraycopy(this.f22299d, 0, iArr2, i2, i);
            this.f22296a = 0;
            this.f22297b = this.f22298c - 1;
            this.f22299d = iArr2;
            this.e = iArr2.length - 1;
            return;
        }
        throw new IllegalStateException();
    }

    public final int a() {
        int i = this.f22298c;
        if (i != 0) {
            int[] iArr = this.f22299d;
            int i2 = this.f22296a;
            int i3 = iArr[i2];
            this.f22296a = (i2 + 1) & this.e;
            this.f22298c = i - 1;
            return i3;
        }
        throw new NoSuchElementException();
    }

    public final void a(int i) {
        if (this.f22298c == this.f22299d.length) {
            d();
        }
        int i2 = (this.f22297b + 1) & this.e;
        this.f22297b = i2;
        this.f22299d[i2] = i;
        this.f22298c++;
    }

    public final boolean b() {
        return this.f22298c == 0;
    }

    public final void c() {
        this.f22296a = 0;
        this.f22297b = -1;
        this.f22298c = 0;
    }
}
