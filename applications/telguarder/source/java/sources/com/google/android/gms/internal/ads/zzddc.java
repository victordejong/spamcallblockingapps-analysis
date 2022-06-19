package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import android.view.ViewGroup;
import android.view.Window;
import com.facebook.internal.AnalyticsEvents;
import com.pubmatic.sdk.openwrap.core.POBConstants;
import java.util.Set;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzddc.class */
public final class zzddc implements zzdfi<zzddd> {
    private final Context context;
    private final zzdzv zzhah;
    private final Set<String> zzhav;
    private final ViewGroup zzhcb;

    public zzddc(zzdzv zzdzvVar, ViewGroup viewGroup, Context context, Set<String> set) {
        this.zzhah = zzdzvVar;
        this.zzhav = set;
        this.zzhcb = viewGroup;
        this.context = context;
    }

    private static Boolean zzl(Activity activity) {
        Window window = activity.getWindow();
        boolean z = true;
        if (window == null || (window.getAttributes().flags & 16777216) == 0) {
            try {
                if ((activity.getPackageManager().getActivityInfo(activity.getComponentName(), 0).flags & 512) == 0) {
                    z = false;
                }
                return Boolean.valueOf(z);
            } catch (PackageManager.NameNotFoundException e) {
                return null;
            }
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final zzdzw<zzddd> zzasy() {
        return this.zzhah.zze(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzddf
            private final zzddc zzhce;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzhce = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zzhce.zzatg();
            }
        });
    }

    public final /* synthetic */ zzddd zzatg() throws Exception {
        if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzcxi)).booleanValue() || this.zzhcb == null || !this.zzhav.contains(POBConstants.KEY_BANNER)) {
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcxj)).booleanValue() && this.zzhav.contains(AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_NATIVE)) {
                Context context = this.context;
                if (context instanceof Activity) {
                    return new zzddd(zzl((Activity) context));
                }
            }
            return new zzddd(null);
        }
        return new zzddd(Boolean.valueOf(this.zzhcb.isHardwareAccelerated()));
    }
}
