package com.google.firebase.installations;

import android.util.Base64;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.UUID;
/* renamed from: com.google.firebase.installations.m */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/installations/m.class */
public final class C15828m {

    /* renamed from: a */
    private static final byte f56260a = Byte.parseByte("01110000", 2);

    /* renamed from: b */
    private static final byte f56261b = Byte.parseByte("00001111", 2);

    /* renamed from: a */
    public static String m8275a() {
        UUID randomUUID = UUID.randomUUID();
        ByteBuffer wrap = ByteBuffer.wrap(new byte[17]);
        wrap.putLong(randomUUID.getMostSignificantBits());
        wrap.putLong(randomUUID.getLeastSignificantBits());
        byte[] array = wrap.array();
        array[16] = array[0];
        array[0] = (byte) ((f56261b & array[0]) | f56260a);
        return new String(Base64.encode(array, 11), Charset.defaultCharset()).substring(0, 22);
    }
}
