package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzop.class */
public final class zzop {
    public static List<byte[]> zza(byte[] bArr) {
        byte b = bArr[11];
        byte b2 = bArr[10];
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(bArr);
        arrayList.add(zzb(zzc(((b & 255) << 8) | (b2 & 255))));
        arrayList.add(zzb(zzc(3840L)));
        return arrayList;
    }

    private static byte[] zzb(long j) {
        return ByteBuffer.allocate(8).order(ByteOrder.nativeOrder()).putLong(j).array();
    }

    private static long zzc(long j) {
        return (j * 1000000000) / 48000;
    }
}
