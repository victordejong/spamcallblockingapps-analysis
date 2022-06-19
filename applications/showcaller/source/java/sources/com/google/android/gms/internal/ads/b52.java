package com.google.android.gms.internal.ads;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.C5667s;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/b52.class */
public final class b52 implements va2<Bundle> {

    /* renamed from: a */
    public final Context f20273a;

    /* renamed from: b */
    public final zzbdl f20274b;

    /* renamed from: c */
    public final List<Parcelable> f20275c;

    public b52(Context context, zzbdl zzbdlVar, List<Parcelable> list) {
        this.f20273a = context;
        this.f20274b = zzbdlVar;
        this.f20275c = list;
    }

    @Override // com.google.android.gms.internal.ads.va2
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo8928a(Bundle bundle) {
        String str;
        Bundle bundle2 = bundle;
        if (!C6383cy.f21408a.m12799e().booleanValue()) {
            return;
        }
        Bundle bundle3 = new Bundle();
        C5667s.m18160d();
        try {
            ActivityManager activityManager = (ActivityManager) this.f20273a.getSystemService("activity");
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
        bundle4.putInt("width", this.f20274b.f33686h);
        bundle4.putInt("height", this.f20274b.f33683e);
        bundle3.putBundle("size", bundle4);
        if (this.f20275c.size() > 0) {
            List<Parcelable> list = this.f20275c;
            bundle3.putParcelableArray("parents", (Parcelable[]) list.toArray(new Parcelable[list.size()]));
        }
        bundle2.putBundle("view_hierarchy", bundle3);
    }
}
