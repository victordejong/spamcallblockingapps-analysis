package p081h.p203i.p204a.p224e.p259j.p266g;

import gogolook.callgogolook2.gson.UserProfile;
import java.io.IOException;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Iterator;
/* renamed from: h.i.a.e.j.g.a0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/a0.class */
public abstract class AbstractC7539a0 implements Serializable, Iterable<Byte> {

    /* renamed from: b */
    public static final AbstractC7539a0 f17655b = new C7601h0(C7602h1.f17863b);

    /* renamed from: c */
    public static final AbstractC7575e0 f17656c;

    /* renamed from: a */
    public int f17657a = 0;

    static {
        f17656c = C7699u.m19788a() ? new C7611i0(null) : new C7561c0(null);
    }

    /* renamed from: a */
    public static AbstractC7539a0 m20382a(String str) {
        return new C7601h0(str.getBytes(C7602h1.f17862a));
    }

    /* renamed from: a */
    public static AbstractC7539a0 m20381a(byte[] bArr, int i, int i2) {
        return new C7601h0(f17656c.mo20101a(bArr, i, i2));
    }

    /* renamed from: b */
    public static int m20380b(int i, int i2, int i3) {
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
    public static C7582f0 m20378h(int i) {
        return new C7582f0(i, null);
    }

    /* renamed from: a */
    public abstract int mo20142a(int i, int i2, int i3);

    /* renamed from: a */
    public abstract AbstractC7539a0 mo20143a(int i, int i2);

    /* renamed from: a */
    public abstract String mo20139a(Charset charset);

    /* renamed from: a */
    public abstract void mo20140a(AbstractC7734z zVar) throws IOException;

    /* renamed from: b */
    public abstract boolean mo20138b();

    /* renamed from: c */
    public final int m20379c() {
        return this.f17657a;
    }

    public abstract boolean equals(Object obj);

    /* renamed from: g */
    public abstract byte mo20137g(int i);

    public final int hashCode() {
        int i = this.f17657a;
        int i2 = i;
        if (i == 0) {
            int size = size();
            int a = mo20142a(size, 0, size);
            i2 = a;
            if (a == 0) {
                i2 = 1;
            }
            this.f17657a = i2;
        }
        return i2;
    }

    @Override // java.lang.Iterable
    public /* synthetic */ Iterator<Byte> iterator() {
        return new C7551b0(this);
    }

    /* renamed from: q */
    public final String m20377q() {
        return size() == 0 ? "" : mo20139a(C7602h1.f17862a);
    }

    public abstract int size();

    public final String toString() {
        return String.format("<ByteString@%s size=%d>", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(size()));
    }
}
