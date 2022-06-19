package p286x5;

import android.util.Base64;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.UUID;
/* renamed from: x5.j */
/* loaded from: classes-dex2jar.jar:x5/j.class */
public class C4876j {

    /* renamed from: a */
    public static final byte f14937a = Byte.parseByte("01110000", 2);

    /* renamed from: b */
    public static final byte f14938b = Byte.parseByte("00001111", 2);

    /* renamed from: a */
    public String m325a() {
        UUID randomUUID = UUID.randomUUID();
        ByteBuffer wrap = ByteBuffer.wrap(new byte[17]);
        wrap.putLong(randomUUID.getMostSignificantBits());
        wrap.putLong(randomUUID.getLeastSignificantBits());
        byte[] array = wrap.array();
        array[16] = array[0];
        array[0] = (byte) ((f14938b & array[0]) | f14937a);
        return new String(Base64.encode(array, 11), Charset.defaultCharset()).substring(0, 22);
    }
}
