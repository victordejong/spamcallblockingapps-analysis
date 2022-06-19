package com.google.android.gms.internal.ads;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.zzt;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzemi.class */
public final class zzemi implements zzerx<Bundle> {
    public final Context zza;
    public final zzbdl zzb;
    public final List<Parcelable> zzc;

    public zzemi(Context context, zzbdl zzbdlVar, List<Parcelable> list) {
        this.zza = context;
        this.zzb = zzbdlVar;
        this.zzc = list;
    }

    @Override // com.google.android.gms.internal.ads.zzerx
    public final /* bridge */ /* synthetic */ void zzf(Bundle bundle) {
        String str;
        Bundle bundle2 = bundle;
        if (!zzblb.zza.zze().booleanValue()) {
            return;
        }
        Bundle bundle3 = new Bundle();
        zzt.zzc();
        try {
            ActivityManager activityManager = (ActivityManager) this.zza.getSystemService("activity");
            if (activityManager == null) {
                str = null;
            } else {
                List<ActivityManager.RunningTaskInfo> runningTasks = activityManager.getRunningTasks(1);
                str = null;
                if (runningTasks != null) {
                    str = null;
                    if (!runningTasks.isEmpty()) {
                        ActivityManager.RunningTaskInfo runningTaskInfo = runningTasks.get(0);
                        str = null;
                        if (runningTaskInfo != null) {
                            ComponentName componentName = runningTaskInfo.topActivity;
                            str = null;
                            if (componentName != null) {
                                str = componentName.getClassName();
                            }
                        }
                    }
                }
            }
        } catch (Exception e) {
            str = null;
        }
        bundle3.putString("activity", str);
        Bundle bundle4 = new Bundle();
        bundle4.putInt("width", this.zzb.zze);
        bundle4.putInt("height", this.zzb.zzb);
        bundle3.putBundle("size", bundle4);
        if (this.zzc.size() > 0) {
            List<Parcelable> list = this.zzc;
            bundle3.putParcelableArray("parents", (Parcelable[]) list.toArray(new Parcelable[list.size()]));
        }
        bundle2.putBundle("view_hierarchy", bundle3);
    }
}
