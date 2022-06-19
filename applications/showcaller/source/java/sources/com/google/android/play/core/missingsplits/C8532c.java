package com.google.android.play.core.missingsplits;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.ComponentInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.ServiceInfo;
import com.google.android.play.core.internal.C8466a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: com.google.android.play.core.missingsplits.c */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/missingsplits/c.class */
final class C8532c {

    /* renamed from: a */
    private static final C8466a f38095a = new C8466a("MissingSplitsAppComponentsHelper");

    /* renamed from: b */
    private final Context f38096b;

    /* renamed from: c */
    private final PackageManager f38097c;

    public C8532c(Context context, PackageManager packageManager) {
        this.f38096b = context;
        this.f38097c = packageManager;
    }

    /* renamed from: d */
    private final void m3402d(List<ComponentInfo> list, int i) {
        for (ComponentInfo componentInfo : list) {
            this.f38097c.setComponentEnabledSetting(new ComponentName(componentInfo.packageName, componentInfo.name), i, 1);
        }
    }

    /* renamed from: e */
    private final List<ComponentInfo> m3401e() {
        try {
            ArrayList arrayList = new ArrayList();
            PackageInfo packageInfo = this.f38097c.getPackageInfo(this.f38096b.getPackageName(), 526);
            ProviderInfo[] providerInfoArr = packageInfo.providers;
            if (providerInfoArr != null) {
                Collections.addAll(arrayList, providerInfoArr);
            }
            ActivityInfo[] activityInfoArr = packageInfo.receivers;
            if (activityInfoArr != null) {
                Collections.addAll(arrayList, activityInfoArr);
            }
            ServiceInfo[] serviceInfoArr = packageInfo.services;
            if (serviceInfoArr != null) {
                Collections.addAll(arrayList, serviceInfoArr);
            }
            return arrayList;
        } catch (PackageManager.NameNotFoundException e) {
            f38095a.m3563e("Failed to resolve own package : %s", e);
            return Collections.emptyList();
        }
    }

    /* renamed from: a */
    public final boolean m3405a() {
        for (ComponentInfo componentInfo : m3401e()) {
            if (this.f38097c.getComponentEnabledSetting(new ComponentName(componentInfo.packageName, componentInfo.name)) != 2) {
                f38095a.m3567a("Not all non-activity components are disabled", new Object[0]);
                return false;
            }
        }
        f38095a.m3567a("All non-activity components are disabled", new Object[0]);
        return true;
    }

    /* renamed from: b */
    public final void m3404b() {
        f38095a.m3564d("Disabling all non-activity components", new Object[0]);
        m3402d(m3401e(), 2);
    }

    /* renamed from: c */
    public final void m3403c() {
        f38095a.m3564d("Resetting enabled state of all non-activity components", new Object[0]);
        m3402d(m3401e(), 0);
    }
}
