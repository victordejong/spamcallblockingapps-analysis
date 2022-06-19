package com.google.android.gms.measurement.internal;

import android.os.Binder;
import android.text.TextUtils;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.GoogleSignatureVerifier;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.UidVerifier;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ExecutionException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzgb.class */
public final class zzgb extends zzen {
    private final zzke zza;
    private Boolean zzb;
    private String zzc;

    public zzgb(zzke zzkeVar) {
        this(zzkeVar, null);
    }

    private zzgb(zzke zzkeVar, String str) {
        Preconditions.checkNotNull(zzkeVar);
        this.zza = zzkeVar;
        this.zzc = null;
    }

    private final void zza(Runnable runnable) {
        Preconditions.checkNotNull(runnable);
        if (this.zza.zzq().zzg()) {
            runnable.run();
        } else {
            this.zza.zzq().zza(runnable);
        }
    }

    private final void zza(String str, boolean z) {
        boolean z2;
        if (TextUtils.isEmpty(str)) {
            this.zza.zzr().zzf().zza("Measurement Service called without app package");
            throw new SecurityException("Measurement Service called without app package");
        }
        if (z) {
            try {
                if (this.zzb == null) {
                    if (!"com.google.android.gms".equals(this.zzc) && !UidVerifier.isGooglePlayServicesUid(this.zza.zzn(), Binder.getCallingUid()) && !GoogleSignatureVerifier.getInstance(this.zza.zzn()).isUidGoogleSigned(Binder.getCallingUid())) {
                        z2 = false;
                        this.zzb = Boolean.valueOf(z2);
                    }
                    z2 = true;
                    this.zzb = Boolean.valueOf(z2);
                }
                if (this.zzb.booleanValue()) {
                    return;
                }
            } catch (SecurityException e) {
                this.zza.zzr().zzf().zza("Measurement Service called with invalid calling package. appId", zzew.zza(str));
                throw e;
            }
        }
        if (this.zzc == null && GooglePlayServicesUtilLight.uidHasPackageName(this.zza.zzn(), Binder.getCallingUid(), str)) {
            this.zzc = str;
        }
        if (str.equals(this.zzc)) {
            return;
        }
        throw new SecurityException(String.format("Unknown calling package name '%s'.", str));
    }

