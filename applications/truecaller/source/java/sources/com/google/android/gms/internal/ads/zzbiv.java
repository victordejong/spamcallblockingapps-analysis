package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import com.google.android.gms.ads.internal.util.zzce;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.wrappers.Wrappers;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbiv.class */
public final class zzbiv {
    private final Context zza;

    public zzbiv(Context context) {
        Preconditions.m38897k(context, "Context can not be null");
        this.zza = context;
    }

    public final boolean zza() {
        return ((Boolean) zzce.zza(this.zza, new zzbiu())).booleanValue() && Wrappers.m38764a(this.zza).f6151a.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0;
    }

    public final boolean zzb() {
        return zzc(new Intent("android.intent.action.INSERT").setType("vnd.android.cursor.dir/event"));
    }

    public final boolean zzc(Intent intent) {
        Preconditions.m38897k(intent, "Intent can not be null");
        return !this.zza.getPackageManager().queryIntentActivities(intent, 0).isEmpty();
    }
}
