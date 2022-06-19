package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.MediaFormat;
import android.os.Handler;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzer.class */
public final class zzer extends zzfq implements zzalp {
    private final Context zzb;
    private final zzdp zzc;
    private final zzdw zzd;
    private int zze;
    private boolean zzf;
    private zzafv zzg;
    private long zzh;
    private boolean zzi;
    private boolean zzj;
    private boolean zzk;
    private zzahu zzl;

    public zzer(Context context, zzfm zzfmVar, zzfs zzfsVar, boolean z, Handler handler, zzdq zzdqVar, zzdw zzdwVar) {
        super(1, zzfmVar, zzfsVar, false, 44100.0f);
        this.zzb = context.getApplicationContext();
        this.zzd = zzdwVar;
        this.zzc = new zzdp(handler, zzdqVar);
        zzdwVar.zza(new zzep(this, null));
    }

    private final int zzaa(zzfo zzfoVar, zzafv zzafvVar) {
        int i;
        if (!"OMX.google.raw.decoder".equals(zzfoVar.zza) || (i = zzamq.zza) >= 24 || (i == 23 && zzamq.zzZ(this.zzb))) {
            return zzafvVar.zzm;
        }
        return -1;
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    private final void zzab() {
        char zzd = this.zzd.zzd(zzw());
        if (zzd != Long.MIN_VALUE) {
            if (!this.zzj) {
                zzd = Math.max(this.zzh, (long) zzd);
            }
            this.zzh = zzd;
            this.zzj = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzalp
    public final zzahf zzA() {
        return this.zzd.zzm();
    }

    @Override // com.google.android.gms.internal.ads.zzfq
    public final void zzB(zzaf zzafVar) {
        if (!this.zzi || zzafVar.zzb()) {
            return;
        }
        if (Math.abs(zzafVar.zzd - this.zzh) > 500000) {
            this.zzh = zzafVar.zzd;
        }
        this.zzi = false;
    }

    @Override // com.google.android.gms.internal.ads.zzfq
    public final void zzC() {
        this.zzd.zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzfq
    public final void zzD() throws zzaeg {
        try {
            this.zzd.zzi();
        } catch (zzdv e) {
            throw zzaw(e, e.zzb, e.zza, 5002);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzadv, com.google.android.gms.internal.ads.zzahr
    public final void zzE(int i, Object obj) throws zzaeg {
        if (i == 2) {
            this.zzd.zzr(((Float) obj).floatValue());
        } else if (i == 3) {
            this.zzd.zzo((zzg) obj);
        } else if (i == 6) {
            this.zzd.zzq((zzh) obj);
        } else {
            switch (i) {
                case 9:
                    this.zzd.zzn(((Boolean) obj).booleanValue());
                    return;
                case 10:
                    this.zzd.zzp(((Integer) obj).intValue());
                    return;
                case 11:
                    this.zzl = (zzahu) obj;
                    return;
                default:
                    return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfq
    public final boolean zzF(long j, long j2, zzgh zzghVar, ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, zzafv zzafvVar) throws zzaeg {
        Objects.requireNonNull(byteBuffer);
        if (this.zzg != null && (i2 & 2) != 0) {
            Objects.requireNonNull(zzghVar);
            zzghVar.zzh(i, false);
            return true;
        } else if (z) {
            if (zzghVar != null) {
                zzghVar.zzh(i, false);
            }
            ((zzfq) this).zza.zzf += i3;
            this.zzd.zzg();
            return true;
        } else {
            try {
                if (!this.zzd.zzh(byteBuffer, j3, i3)) {
                    return false;
                }
                if (zzghVar != null) {
                    zzghVar.zzh(i, false);
                }
                ((zzfq) this).zza.zze += i3;
                return true;
            } catch (zzds e) {
                throw zzaw(e, e.zzb, false, 5001);
            } catch (zzdv e2) {
                throw zzaw(e2, zzafvVar, e2.zza, 5002);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzahv, com.google.android.gms.internal.ads.zzahw
    public final String zzc() {
        return "MediaCodecAudioRenderer";
    }

    @Override // com.google.android.gms.internal.ads.zzfq
    public final int zzd(zzfs zzfsVar, zzafv zzafvVar) throws zzfy {
        if (!zzalt.zza(zzafvVar.zzl)) {
            return 0;
        }
        int i = zzamq.zza >= 21 ? 32 : 0;
        int i2 = zzafvVar.zzE;
        boolean zzY = zzfq.zzY(zzafvVar);
        if (zzY && this.zzd.zzb(zzafvVar) && (i2 == 0 || zzge.zza() != null)) {
            return i | 12;
        }
        if (("audio/raw".equals(zzafvVar.zzl) && !this.zzd.zzb(zzafvVar)) || !this.zzd.zzb(zzamq.zzN(2, zzafvVar.zzy, zzafvVar.zzz))) {
            return 1;
        }
        List<zzfo> zze = zze(zzfsVar, zzafvVar, false);
        if (zze.isEmpty()) {
            return 1;
        }
        if (!zzY) {
            return 2;
        }
        zzfo zzfoVar = zze.get(0);
        boolean zzc = zzfoVar.zzc(zzafvVar);
        int i3 = 8;
        if (zzc) {
            i3 = 8;
            if (zzfoVar.zzd(zzafvVar)) {
                i3 = 16;
            }
        }
        return (true != zzc ? 3 : 4) | i3 | i;
    }

    @Override // com.google.android.gms.internal.ads.zzfq
    public final List<zzfo> zze(zzfs zzfsVar, zzafv zzafvVar, boolean z) throws zzfy {
        zzfo zza;
        String str = zzafvVar.zzl;
        if (str == null) {
            return Collections.emptyList();
        }
        if (this.zzd.zzb(zzafvVar) && (zza = zzge.zza()) != null) {
            return Collections.singletonList(zza);
        }
        List<zzfo> zzd = zzge.zzd(zzge.zzc(str, false, false), zzafvVar);
        ArrayList arrayList = zzd;
        if ("audio/eac3-joc".equals(str)) {
            ArrayList arrayList2 = new ArrayList(zzd);
            arrayList2.addAll(zzge.zzc("audio/eac3", false, false));
            arrayList = arrayList2;
        }
        return Collections.unmodifiableList(arrayList);
    }

    @Override // com.google.android.gms.internal.ads.zzfq
    public final boolean zzf(zzafv zzafvVar) {
        return this.zzd.zzb(zzafvVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0136, code lost:
        if ("AXON 7 mini".equals(r0) == false) goto L36;
     */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0108  */
    @Override // com.google.android.gms.internal.ads.zzfq
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.ads.zzfl zzg(com.google.android.gms.internal.ads.zzfo r6, com.google.android.gms.internal.ads.zzafv r7, android.media.MediaCrypto r8, float r9) {
        /*
            Method dump skipped, instructions count: 440
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzer.zzg(com.google.android.gms.internal.ads.zzfo, com.google.android.gms.internal.ads.zzafv, android.media.MediaCrypto, float):com.google.android.gms.internal.ads.zzfl");
    }

    @Override // com.google.android.gms.internal.ads.zzfq
    public final zzba zzh(zzfo zzfoVar, zzafv zzafvVar, zzafv zzafvVar2) {
        int i;
        zzba zze = zzfoVar.zze(zzafvVar, zzafvVar2);
        int i2 = zze.zze;
        int i3 = i2;
        if (zzaa(zzfoVar, zzafvVar2) > this.zze) {
            i3 = i2 | 64;
        }
        String str = zzfoVar.zza;
        if (i3 != 0) {
            i = 0;
        } else {
            i = zze.zzd;
            i3 = 0;
        }
        return new zzba(str, zzafvVar, zzafvVar2, i, i3);
    }

    @Override // com.google.android.gms.internal.ads.zzadv, com.google.android.gms.internal.ads.zzahv
    public final zzalp zzi() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfq
    public final float zzj(float f, zzafv zzafvVar, zzafv[] zzafvVarArr) {
        int i;
        int length = zzafvVarArr.length;
        int i2 = 0;
        int i3 = -1;
        while (true) {
            i = i3;
            if (i2 >= length) {
                break;
            }
            int i4 = zzafvVarArr[i2].zzz;
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

    @Override // com.google.android.gms.internal.ads.zzfq
    public final void zzk(String str, long j, long j2) {
        this.zzc.zzb(str, j, j2);
    }

    @Override // com.google.android.gms.internal.ads.zzfq
    public final void zzl(String str) {
        this.zzc.zzf(str);
    }

    @Override // com.google.android.gms.internal.ads.zzfq
    public final void zzm(Exception exc) {
        zzaln.zzb("MediaCodecAudioRenderer", "Audio codec error", exc);
        this.zzc.zzj(exc);
    }

    @Override // com.google.android.gms.internal.ads.zzfq
    public final zzba zzn(zzafw zzafwVar) throws zzaeg {
        zzba zzn = super.zzn(zzafwVar);
        this.zzc.zzc(zzafwVar.zza, zzn);
        return zzn;
    }

    @Override // com.google.android.gms.internal.ads.zzfq
    public final void zzo(zzafv zzafvVar, MediaFormat mediaFormat) throws zzaeg {
        int[] iArr;
        zzafv zzafvVar2 = this.zzg;
        if (zzafvVar2 != null) {
            zzafvVar = zzafvVar2;
            iArr = null;
        } else if (zzZ() == null) {
            iArr = null;
        } else {
            int zzO = "audio/raw".equals(zzafvVar.zzl) ? zzafvVar.zzA : (zzamq.zza < 24 || !mediaFormat.containsKey("pcm-encoding")) ? mediaFormat.containsKey("v-bits-per-sample") ? zzamq.zzO(mediaFormat.getInteger("v-bits-per-sample")) : "audio/raw".equals(zzafvVar.zzl) ? zzafvVar.zzA : 2 : mediaFormat.getInteger("pcm-encoding");
            zzaft zzaftVar = new zzaft();
            zzaftVar.zzN("audio/raw");
            zzaftVar.zzac(zzO);
            zzaftVar.zzad(zzafvVar.zzB);
            zzaftVar.zzae(zzafvVar.zzC);
            zzaftVar.zzaa(mediaFormat.getInteger("channel-count"));
            zzaftVar.zzab(mediaFormat.getInteger("sample-rate"));
            zzafv zzah = zzaftVar.zzah();
            iArr = null;
            if (this.zzf) {
                iArr = null;
                if (zzah.zzy == 6) {
                    int i = zzafvVar.zzy;
                    iArr = null;
                    if (i < 6) {
                        int[] iArr2 = new int[i];
                        int i2 = 0;
                        while (true) {
                            iArr = iArr2;
                            if (i2 >= zzafvVar.zzy) {
                                break;
                            }
                            iArr2[i2] = i2;
                            i2++;
                        }
                    }
                }
            }
            zzafvVar = zzah;
        }
        try {
            this.zzd.zze(zzafvVar, 0, iArr);
        } catch (zzdr e) {
            throw zzaw(e, e.zza, false, 5001);
        }
    }

    public final void zzp() {
        this.zzj = true;
    }

    @Override // com.google.android.gms.internal.ads.zzfq, com.google.android.gms.internal.ads.zzadv
    public final void zzq(boolean z, boolean z2) throws zzaeg {
        super.zzq(z, z2);
        this.zzc.zza(((zzfq) this).zza);
        zzav();
    }

    @Override // com.google.android.gms.internal.ads.zzfq, com.google.android.gms.internal.ads.zzadv
    public final void zzr(long j, boolean z) throws zzaeg {
        super.zzr(j, z);
        this.zzd.zzt();
        this.zzh = j;
        this.zzi = true;
        this.zzj = true;
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final void zzs() {
        this.zzd.zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final void zzt() {
        zzab();
        this.zzd.zzs();
    }

    @Override // com.google.android.gms.internal.ads.zzfq, com.google.android.gms.internal.ads.zzadv
    public final void zzu() {
        this.zzk = true;
        try {
            this.zzd.zzt();
            try {
                super.zzu();
            } finally {
            }
        } catch (Throwable th) {
            try {
                super.zzu();
                throw th;
            } finally {
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfq, com.google.android.gms.internal.ads.zzadv
    public final void zzv() {
        try {
            super.zzv();
            if (!this.zzk) {
                return;
            }
            this.zzk = false;
            this.zzd.zzu();
        } catch (Throwable th) {
            if (this.zzk) {
                this.zzk = false;
                this.zzd.zzu();
            }
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfq, com.google.android.gms.internal.ads.zzahv
    public final boolean zzw() {
        return super.zzw() && this.zzd.zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzfq, com.google.android.gms.internal.ads.zzahv
    public final boolean zzx() {
        return this.zzd.zzk() || super.zzx();
    }

    @Override // com.google.android.gms.internal.ads.zzalp
    public final long zzy() {
        if (zzaf() == 2) {
            zzab();
        }
        return this.zzh;
    }

    @Override // com.google.android.gms.internal.ads.zzalp
    public final void zzz(zzahf zzahfVar) {
        this.zzd.zzl(zzahfVar);
    }
}