    private final void zzb(zzm zzmVar, boolean z) {
        Preconditions.checkNotNull(zzmVar);
        zza(zzmVar.zza, false);
        this.zza.zzj().zza(zzmVar.zzb, zzmVar.zzr, zzmVar.zzv);
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final List<zzkl> zza(zzm zzmVar, boolean z) {
        zzb(zzmVar, false);
        try {
            List<zzkn> list = (List) this.zza.zzq().zza(new zzgn(this, zzmVar)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (zzkn zzknVar : list) {
                if (z || !zzkm.zze(zzknVar.zzc)) {
                    arrayList.add(new zzkl(zzknVar));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e) {
            this.zza.zzr().zzf().zza("Failed to get user attributes. appId", zzew.zza(zzmVar.zza), e);
            return null;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final List<zzv> zza(String str, String str2, zzm zzmVar) {
        zzb(zzmVar, false);
        try {
            return (List) this.zza.zzq().zza(new zzgi(this, zzmVar, str, str2)).get();
        } catch (InterruptedException | ExecutionException e) {
            this.zza.zzr().zzf().zza("Failed to get conditional user properties", e);
            return Collections.emptyList();
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final List<zzv> zza(String str, String str2, String str3) {
        zza(str, true);
        try {
            return (List) this.zza.zzq().zza(new zzgh(this, str, str2, str3)).get();
        } catch (InterruptedException | ExecutionException e) {
            this.zza.zzr().zzf().zza("Failed to get conditional user properties", e);
            return Collections.emptyList();
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final List<zzkl> zza(String str, String str2, String str3, boolean z) {
        zza(str, true);
        try {
            List<zzkn> list = (List) this.zza.zzq().zza(new zzgf(this, str, str2, str3)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (zzkn zzknVar : list) {
                if (z || !zzkm.zze(zzknVar.zzc)) {
                    arrayList.add(new zzkl(zzknVar));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e) {
            this.zza.zzr().zzf().zza("Failed to get user attributes. appId", zzew.zza(str), e);
            return Collections.emptyList();
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final List<zzkl> zza(String str, String str2, boolean z, zzm zzmVar) {
        zzb(zzmVar, false);
        try {
            List<zzkn> list = (List) this.zza.zzq().zza(new zzgg(this, zzmVar, str, str2)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (zzkn zzknVar : list) {
                if (z || !zzkm.zze(zzknVar.zzc)) {
                    arrayList.add(new zzkl(zzknVar));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e) {
            this.zza.zzr().zzf().zza("Failed to get user attributes. appId", zzew.zza(zzmVar.zza), e);
            return Collections.emptyList();
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void zza(long j, String str, String str2, String str3) {
        zza(new zzgp(this, str2, str3, str, j));
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void zza(zzan zzanVar, zzm zzmVar) {
        Preconditions.checkNotNull(zzanVar);
        zzb(zzmVar, false);
        zza(new zzgj(this, zzanVar, zzmVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void zza(zzan zzanVar, String str, String str2) {
        Preconditions.checkNotNull(zzanVar);
        Preconditions.checkNotEmpty(str);
        zza(str, true);
        zza(new zzgm(this, zzanVar, str));
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void zza(zzkl zzklVar, zzm zzmVar) {
        Preconditions.checkNotNull(zzklVar);
        zzb(zzmVar, false);
        zza(new zzgo(this, zzklVar, zzmVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void zza(zzm zzmVar) {
        zzb(zzmVar, false);
        zza(new zzgq(this, zzmVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void zza(zzv zzvVar) {
        Preconditions.checkNotNull(zzvVar);
        Preconditions.checkNotNull(zzvVar.zzc);
        zza(zzvVar.zza, true);
        zza(new zzgd(this, new zzv(zzvVar)));
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void zza(zzv zzvVar, zzm zzmVar) {
        Preconditions.checkNotNull(zzvVar);
        Preconditions.checkNotNull(zzvVar.zzc);
        zzb(zzmVar, false);
        zzv zzvVar2 = new zzv(zzvVar);
        zzvVar2.zza = zzmVar.zza;
        zza(new zzgs(this, zzvVar2, zzmVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final byte[] zza(zzan zzanVar, String str) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(zzanVar);
        zza(str, true);
        this.zza.zzr().zzw().zza("Log and bundle. event", this.zza.zzi().zza(zzanVar.zza));
        long nanoTime = this.zza.zzm().nanoTime() / 1000000;
        try {
            byte[] bArr = (byte[]) this.zza.zzq().zzb(new zzgl(this, zzanVar, str)).get();
            byte[] bArr2 = bArr;
            if (bArr == null) {
                this.zza.zzr().zzf().zza("Log and bundle returned null. appId", zzew.zza(str));
                bArr2 = new byte[0];
            }
            this.zza.zzr().zzw().zza("Log and bundle processed. event, size, time_ms", this.zza.zzi().zza(zzanVar.zza), Integer.valueOf(bArr2.length), Long.valueOf((this.zza.zzm().nanoTime() / 1000000) - nanoTime));
            return bArr2;
        } catch (InterruptedException | ExecutionException e) {
            this.zza.zzr().zzf().zza("Failed to log and bundle. appId, event, error", zzew.zza(str), this.zza.zzi().zza(zzanVar.zza), e);
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0061, code lost:
        if ("referrer API".equals(r0) != false) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.zzan zzb(com.google.android.gms.measurement.internal.zzan r9, com.google.android.gms.measurement.internal.zzm r10) {
        /*
            r8 = this;
            java.lang.String r0 = "_cmp"
            r1 = r9
            java.lang.String r1 = r1.zza
            boolean r0 = r0.equals(r1)
            r11 = r0
            r0 = 0
            r12 = r0
            r0 = r12
            r13 = r0
            r0 = r11
            if (r0 == 0) goto L7f
            r0 = r12
            r13 = r0
            r0 = r9
            com.google.android.gms.measurement.internal.zzam r0 = r0.zzb
            if (r0 == 0) goto L7f
            r0 = r9
            com.google.android.gms.measurement.internal.zzam r0 = r0.zzb
            int r0 = r0.zza()
            if (r0 != 0) goto L32
            r0 = r12
            r13 = r0
            goto L7f
        L32:
            r0 = r9
            com.google.android.gms.measurement.internal.zzam r0 = r0.zzb
            java.lang.String r1 = "_cis"
            java.lang.String r0 = r0.zzd(r1)
            r14 = r0
            r0 = r12
            r13 = r0
            r0 = r14
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L7f
            java.lang.String r0 = "referrer broadcast"
            r1 = r14
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L64
            r0 = r12
            r13 = r0
            java.lang.String r0 = "referrer API"
            r1 = r14
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L7f
        L64:
            r0 = r12
            r13 = r0
            r0 = r8
            com.google.android.gms.measurement.internal.zzke r0 = r0.zza
            com.google.android.gms.measurement.internal.zzx r0 = r0.zzb()
            r1 = r10
            java.lang.String r1 = r1.zza
            com.google.android.gms.measurement.internal.zzel<java.lang.Boolean> r2 = com.google.android.gms.measurement.internal.zzap.zzao
            boolean r0 = r0.zze(r1, r2)
            if (r0 == 0) goto L7f
            r0 = 1
            r13 = r0
        L7f:
            r0 = r13
            if (r0 == 0) goto Laf
            r0 = r8
            com.google.android.gms.measurement.internal.zzke r0 = r0.zza
            com.google.android.gms.measurement.internal.zzew r0 = r0.zzr()
            com.google.android.gms.measurement.internal.zzey r0 = r0.zzv()
            java.lang.String r1 = "Event has been filtered "
            r2 = r9
            java.lang.String r2 = r2.toString()
            r0.zza(r1, r2)
            com.google.android.gms.measurement.internal.zzan r0 = new com.google.android.gms.measurement.internal.zzan
            r1 = r0
            java.lang.String r2 = "_cmpx"
            r3 = r9
            com.google.android.gms.measurement.internal.zzam r3 = r3.zzb
            r4 = r9
            java.lang.String r4 = r4.zzc
            r5 = r9
            long r5 = r5.zzd
            r1.<init>(r2, r3, r4, r5)
            return r0
        Laf:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzgb.zzb(com.google.android.gms.measurement.internal.zzan, com.google.android.gms.measurement.internal.zzm):com.google.android.gms.measurement.internal.zzan");
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void zzb(zzm zzmVar) {
        zzb(zzmVar, false);
        zza(new zzge(this, zzmVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final String zzc(zzm zzmVar) {
        zzb(zzmVar, false);
        return this.zza.zzd(zzmVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void zzd(zzm zzmVar) {
        zza(zzmVar.zza, false);
        zza(new zzgk(this, zzmVar));
    }
}
