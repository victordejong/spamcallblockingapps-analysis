package com.google.android.exoplayer2.extractor;

import com.google.android.exoplayer2.util.af;
import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/e.class */
public final class e implements i {

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.e f20988b;

    /* renamed from: c  reason: collision with root package name */
    private final long f20989c;

    /* renamed from: d  reason: collision with root package name */
    private long f20990d;
    private int f;
    private int g;
    private byte[] e = new byte[65536];

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f20987a = new byte[4096];

    public e(com.google.android.exoplayer2.upstream.e eVar, long j, long j2) {
        this.f20988b = eVar;
        this.f20990d = j;
        this.f20989c = j2;
    }

    private int a(byte[] bArr, int i, int i2, int i3, boolean z) throws IOException {
        if (!Thread.interrupted()) {
            int a2 = this.f20988b.a(bArr, i + i3, i2 - i3);
            if (a2 != -1) {
                return i3 + a2;
            }
            if (i3 == 0 && z) {
                return -1;
            }
            throw new EOFException();
        }
        throw new InterruptedIOException();
    }

    private void d(int i) {
        int i2 = this.f + i;
        byte[] bArr = this.e;
        if (i2 > bArr.length) {
            this.e = Arrays.copyOf(this.e, af.a(bArr.length * 2, 65536 + i2, i2 + 524288));
        }
    }

    private int e(int i) {
        int min = Math.min(this.g, i);
        f(min);
        return min;
    }

    private int e(byte[] bArr, int i, int i2) {
        int i3 = this.g;
        if (i3 == 0) {
            return 0;
        }
        int min = Math.min(i3, i2);
        System.arraycopy(this.e, 0, bArr, i, min);
        f(min);
        return min;
    }

    private void f(int i) {
        int i2 = this.g - i;
        this.g = i2;
        this.f = 0;
        byte[] bArr = this.e;
        byte[] bArr2 = i2 < bArr.length - 524288 ? new byte[65536 + i2] : bArr;
        System.arraycopy(bArr, i, bArr2, 0, i2);
        this.e = bArr2;
    }

    private void g(int i) {
        if (i != -1) {
            this.f20990d += i;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.i
    public final int a(int i) throws IOException {
        int e = e(i);
        int i2 = e;
        if (e == 0) {
            byte[] bArr = this.f20987a;
            i2 = a(bArr, 0, Math.min(i, bArr.length), 0, true);
        }
        g(i2);
        return i2;
    }

    @Override // com.google.android.exoplayer2.extractor.i, com.google.android.exoplayer2.upstream.e
    public final int a(byte[] bArr, int i, int i2) throws IOException {
        int e = e(bArr, i, i2);
        int i3 = e;
        if (e == 0) {
            i3 = a(bArr, i, i2, 0, true);
        }
        g(i3);
        return i3;
    }

    @Override // com.google.android.exoplayer2.extractor.i
    public final void a() {
        this.f = 0;
    }

    @Override // com.google.android.exoplayer2.extractor.i
    public final boolean a(int i, boolean z) throws IOException {
        d(i);
        int i2 = this.g - this.f;
        while (i2 < i) {
            i2 = a(this.e, this.f, i, i2, z);
            if (i2 == -1) {
                return false;
            }
            this.g = this.f + i2;
        }
        this.f += i;
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.i
    public final boolean a(byte[] bArr, int i, int i2, boolean z) throws IOException {
        int e = e(bArr, i, i2);
        while (e < i2 && e != -1) {
            e = a(bArr, i, i2, e, z);
        }
        g(e);
        return e != -1;
    }

    @Override // com.google.android.exoplayer2.extractor.i
    public final long b() {
        return this.f20990d + this.f;
    }

    @Override // com.google.android.exoplayer2.extractor.i
    public final void b(int i) throws IOException {
        int e = e(i);
        while (e < i && e != -1) {
            e = a(this.f20987a, -e, Math.min(i, this.f20987a.length + e), e, false);
        }
        g(e);
    }

    @Override // com.google.android.exoplayer2.extractor.i
    public final void b(byte[] bArr, int i, int i2) throws IOException {
        a(bArr, i, i2, false);
    }

    @Override // com.google.android.exoplayer2.extractor.i
    public final boolean b(byte[] bArr, int i, int i2, boolean z) throws IOException {
        if (!a(i2, z)) {
            return false;
        }
        System.arraycopy(this.e, this.f - i2, bArr, i, i2);
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.i
    public final int c(byte[] bArr, int i, int i2) throws IOException {
        int i3;
        d(i2);
        int i4 = this.g;
        int i5 = this.f;
        int i6 = i4 - i5;
        if (i6 == 0) {
            i3 = a(this.e, i5, i2, 0, true);
            if (i3 == -1) {
                return -1;
            }
            this.g += i3;
        } else {
            i3 = Math.min(i2, i6);
        }
        System.arraycopy(this.e, this.f, bArr, i, i3);
        this.f += i3;
        return i3;
    }

    @Override // com.google.android.exoplayer2.extractor.i
    public final long c() {
        return this.f20990d;
    }

    @Override // com.google.android.exoplayer2.extractor.i
    public final void c(int i) throws IOException {
        a(i, false);
    }

    @Override // com.google.android.exoplayer2.extractor.i
    public final long d() {
        return this.f20989c;
    }

    @Override // com.google.android.exoplayer2.extractor.i
    public final void d(byte[] bArr, int i, int i2) throws IOException {
        b(bArr, i, i2, false);
    }
}
