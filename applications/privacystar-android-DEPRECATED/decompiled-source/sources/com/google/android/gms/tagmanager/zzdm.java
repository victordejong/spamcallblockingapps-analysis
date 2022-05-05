package com.google.android.gms.tagmanager;

import android.content.Context;
import android.provider.Settings;
import com.google.android.gms.internal.measurement.zza;
import com.google.android.gms.internal.measurement.zzp;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzdm.class */
final class zzdm extends zzbq {

    /* renamed from: ID */
    private static final String f186ID = zza.MOBILE_ADWORDS_UNIQUE_ID.toString();
    private final Context zzri;

    public zzdm(Context context) {
        super(f186ID, new String[0]);
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
