package com.google.android.gms.internal.ads;

import com.google.android.gms.common.api.Api;
import java.io.IOException;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgjo.class */
public final class zzgjo implements zzgmg {
    private final zzgjn zza;
    private int zzb;
    private int zzc;
    private int zzd = 0;

    private zzgjo(zzgjn zzgjnVar) {
        zzgkv.zzf(zzgjnVar, "input");
        this.zza = zzgjnVar;
        zzgjnVar.zzc = this;
    }

    private final <T> T zzP(zzgmo<T> zzgmoVar, zzgjx zzgjxVar) throws IOException {
        int i = this.zzc;
        this.zzc = ((this.zzb >>> 3) << 3) | 4;
        try {
            T zze = zzgmoVar.zze();
            zzgmoVar.zzh(zze, this, zzgjxVar);
            zzgmoVar.zzf(zze);
            if (this.zzb == this.zzc) {
                return zze;
            }
            throw zzgkx.zzg();
        } finally {
            this.zzc = i;
        }
    }

    private final <T> T zzQ(zzgmo<T> zzgmoVar, zzgjx zzgjxVar) throws IOException {
        int zzn = this.zza.zzn();
        zzgjn zzgjnVar = this.zza;
        if (zzgjnVar.zza < zzgjnVar.zzb) {
            int zze = zzgjnVar.zze(zzn);
            T zze2 = zzgmoVar.zze();
            this.zza.zza++;
            zzgmoVar.zzh(zze2, this, zzgjxVar);
            zzgmoVar.zzf(zze2);
            this.zza.zzz(0);
            zzgjn zzgjnVar2 = this.zza;
            zzgjnVar2.zza--;
            zzgjnVar2.zzA(zze);
            return zze2;
        }
        throw new zzgkx("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
    }

    private final void zzR(int i) throws IOException {
        if (this.zza.zzd() == i) {
            return;
        }
        throw zzgkx.zzj();
    }

    private final void zzS(int i) throws IOException {
        if ((this.zzb & 7) == i) {
            return;
        }
        throw zzgkx.zza();
    }

    private static final void zzT(int i) throws IOException {
        if ((i & 3) == 0) {
            return;
        }
        throw zzgkx.zzg();
    }

    private static final void zzU(int i) throws IOException {
        if ((i & 7) == 0) {
            return;
        }
        throw zzgkx.zzg();
    }

    public static zzgjo zzq(zzgjn zzgjnVar) {
        zzgjo zzgjoVar = zzgjnVar.zzc;
        return zzgjoVar != null ? zzgjoVar : new zzgjo(zzgjnVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgmg
    public final void zzA(List<Long> list) throws IOException {
        int zzm;
        int zzm2;
        if (!(list instanceof zzglk)) {
            int i = this.zzb & 7;
            if (i == 1) {
                do {
                    list.add(Long.valueOf(this.zza.zzo()));
                    if (this.zza.zzC()) {
                        return;
                    }
                    zzm = this.zza.zzm();
                } while (zzm == this.zzb);
                this.zzd = zzm;
                return;
            } else if (i != 2) {
                throw zzgkx.zza();
            } else {
                int zzn = this.zza.zzn();
                zzU(zzn);
                int zzd = this.zza.zzd();
                do {
                    list.add(Long.valueOf(this.zza.zzo()));
                } while (this.zza.zzd() < zzd + zzn);
                return;
            }
        }
        zzglk zzglkVar = (zzglk) list;
        int i2 = this.zzb & 7;
        if (i2 == 1) {
            do {
                zzglkVar.zzg(this.zza.zzo());
                if (this.zza.zzC()) {
                    return;
                }
                zzm2 = this.zza.zzm();
            } while (zzm2 == this.zzb);
            this.zzd = zzm2;
        } else if (i2 != 2) {
            throw zzgkx.zza();
        } else {
            int zzn2 = this.zza.zzn();
            zzU(zzn2);
            int zzd2 = this.zza.zzd();
            do {
                zzglkVar.zzg(this.zza.zzo());
            } while (this.zza.zzd() < zzd2 + zzn2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgmg
    public final void zzB(List<Float> list) throws IOException {
        int zzm;
        int zzm2;
        if (!(list instanceof zzgke)) {
            int i = this.zzb & 7;
            if (i == 2) {
                int zzn = this.zza.zzn();
                zzT(zzn);
                int zzd = this.zza.zzd();
                do {
                    list.add(Float.valueOf(this.zza.zzc()));
                } while (this.zza.zzd() < zzd + zzn);
                return;
            } else if (i != 5) {
                throw zzgkx.zza();
            } else {
                do {
                    list.add(Float.valueOf(this.zza.zzc()));
                    if (this.zza.zzC()) {
                        return;
                    }
                    zzm = this.zza.zzm();
                } while (zzm == this.zzb);
                this.zzd = zzm;
                return;
            }
        }
        zzgke zzgkeVar = (zzgke) list;
        int i2 = this.zzb & 7;
        if (i2 == 2) {
            int zzn2 = this.zza.zzn();
            zzT(zzn2);
            int zzd2 = this.zza.zzd();
            do {
                zzgkeVar.zze(this.zza.zzc());
            } while (this.zza.zzd() < zzd2 + zzn2);
        } else if (i2 != 5) {
            throw zzgkx.zza();
        } else {
            do {
                zzgkeVar.zze(this.zza.zzc());
                if (this.zza.zzC()) {
                    return;
                }
                zzm2 = this.zza.zzm();
            } while (zzm2 == this.zzb);
            this.zzd = zzm2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzgmg
    public final <T> void zzC(List<T> list, zzgmo<T> zzgmoVar, zzgjx zzgjxVar) throws IOException {
        int zzm;
        int i = this.zzb;
        if ((i & 7) == 3) {
            do {
                list.add(zzP(zzgmoVar, zzgjxVar));
                if (this.zza.zzC() || this.zzd != 0) {
                    return;
                }
                zzm = this.zza.zzm();
            } while (zzm == i);
            this.zzd = zzm;
            return;
        }
        throw zzgkx.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzgmg
    public final void zzD(List<Integer> list) throws IOException {
        int zzm;
        int zzm2;
        if (!(list instanceof zzgkm)) {
            int i = this.zzb & 7;
            if (i == 0) {
                do {
                    list.add(Integer.valueOf(this.zza.zzh()));
                    if (this.zza.zzC()) {
                        return;
                    }
                    zzm = this.zza.zzm();
                } while (zzm == this.zzb);
                this.zzd = zzm;
                return;
            } else if (i != 2) {
                throw zzgkx.zza();
            } else {
                int zzd = this.zza.zzd() + this.zza.zzn();
                do {
                    list.add(Integer.valueOf(this.zza.zzh()));
                } while (this.zza.zzd() < zzd);
                zzR(zzd);
                return;
            }
        }
        zzgkm zzgkmVar = (zzgkm) list;
        int i2 = this.zzb & 7;
        if (i2 == 0) {
            do {
                zzgkmVar.zzh(this.zza.zzh());
                if (this.zza.zzC()) {
                    return;
                }
                zzm2 = this.zza.zzm();
            } while (zzm2 == this.zzb);
            this.zzd = zzm2;
        } else if (i2 != 2) {
            throw zzgkx.zza();
        } else {
            int zzd2 = this.zza.zzd() + this.zza.zzn();
            do {
                zzgkmVar.zzh(this.zza.zzh());
            } while (this.zza.zzd() < zzd2);
            zzR(zzd2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgmg
    public final void zzE(List<Long> list) throws IOException {
        int zzm;
        int zzm2;
        if (!(list instanceof zzglk)) {
            int i = this.zzb & 7;
            if (i == 0) {
                do {
                    list.add(Long.valueOf(this.zza.zzp()));
                    if (this.zza.zzC()) {
                        return;
                    }
                    zzm = this.zza.zzm();
                } while (zzm == this.zzb);
                this.zzd = zzm;
                return;
            } else if (i != 2) {
                throw zzgkx.zza();
            } else {
                int zzd = this.zza.zzd() + this.zza.zzn();
                do {
                    list.add(Long.valueOf(this.zza.zzp()));
                } while (this.zza.zzd() < zzd);
                zzR(zzd);
                return;
            }
        }
        zzglk zzglkVar = (zzglk) list;
        int i2 = this.zzb & 7;
        if (i2 == 0) {
            do {
                zzglkVar.zzg(this.zza.zzp());
                if (this.zza.zzC()) {
                    return;
                }
                zzm2 = this.zza.zzm();
            } while (zzm2 == this.zzb);
            this.zzd = zzm2;
        } else if (i2 != 2) {
            throw zzgkx.zza();
        } else {
            int zzd2 = this.zza.zzd() + this.zza.zzn();
            do {
                zzglkVar.zzg(this.zza.zzp());
            } while (this.zza.zzd() < zzd2);
            zzR(zzd2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzgmg
    public final <T> void zzF(List<T> list, zzgmo<T> zzgmoVar, zzgjx zzgjxVar) throws IOException {
        int zzm;
        int i = this.zzb;
        if ((i & 7) == 2) {
            do {
                list.add(zzQ(zzgmoVar, zzgjxVar));
                if (this.zza.zzC() || this.zzd != 0) {
                    return;
                }
                zzm = this.zza.zzm();
            } while (zzm == i);
            this.zzd = zzm;
            return;
        }
        throw zzgkx.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzgmg
    public final void zzG(List<Integer> list) throws IOException {
        int zzm;
        int zzm2;
        if (!(list instanceof zzgkm)) {
            int i = this.zzb & 7;
            if (i == 2) {
                int zzn = this.zza.zzn();
                zzT(zzn);
                int zzd = this.zza.zzd();
                do {
                    list.add(Integer.valueOf(this.zza.zzk()));
                } while (this.zza.zzd() < zzd + zzn);
                return;
            } else if (i != 5) {
                throw zzgkx.zza();
            } else {
                do {
                    list.add(Integer.valueOf(this.zza.zzk()));
                    if (this.zza.zzC()) {
                        return;
                    }
                    zzm = this.zza.zzm();
                } while (zzm == this.zzb);
                this.zzd = zzm;
                return;
            }
        }
        zzgkm zzgkmVar = (zzgkm) list;
        int i2 = this.zzb & 7;
        if (i2 == 2) {
            int zzn2 = this.zza.zzn();
            zzT(zzn2);
            int zzd2 = this.zza.zzd();
            do {
                zzgkmVar.zzh(this.zza.zzk());
            } while (this.zza.zzd() < zzd2 + zzn2);
        } else if (i2 != 5) {
            throw zzgkx.zza();
        } else {
            do {
                zzgkmVar.zzh(this.zza.zzk());
                if (this.zza.zzC()) {
                    return;
                }
                zzm2 = this.zza.zzm();
            } while (zzm2 == this.zzb);
            this.zzd = zzm2;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgmg
    public final void zzH(List<Long> list) throws IOException {
        int zzm;
        int zzm2;
        if (!(list instanceof zzglk)) {
            int i = this.zzb & 7;
            if (i == 1) {
                do {
                    list.add(Long.valueOf(this.zza.zzt()));
                    if (this.zza.zzC()) {
                        return;
                    }
                    zzm = this.zza.zzm();
                } while (zzm == this.zzb);
                this.zzd = zzm;
                return;
            } else if (i != 2) {
                throw zzgkx.zza();
            } else {
                int zzn = this.zza.zzn();
                zzU(zzn);
                int zzd = this.zza.zzd();
                do {
                    list.add(Long.valueOf(this.zza.zzt()));
                } while (this.zza.zzd() < zzd + zzn);
                return;
            }
        }
        zzglk zzglkVar = (zzglk) list;
        int i2 = this.zzb & 7;
        if (i2 == 1) {
            do {
                zzglkVar.zzg(this.zza.zzt());
                if (this.zza.zzC()) {
                    return;
                }
                zzm2 = this.zza.zzm();
            } while (zzm2 == this.zzb);
            this.zzd = zzm2;
        } else if (i2 != 2) {
            throw zzgkx.zza();
        } else {
            int zzn2 = this.zza.zzn();
            zzU(zzn2);
            int zzd2 = this.zza.zzd();
            do {
                zzglkVar.zzg(this.zza.zzt());
            } while (this.zza.zzd() < zzd2 + zzn2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgmg
    public final void zzI(List<Integer> list) throws IOException {
        int zzm;
        int zzm2;
        if (!(list instanceof zzgkm)) {
            int i = this.zzb & 7;
            if (i == 0) {
                do {
                    list.add(Integer.valueOf(this.zza.zzl()));
                    if (this.zza.zzC()) {
                        return;
                    }
                    zzm = this.zza.zzm();
                } while (zzm == this.zzb);
                this.zzd = zzm;
                return;
            } else if (i != 2) {
                throw zzgkx.zza();
            } else {
                int zzd = this.zza.zzd() + this.zza.zzn();
                do {
                    list.add(Integer.valueOf(this.zza.zzl()));
                } while (this.zza.zzd() < zzd);
                zzR(zzd);
                return;
            }
        }
        zzgkm zzgkmVar = (zzgkm) list;
        int i2 = this.zzb & 7;
        if (i2 == 0) {
            do {
                zzgkmVar.zzh(this.zza.zzl());
                if (this.zza.zzC()) {
                    return;
                }
                zzm2 = this.zza.zzm();
            } while (zzm2 == this.zzb);
            this.zzd = zzm2;
        } else if (i2 != 2) {
            throw zzgkx.zza();
        } else {
            int zzd2 = this.zza.zzd() + this.zza.zzn();
            do {
                zzgkmVar.zzh(this.zza.zzl());
            } while (this.zza.zzd() < zzd2);
            zzR(zzd2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgmg
    public final void zzJ(List<Long> list) throws IOException {
        int zzm;
        int zzm2;
        if (!(list instanceof zzglk)) {
            int i = this.zzb & 7;
            if (i == 0) {
                do {
                    list.add(Long.valueOf(this.zza.zzu()));
                    if (this.zza.zzC()) {
                        return;
                    }
                    zzm = this.zza.zzm();
                } while (zzm == this.zzb);
                this.zzd = zzm;
                return;
            } else if (i != 2) {
                throw zzgkx.zza();
            } else {
                int zzd = this.zza.zzd() + this.zza.zzn();
                do {
                    list.add(Long.valueOf(this.zza.zzu()));
                } while (this.zza.zzd() < zzd);
                zzR(zzd);
                return;
            }
        }
        zzglk zzglkVar = (zzglk) list;
        int i2 = this.zzb & 7;
        if (i2 == 0) {
            do {
                zzglkVar.zzg(this.zza.zzu());
                if (this.zza.zzC()) {
                    return;
                }
                zzm2 = this.zza.zzm();
            } while (zzm2 == this.zzb);
            this.zzd = zzm2;
        } else if (i2 != 2) {
            throw zzgkx.zza();
        } else {
            int zzd2 = this.zza.zzd() + this.zza.zzn();
            do {
                zzglkVar.zzg(this.zza.zzu());
            } while (this.zza.zzd() < zzd2);
            zzR(zzd2);
        }
    }

    public final void zzK(List<String> list, boolean z) throws IOException {
        int zzm;
        int zzm2;
        if ((this.zzb & 7) == 2) {
            if (!(list instanceof zzgld) || z) {
                do {
                    list.add(z ? zzu() : zzt());
                    if (this.zza.zzC()) {
                        return;
                    }
                    zzm = this.zza.zzm();
                } while (zzm == this.zzb);
                this.zzd = zzm;
                return;
            }
            zzgld zzgldVar = (zzgld) list;
            do {
                zzgldVar.zzi(zzp());
                if (this.zza.zzC()) {
                    return;
                }
                zzm2 = this.zza.zzm();
            } while (zzm2 == this.zzb);
            this.zzd = zzm2;
            return;
        }
        throw zzgkx.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzgmg
    public final void zzL(List<Integer> list) throws IOException {
        int zzm;
        int zzm2;
        if (!(list instanceof zzgkm)) {
            int i = this.zzb & 7;
            if (i == 0) {
                do {
                    list.add(Integer.valueOf(this.zza.zzn()));
                    if (this.zza.zzC()) {
                        return;
                    }
                    zzm = this.zza.zzm();
                } while (zzm == this.zzb);
                this.zzd = zzm;
                return;
            } else if (i != 2) {
                throw zzgkx.zza();
            } else {
                int zzd = this.zza.zzd() + this.zza.zzn();
                do {
                    list.add(Integer.valueOf(this.zza.zzn()));
                } while (this.zza.zzd() < zzd);
                zzR(zzd);
                return;
            }
        }
        zzgkm zzgkmVar = (zzgkm) list;
        int i2 = this.zzb & 7;
        if (i2 == 0) {
            do {
                zzgkmVar.zzh(this.zza.zzn());
                if (this.zza.zzC()) {
                    return;
                }
                zzm2 = this.zza.zzm();
            } while (zzm2 == this.zzb);
            this.zzd = zzm2;
        } else if (i2 != 2) {
            throw zzgkx.zza();
        } else {
            int zzd2 = this.zza.zzd() + this.zza.zzn();
            do {
                zzgkmVar.zzh(this.zza.zzn());
            } while (this.zza.zzd() < zzd2);
            zzR(zzd2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgmg
    public final void zzM(List<Long> list) throws IOException {
        int zzm;
        int zzm2;
        if (!(list instanceof zzglk)) {
            int i = this.zzb & 7;
            if (i == 0) {
                do {
                    list.add(Long.valueOf(this.zza.zzv()));
                    if (this.zza.zzC()) {
                        return;
                    }
                    zzm = this.zza.zzm();
                } while (zzm == this.zzb);
                this.zzd = zzm;
                return;
            } else if (i != 2) {
                throw zzgkx.zza();
            } else {
                int zzd = this.zza.zzd() + this.zza.zzn();
                do {
                    list.add(Long.valueOf(this.zza.zzv()));
                } while (this.zza.zzd() < zzd);
                zzR(zzd);
                return;
            }
        }
        zzglk zzglkVar = (zzglk) list;
        int i2 = this.zzb & 7;
        if (i2 == 0) {
            do {
                zzglkVar.zzg(this.zza.zzv());
                if (this.zza.zzC()) {
                    return;
                }
                zzm2 = this.zza.zzm();
            } while (zzm2 == this.zzb);
            this.zzd = zzm2;
        } else if (i2 != 2) {
            throw zzgkx.zza();
        } else {
            int zzd2 = this.zza.zzd() + this.zza.zzn();
            do {
                zzglkVar.zzg(this.zza.zzv());
            } while (this.zza.zzd() < zzd2);
            zzR(zzd2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgmg
    public final boolean zzN() throws IOException {
        zzS(0);
        return this.zza.zzD();
    }

    @Override // com.google.android.gms.internal.ads.zzgmg
    public final boolean zzO() throws IOException {
        int i;
        if (this.zza.zzC() || (i = this.zzb) == this.zzc) {
            return false;
        }
        return this.zza.zzE(i);
    }

    @Override // com.google.android.gms.internal.ads.zzgmg
    public final double zza() throws IOException {
        zzS(1);
        return this.zza.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzgmg
    public final float zzb() throws IOException {
        zzS(5);
        return this.zza.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzgmg
    public final int zzc() throws IOException {
        int i = this.zzd;
        if (i != 0) {
            this.zzb = i;
            this.zzd = 0;
        } else {
            i = this.zza.zzm();
            this.zzb = i;
        }
        return (i == 0 || i == this.zzc) ? Api.BaseClientBuilder.API_PRIORITY_OTHER : i >>> 3;
    }

    @Override // com.google.android.gms.internal.ads.zzgmg
    public final int zzd() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzgmg
    public final int zze() throws IOException {
        zzS(0);
        return this.zza.zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzgmg
    public final int zzf() throws IOException {
        zzS(5);
        return this.zza.zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzgmg
    public final int zzg() throws IOException {
        zzS(0);
        return this.zza.zzh();
    }

    @Override // com.google.android.gms.internal.ads.zzgmg
    public final int zzh() throws IOException {
        zzS(5);
        return this.zza.zzk();
    }

    @Override // com.google.android.gms.internal.ads.zzgmg
    public final int zzi() throws IOException {
        zzS(0);
        return this.zza.zzl();
    }

    @Override // com.google.android.gms.internal.ads.zzgmg
    public final int zzj() throws IOException {
        zzS(0);
        return this.zza.zzn();
    }

    @Override // com.google.android.gms.internal.ads.zzgmg
    public final long zzk() throws IOException {
        zzS(1);
        return this.zza.zzo();
    }

    @Override // com.google.android.gms.internal.ads.zzgmg
    public final long zzl() throws IOException {
        zzS(0);
        return this.zza.zzp();
    }

    @Override // com.google.android.gms.internal.ads.zzgmg
    public final long zzm() throws IOException {
        zzS(1);
        return this.zza.zzt();
    }

    @Override // com.google.android.gms.internal.ads.zzgmg
    public final long zzn() throws IOException {
        zzS(0);
        return this.zza.zzu();
    }

    @Override // com.google.android.gms.internal.ads.zzgmg
    public final long zzo() throws IOException {
        zzS(0);
        return this.zza.zzv();
    }

    @Override // com.google.android.gms.internal.ads.zzgmg
    public final zzgjf zzp() throws IOException {
        zzS(2);
        return this.zza.zzw();
    }

    @Override // com.google.android.gms.internal.ads.zzgmg
    public final <T> T zzr(zzgmo<T> zzgmoVar, zzgjx zzgjxVar) throws IOException {
        zzS(3);
        return (T) zzP(zzgmoVar, zzgjxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgmg
    public final <T> T zzs(zzgmo<T> zzgmoVar, zzgjx zzgjxVar) throws IOException {
        zzS(2);
        return (T) zzQ(zzgmoVar, zzgjxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgmg
    public final String zzt() throws IOException {
        zzS(2);
        return this.zza.zzx();
    }

    @Override // com.google.android.gms.internal.ads.zzgmg
    public final String zzu() throws IOException {
        zzS(2);
        return this.zza.zzy();
    }

    @Override // com.google.android.gms.internal.ads.zzgmg
    public final void zzv(List<Boolean> list) throws IOException {
        int zzm;
        int zzm2;
        if (!(list instanceof zzgis)) {
            int i = this.zzb & 7;
            if (i == 0) {
                do {
                    list.add(Boolean.valueOf(this.zza.zzD()));
                    if (this.zza.zzC()) {
                        return;
                    }
                    zzm = this.zza.zzm();
                } while (zzm == this.zzb);
                this.zzd = zzm;
                return;
            } else if (i != 2) {
                throw zzgkx.zza();
            } else {
                int zzd = this.zza.zzd() + this.zza.zzn();
                do {
                    list.add(Boolean.valueOf(this.zza.zzD()));
                } while (this.zza.zzd() < zzd);
                zzR(zzd);
                return;
            }
        }
        zzgis zzgisVar = (zzgis) list;
        int i2 = this.zzb & 7;
        if (i2 == 0) {
            do {
                zzgisVar.zze(this.zza.zzD());
                if (this.zza.zzC()) {
                    return;
                }
                zzm2 = this.zza.zzm();
            } while (zzm2 == this.zzb);
            this.zzd = zzm2;
        } else if (i2 != 2) {
            throw zzgkx.zza();
        } else {
            int zzd2 = this.zza.zzd() + this.zza.zzn();
            do {
                zzgisVar.zze(this.zza.zzD());
            } while (this.zza.zzd() < zzd2);
            zzR(zzd2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgmg
    public final void zzw(List<zzgjf> list) throws IOException {
        int zzm;
        if ((this.zzb & 7) == 2) {
            do {
                list.add(zzp());
                if (this.zza.zzC()) {
                    return;
                }
                zzm = this.zza.zzm();
            } while (zzm == this.zzb);
            this.zzd = zzm;
            return;
        }
        throw zzgkx.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzgmg
    public final void zzx(List<Double> list) throws IOException {
        int zzm;
        int zzm2;
        if (!(list instanceof zzgju)) {
            int i = this.zzb & 7;
            if (i == 1) {
                do {
                    list.add(Double.valueOf(this.zza.zzb()));
                    if (this.zza.zzC()) {
                        return;
                    }
                    zzm = this.zza.zzm();
                } while (zzm == this.zzb);
                this.zzd = zzm;
                return;
            } else if (i != 2) {
                throw zzgkx.zza();
            } else {
                int zzn = this.zza.zzn();
                zzU(zzn);
                int zzd = this.zza.zzd();
                do {
                    list.add(Double.valueOf(this.zza.zzb()));
                } while (this.zza.zzd() < zzd + zzn);
                return;
            }
        }
        zzgju zzgjuVar = (zzgju) list;
        int i2 = this.zzb & 7;
        if (i2 == 1) {
            do {
                zzgjuVar.zze(this.zza.zzb());
                if (this.zza.zzC()) {
                    return;
                }
                zzm2 = this.zza.zzm();
            } while (zzm2 == this.zzb);
            this.zzd = zzm2;
        } else if (i2 != 2) {
            throw zzgkx.zza();
        } else {
            int zzn2 = this.zza.zzn();
            zzU(zzn2);
            int zzd2 = this.zza.zzd();
            do {
                zzgjuVar.zze(this.zza.zzb());
            } while (this.zza.zzd() < zzd2 + zzn2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgmg
    public final void zzy(List<Integer> list) throws IOException {
        int zzm;
        int zzm2;
        if (!(list instanceof zzgkm)) {
            int i = this.zzb & 7;
            if (i == 0) {
                do {
                    list.add(Integer.valueOf(this.zza.zzf()));
                    if (this.zza.zzC()) {
                        return;
                    }
                    zzm = this.zza.zzm();
                } while (zzm == this.zzb);
                this.zzd = zzm;
                return;
            } else if (i != 2) {
                throw zzgkx.zza();
            } else {
                int zzd = this.zza.zzd() + this.zza.zzn();
                do {
                    list.add(Integer.valueOf(this.zza.zzf()));
                } while (this.zza.zzd() < zzd);
                zzR(zzd);
                return;
            }
        }
        zzgkm zzgkmVar = (zzgkm) list;
        int i2 = this.zzb & 7;
        if (i2 == 0) {
            do {
                zzgkmVar.zzh(this.zza.zzf());
                if (this.zza.zzC()) {
                    return;
                }
                zzm2 = this.zza.zzm();
            } while (zzm2 == this.zzb);
            this.zzd = zzm2;
        } else if (i2 != 2) {
            throw zzgkx.zza();
        } else {
            int zzd2 = this.zza.zzd() + this.zza.zzn();
            do {
                zzgkmVar.zzh(this.zza.zzf());
            } while (this.zza.zzd() < zzd2);
            zzR(zzd2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgmg
    public final void zzz(List<Integer> list) throws IOException {
        int zzm;
        int zzm2;
        if (!(list instanceof zzgkm)) {
            int i = this.zzb & 7;
            if (i == 2) {
                int zzn = this.zza.zzn();
                zzT(zzn);
                int zzd = this.zza.zzd();
                do {
                    list.add(Integer.valueOf(this.zza.zzg()));
                } while (this.zza.zzd() < zzd + zzn);
                return;
            } else if (i != 5) {
                throw zzgkx.zza();
            } else {
                do {
                    list.add(Integer.valueOf(this.zza.zzg()));
                    if (this.zza.zzC()) {
                        return;
                    }
                    zzm = this.zza.zzm();
                } while (zzm == this.zzb);
                this.zzd = zzm;
                return;
            }
        }
        zzgkm zzgkmVar = (zzgkm) list;
        int i2 = this.zzb & 7;
        if (i2 == 2) {
            int zzn2 = this.zza.zzn();
            zzT(zzn2);
            int zzd2 = this.zza.zzd();
            do {
                zzgkmVar.zzh(this.zza.zzg());
            } while (this.zza.zzd() < zzd2 + zzn2);
        } else if (i2 != 5) {
            throw zzgkx.zza();
        } else {
            do {
                zzgkmVar.zzh(this.zza.zzg());
                if (this.zza.zzC()) {
                    return;
                }
                zzm2 = this.zza.zzm();
            } while (zzm2 == this.zzb);
            this.zzd = zzm2;
        }
    }
}
