package p193e.p1577m.p1578a.p1596c.p1602g1.p1606d0;

import com.google.android.exoplayer2.Format;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import p193e.p1577m.p1578a.p1596c.p1602g1.p1606d0.AbstractC24347h;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24798t;
/* renamed from: e.m.a.c.g1.d0.g */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/d0/g.class */
public final class C24346g extends AbstractC24347h {

    /* renamed from: o */
    public static final byte[] f67697o = {79, 112, 117, 115, 72, 101, 97, 100};

    /* renamed from: n */
    public boolean f67698n;

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1606d0.AbstractC24347h
    /* renamed from: c */
    public long mo5217c(C24798t c24798t) {
        int i;
        int i2;
        byte[] bArr = c24798t.f69504a;
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
        return m5222a(i * (i5 >= 16 ? 2500 << i2 : i5 >= 12 ? 10000 << (i2 & 1) : (i5 & 3) == 3 ? 60000 : 10000 << i2));
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1606d0.AbstractC24347h
    /* renamed from: d */
    public boolean mo5216d(C24798t c24798t, long j, AbstractC24347h.C24349b c24349b) {
        boolean z = true;
        if (this.f67698n) {
            if (c24798t.m4541e() != 1332770163) {
                z = false;
            }
            c24798t.m4547C(0);
            return z;
        }
        byte[] copyOf = Arrays.copyOf(c24798t.f69504a, c24798t.f69506c);
        byte b = copyOf[9];
        byte b2 = copyOf[11];
        byte b3 = copyOf[10];
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(copyOf);
        m5223f(arrayList, ((b2 & 255) << 8) | (b3 & 255));
        m5223f(arrayList, 3840);
        c24349b.f67712a = Format.m39253g(null, "audio/opus", null, -1, -1, b & 255, 48000, arrayList, null, 0, null);
        this.f67698n = true;
        return true;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1606d0.AbstractC24347h
    /* renamed from: e */
    public void mo5215e(boolean z) {
        super.mo5215e(z);
        if (z) {
            this.f67698n = false;
        }
    }

    /* renamed from: f */
    public final void m5223f(List<byte[]> list, int i) {
        list.add(ByteBuffer.allocate(8).order(ByteOrder.nativeOrder()).putLong((i * 1000000000) / 48000).array());
    }
}
