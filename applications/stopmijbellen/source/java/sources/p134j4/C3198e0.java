package p134j4;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
/* renamed from: j4.e0 */
/* loaded from: classes-dex2jar.jar:j4/e0.class */
public final class C3198e0 extends FilterInputStream {

    /* renamed from: c */
    public long f10773c;

    /* renamed from: a */
    public final C3227l1 f10771a = new C3227l1();

    /* renamed from: b */
    public byte[] f10772b = new byte[4096];

    /* renamed from: d */
    public boolean f10774d = false;

    /* renamed from: e */
    public boolean f10775e = false;

    public C3198e0(InputStream inputStream) {
        super(inputStream);
    }

    /* renamed from: d */
    public final AbstractC3200e2 m2555d() throws IOException {
        int i;
        byte[] bArr;
        if (this.f10773c <= 0) {
            if (!this.f10774d) {
            }
            return new C3190c0(null, -1L, -1, false, false, null);
        }
        do {
            bArr = this.f10772b;
        } while (read(bArr, 0, bArr.length) != -1);
        if (!this.f10774d || this.f10775e) {
            return new C3190c0(null, -1L, -1, false, false, null);
        }
        if (!m2553l(30)) {
            this.f10774d = true;
            return this.f10771a.m2532b();
        }
        AbstractC3200e2 m2532b = this.f10771a.m2532b();
        C3190c0 c3190c0 = (C3190c0) m2532b;
        if (c3190c0.f10744e) {
            this.f10775e = true;
            return m2532b;
        } else if (c3190c0.f10741b == 4294967295L) {
            throw new C3233n0("Files bigger than 4GiB are not supported.");
        } else {
            int i2 = this.f10771a.f10875f - 30;
            long j = i2;
            int length = this.f10772b.length;
            if (j > length) {
                do {
                    i = length + length;
                    length = i;
                } while (i < j);
                this.f10772b = Arrays.copyOf(this.f10772b, i);
            }
            if (!m2553l(i2)) {
                this.f10774d = true;
                return this.f10771a.m2532b();
            }
            AbstractC3200e2 m2532b2 = this.f10771a.m2532b();
            this.f10773c = ((C3190c0) m2532b2).f10741b;
            return m2532b2;
        }
    }

    /* renamed from: k */
    public final int m2554k(byte[] bArr, int i, int i2) throws IOException {
        return Math.max(0, super.read(bArr, i, i2));
    }

    /* renamed from: l */
    public final boolean m2553l(int i) throws IOException {
        int m2554k = m2554k(this.f10772b, 0, i);
        if (m2554k != i) {
            int i2 = i - m2554k;
            if (m2554k(this.f10772b, m2554k, i2) != i2) {
                this.f10771a.m2533a(this.f10772b, 0, m2554k);
                return false;
            }
        }
        this.f10771a.m2533a(this.f10772b, 0, i);
        return true;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        long j = this.f10773c;
        if (j <= 0 || this.f10774d) {
            return -1;
        }
        int max = Math.max(0, super.read(bArr, i, (int) Math.min(j, i2)));
        this.f10773c -= max;
        if (max != 0) {
            return max;
        }
        this.f10774d = true;
        return 0;
    }
}
