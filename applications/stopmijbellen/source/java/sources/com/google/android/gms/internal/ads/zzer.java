package com.google.android.gms.internal.ads;

import android.media.MediaFormat;
import android.support.p012v4.media.C0082b;
import java.nio.ByteBuffer;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzer.class */
public final class zzer {
    public static void zza(MediaFormat mediaFormat, String str, int i) {
        if (i != -1) {
            mediaFormat.setInteger(str, i);
        }
    }

    public static void zzb(MediaFormat mediaFormat, List<byte[]> list) {
        for (int i = 0; i < list.size(); i++) {
            mediaFormat.setByteBuffer(C0082b.m8758d(15, "csd-", i), ByteBuffer.wrap(list.get(i)));
        }
    }
}
