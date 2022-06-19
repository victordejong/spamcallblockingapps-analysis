package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.util.Arrays;
/* renamed from: com.google.android.gms.internal.ads.md */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/md.class */
public final class C6734md {

    /* renamed from: a */
    private static final byte[] f26538a = new byte[4096];

    /* renamed from: b */
    private final AbstractC6886qh f26539b;

    /* renamed from: c */
    private final long f26540c;

    /* renamed from: d */
    private long f26541d;

    /* renamed from: e */
    private byte[] f26542e = new byte[65536];

    /* renamed from: f */
    private int f26543f;

    /* renamed from: g */
    private int f26544g;

    public C6734md(AbstractC6886qh abstractC6886qh, long j, long j2) {
        this.f26539b = abstractC6886qh;
        this.f26541d = j;
        this.f26540c = j2;
    }

    /* renamed from: j */
    private final int m13287j(int i) {
        int min = Math.min(this.f26544g, i);
        m13285l(min);
        return min;
    }

    /* renamed from: k */
    private final int m13286k(byte[] bArr, int i, int i2) {
        int i3 = this.f26544g;
        if (i3 == 0) {
            return 0;
        }
        int min = Math.min(i3, i2);
        System.arraycopy(this.f26542e, 0, bArr, i, min);
        m13285l(min);
        return min;
    }

    /* renamed from: l */
    private final void m13285l(int i) {
        int i2 = this.f26544g - i;
        this.f26544g = i2;
        this.f26543f = 0;
        byte[] bArr = this.f26542e;
        byte[] bArr2 = i2 < bArr.length - 524288 ? new byte[65536 + i2] : bArr;
        System.arraycopy(bArr, i, bArr2, 0, i2);
        this.f26542e = bArr2;
    }

    /* renamed from: m */
    private final int m13284m(byte[] bArr, int i, int i2, int i3, boolean z) {
        if (!Thread.interrupted()) {
            int mo10691b = this.f26539b.mo10691b(bArr, i + i3, i2 - i3);
            if (mo10691b != -1) {
                return i3 + mo10691b;
            }
            if (i3 == 0 && z) {
                return -1;
            }
            throw new EOFException();
        }
        throw new InterruptedException();
    }

    /* renamed from: n */
    private final void m13283n(int i) {
        if (i != -1) {
            this.f26541d += i;
        }
    }

    /* renamed from: a */
    public final int m13296a(byte[] bArr, int i, int i2) {
        int m13286k = m13286k(bArr, i, i2);
        int i3 = m13286k;
        if (m13286k == 0) {
            i3 = m13284m(bArr, i, i2, 0, true);
        }
        m13283n(i3);
        return i3;
    }

    /* renamed from: b */
    public final boolean m13295b(byte[] bArr, int i, int i2, boolean z) {
        int i3;
        int m13286k = m13286k(bArr, i, i2);
        while (true) {
            i3 = m13286k;
            if (i3 >= i2 || i3 == -1) {
                break;
            }
            m13286k = m13284m(bArr, i, i2, i3, z);
        }
        m13283n(i3);
        return i3 != -1;
    }

    /* renamed from: c */
    public final int m13294c(int i) {
        int m13287j = m13287j(i);
        int i2 = m13287j;
        if (m13287j == 0) {
            i2 = m13284m(f26538a, 0, Math.min(i, 4096), 0, true);
        }
        m13283n(i2);
        return i2;
    }

    /* renamed from: d */
    public final boolean m13293d(int i, boolean z) {
        int i2;
        int m13287j = m13287j(i);
        while (true) {
            i2 = m13287j;
            if (i2 >= i || i2 == -1) {
                break;
            }
            m13287j = m13284m(f26538a, -i2, Math.min(i, i2 + 4096), i2, false);
        }
        m13283n(i2);
        return i2 != -1;
    }

    /* renamed from: e */
    public final boolean m13292e(byte[] bArr, int i, int i2, boolean z) {
        if (!m13291f(i2, false)) {
            return false;
        }
        System.arraycopy(this.f26542e, this.f26543f - i2, bArr, i, i2);
        return true;
    }

    /* renamed from: f */
    public final boolean m13291f(int i, boolean z) {
        int i2 = this.f26543f + i;
        int length = this.f26542e.length;
        if (i2 > length) {
            this.f26542e = Arrays.copyOf(this.f26542e, C6961si.m11016f(length + length, 65536 + i2, i2 + 524288));
        }
        int min = Math.min(this.f26544g - this.f26543f, i);
        while (min < i) {
            int m13284m = m13284m(this.f26542e, this.f26543f, i, min, false);
            min = m13284m;
            if (m13284m == -1) {
                return false;
            }
        }
        int i3 = this.f26543f + i;
        this.f26543f = i3;
        this.f26544g = Math.max(this.f26544g, i3);
        return true;
    }

    /* renamed from: g */
    public final void m13290g() {
        this.f26543f = 0;
    }

    /* renamed from: h */
    public final long m13289h() {
        return this.f26541d;
    }

    /* renamed from: i */
    public final long m13288i() {
        return this.f26540c;
    }
}
