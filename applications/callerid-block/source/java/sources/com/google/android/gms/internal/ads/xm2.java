package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/xm2.class */
public final class xm2 {

    /* renamed from: g */
    private static final byte[] f9126g = new byte[4096];

    /* renamed from: a */
    private final yq2 f9127a;

    /* renamed from: b */
    private final long f9128b;

    /* renamed from: c */
    private long f9129c;

    /* renamed from: d */
    private byte[] f9130d = new byte[65536];

    /* renamed from: e */
    private int f9131e;

    /* renamed from: f */
    private int f9132f;

    public xm2(yq2 yq2Var, long j, long j2) {
        this.f9127a = yq2Var;
        this.f9129c = j;
        this.f9128b = j2;
    }

    /* renamed from: j */
    private final int m4886j(int i) {
        int min = Math.min(this.f9132f, i);
        m4884l(min);
        return min;
    }

    /* renamed from: k */
    private final int m4885k(byte[] bArr, int i, int i2) {
        int i3 = this.f9132f;
        if (i3 == 0) {
            return 0;
        }
        int min = Math.min(i3, i2);
        System.arraycopy(this.f9130d, 0, bArr, i, min);
        m4884l(min);
        return min;
    }

    /* renamed from: l */
    private final void m4884l(int i) {
        int i2 = this.f9132f - i;
        this.f9132f = i2;
        this.f9131e = 0;
        byte[] bArr = this.f9130d;
        byte[] bArr2 = i2 < bArr.length - 524288 ? new byte[65536 + i2] : bArr;
        System.arraycopy(bArr, i, bArr2, 0, i2);
        this.f9130d = bArr2;
    }

    /* renamed from: m */
    private final int m4883m(byte[] bArr, int i, int i2, int i3, boolean z) {
        if (!Thread.interrupted()) {
            int m4724d = this.f9127a.m4724d(bArr, i + i3, i2 - i3);
            if (m4724d != -1) {
                return i3 + m4724d;
            }
            if (i3 == 0 && z) {
                return -1;
            }
            throw new EOFException();
        }
        throw new InterruptedException();
    }

    /* renamed from: n */
    private final void m4882n(int i) {
        if (i != -1) {
            this.f9129c += i;
        }
    }

    /* renamed from: a */
    public final int m4895a(byte[] bArr, int i, int i2) {
        int m4885k = m4885k(bArr, i, i2);
        int i3 = m4885k;
        if (m4885k == 0) {
            i3 = m4883m(bArr, i, i2, 0, true);
        }
        m4882n(i3);
        return i3;
    }

    /* renamed from: b */
    public final boolean m4894b(byte[] bArr, int i, int i2, boolean z) {
        int i3;
        int m4885k = m4885k(bArr, i, i2);
        while (true) {
            i3 = m4885k;
            if (i3 >= i2 || i3 == -1) {
                break;
            }
            m4885k = m4883m(bArr, i, i2, i3, z);
        }
        m4882n(i3);
        return i3 != -1;
    }

    /* renamed from: c */
    public final int m4893c(int i) {
        int m4886j = m4886j(i);
        int i2 = m4886j;
        if (m4886j == 0) {
            i2 = m4883m(f9126g, 0, Math.min(i, 4096), 0, true);
        }
        m4882n(i2);
        return i2;
    }

    /* renamed from: d */
    public final boolean m4892d(int i, boolean z) {
        int i2;
        int m4886j = m4886j(i);
        while (true) {
            i2 = m4886j;
            if (i2 >= i || i2 == -1) {
                break;
            }
            m4886j = m4883m(f9126g, -i2, Math.min(i, i2 + 4096), i2, false);
        }
        m4882n(i2);
        return i2 != -1;
    }

    /* renamed from: e */
    public final boolean m4891e(byte[] bArr, int i, int i2, boolean z) {
        if (!m4890f(i2, false)) {
            return false;
        }
        System.arraycopy(this.f9130d, this.f9131e - i2, bArr, i, i2);
        return true;
    }

    /* renamed from: f */
    public final boolean m4890f(int i, boolean z) {
        int i2 = this.f9131e + i;
        int length = this.f9130d.length;
        if (i2 > length) {
            this.f9130d = Arrays.copyOf(this.f9130d, zr2.m4529f(length + length, 65536 + i2, i2 + 524288));
        }
        int min = Math.min(this.f9132f - this.f9131e, i);
        while (min < i) {
            int m4883m = m4883m(this.f9130d, this.f9131e, i, min, false);
            min = m4883m;
            if (m4883m == -1) {
                return false;
            }
        }
        int i3 = this.f9131e + i;
        this.f9131e = i3;
        this.f9132f = Math.max(this.f9132f, i3);
        return true;
    }

    /* renamed from: g */
    public final void m4889g() {
        this.f9131e = 0;
    }

    /* renamed from: h */
    public final long m4888h() {
        return this.f9129c;
    }

    /* renamed from: i */
    public final long m4887i() {
        return this.f9128b;
    }
}
