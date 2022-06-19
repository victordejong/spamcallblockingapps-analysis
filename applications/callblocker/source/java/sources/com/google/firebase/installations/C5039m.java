package com.google.firebase.installations;

import android.util.Base64;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.UUID;
/* renamed from: com.google.firebase.installations.m */
/* loaded from: classes-dex2jar.jar:com/google/firebase/installations/m.class */
public class C5039m {

    /* renamed from: a */
    private static final byte f21290a = Byte.parseByte("01110000", 2);

    /* renamed from: b */
    private static final byte f21291b = Byte.parseByte("00001111", 2);

    /* renamed from: a */
    private static String m1768a(byte[] bArr) {
        return new String(Base64.encode(bArr, 11), Charset.defaultCharset()).substring(0, 22);
    }

    /* renamed from: a */
    private static byte[] m1769a(UUID uuid, byte[] bArr) {
        ByteBuffer wrap = ByteBuffer.wrap(bArr);
        wrap.putLong(uuid.getMostSignificantBits());
        wrap.putLong(uuid.getLeastSignificantBits());
        return wrap.array();
    }

    /* renamed from: a */
    public String m1770a() {
        byte[] m1769a = m1769a(UUID.randomUUID(), new byte[17]);
        m1769a[16] = m1769a[0];
        m1769a[0] = (byte) ((f21291b & m1769a[0]) | f21290a);
        return m1768a(m1769a);
    }
}
