package p244t7;

import java.io.IOException;
import java.io.InputStream;
import p148k7.C3358l;
/* renamed from: t7.a */
/* loaded from: classes2-dex2jar.jar:t7/a.class */
public class C4423a extends InputStream {

    /* renamed from: a */
    public C3358l f13768a;

    public C4423a(C3358l c3358l) {
        this.f13768a = c3358l;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        C3358l c3358l = this.f13768a;
        if (c3358l.f11382c <= 0) {
            return -1;
        }
        return c3358l.m2350c() & 255;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = this.f13768a.f11382c;
        if (i3 <= 0) {
            return -1;
        }
        int min = Math.min(i2, i3);
        this.f13768a.m2348e(bArr, i, min);
        return min;
    }
}
