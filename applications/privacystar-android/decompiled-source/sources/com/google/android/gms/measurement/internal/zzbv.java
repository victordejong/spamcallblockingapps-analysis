package com.google.android.gms.measurement.internal;

import android.os.Binder;
import android.support.annotation.BinderThread;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.GoogleSignatureVerifier;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.UidVerifier;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ExecutionException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzbv.class */
public final class zzbv extends zzah {
    private final zzfa zzamz;
    private Boolean zzaql;
    @Nullable
    private String zzaqm;

    public zzbv(zzfa zzfaVar) {
        this(zzfaVar, null);
    }

    private zzbv(zzfa zzfaVar, @Nullable String str) {
        Preconditions.checkNotNull(zzfaVar);
        this.zzamz = zzfaVar;
        this.zzaqm = null;
    }

    @BinderThread
    private final void zzb(zzh zzhVar, boolean z) {
        Preconditions.checkNotNull(zzhVar);
        zzc(zzhVar.packageName, false);
        this.zzamz.zzgm().zzt(zzhVar.zzafx, zzhVar.zzagk);
    }

    @BinderThread
    private final void zzc(String str, boolean z) {
        boolean z2;
        if (TextUtils.isEmpty(str)) {
            this.zzamz.zzgo().zzjd().zzbx("Measurement Service called without app package");
            throw new SecurityException("Measurement Service called without app package");
        }
        if (z) {
            try {
                if (this.zzaql == null) {
                    if (!"com.google.android.gms".equals(this.zzaqm) && !UidVerifier.isGooglePlayServicesUid(this.zzamz.getContext(), Binder.getCallingUid()) && !GoogleSignatureVerifier.getInstance(this.zzamz.getContext()).isUidGoogleSigned(Binder.getCallingUid())) {
                        z2 = false;
                        this.zzaql = Boolean.valueOf(z2);
                    }
                    z2 = true;
                    this.zzaql = Boolean.valueOf(z2);
                }
                if (this.zzaql.booleanValue()) {
                    return;
                }
            } catch (SecurityException e) {
                this.zzamz.zzgo().zzjd().zzg("Measurement Service called with invalid calling package. appId", zzap.zzbv(str));
                throw e;
            }
        }
        if (this.zzaqm == null && GooglePlayServicesUtilLight.uidHasPackageName(this.zzamz.getContext(), Binder.getCallingUid(), str)) {
            this.zzaqm = str;
        }
        if (!str.equals(this.zzaqm)) {
            throw new SecurityException(String.format("Unknown calling package name '%s'.", str));
        }
    }

