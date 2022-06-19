package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.MediaFormat;
import android.os.Handler;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzmv.class */
public final class zzmv extends zzoj implements zzht {
    private final Context zzb;
    private final zzls zzc;
    private final zzlz zzd;
    private int zze;
    private boolean zzf;
    private zzab zzg;
    private long zzh;
    private boolean zzi;
    private boolean zzj;
    private boolean zzk;
    private zzik zzl;

    public zzmv(Context context, zzoe zzoeVar, zzol zzolVar, boolean z, Handler handler, zzlt zzltVar, zzlz zzlzVar) {
        super(1, zzoeVar, zzolVar, false, 44100.0f);
        this.zzb = context.getApplicationContext();
        this.zzd = zzlzVar;
        this.zzc = new zzls(handler, zzltVar);
        zzlzVar.zzn(new zzmu(this, null));
    }

    private final int zzav(zzoh zzohVar, zzab zzabVar) {
        int i;
        if (!"OMX.google.raw.decoder".equals(zzohVar.zza) || (i = zzfn.zza) >= 24 || (i == 23 && zzfn.zzT(this.zzb))) {
            return zzabVar.zzn;
        }
        return -1;
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    private final void zzaw() {
        char zzb = this.zzd.zzb(zzL());
        if (zzb != Long.MIN_VALUE) {
            if (!this.zzj) {
                zzb = Math.max(this.zzh, (long) zzb);
            }
            this.zzh = zzb;
            this.zzj = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzil, com.google.android.gms.internal.ads.zzim
    public final String zzJ() {
        return "MediaCodecAudioRenderer";
    }

    @Override // com.google.android.gms.internal.ads.zzoj, com.google.android.gms.internal.ads.zzil
    public final boolean zzL() {
        return super.zzL() && this.zzd.zzt();
    }

    @Override // com.google.android.gms.internal.ads.zzoj, com.google.android.gms.internal.ads.zzil
    public final boolean zzM() {
        return this.zzd.zzs() || super.zzM();
    }

    @Override // com.google.android.gms.internal.ads.zzoj
    public final float zzO(float f, zzab zzabVar, zzab[] zzabVarArr) {
        int i;
        int length = zzabVarArr.length;
        int i2 = 0;
        int i3 = -1;
        while (true) {
            i = i3;
            if (i2 >= length) {
                break;
            }
            int i4 = zzabVarArr[i2].zzA;
            int i5 = i;
            if (i4 != -1) {
                i5 = Math.max(i, i4);
            }
            i2++;
            i3 = i5;
        }
        if (i == -1) {
            return -1.0f;
        }
        return i * f;
    }

    @Override // com.google.android.gms.internal.ads.zzoj
    public final int zzP(zzol zzolVar, zzab zzabVar) throws zzos {
        if (!zzbi.zzg(zzabVar.zzm)) {
            return 0;
        }
        int i = zzfn.zza >= 21 ? 32 : 0;
        int i2 = zzabVar.zzF;
        boolean zzau = zzoj.zzau(zzabVar);
        if (zzau && this.zzd.zzu(zzabVar) && (i2 == 0 || zzoy.zzd() != null)) {
            return i | 12;
        }
        if (("audio/raw".equals(zzabVar.zzm) && !this.zzd.zzu(zzabVar)) || !this.zzd.zzu(zzfn.zzB(2, zzabVar.zzz, zzabVar.zzA))) {
            return 1;
        }
        List<zzoh> zzV = zzV(zzolVar, zzabVar, false);
        if (zzV.isEmpty()) {
            return 1;
        }
        if (!zzau) {
            return 2;
        }
        zzoh zzohVar = zzV.get(0);
        boolean zzd = zzohVar.zzd(zzabVar);
        int i3 = 8;
        if (zzd) {
            i3 = 8;
            if (zzohVar.zze(zzabVar)) {
                i3 = 16;
            }
        }
        return (true != zzd ? 3 : 4) | i3 | i;
    }

    @Override // com.google.android.gms.internal.ads.zzoj
    public final zzfz zzQ(zzoh zzohVar, zzab zzabVar, zzab zzabVar2) {
        int i;
        zzfz zzb = zzohVar.zzb(zzabVar, zzabVar2);
        int i2 = zzb.zze;
        int i3 = i2;
        if (zzav(zzohVar, zzabVar2) > this.zze) {
            i3 = i2 | 64;
        }
        String str = zzohVar.zza;
        if (i3 != 0) {
            i = 0;
        } else {
            i = zzb.zzd;
            i3 = 0;
        }
        return new zzfz(str, zzabVar, zzabVar2, i, i3);
    }

    @Override // com.google.android.gms.internal.ads.zzoj
    public final zzfz zzR(zzhr zzhrVar) throws zzgg {
        zzfz zzR = super.zzR(zzhrVar);
        this.zzc.zzg(zzhrVar.zza, zzR);
        return zzR;
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x012f, code lost:
        if ("AXON 7 mini".equals(r0) == false) goto L36;
     */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0102  */
    @Override // com.google.android.gms.internal.ads.zzoj
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.ads.zzod zzU(com.google.android.gms.internal.ads.zzoh r6, com.google.android.gms.internal.ads.zzab r7, android.media.MediaCrypto r8, float r9) {
        /*
            Method dump skipped, instructions count: 431
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzmv.zzU(com.google.android.gms.internal.ads.zzoh, com.google.android.gms.internal.ads.zzab, android.media.MediaCrypto, float):com.google.android.gms.internal.ads.zzod");
    }

    @Override // com.google.android.gms.internal.ads.zzoj
    public final List<zzoh> zzV(zzol zzolVar, zzab zzabVar, boolean z) throws zzos {
        zzoh zzd;
        String str = zzabVar.zzm;
        if (str == null) {
            return Collections.emptyList();
        }
        if (this.zzd.zzu(zzabVar) && (zzd = zzoy.zzd()) != null) {
            return Collections.singletonList(zzd);
        }
        List<zzoh> zzf = zzoy.zzf(zzoy.zze(str, false, false), zzabVar);
        ArrayList arrayList = zzf;
        if ("audio/eac3-joc".equals(str)) {
            ArrayList arrayList2 = new ArrayList(zzf);
            arrayList2.addAll(zzoy.zze("audio/eac3", false, false));
            arrayList = arrayList2;
        }
        return Collections.unmodifiableList(arrayList);
    }

    @Override // com.google.android.gms.internal.ads.zzoj
    public final void zzW(Exception exc) {
        zzep.zza("MediaCodecAudioRenderer", "Audio codec error", exc);
        this.zzc.zza(exc);
    }

    @Override // com.google.android.gms.internal.ads.zzoj
    public final void zzX(String str, long j, long j2) {
        this.zzc.zzc(str, j, j2);
    }

    @Override // com.google.android.gms.internal.ads.zzoj
    public final void zzY(String str) {
        this.zzc.zzd(str);
    }

    @Override // com.google.android.gms.internal.ads.zzoj
    public final void zzZ(zzab zzabVar, MediaFormat mediaFormat) throws zzgg {
        int[] iArr;
        zzab zzabVar2 = this.zzg;
        if (zzabVar2 != null) {
            zzabVar = zzabVar2;
            iArr = null;
        } else if (zzai() == null) {
            iArr = null;
        } else {
            int zzl = "audio/raw".equals(zzabVar.zzm) ? zzabVar.zzB : (zzfn.zza < 24 || !mediaFormat.containsKey("pcm-encoding")) ? mediaFormat.containsKey("v-bits-per-sample") ? zzfn.zzl(mediaFormat.getInteger("v-bits-per-sample")) : "audio/raw".equals(zzabVar.zzm) ? zzabVar.zzB : 2 : mediaFormat.getInteger("pcm-encoding");
            zzz zzzVar = new zzz();
            zzzVar.zzS("audio/raw");
            zzzVar.zzN(zzl);
            zzzVar.zzC(zzabVar.zzC);
            zzzVar.zzD(zzabVar.zzD);
            zzzVar.zzw(mediaFormat.getInteger("channel-count"));
            zzzVar.zzT(mediaFormat.getInteger("sample-rate"));
            zzab zzY = zzzVar.zzY();
            iArr = null;
            if (this.zzf) {
                iArr = null;
                if (zzY.zzz == 6) {
                    int i = zzabVar.zzz;
                    iArr = null;
                    if (i < 6) {
                        int[] iArr2 = new int[i];
                        int i2 = 0;
                        while (true) {
                            iArr = iArr2;
                            if (i2 >= zzabVar.zzz) {
                                break;
                            }
                            iArr2[i2] = i2;
                            i2++;
                        }
                    }
                }
            }
            zzabVar = zzY;
        }
        try {
            this.zzd.zzd(zzabVar, 0, iArr);
        } catch (zzlu e) {
            throw zzbo(e, e.zza, false, 5001);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzht
    public final long zza() {
        if (zzbm() == 2) {
            zzaw();
        }
        return this.zzh;
    }

    public final void zzaa() {
        this.zzj = true;
    }

    @Override // com.google.android.gms.internal.ads.zzoj
    public final void zzab() {
        this.zzd.zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzoj
    public final void zzac(zzda zzdaVar) {
        if (!this.zzi || zzdaVar.zzf()) {
            return;
        }
        if (Math.abs(zzdaVar.zzd - this.zzh) > 500000) {
            this.zzh = zzdaVar.zzd;
        }
        this.zzi = false;
    }

    @Override // com.google.android.gms.internal.ads.zzoj
    public final void zzad() throws zzgg {
        try {
            this.zzd.zzi();
        } catch (zzly e) {
            throw zzbo(e, e.zzb, e.zza, 5002);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzoj
    public final boolean zzae(long j, long j2, zzof zzofVar, ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, zzab zzabVar) throws zzgg {
        Objects.requireNonNull(byteBuffer);
        if (this.zzg != null && (i2 & 2) != 0) {
            Objects.requireNonNull(zzofVar);
            zzofVar.zzn(i, false);
            return true;
        } else if (z) {
            if (zzofVar != null) {
                zzofVar.zzn(i, false);
            }
            ((zzoj) this).zza.zzf += i3;
            this.zzd.zzf();
            return true;
        } else {
            try {
                if (!this.zzd.zzr(byteBuffer, j3, i3)) {
                    return false;
                }
                if (zzofVar != null) {
                    zzofVar.zzn(i, false);
                }
                ((zzoj) this).zza.zze += i3;
                return true;
            } catch (zzlv e) {
                throw zzbo(e, e.zzb, false, 5001);
            } catch (zzly e2) {
                throw zzbo(e2, zzabVar, e2.zza, 5002);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzoj
    public final boolean zzaf(zzab zzabVar) {
        return this.zzd.zzu(zzabVar);
    }

    @Override // com.google.android.gms.internal.ads.zzht
    public final zzbn zzc() {
        return this.zzd.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzht
    public final void zzg(zzbn zzbnVar) {
        this.zzd.zzo(zzbnVar);
    }

    @Override // com.google.android.gms.internal.ads.zzfx, com.google.android.gms.internal.ads.zzil
    public final zzht zzi() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfx, com.google.android.gms.internal.ads.zzih
    public final void zzo(int i, Object obj) throws zzgg {
        if (i == 2) {
            this.zzd.zzq(((Float) obj).floatValue());
        } else if (i == 3) {
            this.zzd.zzk((zzg) obj);
        } else if (i == 6) {
            this.zzd.zzm((zzh) obj);
        } else {
            switch (i) {
                case 9:
                    this.zzd.zzp(((Boolean) obj).booleanValue());
                    return;
                case 10:
                    this.zzd.zzl(((Integer) obj).intValue());
                    return;
                case 11:
                    this.zzl = (zzik) obj;
                    return;
                default:
                    return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzoj, com.google.android.gms.internal.ads.zzfx
    public final void zzq() {
        this.zzk = true;
        try {
            this.zzd.zze();
            try {
                super.zzq();
            } finally {
            }
        } catch (Throwable th) {
            try {
                super.zzq();
                throw th;
            } finally {
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzoj, com.google.android.gms.internal.ads.zzfx
    public final void zzr(boolean z, boolean z2) throws zzgg {
        super.zzr(z, z2);
        this.zzc.zzf(((zzoj) this).zza);
        zzk();
    }

    @Override // com.google.android.gms.internal.ads.zzoj, com.google.android.gms.internal.ads.zzfx
    public final void zzs(long j, boolean z) throws zzgg {
        super.zzs(j, z);
        this.zzd.zze();
        this.zzh = j;
        this.zzi = true;
        this.zzj = true;
    }

    @Override // com.google.android.gms.internal.ads.zzoj, com.google.android.gms.internal.ads.zzfx
    public final void zzt() {
        try {
            super.zzt();
            if (!this.zzk) {
                return;
            }
            this.zzk = false;
            this.zzd.zzj();
        } catch (Throwable th) {
            if (this.zzk) {
                this.zzk = false;
                this.zzd.zzj();
            }
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfx
    public final void zzu() {
        this.zzd.zzh();
    }

    @Override // com.google.android.gms.internal.ads.zzfx
    public final void zzv() {
        zzaw();
        this.zzd.zzg();
    }
}
