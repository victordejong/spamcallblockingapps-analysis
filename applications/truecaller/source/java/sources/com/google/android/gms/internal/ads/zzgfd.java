package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgfd.class */
public final class zzgfd implements zzght {
    private final zzgfc zza;
    private int zzb;
    private int zzc;
    private int zzd = 0;

    private zzgfd(zzgfc zzgfcVar) {
        zzggk.zzb(zzgfcVar, "input");
        this.zza = zzgfcVar;
        zzgfcVar.zzc = this;
    }

    private final void zzP(int i) throws IOException {
        if ((this.zzb & 7) == i) {
            return;
        }
        throw zzggm.zzi();
    }

    private final <T> T zzQ(zzghz<T> zzghzVar, zzgfm zzgfmVar) throws IOException {
        int zzo = this.zza.zzo();
        zzgfc zzgfcVar = this.zza;
        if (zzgfcVar.zza < zzgfcVar.zzb) {
            int zzz = zzgfcVar.zzz(zzo);
            T zza = zzghzVar.zza();
            this.zza.zza++;
            zzghzVar.zzf(zza, this, zzgfmVar);
            zzghzVar.zzj(zza);
            this.zza.zzb(0);
            zzgfc zzgfcVar2 = this.zza;
            zzgfcVar2.zza--;
            zzgfcVar2.zzA(zzz);
            return zza;
        }
        throw new zzggm("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
    }

    private final <T> T zzR(zzghz<T> zzghzVar, zzgfm zzgfmVar) throws IOException {
        int i = this.zzc;
        this.zzc = ((this.zzb >>> 3) << 3) | 4;
        try {
            T zza = zzghzVar.zza();
            zzghzVar.zzf(zza, this, zzgfmVar);
            zzghzVar.zzj(zza);
            if (this.zzb == this.zzc) {
                return zza;
            }
            throw zzggm.zzk();
        } finally {
            this.zzc = i;
        }
    }

    private final void zzS(int i) throws IOException {
        if (this.zza.zzC() == i) {
            return;
        }
        throw zzggm.zzd();
    }

    private static final void zzT(int i) throws IOException {
        if ((i & 3) == 0) {
            return;
        }
        throw zzggm.zzk();
    }

    private static final void zzU(int i) throws IOException {
        if ((i & 7) == 0) {
            return;
        }
        throw zzggm.zzk();
    }

    public static zzgfd zza(zzgfc zzgfcVar) {
        zzgfd zzgfdVar = zzgfcVar.zzc;
        return zzgfdVar != null ? zzgfdVar : new zzgfd(zzgfcVar);
    }

    @Override // com.google.android.gms.internal.ads.zzght
    public final void zzA(List<Long> list) throws IOException {
        int zza;
        int zza2;
        if (!(list instanceof zzggx)) {
            int i = this.zzb & 7;
            if (i == 0) {
                do {
                    list.add(Long.valueOf(this.zza.zzg()));
                    if (this.zza.zzB()) {
                        return;
                    }
                    zza = this.zza.zza();
                } while (zza == this.zzb);
                this.zzd = zza;
                return;
            } else if (i != 2) {
                throw zzggm.zzi();
            } else {
                int zzC = this.zza.zzC() + this.zza.zzo();
                do {
                    list.add(Long.valueOf(this.zza.zzg()));
                } while (this.zza.zzC() < zzC);
                zzS(zzC);
                return;
            }
        }
        zzggx zzggxVar = (zzggx) list;
        int i2 = this.zzb & 7;
        if (i2 == 0) {
            do {
                zzggxVar.zzg(this.zza.zzg());
                if (this.zza.zzB()) {
                    return;
                }
                zza2 = this.zza.zza();
            } while (zza2 == this.zzb);
            this.zzd = zza2;
        } else if (i2 != 2) {
            throw zzggm.zzi();
        } else {
            int zzC2 = this.zza.zzC() + this.zza.zzo();
            do {
                zzggxVar.zzg(this.zza.zzg());
            } while (this.zza.zzC() < zzC2);
            zzS(zzC2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzght
    public final void zzB(List<Integer> list) throws IOException {
        int zza;
        int zza2;
        if (!(list instanceof zzggb)) {
            int i = this.zzb & 7;
            if (i == 0) {
                do {
                    list.add(Integer.valueOf(this.zza.zzh()));
                    if (this.zza.zzB()) {
                        return;
                    }
                    zza = this.zza.zza();
                } while (zza == this.zzb);
                this.zzd = zza;
                return;
            } else if (i != 2) {
                throw zzggm.zzi();
            } else {
                int zzC = this.zza.zzC() + this.zza.zzo();
                do {
                    list.add(Integer.valueOf(this.zza.zzh()));
                } while (this.zza.zzC() < zzC);
                zzS(zzC);
                return;
            }
        }
        zzggb zzggbVar = (zzggb) list;
        int i2 = this.zzb & 7;
        if (i2 == 0) {
            do {
                zzggbVar.zzh(this.zza.zzh());
                if (this.zza.zzB()) {
                    return;
                }
                zza2 = this.zza.zza();
            } while (zza2 == this.zzb);
            this.zzd = zza2;
        } else if (i2 != 2) {
            throw zzggm.zzi();
        } else {
            int zzC2 = this.zza.zzC() + this.zza.zzo();
            do {
                zzggbVar.zzh(this.zza.zzh());
            } while (this.zza.zzC() < zzC2);
            zzS(zzC2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzght
    public final void zzC(List<Long> list) throws IOException {
        int zza;
        int zza2;
        if (!(list instanceof zzggx)) {
            int i = this.zzb & 7;
            if (i == 1) {
                do {
                    list.add(Long.valueOf(this.zza.zzi()));
                    if (this.zza.zzB()) {
                        return;
                    }
                    zza = this.zza.zza();
                } while (zza == this.zzb);
                this.zzd = zza;
                return;
            } else if (i != 2) {
                throw zzggm.zzi();
            } else {
                int zzo = this.zza.zzo();
                zzU(zzo);
                int zzC = this.zza.zzC();
                do {
                    list.add(Long.valueOf(this.zza.zzi()));
                } while (this.zza.zzC() < zzC + zzo);
                return;
            }
        }
        zzggx zzggxVar = (zzggx) list;
        int i2 = this.zzb & 7;
        if (i2 == 1) {
            do {
                zzggxVar.zzg(this.zza.zzi());
                if (this.zza.zzB()) {
                    return;
                }
                zza2 = this.zza.zza();
            } while (zza2 == this.zzb);
            this.zzd = zza2;
        } else if (i2 != 2) {
            throw zzggm.zzi();
        } else {
            int zzo2 = this.zza.zzo();
            zzU(zzo2);
            int zzC2 = this.zza.zzC();
            do {
                zzggxVar.zzg(this.zza.zzi());
            } while (this.zza.zzC() < zzC2 + zzo2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzght
    public final void zzD(List<Integer> list) throws IOException {
        int zza;
        int zza2;
        if (!(list instanceof zzggb)) {
            int i = this.zzb & 7;
            if (i == 2) {
                int zzo = this.zza.zzo();
                zzT(zzo);
                int zzC = this.zza.zzC();
                do {
                    list.add(Integer.valueOf(this.zza.zzj()));
                } while (this.zza.zzC() < zzC + zzo);
                return;
            } else if (i != 5) {
                throw zzggm.zzi();
            } else {
                do {
                    list.add(Integer.valueOf(this.zza.zzj()));
                    if (this.zza.zzB()) {
                        return;
                    }
                    zza = this.zza.zza();
                } while (zza == this.zzb);
                this.zzd = zza;
                return;
            }
        }
        zzggb zzggbVar = (zzggb) list;
        int i2 = this.zzb & 7;
        if (i2 == 2) {
            int zzo2 = this.zza.zzo();
            zzT(zzo2);
            int zzC2 = this.zza.zzC();
            do {
                zzggbVar.zzh(this.zza.zzj());
            } while (this.zza.zzC() < zzC2 + zzo2);
        } else if (i2 != 5) {
            throw zzggm.zzi();
        } else {
            do {
                zzggbVar.zzh(this.zza.zzj());
                if (this.zza.zzB()) {
                    return;
                }
                zza2 = this.zza.zza();
            } while (zza2 == this.zzb);
            this.zzd = zza2;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzght
    public final void zzE(List<Boolean> list) throws IOException {
        int zza;
        int zza2;
        if (!(list instanceof zzgel)) {
            int i = this.zzb & 7;
            if (i == 0) {
                do {
                    list.add(Boolean.valueOf(this.zza.zzk()));
                    if (this.zza.zzB()) {
                        return;
                    }
                    zza = this.zza.zza();
                } while (zza == this.zzb);
                this.zzd = zza;
                return;
            } else if (i != 2) {
                throw zzggm.zzi();
            } else {
                int zzC = this.zza.zzC() + this.zza.zzo();
                do {
                    list.add(Boolean.valueOf(this.zza.zzk()));
                } while (this.zza.zzC() < zzC);
                zzS(zzC);
                return;
            }
        }
        zzgel zzgelVar = (zzgel) list;
        int i2 = this.zzb & 7;
        if (i2 == 0) {
            do {
                zzgelVar.zzd(this.zza.zzk());
                if (this.zza.zzB()) {
                    return;
                }
                zza2 = this.zza.zza();
            } while (zza2 == this.zzb);
            this.zzd = zza2;
        } else if (i2 != 2) {
            throw zzggm.zzi();
        } else {
            int zzC2 = this.zza.zzC() + this.zza.zzo();
            do {
                zzgelVar.zzd(this.zza.zzk());
            } while (this.zza.zzC() < zzC2);
            zzS(zzC2);
        }
    }

    public final void zzF(List<String> list, boolean z) throws IOException {
        int zza;
        int zza2;
        if ((this.zzb & 7) == 2) {
            if (!(list instanceof zzggs) || z) {
                do {
                    list.add(z ? zzn() : zzm());
                    if (this.zza.zzB()) {
                        return;
                    }
                    zza = this.zza.zza();
                } while (zza == this.zzb);
                this.zzd = zza;
                return;
            }
            zzggs zzggsVar = (zzggs) list;
            do {
                zzggsVar.zzf(zzq());
                if (this.zza.zzB()) {
                    return;
                }
                zza2 = this.zza.zza();
            } while (zza2 == this.zzb);
            this.zzd = zza2;
            return;
        }
        throw zzggm.zzi();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzght
    public final <T> void zzG(List<T> list, zzghz<T> zzghzVar, zzgfm zzgfmVar) throws IOException {
        int zza;
        int i = this.zzb;
        if ((i & 7) == 2) {
            do {
                list.add(zzQ(zzghzVar, zzgfmVar));
                if (this.zza.zzB() || this.zzd != 0) {
                    return;
                }
                zza = this.zza.zza();
            } while (zza == i);
            this.zzd = zza;
            return;
        }
        throw zzggm.zzi();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzght
    public final <T> void zzH(List<T> list, zzghz<T> zzghzVar, zzgfm zzgfmVar) throws IOException {
        int zza;
        int i = this.zzb;
        if ((i & 7) == 3) {
            do {
                list.add(zzR(zzghzVar, zzgfmVar));
                if (this.zza.zzB() || this.zzd != 0) {
                    return;
                }
                zza = this.zza.zza();
            } while (zza == i);
            this.zzd = zza;
            return;
        }
        throw zzggm.zzi();
    }

    @Override // com.google.android.gms.internal.ads.zzght
    public final void zzI(List<zzgex> list) throws IOException {
        int zza;
        if ((this.zzb & 7) == 2) {
            do {
                list.add(zzq());
                if (this.zza.zzB()) {
                    return;
                }
                zza = this.zza.zza();
            } while (zza == this.zzb);
            this.zzd = zza;
            return;
        }
        throw zzggm.zzi();
    }

    @Override // com.google.android.gms.internal.ads.zzght
    public final void zzJ(List<Integer> list) throws IOException {
        int zza;
        int zza2;
        if (!(list instanceof zzggb)) {
            int i = this.zzb & 7;
            if (i == 0) {
                do {
                    list.add(Integer.valueOf(this.zza.zzo()));
                    if (this.zza.zzB()) {
                        return;
                    }
                    zza = this.zza.zza();
                } while (zza == this.zzb);
                this.zzd = zza;
                return;
            } else if (i != 2) {
                throw zzggm.zzi();
            } else {
                int zzC = this.zza.zzC() + this.zza.zzo();
                do {
                    list.add(Integer.valueOf(this.zza.zzo()));
                } while (this.zza.zzC() < zzC);
                zzS(zzC);
                return;
            }
        }
        zzggb zzggbVar = (zzggb) list;
        int i2 = this.zzb & 7;
        if (i2 == 0) {
            do {
                zzggbVar.zzh(this.zza.zzo());
                if (this.zza.zzB()) {
                    return;
                }
                zza2 = this.zza.zza();
            } while (zza2 == this.zzb);
            this.zzd = zza2;
        } else if (i2 != 2) {
            throw zzggm.zzi();
        } else {
            int zzC2 = this.zza.zzC() + this.zza.zzo();
            do {
                zzggbVar.zzh(this.zza.zzo());
            } while (this.zza.zzC() < zzC2);
            zzS(zzC2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzght
    public final void zzK(List<Integer> list) throws IOException {
        int zza;
        int zza2;
        if (!(list instanceof zzggb)) {
            int i = this.zzb & 7;
            if (i == 0) {
                do {
                    list.add(Integer.valueOf(this.zza.zzp()));
                    if (this.zza.zzB()) {
                        return;
                    }
                    zza = this.zza.zza();
                } while (zza == this.zzb);
                this.zzd = zza;
                return;
            } else if (i != 2) {
                throw zzggm.zzi();
            } else {
                int zzC = this.zza.zzC() + this.zza.zzo();
                do {
                    list.add(Integer.valueOf(this.zza.zzp()));
                } while (this.zza.zzC() < zzC);
                zzS(zzC);
                return;
            }
        }
        zzggb zzggbVar = (zzggb) list;
        int i2 = this.zzb & 7;
        if (i2 == 0) {
            do {
                zzggbVar.zzh(this.zza.zzp());
                if (this.zza.zzB()) {
                    return;
                }
                zza2 = this.zza.zza();
            } while (zza2 == this.zzb);
            this.zzd = zza2;
        } else if (i2 != 2) {
            throw zzggm.zzi();
        } else {
            int zzC2 = this.zza.zzC() + this.zza.zzo();
            do {
                zzggbVar.zzh(this.zza.zzp());
            } while (this.zza.zzC() < zzC2);
            zzS(zzC2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzght
    public final void zzL(List<Integer> list) throws IOException {
        int zza;
        int zza2;
        if (!(list instanceof zzggb)) {
            int i = this.zzb & 7;
            if (i == 2) {
                int zzo = this.zza.zzo();
                zzT(zzo);
                int zzC = this.zza.zzC();
                do {
                    list.add(Integer.valueOf(this.zza.zzq()));
                } while (this.zza.zzC() < zzC + zzo);
                return;
            } else if (i != 5) {
                throw zzggm.zzi();
            } else {
                do {
                    list.add(Integer.valueOf(this.zza.zzq()));
                    if (this.zza.zzB()) {
                        return;
                    }
                    zza = this.zza.zza();
                } while (zza == this.zzb);
                this.zzd = zza;
                return;
            }
        }
        zzggb zzggbVar = (zzggb) list;
        int i2 = this.zzb & 7;
        if (i2 == 2) {
            int zzo2 = this.zza.zzo();
            zzT(zzo2);
            int zzC2 = this.zza.zzC();
            do {
                zzggbVar.zzh(this.zza.zzq());
            } while (this.zza.zzC() < zzC2 + zzo2);
        } else if (i2 != 5) {
            throw zzggm.zzi();
        } else {
            do {
                zzggbVar.zzh(this.zza.zzq());
                if (this.zza.zzB()) {
                    return;
                }
                zza2 = this.zza.zza();
            } while (zza2 == this.zzb);
            this.zzd = zza2;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzght
    public final void zzM(List<Long> list) throws IOException {
        int zza;
        int zza2;
        if (!(list instanceof zzggx)) {
            int i = this.zzb & 7;
            if (i == 1) {
                do {
                    list.add(Long.valueOf(this.zza.zzr()));
                    if (this.zza.zzB()) {
                        return;
                    }
                    zza = this.zza.zza();
                } while (zza == this.zzb);
                this.zzd = zza;
                return;
            } else if (i != 2) {
                throw zzggm.zzi();
            } else {
                int zzo = this.zza.zzo();
                zzU(zzo);
                int zzC = this.zza.zzC();
                do {
                    list.add(Long.valueOf(this.zza.zzr()));
                } while (this.zza.zzC() < zzC + zzo);
                return;
            }
        }
        zzggx zzggxVar = (zzggx) list;
        int i2 = this.zzb & 7;
        if (i2 == 1) {
            do {
                zzggxVar.zzg(this.zza.zzr());
                if (this.zza.zzB()) {
                    return;
                }
                zza2 = this.zza.zza();
            } while (zza2 == this.zzb);
            this.zzd = zza2;
        } else if (i2 != 2) {
            throw zzggm.zzi();
        } else {
            int zzo2 = this.zza.zzo();
            zzU(zzo2);
            int zzC2 = this.zza.zzC();
            do {
                zzggxVar.zzg(this.zza.zzr());
            } while (this.zza.zzC() < zzC2 + zzo2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzght
    public final void zzN(List<Integer> list) throws IOException {
        int zza;
        int zza2;
        if (!(list instanceof zzggb)) {
            int i = this.zzb & 7;
            if (i == 0) {
                do {
                    list.add(Integer.valueOf(this.zza.zzs()));
                    if (this.zza.zzB()) {
                        return;
                    }
                    zza = this.zza.zza();
                } while (zza == this.zzb);
                this.zzd = zza;
                return;
            } else if (i != 2) {
                throw zzggm.zzi();
            } else {
                int zzC = this.zza.zzC() + this.zza.zzo();
                do {
                    list.add(Integer.valueOf(this.zza.zzs()));
                } while (this.zza.zzC() < zzC);
                zzS(zzC);
                return;
            }
        }
        zzggb zzggbVar = (zzggb) list;
        int i2 = this.zzb & 7;
        if (i2 == 0) {
            do {
                zzggbVar.zzh(this.zza.zzs());
                if (this.zza.zzB()) {
                    return;
                }
                zza2 = this.zza.zza();
            } while (zza2 == this.zzb);
            this.zzd = zza2;
        } else if (i2 != 2) {
            throw zzggm.zzi();
        } else {
            int zzC2 = this.zza.zzC() + this.zza.zzo();
            do {
                zzggbVar.zzh(this.zza.zzs());
            } while (this.zza.zzC() < zzC2);
            zzS(zzC2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzght
    public final void zzO(List<Long> list) throws IOException {
        int zza;
        int zza2;
        if (!(list instanceof zzggx)) {
            int i = this.zzb & 7;
            if (i == 0) {
                do {
                    list.add(Long.valueOf(this.zza.zzt()));
                    if (this.zza.zzB()) {
                        return;
                    }
                    zza = this.zza.zza();
                } while (zza == this.zzb);
                this.zzd = zza;
                return;
            } else if (i != 2) {
                throw zzggm.zzi();
            } else {
                int zzC = this.zza.zzC() + this.zza.zzo();
                do {
                    list.add(Long.valueOf(this.zza.zzt()));
                } while (this.zza.zzC() < zzC);
                zzS(zzC);
                return;
            }
        }
        zzggx zzggxVar = (zzggx) list;
        int i2 = this.zzb & 7;
        if (i2 == 0) {
            do {
                zzggxVar.zzg(this.zza.zzt());
                if (this.zza.zzB()) {
                    return;
                }
                zza2 = this.zza.zza();
            } while (zza2 == this.zzb);
            this.zzd = zza2;
        } else if (i2 != 2) {
            throw zzggm.zzi();
        } else {
            int zzC2 = this.zza.zzC() + this.zza.zzo();
            do {
                zzggxVar.zzg(this.zza.zzt());
            } while (this.zza.zzC() < zzC2);
            zzS(zzC2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzght
    public final int zzb() throws IOException {
        int i = this.zzd;
        if (i != 0) {
            this.zzb = i;
            this.zzd = 0;
        } else {
            i = this.zza.zza();
            this.zzb = i;
        }
        if (i == 0 || i == this.zzc) {
            return Integer.MAX_VALUE;
        }
        return i >>> 3;
    }

    @Override // com.google.android.gms.internal.ads.zzght
    public final int zzc() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzght
    public final boolean zzd() throws IOException {
        int i;
        if (this.zza.zzB() || (i = this.zzb) == this.zzc) {
            return false;
        }
        return this.zza.zzc(i);
    }

    @Override // com.google.android.gms.internal.ads.zzght
    public final double zze() throws IOException {
        zzP(1);
        return this.zza.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzght
    public final float zzf() throws IOException {
        zzP(5);
        return this.zza.zze();
    }

    @Override // com.google.android.gms.internal.ads.zzght
    public final long zzg() throws IOException {
        zzP(0);
        return this.zza.zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzght
    public final long zzh() throws IOException {
        zzP(0);
        return this.zza.zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzght
    public final int zzi() throws IOException {
        zzP(0);
        return this.zza.zzh();
    }

    @Override // com.google.android.gms.internal.ads.zzght
    public final long zzj() throws IOException {
        zzP(1);
        return this.zza.zzi();
    }

    @Override // com.google.android.gms.internal.ads.zzght
    public final int zzk() throws IOException {
        zzP(5);
        return this.zza.zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzght
    public final boolean zzl() throws IOException {
        zzP(0);
        return this.zza.zzk();
    }

    @Override // com.google.android.gms.internal.ads.zzght
    public final String zzm() throws IOException {
        zzP(2);
        return this.zza.zzl();
    }

    @Override // com.google.android.gms.internal.ads.zzght
    public final String zzn() throws IOException {
        zzP(2);
        return this.zza.zzm();
    }

    @Override // com.google.android.gms.internal.ads.zzght
    public final <T> T zzo(zzghz<T> zzghzVar, zzgfm zzgfmVar) throws IOException {
        zzP(2);
        return (T) zzQ(zzghzVar, zzgfmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzght
    public final <T> T zzp(zzghz<T> zzghzVar, zzgfm zzgfmVar) throws IOException {
        zzP(3);
        return (T) zzR(zzghzVar, zzgfmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzght
    public final zzgex zzq() throws IOException {
        zzP(2);
        return this.zza.zzn();
    }

    @Override // com.google.android.gms.internal.ads.zzght
    public final int zzr() throws IOException {
        zzP(0);
        return this.zza.zzo();
    }

    @Override // com.google.android.gms.internal.ads.zzght
    public final int zzs() throws IOException {
        zzP(0);
        return this.zza.zzp();
    }

    @Override // com.google.android.gms.internal.ads.zzght
    public final int zzt() throws IOException {
        zzP(5);
        return this.zza.zzq();
    }

    @Override // com.google.android.gms.internal.ads.zzght
    public final long zzu() throws IOException {
        zzP(1);
        return this.zza.zzr();
    }

    @Override // com.google.android.gms.internal.ads.zzght
    public final int zzv() throws IOException {
        zzP(0);
        return this.zza.zzs();
    }

    @Override // com.google.android.gms.internal.ads.zzght
    public final long zzw() throws IOException {
        zzP(0);
        return this.zza.zzt();
    }

    @Override // com.google.android.gms.internal.ads.zzght
    public final void zzx(List<Double> list) throws IOException {
        int zza;
        int zza2;
        if (!(list instanceof zzgfj)) {
            int i = this.zzb & 7;
            if (i == 1) {
                do {
                    list.add(Double.valueOf(this.zza.zzd()));
                    if (this.zza.zzB()) {
                        return;
                    }
                    zza = this.zza.zza();
                } while (zza == this.zzb);
                this.zzd = zza;
                return;
            } else if (i != 2) {
                throw zzggm.zzi();
            } else {
                int zzo = this.zza.zzo();
                zzU(zzo);
                int zzC = this.zza.zzC();
                do {
                    list.add(Double.valueOf(this.zza.zzd()));
                } while (this.zza.zzC() < zzC + zzo);
                return;
            }
        }
        zzgfj zzgfjVar = (zzgfj) list;
        int i2 = this.zzb & 7;
        if (i2 == 1) {
            do {
                zzgfjVar.zzd(this.zza.zzd());
                if (this.zza.zzB()) {
                    return;
                }
                zza2 = this.zza.zza();
            } while (zza2 == this.zzb);
            this.zzd = zza2;
        } else if (i2 != 2) {
            throw zzggm.zzi();
        } else {
            int zzo2 = this.zza.zzo();
            zzU(zzo2);
            int zzC2 = this.zza.zzC();
            do {
                zzgfjVar.zzd(this.zza.zzd());
            } while (this.zza.zzC() < zzC2 + zzo2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzght
    public final void zzy(List<Float> list) throws IOException {
        int zza;
        int zza2;
        if (!(list instanceof zzgft)) {
            int i = this.zzb & 7;
            if (i == 2) {
                int zzo = this.zza.zzo();
                zzT(zzo);
                int zzC = this.zza.zzC();
                do {
                    list.add(Float.valueOf(this.zza.zze()));
                } while (this.zza.zzC() < zzC + zzo);
                return;
            } else if (i != 5) {
                throw zzggm.zzi();
            } else {
                do {
                    list.add(Float.valueOf(this.zza.zze()));
                    if (this.zza.zzB()) {
                        return;
                    }
                    zza = this.zza.zza();
                } while (zza == this.zzb);
                this.zzd = zza;
                return;
            }
        }
        zzgft zzgftVar = (zzgft) list;
        int i2 = this.zzb & 7;
        if (i2 == 2) {
            int zzo2 = this.zza.zzo();
            zzT(zzo2);
            int zzC2 = this.zza.zzC();
            do {
                zzgftVar.zzd(this.zza.zze());
            } while (this.zza.zzC() < zzC2 + zzo2);
        } else if (i2 != 5) {
            throw zzggm.zzi();
        } else {
            do {
                zzgftVar.zzd(this.zza.zze());
                if (this.zza.zzB()) {
                    return;
                }
                zza2 = this.zza.zza();
            } while (zza2 == this.zzb);
            this.zzd = zza2;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzght
    public final void zzz(List<Long> list) throws IOException {
        int zza;
        int zza2;
        if (!(list instanceof zzggx)) {
            int i = this.zzb & 7;
            if (i == 0) {
                do {
                    list.add(Long.valueOf(this.zza.zzf()));
                    if (this.zza.zzB()) {
                        return;
                    }
                    zza = this.zza.zza();
                } while (zza == this.zzb);
                this.zzd = zza;
                return;
            } else if (i != 2) {
                throw zzggm.zzi();
            } else {
                int zzC = this.zza.zzC() + this.zza.zzo();
                do {
                    list.add(Long.valueOf(this.zza.zzf()));
                } while (this.zza.zzC() < zzC);
                zzS(zzC);
                return;
            }
        }
        zzggx zzggxVar = (zzggx) list;
        int i2 = this.zzb & 7;
        if (i2 == 0) {
            do {
                zzggxVar.zzg(this.zza.zzf());
                if (this.zza.zzB()) {
                    return;
                }
                zza2 = this.zza.zza();
            } while (zza2 == this.zzb);
            this.zzd = zza2;
        } else if (i2 != 2) {
            throw zzggm.zzi();
        } else {
            int zzC2 = this.zza.zzC() + this.zza.zzo();
            do {
                zzggxVar.zzg(this.zza.zzf());
            } while (this.zza.zzC() < zzC2);
            zzS(zzC2);
        }
    }
}
