package com.google.android.exoplayer2.audio;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/p.class */
public final class p {
    private p() {
    }

    public static List<byte[]> a(byte[] bArr) {
        long b2 = b(((bArr[11] & 255) << 8) | (bArr[10] & 255));
        long b3 = b(3840L);
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(bArr);
        arrayList.add(a(b2));
        arrayList.add(a(b3));
        return arrayList;
    }

    private static byte[] a(long j) {
        return ByteBuffer.allocate(8).order(ByteOrder.nativeOrder()).putLong(j).array();
    }

    private static long b(long j) {
        return (j * 1000000000) / 48000;
    }
}
