package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.RemoteException;
import android.text.TextUtils;
import java.util.List;
import java.util.Objects;
import javax.annotation.ParametersAreNonnullByDefault;
import p195p.AbstractServiceConnectionC3978d;
import p195p.BinderC3975a;
import p195p.C3976b;
import p195p.C3980e;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbmh.class */
public final class zzbmh {
    private C3980e zza;
    private C3976b zzb;
    private AbstractServiceConnectionC3978d zzc;
    private zzbmf zzd;

    public static boolean zzg(Context context) {
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
                return resolveActivity.activityInfo.packageName.equals(zzgqf.zza(context));
            }
        }
        return false;
    }

    public final C3980e zza() {
        C3976b c3976b = this.zzb;
        C3980e c3980e = null;
        if (c3976b != null) {
            if (this.zza == null) {
                BinderC3975a binderC3975a = new BinderC3975a(c3976b);
                try {
                    if (c3976b.f12499a.mo8935j(binderC3975a)) {
                        c3980e = new C3980e(c3976b.f12499a, binderC3975a, c3976b.f12500b);
                    }
                } catch (RemoteException e) {
                }
            }
            return this.zza;
        }
        this.zza = c3980e;
        return this.zza;
    }

    public final void zzb(Activity activity) {
        String zza;
        if (this.zzb == null && (zza = zzgqf.zza(activity)) != null) {
            zzgqg zzgqgVar = new zzgqg(this, null);
            this.zzc = zzgqgVar;
            Intent intent = new Intent("android.support.customtabs.action.CustomTabsService");
            if (!TextUtils.isEmpty(zza)) {
                intent.setPackage(zza);
            }
            activity.bindService(intent, zzgqgVar, 33);
        }
    }

    public final void zzc(C3976b c3976b) {
        this.zzb = c3976b;
        Objects.requireNonNull(c3976b);
        try {
            c3976b.f12499a.mo8934p(0L);
        } catch (RemoteException e) {
        }
        zzbmf zzbmfVar = this.zzd;
        if (zzbmfVar != null) {
            zzbmfVar.zza();
        }
    }

    public final void zzd() {
        this.zzb = null;
        this.zza = null;
    }

    public final void zze(zzbmf zzbmfVar) {
        this.zzd = zzbmfVar;
    }

    public final void zzf(Activity activity) {
        AbstractServiceConnectionC3978d abstractServiceConnectionC3978d = this.zzc;
        if (abstractServiceConnectionC3978d == null) {
            return;
        }
        activity.unbindService(abstractServiceConnectionC3978d);
        this.zzb = null;
        this.zza = null;
        this.zzc = null;
    }
}
