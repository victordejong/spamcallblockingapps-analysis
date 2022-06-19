package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import java.util.List;
import p1727n3.p1755d.p1756a.AbstractServiceConnectionC25697g;
import p1727n3.p1755d.p1756a.C25695e;
import p1727n3.p1755d.p1756a.C25699h;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbkj.class */
public final class zzbkj {
    private C25699h zza;
    private C25695e zzb;
    private AbstractServiceConnectionC25697g zzc;
    private zzbkh zzd;

    public static boolean zza(Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            return false;
        }
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("http://www.example.com"));
        ResolveInfo resolveActivity = packageManager.resolveActivity(intent, 0);
        List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(intent, 65536);
        if (queryIntentActivities == null || resolveActivity == null) {
            return false;
        }
        for (int i = 0; i < queryIntentActivities.size(); i++) {
            if (resolveActivity.activityInfo.name.equals(queryIntentActivities.get(i).activityInfo.name)) {
                return resolveActivity.activityInfo.packageName.equals(zzglo.zza(context));
            }
        }
        return false;
    }

    public final void zzb(Activity activity) {
        AbstractServiceConnectionC25697g abstractServiceConnectionC25697g = this.zzc;
        if (abstractServiceConnectionC25697g == null) {
            return;
        }
        activity.unbindService(abstractServiceConnectionC25697g);
        this.zzb = null;
        this.zza = null;
        this.zzc = null;
    }

    public final C25699h zzc() {
        C25695e c25695e = this.zzb;
        if (c25695e == null) {
            this.zza = null;
        } else if (this.zza == null) {
            this.zza = c25695e.m3050b(null);
        }
        return this.zza;
    }

    public final void zzd(zzbkh zzbkhVar) {
        this.zzd = zzbkhVar;
    }

    public final void zze(Activity activity) {
        String zza;
        if (this.zzb == null && (zza = zzglo.zza(activity)) != null) {
            zzglp zzglpVar = new zzglp(this, null);
            this.zzc = zzglpVar;
            C25695e.m3051a(activity, zza, zzglpVar);
        }
    }

    public final void zzf(C25695e c25695e) {
        this.zzb = c25695e;
        c25695e.m3049c(0L);
        zzbkh zzbkhVar = this.zzd;
        if (zzbkhVar != null) {
            zzbkhVar.zza();
        }
    }

    public final void zzg() {
        this.zzb = null;
        this.zza = null;
    }
}
