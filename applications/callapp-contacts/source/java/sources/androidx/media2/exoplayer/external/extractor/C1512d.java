package androidx.media2.exoplayer.external.extractor;

import androidx.media2.exoplayer.external.upstream.AbstractC1968f;
import androidx.media2.exoplayer.external.util.C1996ac;
import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: androidx.media2.exoplayer.external.extractor.d */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/d.class */
public final class C1512d implements AbstractC1600h {

    /* renamed from: a */
    public int f5820a;

    /* renamed from: c */
    private final AbstractC1968f f5822c;

    /* renamed from: d */
    private final long f5823d;

    /* renamed from: e */
    private long f5824e;

    /* renamed from: g */
    private int f5826g;

    /* renamed from: f */
    private byte[] f5825f = new byte[65536];

    /* renamed from: b */
    private final byte[] f5821b = new byte[4096];

    public C1512d(AbstractC1968f abstractC1968f, long j, long j2) {
        this.f5822c = abstractC1968f;
        this.f5824e = j;
        this.f5823d = j2;
    }

    /* renamed from: a */
    private int m42772a(byte[] bArr, int i, int i2, int i3, boolean z) throws InterruptedException, IOException {
        if (!Thread.interrupted()) {
            int mo41197a = this.f5822c.mo41197a(bArr, i + i3, i2 - i3);
            if (mo41197a != -1) {
                return i3 + mo41197a;
            }
            if (i3 == 0 && z) {
                return -1;
            }
            throw new EOFException();
        }
        throw new InterruptedException();
    }

    /* renamed from: d */
    private int m42770d(byte[] bArr, int i, int i2) {
        int i3 = this.f5826g;
        if (i3 == 0) {
            return 0;
        }
        int min = Math.min(i3, i2);
        System.arraycopy(this.f5825f, 0, bArr, i, min);
        m42768f(min);
        return min;
    }

    /* renamed from: d */
    private void m42771d(int i) {
        int i2 = this.f5820a + i;
        byte[] bArr = this.f5825f;
        if (i2 > bArr.length) {
            this.f5825f = Arrays.copyOf(this.f5825f, C1996ac.m41674a(bArr.length * 2, 65536 + i2, i2 + 524288));
        }
    }

    /* renamed from: e */
    private int m42769e(int i) {
        int min = Math.min(this.f5826g, i);
        m42768f(min);
        return min;
    }

    /* renamed from: f */
    private void m42768f(int i) {
        int i2 = this.f5826g - i;
        this.f5826g = i2;
        this.f5820a = 0;
        byte[] bArr = this.f5825f;
        byte[] bArr2 = i2 < bArr.length - 524288 ? new byte[65536 + i2] : bArr;
        System.arraycopy(bArr, i, bArr2, 0, i2);
        this.f5825f = bArr2;
    }

    /* renamed from: g */
    private void m42767g(int i) {
        if (i != -1) {
            this.f5824e += i;
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1600h
    /* renamed from: a */
    public final int mo42611a(int i) throws IOException, InterruptedException {
        int m42769e = m42769e(i);
        int i2 = m42769e;
        if (m42769e == 0) {
            byte[] bArr = this.f5821b;
            i2 = m42772a(bArr, 0, Math.min(i, bArr.length), 0, true);
        }
        m42767g(i2);
        return i2;
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1600h
    /* renamed from: a */
    public final int mo42609a(byte[] bArr, int i, int i2) throws IOException, InterruptedException {
        int m42770d = m42770d(bArr, i, i2);
        int i3 = m42770d;
        if (m42770d == 0) {
            i3 = m42772a(bArr, i, i2, 0, true);
        }
        m42767g(i3);
        return i3;
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1600h
    /* renamed from: a */
    public final void mo42612a() {
        this.f5820a = 0;
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1600h
    /* renamed from: a */
    public final boolean mo42610a(int i, boolean z) throws IOException, InterruptedException {
        m42771d(i);
        int i2 = this.f5826g - this.f5820a;
        while (i2 < i) {
            i2 = m42772a(this.f5825f, this.f5820a, i, i2, z);
            if (i2 == -1) {
                return false;
            }
            this.f5826g = this.f5820a + i2;
        }
        this.f5820a += i;
        return true;
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1600h
    /* renamed from: a */
    public final boolean mo42608a(byte[] bArr, int i, int i2, boolean z) throws IOException, InterruptedException {
        int i3;
        int m42770d = m42770d(bArr, i, i2);
        while (true) {
            i3 = m42770d;
            if (i3 >= i2 || i3 == -1) {
                break;
            }
            m42770d = m42772a(bArr, i, i2, i3, z);
        }
        m42767g(i3);
        return i3 != -1;
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1600h
    /* renamed from: b */
    public final long mo42607b() {
        return this.f5824e + this.f5820a;
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1600h
    /* renamed from: b */
    public final void mo42606b(int i) throws IOException, InterruptedException {
        int i2;
        int m42769e = m42769e(i);
        while (true) {
            i2 = m42769e;
            if (i2 >= i || i2 == -1) {
                break;
            }
            m42769e = m42772a(this.f5821b, -i2, Math.min(i, this.f5821b.length + i2), i2, false);
        }
        m42767g(i2);
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1600h
    /* renamed from: b */
    public final void mo42605b(byte[] bArr, int i, int i2) throws IOException, InterruptedException {
        mo42608a(bArr, i, i2, false);
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1600h
    /* renamed from: b */
    public final boolean mo42604b(byte[] bArr, int i, int i2, boolean z) throws IOException, InterruptedException {
        if (!mo42610a(i2, z)) {
            return false;
        }
        System.arraycopy(this.f5825f, this.f5820a - i2, bArr, i, i2);
        return true;
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1600h
    /* renamed from: c */
    public final long mo42603c() {
        return this.f5824e;
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1600h
    /* renamed from: c */
    public final void mo42602c(int i) throws IOException, InterruptedException {
        mo42610a(i, false);
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1600h
    /* renamed from: c */
    public final void mo42601c(byte[] bArr, int i, int i2) throws IOException, InterruptedException {
        mo42604b(bArr, i, i2, false);
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1600h
    /* renamed from: d */
    public final long mo42600d() {
        return this.f5823d;
    }
}
