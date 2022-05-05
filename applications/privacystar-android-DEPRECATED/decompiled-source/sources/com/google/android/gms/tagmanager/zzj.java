package com.google.android.gms.tagmanager;

import android.content.Context;
import android.content.pm.PackageManager;
import com.google.android.gms.internal.measurement.zza;
import com.google.android.gms.internal.measurement.zzp;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzj.class */
public final class zzj extends zzbq {

    /* renamed from: ID */
    private static final String f203ID = zza.APP_NAME.toString();
    private final Context zzri;

    public zzj(Context context) {
        super(f203ID, new String[0]);
        this.zzri = context;
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final zzp zze(Map<String, zzp> map) {
        try {
            PackageManager packageManager = this.zzri.getPackageManager();
            return zzgj.zzj(packageManager.getApplicationLabel(packageManager.getApplicationInfo(this.zzri.getPackageName(), 0)).toString());
        } catch (PackageManager.NameNotFoundException e) {
            zzdi.zza("App name is not found.", e);
            return zzgj.zzqg();
        }
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final boolean zznb() {
        return true;
    }
}
