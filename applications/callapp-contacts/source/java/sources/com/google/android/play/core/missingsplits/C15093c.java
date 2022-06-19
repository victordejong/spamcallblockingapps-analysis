package com.google.android.play.core.missingsplits;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ComponentInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.google.android.play.core.internal.C15072h;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: com.google.android.play.core.missingsplits.c */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/missingsplits/c.class */
final class C15093c {

    /* renamed from: a */
    static final C15072h f54816a = new C15072h("MissingSplitsAppComponentsHelper");

    /* renamed from: b */
    private final Context f54817b;

    /* renamed from: c */
    private final PackageManager f54818c;

    public C15093c(Context context, PackageManager packageManager) {
        this.f54817b = context;
        this.f54818c = packageManager;
    }

    /* renamed from: a */
    public final void m9473a(List<ComponentInfo> list, int i) {
        for (ComponentInfo componentInfo : list) {
            this.f54818c.setComponentEnabledSetting(new ComponentName(componentInfo.packageName, componentInfo.name), i, 1);
        }
    }

    /* renamed from: a */
    public final boolean m9474a() {
        for (ComponentInfo componentInfo : m9471c()) {
            if (this.f54818c.getComponentEnabledSetting(new ComponentName(componentInfo.packageName, componentInfo.name)) != 2) {
                f54816a.m9511a("Not all non-activity components are disabled", new Object[0]);
                return false;
            }
        }
        f54816a.m9511a("All non-activity components are disabled", new Object[0]);
        return true;
    }

    /* renamed from: b */
    public final void m9472b() {
        f54816a.m9508c("Resetting enabled state of all non-activity components", new Object[0]);
        m9473a(m9471c(), 0);
    }

    /* renamed from: c */
    public final List<ComponentInfo> m9471c() {
        try {
            ArrayList arrayList = new ArrayList();
            PackageInfo packageInfo = this.f54818c.getPackageInfo(this.f54817b.getPackageName(), 526);
            if (packageInfo.providers != null) {
                Collections.addAll(arrayList, packageInfo.providers);
            }
            if (packageInfo.receivers != null) {
                Collections.addAll(arrayList, packageInfo.receivers);
            }
            if (packageInfo.services != null) {
                Collections.addAll(arrayList, packageInfo.services);
            }
            return arrayList;
        } catch (PackageManager.NameNotFoundException e) {
            f54816a.m9507d("Failed to resolve own package : %s", e);
            return Collections.emptyList();
        }
    }
}
