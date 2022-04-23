package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.measurement.AppMeasurement;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzan.class */
public final class zzan extends zzcp {
    private static final AtomicReference<String[]> zzalt = new AtomicReference<>();
    private static final AtomicReference<String[]> zzalu = new AtomicReference<>();
    private static final AtomicReference<String[]> zzalv = new AtomicReference<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzan(zzbt zzbtVar) {
        super(zzbtVar);
    }

    @Nullable
    private static String zza(String str, String[] strArr, String[] strArr2, AtomicReference<String[]> atomicReference) {
        String str2;
        Preconditions.checkNotNull(strArr);
        Preconditions.checkNotNull(strArr2);
        Preconditions.checkNotNull(atomicReference);
        Preconditions.checkArgument(strArr.length == strArr2.length);
        for (int i = 0; i < strArr.length; i++) {
            if (zzfk.zzu(str, strArr[i])) {
                synchronized (atomicReference) {
                    String[] strArr3 = atomicReference.get();
                    String[] strArr4 = strArr3;
                    if (strArr3 == null) {
                        strArr4 = new String[strArr2.length];
                        atomicReference.set(strArr4);
                    }
                    if (strArr4[i] == null) {
                        strArr4[i] = strArr2[i] + "(" + strArr[i] + ")";
                    }
                    str2 = strArr4[i];
                }
                return str2;
            }
        }
        return str;
    }

    @Nullable
    private final String zzb(zzaa zzaaVar) {
        if (zzaaVar == null) {
            return null;
        }
        return !zzjc() ? zzaaVar.toString() : zzd(zzaaVar.zziv());
    }

    private final boolean zzjc() {
        zzgr();
        return this.zzadj.zzkj() && this.zzadj.zzgo().isLoggable(3);
    }

    @Override // com.google.android.gms.measurement.internal.zzco, com.google.android.gms.measurement.internal.zzcq
    public final /* bridge */ /* synthetic */ Context getContext() {
        return super.getContext();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public final String zza(zzy zzyVar) {
        if (zzyVar == null) {
            return null;
        }
        if (!zzjc()) {
            return zzyVar.toString();
        }
        return "Event{appId='" + zzyVar.zztt + "', name='" + zzbs(zzyVar.name) + "', params=" + zzb(zzyVar.zzaid) + "}";
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ void zzaf() {
        super.zzaf();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public final String zzb(zzad zzadVar) {
        if (zzadVar == null) {
            return null;
        }
        if (!zzjc()) {
            return zzadVar.toString();
        }
        return "origin=" + zzadVar.origin + ",name=" + zzbs(zzadVar.name) + ",params=" + zzb(zzadVar.zzaid);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public final String zzbs(String str) {
        if (str == null) {
            return null;
        }
        return !zzjc() ? str : zza(str, AppMeasurement.Event.zzadl, AppMeasurement.Event.zzadk, zzalt);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public final String zzbt(String str) {
        if (str == null) {
            return null;
        }
        return !zzjc() ? str : zza(str, AppMeasurement.Param.zzadn, AppMeasurement.Param.zzadm, zzalu);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public final String zzbu(String str) {
        if (str == null) {
            return null;
        }
        if (!zzjc()) {
            return str;
        }
        if (!str.startsWith("_exp_")) {
            return zza(str, AppMeasurement.UserProperty.zzadp, AppMeasurement.UserProperty.zzado, zzalv);
        }
        return "experiment_id(" + str + ")";
    }

    @Override // com.google.android.gms.measurement.internal.zzco, com.google.android.gms.measurement.internal.zzcq
    public final /* bridge */ /* synthetic */ Clock zzbx() {
        return super.zzbx();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public final String zzd(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        if (!zzjc()) {
            return bundle.toString();
        }
        StringBuilder sb = new StringBuilder();
        for (String str : bundle.keySet()) {
            if (sb.length() != 0) {
                sb.append(", ");
            } else {
                sb.append("Bundle[{");
            }
            sb.append(zzbt(str));
            sb.append("=");
            sb.append(bundle.get(str));
        }
        sb.append("}]");
        return sb.toString();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ void zzga() {
        super.zzga();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ void zzgb() {
        super.zzgb();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ void zzgc() {
        super.zzgc();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ zzx zzgk() {
        return super.zzgk();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ zzan zzgl() {
        return super.zzgl();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ zzfk zzgm() {
        return super.zzgm();
    }

    @Override // com.google.android.gms.measurement.internal.zzco, com.google.android.gms.measurement.internal.zzcq
    public final /* bridge */ /* synthetic */ zzbo zzgn() {
        return super.zzgn();
    }

    @Override // com.google.android.gms.measurement.internal.zzco, com.google.android.gms.measurement.internal.zzcq
    public final /* bridge */ /* synthetic */ zzap zzgo() {
        return super.zzgo();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ zzba zzgp() {
        return super.zzgp();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ zzn zzgq() {
        return super.zzgq();
    }

    @Override // com.google.android.gms.measurement.internal.zzco, com.google.android.gms.measurement.internal.zzcq
    public final /* bridge */ /* synthetic */ zzk zzgr() {
        return super.zzgr();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp
    protected final boolean zzgt() {
        return false;
    }
}
