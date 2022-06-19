package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaps.class */
public final class zzaps {
    public static final /* synthetic */ int zza = 0;
    private static final int[] zzb = {1, 2, 3, 6};
    private static final int[] zzc = {48000, 44100, 32000};
    private static final int[] zzd = {2, 1, 2, 3, 3, 4, 4, 5};

    public static int zza(ByteBuffer byteBuffer) {
        int i = 6;
        if (((byteBuffer.get(byteBuffer.position() + 4) & 192) >> 6) != 3) {
            i = zzb[(byteBuffer.get(byteBuffer.position() + 4) & 48) >> 4];
        }
        return i * 256;
    }

    public static zzapg zzb(zzawu zzawuVar, String str, String str2, zzarf zzarfVar) {
        int i = zzc[(zzawuVar.zzg() & 192) >> 6];
        int zzg = zzawuVar.zzg();
        int i2 = zzd[(zzg & 56) >> 3];
        int i3 = i2;
        if ((zzg & 4) != 0) {
            i3 = i2 + 1;
        }
        return zzapg.zzg(str, "audio/ac3", null, -1, -1, i3, i, null, zzarfVar, 0, str2);
    }

    public static zzapg zzc(zzawu zzawuVar, String str, String str2, zzarf zzarfVar) {
        zzawuVar.zzw(2);
        int i = zzc[(zzawuVar.zzg() & 192) >> 6];
        int zzg = zzawuVar.zzg();
        int i2 = zzd[(zzg & 14) >> 1];
        int i3 = i2;
        if ((zzg & 1) != 0) {
            i3 = i2 + 1;
        }
        return zzapg.zzg(str, "audio/eac3", null, -1, -1, i3, i, null, zzarfVar, 0, str2);
    }
}
