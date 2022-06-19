package com.google.android.gms.internal.ads;

import com.huawei.hms.framework.common.ContainerUtils;
import com.huawei.hms.support.api.entity.core.JosStatusCodes;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzoh.class */
public final class zzoh {
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
    public final zzog zzk;
    private final zzaiv zzl;

    private zzoh(int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, zzog zzogVar, zzaiv zzaivVar) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = i3;
        this.zzd = i4;
        this.zze = i5;
        this.zzf = zzh(i5);
        this.zzg = i6;
        this.zzh = i7;
        this.zzi = zzi(i7);
        this.zzj = j;
        this.zzk = zzogVar;
        this.zzl = zzaivVar;
    }

    public zzoh(byte[] bArr, int i) {
        zzame zzameVar = new zzame(bArr, bArr.length);
        zzameVar.zzd(i * 8);
        this.zza = zzameVar.zzh(16);
        this.zzb = zzameVar.zzh(16);
        this.zzc = zzameVar.zzh(24);
        this.zzd = zzameVar.zzh(24);
        int zzh = zzameVar.zzh(20);
        this.zze = zzh;
        this.zzf = zzh(zzh);
        this.zzg = zzameVar.zzh(3) + 1;
        int zzh2 = zzameVar.zzh(5) + 1;
        this.zzh = zzh2;
        this.zzi = zzi(zzh2);
        this.zzj = zzamq.zzL(zzameVar.zzh(4), zzameVar.zzh(32));
        this.zzk = null;
        this.zzl = null;
    }

    private static int zzh(int i) {
        switch (i) {
            case JosStatusCodes.RTN_CODE_COMMON_ERROR /* 8000 */:
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

    private static int zzi(int i) {
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

    private static zzaiv zzj(List<String> list, List<zzajc> list2) {
        if (!list.isEmpty() || !list2.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < list.size(); i++) {
                String str = list.get(i);
                String[] zzu = zzamq.zzu(str, ContainerUtils.KEY_VALUE_DELIMITER);
                if (zzu.length != 2) {
                    String valueOf = String.valueOf(str);
                    if (valueOf.length() != 0) {
                        "Failed to parse Vorbis comment: ".concat(valueOf);
                    } else {
                        new String("Failed to parse Vorbis comment: ");
                    }
                } else {
                    arrayList.add(new zzaje(zzu[0], zzu[1]));
                }
            }
            arrayList.addAll(list2);
            if (!arrayList.isEmpty()) {
                return new zzaiv(arrayList);
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
        return zzamq.zzy((j * this.zze) / 1000000, 0L, this.zzj - 1);
    }

    public final zzafv zzc(byte[] bArr, zzaiv zzaivVar) {
        bArr[4] = (byte) (-128);
        int i = this.zzd;
        int i2 = i;
        if (i <= 0) {
            i2 = -1;
        }
        zzaiv zzd = zzd(zzaivVar);
        zzaft zzaftVar = new zzaft();
        zzaftVar.zzN("audio/flac");
        zzaftVar.zzO(i2);
        zzaftVar.zzaa(this.zzg);
        zzaftVar.zzab(this.zze);
        zzaftVar.zzP(Collections.singletonList(bArr));
        zzaftVar.zzL(zzd);
        return zzaftVar.zzah();
    }

    public final zzaiv zzd(zzaiv zzaivVar) {
        zzaiv zzaivVar2 = this.zzl;
        return zzaivVar2 == null ? zzaivVar : zzaivVar2.zzc(zzaivVar);
    }

    public final zzoh zze(zzog zzogVar) {
        return new zzoh(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzg, this.zzh, this.zzj, zzogVar, this.zzl);
    }

    public final zzoh zzf(List<String> list) {
        return new zzoh(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzg, this.zzh, this.zzj, this.zzk, zzd(zzj(list, Collections.emptyList())));
    }

    public final zzoh zzg(List<zzajc> list) {
        return new zzoh(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzg, this.zzh, this.zzj, this.zzk, zzd(zzj(Collections.emptyList(), list)));
    }
}
