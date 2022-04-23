package androidx.media2.exoplayer.external.extractor;

import androidx.media2.exoplayer.external.upstream.f;
import androidx.media2.exoplayer.external.util.ac;
import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/d.class */
public final class d implements h {

    /* renamed from: a  reason: collision with root package name */
    public int f3076a;

    /* renamed from: c  reason: collision with root package name */
    private final f f3078c;

    /* renamed from: d  reason: collision with root package name */
    private final long f3079d;
    private long e;
    private int g;
    private byte[] f = new byte[65536];

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f3077b = new byte[4096];

    public d(f fVar, long j, long j2) {
        this.f3078c = fVar;
        this.e = j;
        this.f3079d = j2;
    }

    private int a(byte[] bArr, int i, int i2, int i3, boolean z) throws InterruptedException, IOException {
        if (!Thread.interrupted()) {
            int a2 = this.f3078c.a(bArr, i + i3, i2 - i3);
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

    private int d(byte[] bArr, int i, int i2) {
        int i3 = this.g;
        if (i3 == 0) {
            return 0;
        }
        int min = Math.min(i3, i2);
        System.arraycopy(this.f, 0, bArr, i, min);
        f(min);
        return min;
    }

    private void d(int i) {
        int i2 = this.f3076a + i;
        byte[] bArr = this.f;
        if (i2 > bArr.length) {
            this.f = Arrays.copyOf(this.f, ac.a(bArr.length * 2, 65536 + i2, i2 + 524288));
        }
    }

    private int e(int i) {
        int min = Math.min(this.g, i);
        f(min);
        return min;
    }

    private void f(int i) {
        int i2 = this.g - i;
        this.g = i2;
        this.f3076a = 0;
        byte[] bArr = this.f;
        byte[] bArr2 = i2 < bArr.length - 524288 ? new byte[65536 + i2] : bArr;
        System.arraycopy(bArr, i, bArr2, 0, i2);
        this.f = bArr2;
    }

    private void g(int i) {
        if (i != -1) {
            this.e += i;
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.h
    public final int a(int i) throws IOException, InterruptedException {
        int e = e(i);
        int i2 = e;
        if (e == 0) {
            byte[] bArr = this.f3077b;
            i2 = a(bArr, 0, Math.min(i, bArr.length), 0, true);
        }
        g(i2);
        return i2;
    }

    @Override // androidx.media2.exoplayer.external.extractor.h
    public final int a(byte[] bArr, int i, int i2) throws IOException, InterruptedException {
        int d2 = d(bArr, i, i2);
        int i3 = d2;
        if (d2 == 0) {
            i3 = a(bArr, i, i2, 0, true);
        }
        g(i3);
        return i3;
    }

    @Override // androidx.media2.exoplayer.external.extractor.h
    public final void a() {
        this.f3076a = 0;
    }

    @Override // androidx.media2.exoplayer.external.extractor.h
    public final boolean a(int i, boolean z) throws IOException, InterruptedException {
        d(i);
        int i2 = this.g - this.f3076a;
        while (i2 < i) {
            i2 = a(this.f, this.f3076a, i, i2, z);
            if (i2 == -1) {
                return false;
            }
            this.g = this.f3076a + i2;
        }
        this.f3076a += i;
        return true;
    }

    @Override // androidx.media2.exoplayer.external.extractor.h
    public final boolean a(byte[] bArr, int i, int i2, boolean z) throws IOException, InterruptedException {
        int d2 = d(bArr, i, i2);
        while (d2 < i2 && d2 != -1) {
            d2 = a(bArr, i, i2, d2, z);
        }
        g(d2);
        return d2 != -1;
    }

    @Override // androidx.media2.exoplayer.external.extractor.h
    public final long b() {
        return this.e + this.f3076a;
    }

    @Override // androidx.media2.exoplayer.external.extractor.h
    public final void b(int i) throws IOException, InterruptedException {
        int e = e(i);
        while (e < i && e != -1) {
            e = a(this.f3077b, -e, Math.min(i, this.f3077b.length + e), e, false);
        }
        g(e);
    }

    @Override // androidx.media2.exoplayer.external.extractor.h
    public final void b(byte[] bArr, int i, int i2) throws IOException, InterruptedException {
        a(bArr, i, i2, false);
    }

    @Override // androidx.media2.exoplayer.external.extractor.h
    public final boolean b(byte[] bArr, int i, int i2, boolean z) throws IOException, InterruptedException {
        if (!a(i2, z)) {
            return false;
        }
        System.arraycopy(this.f, this.f3076a - i2, bArr, i, i2);
        return true;
    }

    @Override // androidx.media2.exoplayer.external.extractor.h
    public final long c() {
        return this.e;
    }

    @Override // androidx.media2.exoplayer.external.extractor.h
    public final void c(int i) throws IOException, InterruptedException {
        a(i, false);
    }

    @Override // androidx.media2.exoplayer.external.extractor.h
    public final void c(byte[] bArr, int i, int i2) throws IOException, InterruptedException {
        b(bArr, i, i2, false);
    }

    @Override // androidx.media2.exoplayer.external.extractor.h
    public final long d() {
        return this.f3079d;
    }
}
