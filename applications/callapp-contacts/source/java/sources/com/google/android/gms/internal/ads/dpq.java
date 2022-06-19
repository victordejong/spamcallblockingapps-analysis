package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dpq.class */
final class dpq extends InputStream {

    /* renamed from: a */
    private dpn f47379a;

    /* renamed from: b */
    private dmd f47380b;

    /* renamed from: c */
    private int f47381c;

    /* renamed from: d */
    private int f47382d;

    /* renamed from: e */
    private int f47383e;

    /* renamed from: f */
    private int f47384f;

    /* renamed from: g */
    private final /* synthetic */ dpm f47385g;

    public dpq(dpm dpmVar) {
        this.f47385g = dpmVar;
        m16114a();
    }

    /* renamed from: a */
    private final int m16113a(byte[] bArr, int i, int i2) {
        int i3 = i;
        int i4 = i2;
        while (i4 > 0) {
            m16112b();
            if (this.f47380b == null) {
                break;
            }
            int min = Math.min(this.f47381c - this.f47382d, i4);
            int i5 = i3;
            if (bArr != null) {
                this.f47380b.m16473a(bArr, this.f47382d, i3, min);
                i5 = i3 + min;
            }
            this.f47382d += min;
            i4 -= min;
            i3 = i5;
        }
        return i2 - i4;
    }

    /* renamed from: a */
    private final void m16114a() {
        dpn dpnVar = new dpn(this.f47385g, null);
        this.f47379a = dpnVar;
        dmd dmdVar = (dmd) dpnVar.next();
        this.f47380b = dmdVar;
        this.f47381c = dmdVar.mo16138b();
        this.f47382d = 0;
        this.f47383e = 0;
    }

    /* renamed from: b */
    private final void m16112b() {
        if (this.f47380b != null) {
            int i = this.f47382d;
            int i2 = this.f47381c;
            if (i != i2) {
                return;
            }
            this.f47383e += i2;
            this.f47382d = 0;
            if (!this.f47379a.hasNext()) {
                this.f47380b = null;
                this.f47381c = 0;
                return;
            }
            dmd dmdVar = (dmd) this.f47379a.next();
            this.f47380b = dmdVar;
            this.f47381c = dmdVar.mo16138b();
        }
    }

    /* renamed from: c */
    private final int m16111c() {
        return this.f47385g.mo16138b() - (this.f47383e + this.f47382d);
    }

    @Override // java.io.InputStream
    public final int available() throws IOException {
        return m16111c();
    }

    @Override // java.io.InputStream
    public final void mark(int i) {
        this.f47384f = this.f47383e + this.f47382d;
    }

    @Override // java.io.InputStream
    public final boolean markSupported() {
        return true;
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        m16112b();
        dmd dmdVar = this.f47380b;
        if (dmdVar == null) {
            return -1;
        }
        int i = this.f47382d;
        this.f47382d = i + 1;
        return dmdVar.mo16145a(i) & 255;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0031, code lost:
        if (m16111c() == 0) goto L14;
     */
    @Override // java.io.InputStream
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int read(byte[] r6, int r7, int r8) {
        /*
            r5 = this;
            r0 = r6
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0)
            r0 = r7
            if (r0 < 0) goto L38
            r0 = r8
            if (r0 < 0) goto L38
            r0 = r8
            r1 = r6
            int r1 = r1.length
            r2 = r7
            int r1 = r1 - r2
            if (r0 > r1) goto L38
            r0 = r5
            r1 = r6
            r2 = r7
            r3 = r8
            int r0 = r0.m16113a(r1, r2, r3)
            r9 = r0
            r0 = r9
            r7 = r0
            r0 = r9
            if (r0 != 0) goto L36
            r0 = r8
            if (r0 > 0) goto L34
            r0 = r9
            r7 = r0
            r0 = r5
            int r0 = r0.m16111c()
            if (r0 != 0) goto L36
        L34:
            r0 = -1
            r7 = r0
        L36:
            r0 = r7
            return r0
        L38:
            java.lang.IndexOutOfBoundsException r0 = new java.lang.IndexOutOfBoundsException
            r1 = r0
            r1.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dpq.read(byte[], int, int):int");
    }

    @Override // java.io.InputStream
    public final void reset() {
        synchronized (this) {
            m16114a();
            m16113a(null, 0, this.f47384f);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.io.InputStream
    public final long skip(long j) {
        if (j >= 0) {
            char c = j;
            if (j > 2147483647L) {
                c = 65535;
            }
            return m16113a(null, 0, c);
        }
        throw new IndexOutOfBoundsException();
    }
}
