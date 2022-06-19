package com.google.android.gms.internal.ads;

import com.huawei.hms.support.api.entity.core.JosStatusCodes;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.UUID;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaqe.class */
public final class zzaqe {
    public boolean zzL;
    public zzapx zzN;
    public int zzO;
    public String zza;
    public int zzb;
    public int zzc;
    public int zzd;
    public boolean zze;
    public byte[] zzf;
    public zzapw zzg;
    public byte[] zzh;
    public zzapk zzi;
    public int zzj = -1;
    public int zzk = -1;
    public int zzl = -1;
    public int zzm = -1;
    public int zzn = 0;
    public byte[] zzo = null;
    public int zzp = -1;
    public boolean zzq = false;
    public int zzr = -1;
    public int zzs = -1;
    public int zzt = -1;
    public int zzu = 1000;
    public int zzv = 200;
    public float zzw = -1.0f;
    public float zzx = -1.0f;
    public float zzy = -1.0f;
    public float zzz = -1.0f;
    public float zzA = -1.0f;
    public float zzB = -1.0f;
    public float zzC = -1.0f;
    public float zzD = -1.0f;
    public float zzE = -1.0f;
    public float zzF = -1.0f;
    public int zzG = 1;
    public int zzH = -1;
    public int zzI = JosStatusCodes.RTN_CODE_COMMON_ERROR;
    public long zzJ = 0;
    public long zzK = 0;
    public boolean zzM = true;
    private String zzP = "eng";

    private zzaqe() {
    }

    public /* synthetic */ zzaqe(zzaqd zzaqdVar) {
    }

    private static List<byte[]> zzc(zzaux zzauxVar) throws zzanp {
        try {
            zzauxVar.zzj(16);
            if (zzauxVar.zzq() != 826496599) {
                return null;
            }
            int zzg = zzauxVar.zzg() + 20;
            byte[] bArr = zzauxVar.zza;
            while (true) {
                int length = bArr.length;
                if (zzg >= length - 4) {
                    throw new zzanp("Failed to find FourCC VC1 initialization data");
                }
                if (bArr[zzg] == 0 && bArr[zzg + 1] == 0 && bArr[zzg + 2] == 1 && bArr[zzg + 3] == 15) {
                    return Collections.singletonList(Arrays.copyOfRange(bArr, zzg, length));
                }
                zzg++;
            }
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new zzanp("Error parsing FourCC VC1 codec private");
        }
    }

    private static List<byte[]> zzd(byte[] bArr) throws zzanp {
        byte b;
        byte b2;
        try {
            if (bArr[0] != 2) {
                throw new zzanp("Error parsing vorbis codec private");
            }
            int i = 0;
            int i2 = 1;
            while (true) {
                b = bArr[i2];
                if (b != -1) {
                    break;
                }
                i += 255;
                i2++;
            }
            int i3 = i2 + 1;
            int i4 = i + b;
            int i5 = 0;
            while (true) {
                b2 = bArr[i3];
                if (b2 != -1) {
                    break;
                }
                i5 += 255;
                i3++;
            }
            int i6 = i3 + 1;
            if (bArr[i6] != 1) {
                throw new zzanp("Error parsing vorbis codec private");
            }
            byte[] bArr2 = new byte[i4];
            System.arraycopy(bArr, i6, bArr2, 0, i4);
            int i7 = i6 + i4;
            if (bArr[i7] != 3) {
                throw new zzanp("Error parsing vorbis codec private");
            }
            int i8 = i7 + i5 + b2;
            if (bArr[i8] != 5) {
                throw new zzanp("Error parsing vorbis codec private");
            }
            int length = bArr.length - i8;
            byte[] bArr3 = new byte[length];
            System.arraycopy(bArr, i8, bArr3, 0, length);
            ArrayList arrayList = new ArrayList(2);
            arrayList.add(bArr2);
            arrayList.add(bArr3);
            return arrayList;
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new zzanp("Error parsing vorbis codec private");
        }
    }

    private static boolean zze(zzaux zzauxVar) throws zzanp {
        UUID uuid;
        UUID uuid2;
        try {
            int zzn = zzauxVar.zzn();
            if (zzn == 1) {
                return true;
            }
            if (zzn != 65534) {
                return false;
            }
            zzauxVar.zzi(24);
            long zzs = zzauxVar.zzs();
            uuid = zzaqf.zzd;
            if (zzs != uuid.getMostSignificantBits()) {
                return false;
            }
            long zzs2 = zzauxVar.zzs();
            uuid2 = zzaqf.zzd;
            return zzs2 == uuid2.getLeastSignificantBits();
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new zzanp("Error parsing MS/ACM codec private");
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x03f8, code lost:
        if (r0 == 0) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x03cc, code lost:
        if (r0 == 0) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x03d2, code lost:
        r22 = -1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzb(com.google.android.gms.internal.ads.zzapp r17, int r18) throws com.google.android.gms.internal.ads.zzanp {
        /*
            Method dump skipped, instructions count: 2212
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaqe.zzb(com.google.android.gms.internal.ads.zzapp, int):void");
    }
}
