package com.google.android.exoplayer2.audio;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.exoplayer2.audio.p */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/p.class */
public final class C10909p {
    private C10909p() {
    }

    /* renamed from: a */
    public static List<byte[]> m21982a(byte[] bArr) {
        long m21981b = m21981b(((bArr[11] & 255) << 8) | (bArr[10] & 255));
        long m21981b2 = m21981b(3840L);
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(bArr);
        arrayList.add(m21983a(m21981b));
        arrayList.add(m21983a(m21981b2));
        return arrayList;
    }

    /* renamed from: a */
    private static byte[] m21983a(long j) {
        return ByteBuffer.allocate(8).order(ByteOrder.nativeOrder()).putLong(j).array();
    }

    /* renamed from: b */
    private static long m21981b(long j) {
        return (j * 1000000000) / 48000;
    }
}
