package com.google.android.gms.internal.ads;

import android.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzxd.class */
public final class zzxd {
    public final int zza;
    public final int zzb;
    public final int zzc;
    public final int zzd;
    public final int zze;
    public final int zzf;
    public final int zzg;
    public final int zzh;
    public final int zzi;
    public final long zzj;
    public final zzxc zzk;
    private final zzdd zzl;

    private zzxd(int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, zzxc zzxcVar, zzdd zzddVar) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = i3;
        this.zzd = i4;
        this.zze = i5;
        this.zzf = zzi(i5);
        this.zzg = i6;
        this.zzh = i7;
        this.zzi = zzh(i7);
        this.zzj = j;
        this.zzk = zzxcVar;
        this.zzl = zzddVar;
    }

    public zzxd(byte[] bArr, int i) {
        zzfc zzfcVar = new zzfc(bArr, bArr.length);
        zzfcVar.zzh(i * 8);
        this.zza = zzfcVar.zzc(16);
        this.zzb = zzfcVar.zzc(16);
        this.zzc = zzfcVar.zzc(24);
        this.zzd = zzfcVar.zzc(24);
        int zzc = zzfcVar.zzc(20);
        this.zze = zzc;
        this.zzf = zzi(zzc);
        this.zzg = zzfcVar.zzc(3) + 1;
        int zzc2 = zzfcVar.zzc(5) + 1;
        this.zzh = zzc2;
        this.zzi = zzh(zzc2);
        this.zzj = zzfn.zzv(zzfcVar.zzc(4), zzfcVar.zzc(32));
        this.zzk = null;
        this.zzl = null;
    }

    private static int zzh(int i) {
        if (i != 8) {
            if (i == 12) {
                return 2;
            }
            if (i == 16) {
                return 4;
            }
            if (i == 20) {
                return 5;
            }
            return i != 24 ? -1 : 6;
        }
        return 1;
    }

    private static int zzi(int i) {
        switch (i) {
            case 8000:
                return 4;
            case 16000:
                return 5;
            case 22050:
                return 6;
            case 24000:
                return 7;
            case 32000:
                return 8;
            case 44100:
                return 9;
            case 48000:
                return 10;
            case 88200:
                return 1;
            case 96000:
                return 11;
            case 176400:
                return 2;
            case 192000:
                return 3;
            default:
                return -1;
        }
    }

    private static zzdd zzj(List<String> list, List<zzyz> list2) {
        if (!list.isEmpty() || !list2.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < list.size(); i++) {
                String str = list.get(i);
                String[] zzad = zzfn.zzad(str, "=");
                if (zzad.length != 2) {
                    String valueOf = String.valueOf(str);
                    Log.w("FlacStreamMetadata", valueOf.length() != 0 ? "Failed to parse Vorbis comment: ".concat(valueOf) : new String("Failed to parse Vorbis comment: "));
                } else {
                    arrayList.add(new zzzb(zzad[0], zzad[1]));
                }
            }
            arrayList.addAll(list2);
            if (!arrayList.isEmpty()) {
                return new zzdd(arrayList);
            }
            return null;
        }
        return null;
    }

    public final long zza() {
        long j = this.zzj;
        if (j == 0) {
            return -9223372036854775807L;
        }
        return (j * 1000000) / this.zze;
    }

    public final long zzb(long j) {
        return zzfn.zzo((j * this.zze) / 1000000, 0L, this.zzj - 1);
    }

    public final zzab zzc(byte[] bArr, zzdd zzddVar) {
        bArr[4] = (byte) (-128);
        int i = this.zzd;
        int i2 = i;
        if (i <= 0) {
            i2 = -1;
        }
        zzdd zzd = zzd(zzddVar);
        zzz zzzVar = new zzz();
        zzzVar.zzS("audio/flac");
        zzzVar.zzL(i2);
        zzzVar.zzw(this.zzg);
        zzzVar.zzT(this.zze);
        zzzVar.zzI(Collections.singletonList(bArr));
        zzzVar.zzM(zzd);
        return zzzVar.zzY();
    }

    public final zzdd zzd(zzdd zzddVar) {
        zzdd zzddVar2 = this.zzl;
        return zzddVar2 == null ? zzddVar : zzddVar2.zzd(zzddVar);
    }

    public final zzxd zze(List<zzyz> list) {
        return new zzxd(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzg, this.zzh, this.zzj, this.zzk, zzd(zzj(Collections.emptyList(), list)));
    }

    public final zzxd zzf(zzxc zzxcVar) {
        return new zzxd(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzg, this.zzh, this.zzj, zzxcVar, this.zzl);
    }

    public final zzxd zzg(List<String> list) {
        return new zzxd(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzg, this.zzh, this.zzj, this.zzk, zzd(zzj(list, Collections.emptyList())));
    }
}
