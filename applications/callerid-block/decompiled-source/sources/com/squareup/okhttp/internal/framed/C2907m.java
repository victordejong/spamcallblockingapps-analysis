package com.squareup.okhttp.internal.framed;

import java.util.Arrays;
/* renamed from: com.squareup.okhttp.internal.framed.m */
/* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/internal/framed/m.class */
public final class C2907m {

    /* renamed from: a */
    private int f12288a;

    /* renamed from: b */
    private int f12289b;

    /* renamed from: c */
    private int f12290c;

    /* renamed from: d */
    private final int[] f12291d = new int[10];

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m1073a() {
        this.f12290c = 0;
        this.f12289b = 0;
        this.f12288a = 0;
        Arrays.fill(this.f12291d, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public int m1072b(int i) {
        int i2 = m1067g(i) ? 2 : 0;
        int i3 = i2;
        if (m1064j(i)) {
            i3 = i2 | 1;
        }
        return i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public int m1071c(int i) {
        return this.f12291d[i];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public int m1070d() {
        return (this.f12288a & 2) != 0 ? this.f12291d[1] : -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public int m1069e(int i) {
        if ((this.f12288a & 128) != 0) {
            i = this.f12291d[7];
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public int m1068f(int i) {
        if ((this.f12288a & 32) != 0) {
            i = this.f12291d[5];
        }
        return i;
    }

    /* renamed from: g */
    boolean m1067g(int i) {
        boolean z = true;
        if (((1 << i) & this.f12290c) == 0) {
            z = false;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public boolean m1066h(int i) {
        boolean z = true;
        if (((1 << i) & this.f12288a) == 0) {
            z = false;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public void m1065i(C2907m mVar) {
        for (int i = 0; i < 10; i++) {
            if (mVar.m1066h(i)) {
                m1063k(i, mVar.m1072b(i), mVar.m1071c(i));
            }
        }
    }

    /* renamed from: j */
    boolean m1064j(int i) {
        boolean z = true;
        if (((1 << i) & this.f12289b) == 0) {
            z = false;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public C2907m m1063k(int i, int i2, int i3) {
        int[] iArr = this.f12291d;
        if (i >= iArr.length) {
            return this;
        }
        int i4 = 1 << i;
        this.f12288a |= i4;
        this.f12289b = (i2 & 1) != 0 ? this.f12289b | i4 : this.f12289b & (i4 ^ (-1));
        this.f12290c = (i2 & 2) != 0 ? this.f12290c | i4 : this.f12290c & (i4 ^ (-1));
        iArr[i] = i3;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: l */
    public int m1062l() {
        return Integer.bitCount(this.f12288a);
    }
}
