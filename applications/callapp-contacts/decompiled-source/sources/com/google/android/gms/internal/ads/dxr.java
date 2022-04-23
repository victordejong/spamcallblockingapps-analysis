package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dxr.class */
public final class dxr implements dxt {

    /* renamed from: a  reason: collision with root package name */
    private static final byte[] f27378a = new byte[4096];

    /* renamed from: b  reason: collision with root package name */
    private final ecb f27379b;

    /* renamed from: c  reason: collision with root package name */
    private final long f27380c;

    /* renamed from: d  reason: collision with root package name */
    private long f27381d;
    private byte[] e = new byte[65536];
    private int f;
    private int g;

    public dxr(ecb ecbVar, long j, long j2) {
        this.f27379b = ecbVar;
        this.f27381d = j;
        this.f27380c = j2;
    }

    private final int a(byte[] bArr, int i, int i2, int i3, boolean z) throws InterruptedException, IOException {
        if (!Thread.interrupted()) {
            int a2 = this.f27379b.a(bArr, i + i3, i2 - i3);
            if (a2 != -1) {
                return i3 + a2;
            }
            if (i3 == 0 && z) {
                return -1;
            }
            throw new EOFException();
        }
        throw new InterruptedException();
    }

    private final int d(byte[] bArr, int i, int i2) {
        int i3 = this.g;
        if (i3 == 0) {
            return 0;
        }
        int min = Math.min(i3, i2);
        System.arraycopy(this.e, 0, bArr, i, min);
        f(min);
        return min;
    }

    private final boolean d(int i) throws IOException, InterruptedException {
        int i2 = this.f + i;
        byte[] bArr = this.e;
        if (i2 > bArr.length) {
            this.e = Arrays.copyOf(this.e, ede.a(bArr.length << 1, 65536 + i2, i2 + 524288));
        }
        int min = Math.min(this.g - this.f, i);
        while (min < i) {
            int a2 = a(this.e, this.f, i, min, false);
            min = a2;
            if (a2 == -1) {
                return false;
            }
        }
        int i3 = this.f + i;
        this.f = i3;
        this.g = Math.max(this.g, i3);
        return true;
    }

    private final int e(int i) {
        int min = Math.min(this.g, i);
        f(min);
        return min;
    }

    private final void f(int i) {
        int i2 = this.g - i;
        this.g = i2;
        this.f = 0;
        byte[] bArr = this.e;
        byte[] bArr2 = i2 < bArr.length - 524288 ? new byte[65536 + i2] : bArr;
        System.arraycopy(bArr, i, bArr2, 0, i2);
        this.e = bArr2;
    }

    private final void g(int i) {
        if (i != -1) {
            this.f27381d += i;
        }
    }

    @Override // com.google.android.gms.internal.ads.dxt
    public final int a(int i) throws IOException, InterruptedException {
        int e = e(i);
        int i2 = e;
        if (e == 0) {
            byte[] bArr = f27378a;
            i2 = a(bArr, 0, Math.min(i, bArr.length), 0, true);
        }
        g(i2);
        return i2;
    }

    @Override // com.google.android.gms.internal.ads.dxt
    public final int a(byte[] bArr, int i, int i2) throws IOException, InterruptedException {
        int d2 = d(bArr, i, i2);
        int i3 = d2;
        if (d2 == 0) {
            i3 = a(bArr, i, i2, 0, true);
        }
        g(i3);
        return i3;
    }

    @Override // com.google.android.gms.internal.ads.dxt
    public final void a() {
        this.f = 0;
    }

    @Override // com.google.android.gms.internal.ads.dxt
    public final boolean a(byte[] bArr, int i, int i2, boolean z) throws IOException, InterruptedException {
        int d2 = d(bArr, i, i2);
        while (d2 < i2 && d2 != -1) {
            d2 = a(bArr, i, i2, d2, z);
        }
        g(d2);
        return d2 != -1;
    }

    @Override // com.google.android.gms.internal.ads.dxt
    public final long b() {
        return this.f27381d;
    }

    @Override // com.google.android.gms.internal.ads.dxt
    public final void b(int i) throws IOException, InterruptedException {
        int e = e(i);
        while (e < i && e != -1) {
            byte[] bArr = f27378a;
            e = a(bArr, -e, Math.min(i, bArr.length + e), e, false);
        }
        g(e);
    }

    @Override // com.google.android.gms.internal.ads.dxt
    public final void b(byte[] bArr, int i, int i2) throws IOException, InterruptedException {
        a(bArr, i, i2, false);
    }

    @Override // com.google.android.gms.internal.ads.dxt
    public final long c() {
        return this.f27380c;
    }

    @Override // com.google.android.gms.internal.ads.dxt
    public final void c(int i) throws IOException, InterruptedException {
        d(i);
    }

    @Override // com.google.android.gms.internal.ads.dxt
    public final void c(byte[] bArr, int i, int i2) throws IOException, InterruptedException {
        if (d(i2)) {
            System.arraycopy(this.e, this.f - i2, bArr, i, i2);
        }
    }
}
