package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzyg.class */
public final class zzyg implements zzwp {
    public static final zzww zza = zzyf.zza;
    private final byte[] zzb;
    private final zzfd zzc;
    private final zzwx zzd;
    private zzws zze;
    private zzxt zzf;
    private int zzg;
    private zzdd zzh;
    private zzxd zzi;
    private int zzj;
    private int zzk;
    private zzye zzl;
    private int zzm;
    private long zzn;

    public zzyg() {
        this(0);
    }

    public zzyg(int i) {
        this.zzb = new byte[42];
        this.zzc = new zzfd(new byte[32768], 0);
        this.zzd = new zzwx();
        this.zzg = 0;
    }

    private final long zze(zzfd zzfdVar, boolean z) {
        boolean z2;
        Objects.requireNonNull(this.zzi);
        int zzc = zzfdVar.zzc();
        while (zzc <= zzfdVar.zzd() - 16) {
            zzfdVar.zzF(zzc);
            if (zzwy.zzc(zzfdVar, this.zzi, this.zzk, this.zzd)) {
                zzfdVar.zzF(zzc);
                return this.zzd.zza;
            }
            zzc++;
        }
        if (!z) {
            zzfdVar.zzF(zzc);
            return -1L;
        }
        while (zzc <= zzfdVar.zzd() - this.zzj) {
            zzfdVar.zzF(zzc);
            try {
                z2 = zzwy.zzc(zzfdVar, this.zzi, this.zzk, this.zzd);
            } catch (IndexOutOfBoundsException e) {
                z2 = false;
            }
            if (zzfdVar.zzc() <= zzfdVar.zzd() && z2) {
                zzfdVar.zzF(zzc);
                return this.zzd.zza;
            }
            zzc++;
        }
        zzfdVar.zzF(zzfdVar.zzd());
        return -1L;
    }

    private final void zzf() {
        long j = this.zzn;
        zzxd zzxdVar = this.zzi;
        int i = zzfn.zza;
        this.zzf.zzs((j * 1000000) / zzxdVar.zze, 1, this.zzm, 0, null);
    }

