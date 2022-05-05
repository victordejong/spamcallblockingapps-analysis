package p081h.p203i.p325c.p367v;

import android.util.Base64;
import androidx.annotation.NonNull;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.UUID;
/* renamed from: h.i.c.v.n */
/* loaded from: classes2-dex2jar.jar:h/i/c/v/n.class */
public class C9949n {

    /* renamed from: a */
    public static final byte f22506a = Byte.parseByte("01110000", 2);

    /* renamed from: b */
    public static final byte f22507b = Byte.parseByte("00001111", 2);

    /* renamed from: a */
    public static String m13886a(byte[] bArr) {
        return new String(Base64.encode(bArr, 11), Charset.defaultCharset()).substring(0, 22);
    }

    /* renamed from: a */
    public static byte[] m13887a(UUID uuid, byte[] bArr) {
        ByteBuffer wrap = ByteBuffer.wrap(bArr);
        wrap.putLong(uuid.getMostSignificantBits());
        wrap.putLong(uuid.getLeastSignificantBits());
        return wrap.array();
    }

    @NonNull
    /* renamed from: a */
    public String m13888a() {
        byte[] a = m13887a(UUID.randomUUID(), new byte[17]);
        a[16] = a[0];
        a[0] = (byte) ((f22507b & a[0]) | f22506a);
        return m13886a(a);
    }
}
