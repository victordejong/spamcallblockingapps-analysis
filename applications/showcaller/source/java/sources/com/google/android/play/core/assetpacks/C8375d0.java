package com.google.android.play.core.assetpacks;

import java.io.FilterInputStream;
import java.io.InputStream;
import java.util.Arrays;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.play.core.assetpacks.d0 */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/assetpacks/d0.class */
public final class C8375d0 extends FilterInputStream {

    /* renamed from: f */
    private long f37693f;

    /* renamed from: d */
    private final C8400j1 f37691d = new C8400j1();

    /* renamed from: e */
    private byte[] f37692e = new byte[4096];

    /* renamed from: g */
    private boolean f37694g = false;

    /* renamed from: h */
    private boolean f37695h = false;

    public C8375d0(InputStream inputStream) {
        super(inputStream);
    }

    /* renamed from: k */
    private final boolean m3763k(int i) {
        int m3762p = m3762p(this.f37692e, 0, i);
        if (m3762p != i) {
            int i2 = i - m3762p;
            if (m3762p(this.f37692e, m3762p, i2) != i2) {
                this.f37691d.m3728a(this.f37692e, 0, m3762p);
                return false;
            }
        }
        this.f37691d.m3728a(this.f37692e, 0, i);
        return true;
    }

    /* renamed from: p */
    private final int m3762p(byte[] bArr, int i, int i2) {
        return Math.max(0, super.read(bArr, i, i2));
    }

    /* renamed from: a */
    public final C8368b2 m3767a() {
        int i;
        byte[] bArr;
        if (this.f37693f <= 0) {
            if (!this.f37694g) {
            }
            return new C8368b2(null, -1L, -1, false, false, null);
        }
        do {
            bArr = this.f37692e;
        } while (read(bArr, 0, bArr.length) != -1);
        if (!this.f37694g || this.f37695h) {
            return new C8368b2(null, -1L, -1, false, false, null);
        }
        if (!m3763k(30)) {
            this.f37694g = true;
            return this.f37691d.m3727b();
        }
        C8368b2 m3727b = this.f37691d.m3727b();
        if (m3727b.m3773h()) {
            this.f37695h = true;
            return m3727b;
        } else if (m3727b.m3776e() == 4294967295L) {
            throw new C8369bk("Files bigger than 4GiB are not supported.");
        } else {
            int m3726c = this.f37691d.m3726c() - 30;
            long j = m3726c;
            int length = this.f37692e.length;
            if (j > length) {
                do {
                    i = length + length;
                    length = i;
                } while (i < j);
                this.f37692e = Arrays.copyOf(this.f37692e, i);
            }
            if (!m3763k(m3726c)) {
                this.f37694g = true;
                return this.f37691d.m3727b();
            }
            C8368b2 m3727b2 = this.f37691d.m3727b();
            this.f37693f = m3727b2.m3776e();
            return m3727b2;
        }
    }

    /* renamed from: e */
    public final boolean m3766e() {
        return this.f37694g;
    }

    /* renamed from: f */
    public final boolean m3765f() {
        return this.f37695h;
    }

    /* renamed from: g */
    public final long m3764g() {
        return this.f37693f;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        long j = this.f37693f;
        if (j <= 0 || this.f37694g) {
            return -1;
        }
        int m3762p = m3762p(bArr, i, (int) Math.min(j, i2));
        this.f37693f -= m3762p;
        int i3 = m3762p;
        if (m3762p == 0) {
            this.f37694g = true;
            i3 = 0;
        }
        return i3;
    }
}
