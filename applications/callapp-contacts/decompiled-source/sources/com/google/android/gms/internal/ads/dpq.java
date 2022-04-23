package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dpq.class */
final class dpq extends InputStream {

    /* renamed from: a  reason: collision with root package name */
    private dpn f27075a;

    /* renamed from: b  reason: collision with root package name */
    private dmd f27076b;

    /* renamed from: c  reason: collision with root package name */
    private int f27077c;

    /* renamed from: d  reason: collision with root package name */
    private int f27078d;
    private int e;
    private int f;
    private final /* synthetic */ dpm g;

    public dpq(dpm dpmVar) {
        this.g = dpmVar;
        a();
    }

    private final int a(byte[] bArr, int i, int i2) {
        int i3 = i;
        int i4 = i2;
        while (i4 > 0) {
            b();
            if (this.f27076b == null) {
                break;
            }
            int min = Math.min(this.f27077c - this.f27078d, i4);
            i3 = i3;
            if (bArr != null) {
                this.f27076b.a(bArr, this.f27078d, i3, min);
                i3 += min;
            }
            this.f27078d += min;
            i4 -= min;
        }
        return i2 - i4;
    }

    private final void a() {
        dpn dpnVar = new dpn(this.g, null);
        this.f27075a = dpnVar;
        dmd dmdVar = (dmd) dpnVar.next();
        this.f27076b = dmdVar;
        this.f27077c = dmdVar.b();
        this.f27078d = 0;
        this.e = 0;
    }

    private final void b() {
        if (this.f27076b != null) {
            int i = this.f27078d;
            int i2 = this.f27077c;
            if (i == i2) {
                this.e += i2;
                this.f27078d = 0;
                if (this.f27075a.hasNext()) {
                    dmd dmdVar = (dmd) this.f27075a.next();
                    this.f27076b = dmdVar;
                    this.f27077c = dmdVar.b();
                    return;
                }
                this.f27076b = null;
                this.f27077c = 0;
            }
        }
    }

    private final int c() {
        return this.g.b() - (this.e + this.f27078d);
    }

    @Override // java.io.InputStream
    public final int available() throws IOException {
        return c();
    }

    @Override // java.io.InputStream
    public final void mark(int i) {
        this.f = this.e + this.f27078d;
    }

    @Override // java.io.InputStream
    public final boolean markSupported() {
        return true;
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        b();
        dmd dmdVar = this.f27076b;
        if (dmdVar == null) {
            return -1;
        }
        int i = this.f27078d;
        this.f27078d = i + 1;
        return dmdVar.a(i) & 255;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0031, code lost:
        if (c() == 0) goto L_0x0034;
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
            if (r0 < 0) goto L_0x0038
            r0 = r8
            if (r0 < 0) goto L_0x0038
            r0 = r8
            r1 = r6
            int r1 = r1.length
            r2 = r7
            int r1 = r1 - r2
            if (r0 > r1) goto L_0x0038
            r0 = r5
            r1 = r6
            r2 = r7
            r3 = r8
            int r0 = r0.a(r1, r2, r3)
            r9 = r0
            r0 = r9
            r7 = r0
            r0 = r9
            if (r0 != 0) goto L_0x0036
            r0 = r8
            if (r0 > 0) goto L_0x0034
            r0 = r9
            r7 = r0
            r0 = r5
            int r0 = r0.c()
            if (r0 != 0) goto L_0x0036
        L_0x0034:
            r0 = -1
            r7 = r0
        L_0x0036:
            r0 = r7
            return r0
        L_0x0038:
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
            a();
            a(null, 0, this.f);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v2 */
    @Override // java.io.InputStream
    public final long skip(long j) {
        if (j >= 0) {
            long j2 = j;
            if (j > 2147483647L) {
                j2 = 2147483647;
            }
            return a(null, 0, (int) j2);
        }
        throw new IndexOutOfBoundsException();
    }
}
