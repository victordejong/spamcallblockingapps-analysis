package com.google.android.gms.internal.ads;

import android.util.Pair;
import com.huawei.hms.support.api.entity.core.JosStatusCodes;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.UUID;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzqg.class */
public final class zzqg {
    public byte[] zzM;
    public zzqh zzS;
    public boolean zzT;
    public zzox zzV;
    public int zzW;
    private int zzX;
    public String zza;
    public String zzb;
    public int zzc;
    public int zzd;
    public int zze;
    public int zzf;
    public boolean zzg;
    public byte[] zzh;
    public zzow zzi;
    public byte[] zzj;
    public zzn zzk;
    public int zzl = -1;
    public int zzm = -1;
    public int zzn = -1;
    public int zzo = -1;
    public int zzp = 0;
    public int zzq = -1;
    public float zzr = 0.0f;
    public float zzs = 0.0f;
    public float zzt = 0.0f;
    public byte[] zzu = null;
    public int zzv = -1;
    public boolean zzw = false;
    public int zzx = -1;
    public int zzy = -1;
    public int zzz = -1;
    public int zzA = 1000;
    public int zzB = 200;
    public float zzC = -1.0f;
    public float zzD = -1.0f;
    public float zzE = -1.0f;
    public float zzF = -1.0f;
    public float zzG = -1.0f;
    public float zzH = -1.0f;
    public float zzI = -1.0f;
    public float zzJ = -1.0f;
    public float zzK = -1.0f;
    public float zzL = -1.0f;
    public int zzN = 1;
    public int zzO = -1;
    public int zzP = JosStatusCodes.RTN_CODE_COMMON_ERROR;
    public long zzQ = 0;
    public long zzR = 0;
    public boolean zzU = true;
    private String zzY = "eng";

    private zzqg() {
    }

    public /* synthetic */ zzqg(zzqf zzqfVar) {
    }

    private static Pair<String, List<byte[]>> zzf(zzamf zzamfVar) throws zzaha {
        try {
            zzamfVar.zzk(16);
            long zzu = zzamfVar.zzu();
            if (zzu == 1482049860) {
                return new Pair<>("video/divx", null);
            }
            if (zzu == 859189832) {
                return new Pair<>("video/3gpp", null);
            }
            if (zzu != 826496599) {
                return new Pair<>("video/x-unknown", null);
            }
            int zzg = zzamfVar.zzg() + 20;
            byte[] zzi = zzamfVar.zzi();
            while (true) {
                int length = zzi.length;
                if (zzg >= length - 4) {
                    throw zzaha.zzb("Failed to find FourCC VC1 initialization data", null);
                }
                if (zzi[zzg] == 0 && zzi[zzg + 1] == 0 && zzi[zzg + 2] == 1 && zzi[zzg + 3] == 15) {
                    return new Pair<>("video/wvc1", Collections.singletonList(Arrays.copyOfRange(zzi, zzg, length)));
                }
                zzg++;
            }
        } catch (ArrayIndexOutOfBoundsException e) {
            throw zzaha.zzb("Error parsing FourCC private data", null);
        }
    }

    private static List<byte[]> zzg(byte[] bArr) throws zzaha {
        int i;
        int i2;
        try {
            if (bArr[0] != 2) {
                throw zzaha.zzb("Error parsing vorbis codec private", null);
            }
            int i3 = 0;
            int i4 = 1;
            while (true) {
                i = bArr[i4] & 255;
                if (i != 255) {
                    break;
                }
                i3 += 255;
                i4++;
            }
            int i5 = i4 + 1;
            int i6 = i3 + i;
            int i7 = 0;
            while (true) {
                i2 = bArr[i5] & 255;
                if (i2 != 255) {
                    break;
                }
                i7 += 255;
                i5++;
            }
            int i8 = i5 + 1;
            if (bArr[i8] != 1) {
                throw zzaha.zzb("Error parsing vorbis codec private", null);
            }
            byte[] bArr2 = new byte[i6];
            System.arraycopy(bArr, i8, bArr2, 0, i6);
            int i9 = i8 + i6;
            if (bArr[i9] != 3) {
                throw zzaha.zzb("Error parsing vorbis codec private", null);
            }
            int i10 = i9 + i7 + i2;
            if (bArr[i10] != 5) {
                throw zzaha.zzb("Error parsing vorbis codec private", null);
            }
            int length = bArr.length - i10;
            byte[] bArr3 = new byte[length];
            System.arraycopy(bArr, i10, bArr3, 0, length);
            ArrayList arrayList = new ArrayList(2);
            arrayList.add(bArr2);
            arrayList.add(bArr3);
            return arrayList;
        } catch (ArrayIndexOutOfBoundsException e) {
            throw zzaha.zzb("Error parsing vorbis codec private", null);
        }
    }

    private static boolean zzh(zzamf zzamfVar) throws zzaha {
        UUID uuid;
        UUID uuid2;
        try {
            int zzp = zzamfVar.zzp();
            if (zzp == 1) {
                return true;
            }
            if (zzp != 65534) {
                return false;
            }
            zzamfVar.zzh(24);
            long zzx = zzamfVar.zzx();
            uuid = zzqi.zze;
            if (zzx != uuid.getMostSignificantBits()) {
                return false;
            }
            long zzx2 = zzamfVar.zzx();
            uuid2 = zzqi.zze;
            return zzx2 == uuid2.getLeastSignificantBits();
        } catch (ArrayIndexOutOfBoundsException e) {
            throw zzaha.zzb("Error parsing MS/ACM codec private", null);
        }
    }

    @EnsuresNonNull({"codecPrivate"})
    private final byte[] zzi(String str) throws zzaha {
        byte[] bArr = this.zzj;
        if (bArr == null) {
            String valueOf = String.valueOf(str);
            throw zzaha.zzb(valueOf.length() != 0 ? "Missing CodecPrivate for codec ".concat(valueOf) : new String("Missing CodecPrivate for codec "), null);
        }
        return bArr;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x04af, code lost:
        if (r0 == 0) goto L126;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x04e5, code lost:
        if (r0 == 0) goto L126;
     */
    @org.checkerframework.checker.nullness.qual.EnsuresNonNull({"this.output"})
    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"codecId"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzd(com.google.android.gms.internal.ads.zznx r8, int r9) throws com.google.android.gms.internal.ads.zzaha {
        /*
            Method dump skipped, instructions count: 2850
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzqg.zzd(com.google.android.gms.internal.ads.zznx, int):void");
    }
}
