package p1727n3.p1874y.p1876b.p1877a.p1882q0.p1888v;

import androidx.media2.exoplayer.external.Format;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.p1888v.AbstractC27243h;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27434m;
/* renamed from: n3.y.b.a.q0.v.g */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/v/g.class */
public final class C27242g extends AbstractC27243h {

    /* renamed from: o */
    public static final byte[] f76429o = {79, 112, 117, 115, 72, 101, 97, 100};

    /* renamed from: n */
    public boolean f76430n;

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1888v.AbstractC27243h
    /* renamed from: d */
    public long mo651d(C27434m c27434m) {
        int i;
        int i2;
        byte[] bArr = c27434m.f77200a;
        int i3 = bArr[0] & 255;
        int i4 = i3 & 3;
        if (i4 != 0) {
            i = 2;
            if (i4 != 1) {
                i = 2;
                if (i4 != 2) {
                    i = bArr[1] & 63;
                }
            }
        } else {
            i = 1;
        }
        int i5 = i3 >> 3;
        return m659b(i * (i5 >= 16 ? 2500 << i2 : i5 >= 12 ? 10000 << (i2 & 1) : (i5 & 3) == 3 ? 60000 : 10000 << i2));
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1888v.AbstractC27243h
    /* renamed from: e */
    public boolean mo650e(C27434m c27434m, long j, AbstractC27243h.C27245b c27245b) {
        boolean z = true;
        if (this.f76430n) {
            if (c27434m.m337d() != 1332770163) {
                z = false;
            }
            c27434m.m315z(0);
            return z;
        }
        byte[] copyOf = Arrays.copyOf(c27434m.f77200a, c27434m.f77202c);
        byte b = copyOf[9];
        byte b2 = copyOf[11];
        byte b3 = copyOf[10];
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(copyOf);
        m661g(arrayList, ((b2 & 255) << 8) | (b3 & 255));
        m661g(arrayList, 3840);
        c27245b.f76444a = Format.m42842k(null, "audio/opus", null, -1, -1, b & 255, 48000, arrayList, null, 0, null);
        this.f76430n = true;
        return true;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1888v.AbstractC27243h
    /* renamed from: f */
    public void mo649f(boolean z) {
        super.mo649f(z);
        if (z) {
            this.f76430n = false;
        }
    }

    /* renamed from: g */
    public final void m661g(List<byte[]> list, int i) {
        list.add(ByteBuffer.allocate(8).order(ByteOrder.nativeOrder()).putLong((i * 1000000000) / 48000).array());
    }
}