    @VisibleForTesting
    private final void zze(Runnable runnable) {
        Preconditions.checkNotNull(runnable);
        if (!zzaf.zzakv.get().booleanValue() || !this.zzamz.zzgn().zzkb()) {
            this.zzamz.zzgn().zzc(runnable);
        } else {
            runnable.run();
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzag
    @BinderThread
    public final List<zzfh> zza(zzh zzhVar, boolean z) {
        zzb(zzhVar, false);
        try {
            List<zzfj> list = (List) this.zzamz.zzgn().zzb(new zzcl(this, zzhVar)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (zzfj zzfjVar : list) {
                if (z || !zzfk.zzcv(zzfjVar.name)) {
                    arrayList.add(new zzfh(zzfjVar));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e) {
            this.zzamz.zzgo().zzjd().zze("Failed to get user attributes. appId", zzap.zzbv(zzhVar.packageName), e);
            return null;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzag
    @BinderThread
    public final List<zzl> zza(String str, String str2, zzh zzhVar) {
        zzb(zzhVar, false);
        try {
            return (List) this.zzamz.zzgn().zzb(new zzcd(this, zzhVar, str, str2)).get();
        } catch (InterruptedException | ExecutionException e) {
            this.zzamz.zzgo().zzjd().zzg("Failed to get conditional user properties", e);
            return Collections.emptyList();
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzag
    @BinderThread
    public final List<zzfh> zza(String str, String str2, String str3, boolean z) {
        zzc(str, true);
        try {
            List<zzfj> list = (List) this.zzamz.zzgn().zzb(new zzcc(this, str, str2, str3)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (zzfj zzfjVar : list) {
                if (z || !zzfk.zzcv(zzfjVar.name)) {
                    arrayList.add(new zzfh(zzfjVar));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e) {
            this.zzamz.zzgo().zzjd().zze("Failed to get user attributes. appId", zzap.zzbv(str), e);
            return Collections.emptyList();
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzag
    @BinderThread
    public final List<zzfh> zza(String str, String str2, boolean z, zzh zzhVar) {
        zzb(zzhVar, false);
        try {
            List<zzfj> list = (List) this.zzamz.zzgn().zzb(new zzcb(this, zzhVar, str, str2)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (zzfj zzfjVar : list) {
                if (z || !zzfk.zzcv(zzfjVar.name)) {
                    arrayList.add(new zzfh(zzfjVar));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e) {
            this.zzamz.zzgo().zzjd().zze("Failed to get user attributes. appId", zzap.zzbv(zzhVar.packageName), e);
            return Collections.emptyList();
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzag
    @BinderThread
    public final void zza(long j, String str, String str2, String str3) {
        zze(new zzcn(this, str2, str3, str, j));
    }

    @Override // com.google.android.gms.measurement.internal.zzag
    @BinderThread
    public final void zza(zzad zzadVar, zzh zzhVar) {
        Preconditions.checkNotNull(zzadVar);
        zzb(zzhVar, false);
        zze(new zzcg(this, zzadVar, zzhVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzag
    @BinderThread
    public final void zza(zzad zzadVar, String str, String str2) {
        Preconditions.checkNotNull(zzadVar);
        Preconditions.checkNotEmpty(str);
        zzc(str, true);
        zze(new zzch(this, zzadVar, str));
    }

    @Override // com.google.android.gms.measurement.internal.zzag
    @BinderThread
    public final void zza(zzfh zzfhVar, zzh zzhVar) {
        Preconditions.checkNotNull(zzfhVar);
        zzb(zzhVar, false);
        if (zzfhVar.getValue() == null) {
            zze(new zzcj(this, zzfhVar, zzhVar));
        } else {
            zze(new zzck(this, zzfhVar, zzhVar));
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzag
    @BinderThread
    public final void zza(zzh zzhVar) {
        zzb(zzhVar, false);
        zze(new zzcm(this, zzhVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzag
    @BinderThread
    public final void zza(zzl zzlVar, zzh zzhVar) {
        Preconditions.checkNotNull(zzlVar);
        Preconditions.checkNotNull(zzlVar.zzahb);
        zzb(zzhVar, false);
        zzl zzlVar2 = new zzl(zzlVar);
        zzlVar2.packageName = zzhVar.packageName;
        if (zzlVar.zzahb.getValue() == null) {
            zze(new zzbx(this, zzlVar2, zzhVar));
        } else {
            zze(new zzby(this, zzlVar2, zzhVar));
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzag
    @BinderThread
    public final byte[] zza(zzad zzadVar, String str) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(zzadVar);
        zzc(str, true);
        this.zzamz.zzgo().zzjk().zzg("Log and bundle. event", this.zzamz.zzgl().zzbs(zzadVar.name));
        long nanoTime = this.zzamz.zzbx().nanoTime() / 1000000;
        try {
            byte[] bArr = (byte[]) this.zzamz.zzgn().zzc(new zzci(this, zzadVar, str)).get();
            byte[] bArr2 = bArr;
            if (bArr == null) {
                this.zzamz.zzgo().zzjd().zzg("Log and bundle returned null. appId", zzap.zzbv(str));
                bArr2 = new byte[0];
            }
            this.zzamz.zzgo().zzjk().zzd("Log and bundle processed. event, size, time_ms", this.zzamz.zzgl().zzbs(zzadVar.name), Integer.valueOf(bArr2.length), Long.valueOf((this.zzamz.zzbx().nanoTime() / 1000000) - nanoTime));
            return bArr2;
        } catch (InterruptedException | ExecutionException e) {
            this.zzamz.zzgo().zzjd().zzd("Failed to log and bundle. appId, event, error", zzap.zzbv(str), this.zzamz.zzgl().zzbs(zzadVar.name), e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0061, code lost:
        if ("referrer API".equals(r0) != false) goto L_0x0064;
     */
    @com.google.android.gms.common.util.VisibleForTesting
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.zzad zzb(com.google.android.gms.measurement.internal.zzad r9, com.google.android.gms.measurement.internal.zzh r10) {
        /*
            r8 = this;
            java.lang.String r0 = "_cmp"
            r1 = r9
            java.lang.String r1 = r1.name
            boolean r0 = r0.equals(r1)
            r11 = r0
            r0 = 0
            r12 = r0
            r0 = r12
            r13 = r0
            r0 = r11
            if (r0 == 0) goto L_0x007c
            r0 = r12
            r13 = r0
            r0 = r9
            com.google.android.gms.measurement.internal.zzaa r0 = r0.zzaid
            if (r0 == 0) goto L_0x007c
            r0 = r9
            com.google.android.gms.measurement.internal.zzaa r0 = r0.zzaid
            int r0 = r0.size()
            if (r0 != 0) goto L_0x0032
            r0 = r12
            r13 = r0
            goto L_0x007c
        L_0x0032:
            r0 = r9
            com.google.android.gms.measurement.internal.zzaa r0 = r0.zzaid
            java.lang.String r1 = "_cis"
            java.lang.String r0 = r0.getString(r1)
            r14 = r0
            r0 = r12
            r13 = r0
            r0 = r14
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L_0x007c
            java.lang.String r0 = "referrer broadcast"
            r1 = r14
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L_0x0064
            r0 = r12
            r13 = r0
            java.lang.String r0 = "referrer API"
            r1 = r14
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x007c
        L_0x0064:
            r0 = r12
            r13 = r0
            r0 = r8
            com.google.android.gms.measurement.internal.zzfa r0 = r0.zzamz
            com.google.android.gms.measurement.internal.zzn r0 = r0.zzgq()
            r1 = r10
            java.lang.String r1 = r1.packageName
            boolean r0 = r0.zzbg(r1)
            if (r0 == 0) goto L_0x007c
            r0 = 1
            r13 = r0
        L_0x007c:
            r0 = r13
            if (r0 == 0) goto L_0x00ac
            r0 = r8
            com.google.android.gms.measurement.internal.zzfa r0 = r0.zzamz
            com.google.android.gms.measurement.internal.zzap r0 = r0.zzgo()
            com.google.android.gms.measurement.internal.zzar r0 = r0.zzjj()
            java.lang.String r1 = "Event has been filtered "
            r2 = r9
            java.lang.String r2 = r2.toString()
            r0.zzg(r1, r2)
            com.google.android.gms.measurement.internal.zzad r0 = new com.google.android.gms.measurement.internal.zzad
            r1 = r0
            java.lang.String r2 = "_cmpx"
            r3 = r9
            com.google.android.gms.measurement.internal.zzaa r3 = r3.zzaid
            r4 = r9
            java.lang.String r4 = r4.origin
            r5 = r9
            long r5 = r5.zzaip
            r1.<init>(r2, r3, r4, r5)
            return r0
        L_0x00ac:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzbv.zzb(com.google.android.gms.measurement.internal.zzad, com.google.android.gms.measurement.internal.zzh):com.google.android.gms.measurement.internal.zzad");
    }

    @Override // com.google.android.gms.measurement.internal.zzag
    @BinderThread
    public final void zzb(zzh zzhVar) {
        zzb(zzhVar, false);
        zze(new zzbw(this, zzhVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzag
    @BinderThread
    public final void zzb(zzl zzlVar) {
        Preconditions.checkNotNull(zzlVar);
        Preconditions.checkNotNull(zzlVar.zzahb);
        zzc(zzlVar.packageName, true);
        zzl zzlVar2 = new zzl(zzlVar);
        if (zzlVar.zzahb.getValue() == null) {
            zze(new zzbz(this, zzlVar2));
        } else {
            zze(new zzca(this, zzlVar2));
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzag
    @BinderThread
    public final String zzc(zzh zzhVar) {
        zzb(zzhVar, false);
        return this.zzamz.zzh(zzhVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzag
    @BinderThread
    public final void zzd(zzh zzhVar) {
        zzc(zzhVar.packageName, false);
        zze(new zzcf(this, zzhVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzag
    @BinderThread
    public final List<zzl> zze(String str, String str2, String str3) {
        zzc(str, true);
        try {
            return (List) this.zzamz.zzgn().zzb(new zzce(this, str, str2, str3)).get();
        } catch (InterruptedException | ExecutionException e) {
            this.zzamz.zzgo().zzjd().zzg("Failed to get conditional user properties", e);
            return Collections.emptyList();
        }
    }
}
