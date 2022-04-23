package p131c.p161d.p282e.p335s;

import android.util.Base64;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.UUID;
/* renamed from: c.d.e.s.l */
/* loaded from: classes2-dex2jar.jar:c/d/e/s/l.class */
public class C5904l {

    /* renamed from: a */
    public static final byte f19222a = Byte.parseByte("01110000", 2);

    /* renamed from: b */
    public static final byte f19223b = Byte.parseByte("00001111", 2);

    /* renamed from: a */
    public static String m22771a(byte[] bArr) {
        return new String(Base64.encode(bArr, 11), Charset.defaultCharset()).substring(0, 22);
    }

    /* renamed from: a */
    public static byte[] m22772a(UUID uuid, byte[] bArr) {
        ByteBuffer wrap = ByteBuffer.wrap(bArr);
        wrap.putLong(uuid.getMostSignificantBits());
        wrap.putLong(uuid.getLeastSignificantBits());
        return wrap.array();
    }

    /* renamed from: a */
    public String m22773a() {
        byte[] a = m22772a(UUID.randomUUID(), new byte[17]);
        a[16] = a[0];
        a[0] = (byte) ((f19223b & a[0]) | f19222a);
        return m22771a(a);
    }
}
