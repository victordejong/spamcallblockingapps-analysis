package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzpv.class */
public final class zzpv {
    private final int height;
    private final int width;
    public final List<byte[]> zzahg;
    public final int zzasq;
    public final float zzbjy;

    private zzpv(List<byte[]> list, int i, int i2, int i3, float f) {
        this.zzahg = list;
        this.zzasq = i;
        this.width = i2;
        this.height = i3;
        this.zzbjy = f;
    }

    public static zzpv zzg(zzpn zzpnVar) throws zzhw {
        float f;
        int i;
        int i2;
        try {
            zzpnVar.zzbj(4);
            int readUnsignedByte = (zzpnVar.readUnsignedByte() & 3) + 1;
            if (readUnsignedByte == 3) {
                throw new IllegalStateException();
            }
            ArrayList arrayList = new ArrayList();
            int readUnsignedByte2 = zzpnVar.readUnsignedByte() & 31;
            for (int i3 = 0; i3 < readUnsignedByte2; i3++) {
                arrayList.add(zzh(zzpnVar));
            }
            int readUnsignedByte3 = zzpnVar.readUnsignedByte();
            for (int i4 = 0; i4 < readUnsignedByte3; i4++) {
                arrayList.add(zzh(zzpnVar));
            }
            if (readUnsignedByte2 > 0) {
                zzpl zzd = zzpm.zzd((byte[]) arrayList.get(0), readUnsignedByte, ((byte[]) arrayList.get(0)).length);
                i2 = zzd.width;
                i = zzd.height;
                f = zzd.zzbjy;
            } else {
                i2 = -1;
                i = -1;
                f = 1.0f;
            }
            return new zzpv(arrayList, readUnsignedByte, i2, i, f);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new zzhw("Error parsing AVC config", e);
        }
    }

    private static byte[] zzh(zzpn zzpnVar) {
        int readUnsignedShort = zzpnVar.readUnsignedShort();
        int position = zzpnVar.getPosition();
        zzpnVar.zzbj(readUnsignedShort);
        return zzpf.zzc(zzpnVar.data, position, readUnsignedShort);
    }
}
