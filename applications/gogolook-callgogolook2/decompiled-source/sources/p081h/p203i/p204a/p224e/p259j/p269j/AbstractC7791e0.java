package p081h.p203i.p204a.p224e.p259j.p269j;

import gogolook.callgogolook2.gson.UserProfile;
import java.io.IOException;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Iterator;
/* renamed from: h.i.a.e.j.j.e0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/e0.class */
public abstract class AbstractC7791e0 implements Serializable, Iterable<Byte> {

    /* renamed from: b */
    public static final AbstractC7791e0 f18220b = new C7868n0(C7891p1.f18513b);

    /* renamed from: c */
    public static final AbstractC7834j0 f18221c;

    /* renamed from: a */
    public int f18222a = 0;

    static {
        f18221c = C7767b0.m19520a() ? new C7883o0(null) : new C7817h0(null);
        new C7808g0();
    }

    /* renamed from: a */
    public static int m19477a(byte b) {
        return b & 255;
    }

    /* renamed from: a */
    public static AbstractC7791e0 m19476a(String str) {
        return new C7868n0(str.getBytes(C7891p1.f18512a));
    }

    /* renamed from: a */
    public static AbstractC7791e0 m19475a(byte[] bArr) {
        return new C7868n0(bArr);
    }

    /* renamed from: a */
    public static AbstractC7791e0 m19474a(byte[] bArr, int i, int i2) {
        m19471b(i, i + i2, bArr.length);
        return new C7868n0(f18221c.mo19118a(bArr, i, i2));
    }

    /* renamed from: b */
    public static int m19471b(int i, int i2, int i3) {
        int i4 = i2 - i;
        if ((i | i2 | i4 | (i3 - i2)) >= 0) {
            return i4;
        }
        if (i < 0) {
            StringBuilder sb = new StringBuilder(32);
            sb.append("Beginning index: ");
            sb.append(i);
            sb.append(" < 0");
            throw new IndexOutOfBoundsException(sb.toString());
        } else if (i2 < i) {
            StringBuilder sb2 = new StringBuilder(66);
            sb2.append("Beginning index larger than ending index: ");
            sb2.append(i);
            sb2.append(UserProfile.CARD_CATE_SEPARATOR);
            sb2.append(i2);
            throw new IndexOutOfBoundsException(sb2.toString());
        } else {
            StringBuilder sb3 = new StringBuilder(37);
            sb3.append("End index: ");
            sb3.append(i2);
            sb3.append(" >= ");
            sb3.append(i3);
            throw new IndexOutOfBoundsException(sb3.toString());
        }
    }

    /* renamed from: h */
    public static C7854l0 m19470h(int i) {
        return new C7854l0(i, null);
    }

    /* renamed from: a */
    public abstract int mo19169a(int i, int i2, int i3);

    /* renamed from: a */
    public abstract AbstractC7791e0 mo19170a(int i, int i2);

    /* renamed from: a */
    public abstract String mo19166a(Charset charset);

    /* renamed from: a */
    public abstract void mo19168a(AbstractC7783d0 d0Var) throws IOException;

    /* renamed from: b */
    public final String m19473b() {
        return size() == 0 ? "" : mo19166a(C7891p1.f18512a);
    }

    /* renamed from: c */
    public abstract boolean mo19165c();

    public abstract boolean equals(Object obj);

    /* renamed from: g */
    public abstract byte mo19164g(int i);

    public final int hashCode() {
        int i = this.f18222a;
        int i2 = i;
        if (i == 0) {
            int size = size();
            int a = mo19169a(size, 0, size);
            i2 = a;
            if (a == 0) {
                i2 = 1;
            }
            this.f18222a = i2;
        }
        return i2;
    }

    @Override // java.lang.Iterable
    public /* synthetic */ Iterator<Byte> iterator() {
        return new C7800f0(this);
    }

    /* renamed from: q */
    public final int m19469q() {
        return this.f18222a;
    }

    public abstract int size();

    public final String toString() {
        return String.format("<ByteString@%s size=%d>", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(size()));
    }
}
