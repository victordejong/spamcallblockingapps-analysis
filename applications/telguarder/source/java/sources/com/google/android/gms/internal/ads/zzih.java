package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import kotlin.text.Typography;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzih.class */
public final class zzih {
    private static final int[] zzaiw = {1, 2, 3, 6};
    private static final int[] zzaix = {48000, 44100, 32000};
    private static final int[] zzaiy = {24000, 22050, 16000};
    private static final int[] zzaiz = {2, 1, 2, 3, 3, 4, 4, 5};
    private static final int[] zzaja = {32, 40, 48, 56, 64, 80, 96, 112, 128, Typography.nbsp, 192, 224, 256, 320, 384, 448, 512, 576, 640};
    private static final int[] zzajb = {69, 87, 104, 121, 139, Typography.registered, 208, 243, 278, 348, 417, 487, 557, 696, 835, 975, 1114, 1253, 1393};

    public static zzht zza(zzpn zzpnVar, String str, String str2, zzjo zzjoVar) {
        int i = zzaix[(zzpnVar.readUnsignedByte() & 192) >> 6];
        int readUnsignedByte = zzpnVar.readUnsignedByte();
        int i2 = zzaiz[(readUnsignedByte & 56) >> 3];
        int i3 = i2;
        if ((readUnsignedByte & 4) != 0) {
            i3 = i2 + 1;
        }
        return zzht.zza(str, "audio/ac3", null, -1, -1, i3, i, null, zzjoVar, 0, str2);
    }

    public static zzht zzb(zzpn zzpnVar, String str, String str2, zzjo zzjoVar) {
        zzpnVar.zzbj(2);
        int i = zzaix[(zzpnVar.readUnsignedByte() & 192) >> 6];
        int readUnsignedByte = zzpnVar.readUnsignedByte();
        int i2 = zzaiz[(readUnsignedByte & 14) >> 1];
        int i3 = i2;
        if ((readUnsignedByte & 1) != 0) {
            i3 = i2 + 1;
        }
        return zzht.zza(str, "audio/eac3", null, -1, -1, i3, i, null, zzjoVar, 0, str2);
    }

    public static int zzfi() {
        return 1536;
    }

    public static int zzm(ByteBuffer byteBuffer) {
        int i = 6;
        if (((byteBuffer.get(byteBuffer.position() + 4) & 192) >> 6) != 3) {
            i = zzaiw[(byteBuffer.get(byteBuffer.position() + 4) & 48) >> 4];
        }
        return i * 256;
    }
}
