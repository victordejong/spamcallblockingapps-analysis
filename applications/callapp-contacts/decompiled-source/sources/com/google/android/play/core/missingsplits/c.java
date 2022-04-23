package com.google.android.play.core.missingsplits;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ComponentInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.google.android.play.core.internal.h;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/missingsplits/c.class */
final class c {

    /* renamed from: a  reason: collision with root package name */
    static final h f31402a = new h("MissingSplitsAppComponentsHelper");

    /* renamed from: b  reason: collision with root package name */
    private final Context f31403b;

    /* renamed from: c  reason: collision with root package name */
    private final PackageManager f31404c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(Context context, PackageManager packageManager) {
        this.f31403b = context;
        this.f31404c = packageManager;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(List<ComponentInfo> list, int i) {
        for (ComponentInfo componentInfo : list) {
            this.f31404c.setComponentEnabledSetting(new ComponentName(componentInfo.packageName, componentInfo.name), i, 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a() {
        for (ComponentInfo componentInfo : c()) {
            if (this.f31404c.getComponentEnabledSetting(new ComponentName(componentInfo.packageName, componentInfo.name)) != 2) {
                f31402a.a("Not all non-activity components are disabled", new Object[0]);
                return false;
            }
        }
        f31402a.a("All non-activity components are disabled", new Object[0]);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b() {
        f31402a.c("Resetting enabled state of all non-activity components", new Object[0]);
        a(c(), 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final List<ComponentInfo> c() {
        try {
            ArrayList arrayList = new ArrayList();
            PackageInfo packageInfo = this.f31404c.getPackageInfo(this.f31403b.getPackageName(), 526);
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
            f31402a.d("Failed to resolve own package : %s", e);
            return Collections.emptyList();
        }
    }
}
