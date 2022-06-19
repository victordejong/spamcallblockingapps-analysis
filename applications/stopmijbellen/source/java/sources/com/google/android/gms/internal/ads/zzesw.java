package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import android.view.ViewGroup;
import android.view.Window;
import com.google.android.gms.ads.AdRequest;
import java.util.Set;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzesw.class */
public final class zzesw implements zzevn<zzesx> {
    private final zzfxb zza;
    private final ViewGroup zzb;
    private final Context zzc;
    private final Set<String> zzd;

    public zzesw(zzfxb zzfxbVar, ViewGroup viewGroup, Context context, Set<String> set) {
        this.zza = zzfxbVar;
        this.zzd = set;
        this.zzb = viewGroup;
        this.zzc = context;
    }

    public final /* synthetic */ zzesx zza() throws Exception {
        if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzep)).booleanValue() || this.zzb == null || !this.zzd.contains("banner")) {
            Boolean bool = null;
            if (((Boolean) zzbgq.zzc().zzb(zzblj.zzeq)).booleanValue() && this.zzd.contains("native")) {
                Context context = this.zzc;
                if (context instanceof Activity) {
                    Activity activity = (Activity) context;
                    Window window = activity.getWindow();
                    if (window == null || (window.getAttributes().flags & 16777216) == 0) {
                        try {
                            boolean z = false;
                            if ((activity.getPackageManager().getActivityInfo(activity.getComponentName(), 0).flags & AdRequest.MAX_CONTENT_URL_LENGTH) != 0) {
                                z = true;
                            }
                            bool = Boolean.valueOf(z);
                        } catch (PackageManager.NameNotFoundException e) {
                        }
                    } else {
                        bool = Boolean.TRUE;
                    }
                    return new zzesx(bool);
                }
            }
            return new zzesx(null);
        }
        return new zzesx(Boolean.valueOf(this.zzb.isHardwareAccelerated()));
    }

    @Override // com.google.android.gms.internal.ads.zzevn
    public final zzfxa<zzesx> zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzesv
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzesw.this.zza();
            }
        });
    }
}
