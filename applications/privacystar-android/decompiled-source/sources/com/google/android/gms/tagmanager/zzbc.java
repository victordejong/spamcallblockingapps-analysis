package com.google.android.gms.tagmanager;

import android.content.Context;
import android.provider.Settings;
import com.google.android.gms.internal.measurement.zza;
import com.google.android.gms.internal.measurement.zzp;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzbc.class */
final class zzbc extends zzbq {

    /* renamed from: ID */
    private static final String f170ID = zza.DEVICE_ID.toString();
    private final Context zzri;

    public zzbc(Context context) {
        super(f170ID, new String[0]);
        this.zzri = context;
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final zzp zze(Map<String, zzp> map) {
        String string = Settings.Secure.getString(this.zzri.getContentResolver(), "android_id");
        return string == null ? zzgj.zzqg() : zzgj.zzj(string);
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final boolean zznb() {
        return true;
    }
}
