package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzqb.class */
public final class zzqb {
    public final List<byte[]> zzahg;
    public final int zzasq;

    private zzqb(List<byte[]> list, int i) {
        this.zzahg = list;
        this.zzasq = i;
    }

    public static zzqb zzi(zzpn zzpnVar) throws zzhw {
        try {
            zzpnVar.zzbj(21);
            int readUnsignedByte = zzpnVar.readUnsignedByte();
            int readUnsignedByte2 = zzpnVar.readUnsignedByte();
            int position = zzpnVar.getPosition();
            int i = 0;
            for (int i2 = 0; i2 < readUnsignedByte2; i2++) {
                zzpnVar.zzbj(1);
                int readUnsignedShort = zzpnVar.readUnsignedShort();
                for (int i3 = 0; i3 < readUnsignedShort; i3++) {
                    int readUnsignedShort2 = zzpnVar.readUnsignedShort();
                    i += readUnsignedShort2 + 4;
                    zzpnVar.zzbj(readUnsignedShort2);
                }
            }
            zzpnVar.zzbi(position);
            byte[] bArr = new byte[i];
            int i4 = 0;
            for (int i5 = 0; i5 < readUnsignedByte2; i5++) {
                zzpnVar.zzbj(1);
                int readUnsignedShort3 = zzpnVar.readUnsignedShort();
                for (int i6 = 0; i6 < readUnsignedShort3; i6++) {
                    int readUnsignedShort4 = zzpnVar.readUnsignedShort();
                    System.arraycopy(zzpm.zzbjt, 0, bArr, i4, zzpm.zzbjt.length);
                    int length = i4 + zzpm.zzbjt.length;
                    System.arraycopy(zzpnVar.data, zzpnVar.getPosition(), bArr, length, readUnsignedShort4);
                    i4 = length + readUnsignedShort4;
                    zzpnVar.zzbj(readUnsignedShort4);
                }
            }
            return new zzqb(i == 0 ? null : Collections.singletonList(bArr), (readUnsignedByte & 3) + 1);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new zzhw("Error parsing HEVC config", e);
        }
    }
}
