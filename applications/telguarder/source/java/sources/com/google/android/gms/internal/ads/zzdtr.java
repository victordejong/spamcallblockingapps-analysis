package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.PackageManager;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.gms.internal.ads.zzcf;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdtr.class */
public final class zzdtr implements zzdtu {
    private static final zzcf.zza zzhtf = (zzcf.zza) ((zzelb) zzcf.zza.zzap().zzae(ExifInterface.LONGITUDE_EAST).zzbiw());

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final zzcf.zza zzaxz() {
        return zzhtf;
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final zzcf.zza zzck(Context context) throws PackageManager.NameNotFoundException {
        return zzdti.zzj(context, context.getPackageName(), Integer.toString(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode));
    }
}