    @Override // com.google.android.gms.internal.ads.zzwp
    public final int zza(zzwq zzwqVar, zzxm zzxmVar) throws IOException {
        boolean zzl;
        zzxd zzxdVar;
        zzxb zzxbVar;
        int i = this.zzg;
        boolean z = true;
        int i2 = 0;
        if (i == 0) {
            zzwqVar.zzj();
            long zzd = zzwqVar.zzd();
            zzdd zza2 = zzxa.zza(zzwqVar, true);
            ((zzwk) zzwqVar).zzo((int) (zzwqVar.zzd() - zzd), false);
            this.zzh = zza2;
            this.zzg = 1;
            return 0;
        } else if (i == 1) {
            ((zzwk) zzwqVar).zzm(this.zzb, 0, 42, false);
            zzwqVar.zzj();
            this.zzg = 2;
            return 0;
        } else if (i == 2) {
            zzfd zzfdVar = new zzfd(4);
            ((zzwk) zzwqVar).zzn(zzfdVar.zzH(), 0, 4, false);
            if (zzfdVar.zzs() != 1716281667) {
                throw zzbj.zza("Failed to read FLAC stream marker.", null);
            }
            this.zzg = 3;
            return 0;
        } else if (i == 3) {
            zzwz zzwzVar = new zzwz(this.zzi);
            do {
                zzwqVar.zzj();
                zzfc zzfcVar = new zzfc(new byte[4], 4);
                byte[] bArr = zzfcVar.zza;
                zzwk zzwkVar = (zzwk) zzwqVar;
                zzwkVar.zzm(bArr, 0, 4, false);
                zzl = zzfcVar.zzl();
                int zzc = zzfcVar.zzc(7);
                int zzc2 = zzfcVar.zzc(24) + 4;
                if (zzc == 0) {
                    byte[] bArr2 = new byte[38];
                    zzwkVar.zzn(bArr2, 0, 38, false);
                    zzwzVar.zza = new zzxd(bArr2, 4);
                } else {
                    zzxd zzxdVar2 = zzwzVar.zza;
                    if (zzxdVar2 == null) {
                        throw new IllegalArgumentException();
                    }
                    if (zzc == 3) {
                        zzfd zzfdVar2 = new zzfd(zzc2);
                        zzwkVar.zzn(zzfdVar2.zzH(), 0, zzc2, false);
                        zzwzVar.zza = zzxdVar2.zzf(zzxa.zzb(zzfdVar2));
                    } else if (zzc == 4) {
                        zzfd zzfdVar3 = new zzfd(zzc2);
                        zzwkVar.zzn(zzfdVar3.zzH(), 0, zzc2, false);
                        zzfdVar3.zzG(4);
                        zzwzVar.zza = zzxdVar2.zzg(Arrays.asList(zzxy.zzb(zzfdVar3, false, false).zzb));
                    } else if (zzc == 6) {
                        zzfd zzfdVar4 = new zzfd(zzc2);
                        zzwkVar.zzn(zzfdVar4.zzH(), 0, zzc2, false);
                        zzfdVar4.zzG(4);
                        int zze = zzfdVar4.zze();
                        String zzx = zzfdVar4.zzx(zzfdVar4.zze(), zzfpt.zza);
                        String zzx2 = zzfdVar4.zzx(zzfdVar4.zze(), zzfpt.zzc);
                        int zze2 = zzfdVar4.zze();
                        int zze3 = zzfdVar4.zze();
                        int zze4 = zzfdVar4.zze();
                        int zze5 = zzfdVar4.zze();
                        int zze6 = zzfdVar4.zze();
                        byte[] bArr3 = new byte[zze6];
                        zzfdVar4.zzB(bArr3, 0, zze6);
                        zzwzVar.zza = zzxdVar2.zze(Collections.singletonList(new zzyz(zze, zzx, zzx2, zze2, zze3, zze4, zze5, bArr3)));
                    } else {
                        zzwkVar.zzo(zzc2, false);
                    }
                }
                zzxdVar = zzwzVar.zza;
                int i3 = zzfn.zza;
                this.zzi = zzxdVar;
            } while (!zzl);
            Objects.requireNonNull(zzxdVar);
            this.zzj = Math.max(zzxdVar.zzc, 6);
            this.zzf.zzk(this.zzi.zzc(this.zzb, this.zzh));
            this.zzg = 4;
            return 0;
        } else if (i == 4) {
            zzwqVar.zzj();
            zzfd zzfdVar5 = new zzfd(2);
            ((zzwk) zzwqVar).zzm(zzfdVar5.zzH(), 0, 2, false);
            int zzo = zzfdVar5.zzo();
            if ((zzo >> 2) != 16382) {
                zzwqVar.zzj();
                throw zzbj.zza("First frame does not start with sync code.", null);
            }
            zzwqVar.zzj();
            this.zzk = zzo;
            zzws zzwsVar = this.zze;
            int i4 = zzfn.zza;
            long zze7 = zzwqVar.zze();
            long zzc3 = zzwqVar.zzc();
            zzxd zzxdVar3 = this.zzi;
            Objects.requireNonNull(zzxdVar3);
            if (zzxdVar3.zzk != null) {
                zzxbVar = new zzxb(zzxdVar3, zze7);
            } else if (zzc3 == -1 || zzxdVar3.zzj <= 0) {
                zzxbVar = new zzxo(zzxdVar3.zza(), 0L);
            } else {
                zzye zzyeVar = new zzye(zzxdVar3, this.zzk, zze7, zzc3);
                this.zzl = zzyeVar;
                zzxbVar = zzyeVar.zzb();
            }
            zzwsVar.zzL(zzxbVar);
            this.zzg = 5;
            return 0;
        } else {
            Objects.requireNonNull(this.zzf);
            Objects.requireNonNull(this.zzi);
            zzye zzyeVar2 = this.zzl;
            if (zzyeVar2 != null && zzyeVar2.zze()) {
                i2 = this.zzl.zza(zzwqVar, zzxmVar);
            } else if (this.zzn == -1) {
                this.zzn = zzwy.zzb(zzwqVar, this.zzi);
            } else {
                int zzd2 = this.zzc.zzd();
                if (zzd2 < 32768) {
                    int zzg = zzwqVar.zzg(this.zzc.zzH(), zzd2, 32768 - zzd2);
                    if (zzg != -1) {
                        z = false;
                    }
                    if (!z) {
                        this.zzc.zzE(zzd2 + zzg);
                    } else if (this.zzc.zza() == 0) {
                        zzf();
                        i2 = -1;
                    }
                } else {
                    z = false;
                }
                int zzc4 = this.zzc.zzc();
                int i5 = this.zzm;
                int i6 = this.zzj;
                if (i5 < i6) {
                    zzfd zzfdVar6 = this.zzc;
                    zzfdVar6.zzG(Math.min(i6 - i5, zzfdVar6.zza()));
                }
                long zze8 = zze(this.zzc, z);
                int zzc5 = this.zzc.zzc() - zzc4;
                this.zzc.zzF(zzc4);
                zzxr.zzb(this.zzf, this.zzc, zzc5);
                this.zzm += zzc5;
                if (zze8 != -1) {
                    zzf();
                    this.zzm = 0;
                    this.zzn = zze8;
                }
                if (this.zzc.zza() < 16) {
                    int zza3 = this.zzc.zza();
                    System.arraycopy(this.zzc.zzH(), this.zzc.zzc(), this.zzc.zzH(), 0, zza3);
                    this.zzc.zzF(0);
                    this.zzc.zzE(zza3);
                    return 0;
                }
            }
            return i2;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzwp
    public final void zzb(zzws zzwsVar) {
        this.zze = zzwsVar;
        this.zzf = zzwsVar.zzv(0, 1);
        zzwsVar.zzB();
    }

    @Override // com.google.android.gms.internal.ads.zzwp
    public final void zzc(long j, long j2) {
        if (j == 0) {
            this.zzg = 0;
        } else {
            zzye zzyeVar = this.zzl;
            if (zzyeVar != null) {
                zzyeVar.zzd(j2);
            }
        }
        this.zzn = j2 == 0 ? (char) 0 : (char) 65535;
        this.zzm = 0;
        this.zzc.zzC(0);
    }

    @Override // com.google.android.gms.internal.ads.zzwp
    public final boolean zzd(zzwq zzwqVar) throws IOException {
        zzxa.zza(zzwqVar, false);
        zzfd zzfdVar = new zzfd(4);
        ((zzwk) zzwqVar).zzm(zzfdVar.zzH(), 0, 4, false);
        return zzfdVar.zzs() == 1716281667;
    }
}
