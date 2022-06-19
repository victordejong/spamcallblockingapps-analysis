package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import android.view.ViewGroup;
import android.view.Window;
import java.util.Set;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeph.class */
public final class zzeph implements zzery<zzepi> {
    private final zzfsn zza;
    private final ViewGroup zzb;
    private final Context zzc;
    private final Set<String> zzd;

    public zzeph(zzfsn zzfsnVar, ViewGroup viewGroup, Context context, Set<String> set) {
        this.zza = zzfsnVar;
        this.zzd = set;
        this.zzb = viewGroup;
        this.zzc = context;
    }

    @Override // com.google.android.gms.internal.ads.zzery
    public final zzfsm<zzepi> zza() {
        return this.zza.zzb(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzepg
            private final zzeph zza;

            {
                this.zza = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zza.zzb();
            }
        });
    }

    public final /* synthetic */ zzepi zzb() throws Exception {
        if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzei)).booleanValue() || this.zzb == null || !this.zzd.contains("banner")) {
            Boolean bool = null;
            if (((Boolean) zzbet.zzc().zzc(zzbjl.zzej)).booleanValue() && this.zzd.contains("native")) {
                Context context = this.zzc;
                if (context instanceof Activity) {
                    Activity activity = (Activity) context;
                    Window window = activity.getWindow();
                    if (window == null || (window.getAttributes().flags & 16777216) == 0) {
                        try {
                            boolean z = false;
                            if ((activity.getPackageManager().getActivityInfo(activity.getComponentName(), 0).flags & 512) != 0) {
                                z = true;
                            }
                            bool = Boolean.valueOf(z);
                        } catch (PackageManager.NameNotFoundException e) {
                        }
                    } else {
                        bool = Boolean.TRUE;
                    }
                    return new zzepi(bool);
                }
            }
            return new zzepi(null);
        }
        return new zzepi(Boolean.valueOf(this.zzb.isHardwareAccelerated()));
    }
}
