package p081h.p203i.p204a.p224e.p259j.p271l;

import gogolook.callgogolook2.gson.UserProfile;
import java.io.IOException;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Locale;
/* renamed from: h.i.a.e.j.l.k8 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/k8.class */
public abstract class AbstractC8209k8 implements Serializable, Iterable<Byte> {

    /* renamed from: b */
    public static final AbstractC8209k8 f19017b = new C8388u8(C8302p9.f19251b);

    /* renamed from: a */
    public int f19018a = 0;

    static {
        if (C8126g8.m18498a()) {
            new C8370t8(null);
        } else {
            new C8285o8(null);
        }
        new C8248m8();
    }

    /* renamed from: a */
    public static int m18381a(byte b) {
        return b & 255;
    }

    /* renamed from: a */
    public static AbstractC8209k8 m18380a(String str) {
        return new C8388u8(str.getBytes(C8302p9.f19250a));
    }

    /* renamed from: b */
    public static int m18376b(int i, int i2, int i3) {
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

    /* renamed from: b */
    public static void m18377b(int i, int i2) {
        if (((i2 - (i + 1)) | i) >= 0) {
            return;
        }
        if (i < 0) {
            StringBuilder sb = new StringBuilder(22);
            sb.append("Index < 0: ");
            sb.append(i);
            throw new ArrayIndexOutOfBoundsException(sb.toString());
        }
        StringBuilder sb2 = new StringBuilder(40);
        sb2.append("Index > length: ");
        sb2.append(i);
        sb2.append(UserProfile.CARD_CATE_SEPARATOR);
        sb2.append(i2);
        throw new ArrayIndexOutOfBoundsException(sb2.toString());
    }

    /* renamed from: i */
    public static C8352s8 m18374i(int i) {
        return new C8352s8(i, null);
    }

    /* renamed from: a */
    public abstract int mo18146a(int i, int i2, int i3);

    /* renamed from: a */
    public abstract AbstractC8209k8 mo18147a(int i, int i2);

    /* renamed from: a */
    public abstract String mo18143a(Charset charset);

    /* renamed from: a */
    public abstract void mo18145a(AbstractC8167i8 i8Var) throws IOException;

    /* renamed from: b */
    public AbstractC8301p8 iterator() {
        return new C8186j8(this);
    }

    /* renamed from: c */
    public final String m18375c() {
        return size() == 0 ? "" : mo18143a(C8302p9.f19250a);
    }

    public abstract boolean equals(Object obj);

    /* renamed from: g */
    public abstract byte mo18142g(int i);

    /* renamed from: h */
    public abstract byte mo18141h(int i);

    public final int hashCode() {
        int i = this.f19018a;
        int i2 = i;
        if (i == 0) {
            int size = size();
            int a = mo18146a(size, 0, size);
            i2 = a;
            if (a == 0) {
                i2 = 1;
            }
            this.f19018a = i2;
        }
        return i2;
    }

    /* renamed from: q */
    public abstract boolean mo18140q();

    /* renamed from: r */
    public final int m18373r() {
        return this.f19018a;
    }

    public abstract int size();

    public final String toString() {
        return String.format(Locale.ROOT, "<ByteString@%s size=%d contents=\"%s\">", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(size()), size() <= 50 ? C7990a.m18701a(this) : String.valueOf(C7990a.m18701a(mo18147a(0, 47))).concat("..."));
    }
}
