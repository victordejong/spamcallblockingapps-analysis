package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/qr3.class */
public final class qr3 {
    /* renamed from: a */
    public static List<byte[]> m11812a(byte[] bArr) {
        byte b = bArr[11];
        byte b2 = bArr[10];
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(bArr);
        arrayList.add(m11811b(m11810c(((b & 255) << 8) | (b2 & 255))));
        arrayList.add(m11811b(m11810c(3840L)));
        return arrayList;
    }

    /* renamed from: b */
    private static byte[] m11811b(long j) {
        return ByteBuffer.allocate(8).order(ByteOrder.nativeOrder()).putLong(j).array();
    }

    /* renamed from: c */
    private static long m11810c(long j) {
        return (j * 1000000000) / 48000;
    }
}
