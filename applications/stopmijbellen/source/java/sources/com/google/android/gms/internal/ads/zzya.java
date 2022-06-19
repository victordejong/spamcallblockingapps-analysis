package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzya.class */
public final class zzya implements zzwp {
    private static final int[] zzc;
    private static final int zzf;
    private final byte[] zzg;
    private boolean zzh;
    private long zzi;
    private int zzj;
    private int zzk;
    private boolean zzl;
    private int zzm;
    private int zzn;
    private long zzo;
    private zzws zzp;
    private zzxt zzq;
    private zzxp zzr;
    private boolean zzs;
    public static final zzww zza = zzxz.zza;
    private static final int[] zzb = {13, 14, 16, 18, 20, 21, 27, 32, 6, 7, 6, 6, 1, 1, 1, 1};
    private static final byte[] zzd = zzfn.zzW("#!AMR\n");
    private static final byte[] zze = zzfn.zzW("#!AMR-WB\n");

    static {
        int[] iArr = {18, 24, 33, 37, 41, 47, 51, 59, 61, 6, 1, 1, 1, 1, 1, 1};
        zzc = iArr;
        zzf = iArr[8];
    }

    public zzya() {
        this(0);
    }

    public zzya(int i) {
        this.zzg = new byte[1];
        this.zzm = -1;
    }

    @RequiresNonNull({"trackOutput"})
    private final int zze(zzwq zzwqVar) throws IOException {
        int i = this.zzk;
        int i2 = i;
        if (i == 0) {
            try {
                zzwqVar.zzj();
                ((zzwk) zzwqVar).zzm(this.zzg, 0, 1, false);
                byte b = this.zzg[0];
                if ((b & 131) > 0) {
                    StringBuilder sb = new StringBuilder(42);
                    sb.append("Invalid padding bits for frame header ");
                    sb.append((int) b);
                    throw zzbj.zza(sb.toString(), null);
                }
                int i3 = (b >> 3) & 15;
                boolean z = this.zzh;
                if ((!z || (i3 >= 10 && i3 <= 13)) && (z || (i3 >= 12 && i3 <= 14))) {
                    String str = "WB";
                    if (true != z) {
                        str = "NB";
                    }
                    StringBuilder sb2 = new StringBuilder(str.length() + 35);
                    sb2.append("Illegal AMR ");
                    sb2.append(str);
                    sb2.append(" frame type ");
                    sb2.append(i3);
                    throw zzbj.zza(sb2.toString(), null);
                }
                int i4 = z ? zzc[i3] : zzb[i3];
                this.zzj = i4;
                this.zzk = i4;
                int i5 = this.zzm;
                int i6 = i5;
                if (i5 == -1) {
                    this.zzm = i4;
                    i6 = i4;
                }
                i2 = i4;
                if (i6 == i4) {
                    this.zzn++;
                    i2 = i4;
                }
            } catch (EOFException e) {
                return -1;
            }
        }
        int zza2 = zzxr.zza(this.zzq, zzwqVar, i2, true);
        if (zza2 == -1) {
            return -1;
        }
        int i7 = this.zzk - zza2;
        this.zzk = i7;
        if (i7 > 0) {
            return 0;
        }
        this.zzq.zzs(this.zzi, 1, this.zzj, 0, null);
        this.zzi += 20000;
        return 0;
    }

    private static boolean zzf(zzwq zzwqVar, byte[] bArr) throws IOException {
        zzwqVar.zzj();
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        ((zzwk) zzwqVar).zzm(bArr2, 0, length, false);
        return Arrays.equals(bArr2, bArr);
    }

    private final boolean zzg(zzwq zzwqVar) throws IOException {
        byte[] bArr = zzd;
        if (zzf(zzwqVar, bArr)) {
            this.zzh = false;
            ((zzwk) zzwqVar).zzo(bArr.length, false);
            return true;
        }
        byte[] bArr2 = zze;
        if (!zzf(zzwqVar, bArr2)) {
            return false;
        }
        this.zzh = true;
        ((zzwk) zzwqVar).zzo(bArr2.length, false);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzwp
    public final int zza(zzwq zzwqVar, zzxm zzxmVar) throws IOException {
        zzdy.zzb(this.zzq);
        int i = zzfn.zza;
        if (zzwqVar.zze() != 0 || zzg(zzwqVar)) {
            if (!this.zzs) {
                this.zzs = true;
                boolean z = this.zzh;
                String str = true != z ? "audio/3gpp" : "audio/amr-wb";
                int i2 = true != z ? 8000 : 16000;
                zzxt zzxtVar = this.zzq;
                zzz zzzVar = new zzz();
                zzzVar.zzS(str);
                zzzVar.zzL(zzf);
                zzzVar.zzw(1);
                zzzVar.zzT(i2);
                zzxtVar.zzk(zzzVar.zzY());
            }
            int zze2 = zze(zzwqVar);
            if (this.zzl) {
                return zze2;
            }
            zzxo zzxoVar = new zzxo(-9223372036854775807L, 0L);
            this.zzr = zzxoVar;
            this.zzp.zzL(zzxoVar);
            this.zzl = true;
            return zze2;
        }
        throw zzbj.zza("Could not find AMR header.", null);
    }

    @Override // com.google.android.gms.internal.ads.zzwp
    public final void zzb(zzws zzwsVar) {
        this.zzp = zzwsVar;
        this.zzq = zzwsVar.zzv(0, 1);
        zzwsVar.zzB();
    }

    @Override // com.google.android.gms.internal.ads.zzwp
    public final void zzc(long j, long j2) {
        this.zzi = 0L;
        this.zzj = 0;
        this.zzk = 0;
        this.zzo = 0L;
    }

    @Override // com.google.android.gms.internal.ads.zzwp
    public final boolean zzd(zzwq zzwqVar) throws IOException {
        return zzg(zzwqVar);
    }
}
