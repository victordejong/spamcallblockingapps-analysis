package com.google.firebase.installations;

import android.util.Base64;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.UUID;
/* renamed from: com.google.firebase.installations.l */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/installations/l.class */
public class C9220l {

    /* renamed from: a */
    private static final byte f39613a = Byte.parseByte("01110000", 2);

    /* renamed from: b */
    private static final byte f39614b = Byte.parseByte("00001111", 2);

    /* renamed from: b */
    private static String m1520b(byte[] bArr) {
        return new String(Base64.encode(bArr, 11), Charset.defaultCharset()).substring(0, 22);
    }

    /* renamed from: c */
    private static byte[] m1519c(UUID uuid, byte[] bArr) {
        ByteBuffer wrap = ByteBuffer.wrap(bArr);
        wrap.putLong(uuid.getMostSignificantBits());
        wrap.putLong(uuid.getLeastSignificantBits());
        return wrap.array();
    }

    /* renamed from: a */
    public String m1521a() {
        byte[] m1519c = m1519c(UUID.randomUUID(), new byte[17]);
        m1519c[16] = m1519c[0];
        m1519c[0] = (byte) ((f39614b & m1519c[0]) | f39613a);
        return m1520b(m1519c);
    }
}
