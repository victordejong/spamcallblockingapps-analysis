package com.google.android.play.core.missingsplits;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import com.google.android.play.core.internal.h;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/missingsplits/d.class */
public final class d implements a {

    /* renamed from: a  reason: collision with root package name */
    private static final h f31405a = new h("MissingSplitsManagerImpl");

    /* renamed from: b  reason: collision with root package name */
    private final Context f31406b;

    /* renamed from: c  reason: collision with root package name */
    private final Runtime f31407c;

    /* renamed from: d  reason: collision with root package name */
    private final c f31408d;
    private final AtomicReference<Boolean> e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(Context context, Runtime runtime, c cVar, AtomicReference<Boolean> atomicReference) {
        this.f31406b = context;
        this.f31407c = runtime;
        this.f31408d = cVar;
        this.e = atomicReference;
    }

    private final List<ActivityManager.AppTask> b() {
        List<ActivityManager.AppTask> appTasks = ((ActivityManager) this.f31406b.getSystemService("activity")).getAppTasks();
        return appTasks != null ? appTasks : Collections.emptyList();
    }

    @Override // com.google.android.play.core.missingsplits.a
    public final boolean a() {
        boolean booleanValue;
        boolean z;
        Class<?> cls;
        boolean z2;
        ApplicationInfo applicationInfo;
        Set hashSet;
        if (Build.VERSION.SDK_INT < 21) {
            return false;
        }
        synchronized (this.e) {
            if (this.e.get() == null) {
                AtomicReference<Boolean> atomicReference = this.e;
                if (Build.VERSION.SDK_INT >= 21) {
                    try {
                        applicationInfo = this.f31406b.getPackageManager().getApplicationInfo(this.f31406b.getPackageName(), 128);
                    } catch (PackageManager.NameNotFoundException e) {
                        f31405a.d("App '%s' is not found in the PackageManager", this.f31406b.getPackageName());
                    }
                    if (!(applicationInfo == null || applicationInfo.metaData == null)) {
                        if (Boolean.TRUE.equals(applicationInfo.metaData.get("com.android.vending.splits.required"))) {
                            if (Build.VERSION.SDK_INT >= 21) {
                                try {
                                    PackageInfo packageInfo = this.f31406b.getPackageManager().getPackageInfo(this.f31406b.getPackageName(), 0);
                                    hashSet = new HashSet();
                                    if (!(packageInfo == null || packageInfo.splitNames == null)) {
                                        Collections.addAll(hashSet, packageInfo.splitNames);
                                    }
                                } catch (PackageManager.NameNotFoundException e2) {
                                    f31405a.d("App '%s' is not found in PackageManager", this.f31406b.getPackageName());
                                }
                                if (!hashSet.isEmpty() || (hashSet.size() == 1 && hashSet.contains(""))) {
                                    z2 = true;
                                    atomicReference.set(Boolean.valueOf(z2));
                                }
                            }
                            hashSet = Collections.emptySet();
                            if (!hashSet.isEmpty()) {
                            }
                            z2 = true;
                            atomicReference.set(Boolean.valueOf(z2));
                        }
                    }
                }
                z2 = false;
                atomicReference.set(Boolean.valueOf(z2));
            }
            booleanValue = this.e.get().booleanValue();
        }
        if (booleanValue) {
            for (ActivityManager.AppTask appTask : b()) {
                if (!(appTask.getTaskInfo() == null || appTask.getTaskInfo().baseIntent == null || appTask.getTaskInfo().baseIntent.getComponent() == null || !PlayCoreMissingSplitsActivity.class.getName().equals(appTask.getTaskInfo().baseIntent.getComponent().getClassName()))) {
                    return true;
                }
            }
            loop1: for (ActivityManager.AppTask appTask2 : b()) {
                ActivityManager.RecentTaskInfo taskInfo = appTask2.getTaskInfo();
                if (!(taskInfo == null || taskInfo.baseIntent == null || taskInfo.baseIntent.getComponent() == null)) {
                    ComponentName component = taskInfo.baseIntent.getComponent();
                    String className = component.getClassName();
                    try {
                        cls = Class.forName(className);
                    } catch (ClassNotFoundException e3) {
                        f31405a.d("ClassNotFoundException when scanning class hierarchy of '%s'", className);
                        try {
                            if (this.f31406b.getPackageManager().getActivityInfo(component, 0) != null) {
                            }
                        } catch (PackageManager.NameNotFoundException e4) {
                        }
                    }
                    while (cls != null) {
                        if (cls.equals(Activity.class)) {
                            z = true;
                            break loop1;
                        }
                        Class<? super Object> superclass = cls.getSuperclass();
                        cls = superclass != cls ? superclass : null;
                    }
                    continue;
                }
            }
            z = false;
            c cVar = this.f31408d;
            c.f31402a.c("Disabling all non-activity components", new Object[0]);
            cVar.a(cVar.c(), 2);
            for (ActivityManager.AppTask appTask3 : b()) {
                appTask3.finishAndRemoveTask();
            }
            if (z) {
                this.f31406b.getPackageManager().setComponentEnabledSetting(new ComponentName(this.f31406b, PlayCoreMissingSplitsActivity.class), 1, 1);
                this.f31406b.startActivity(new Intent(this.f31406b, PlayCoreMissingSplitsActivity.class).addFlags(884998144));
            }
            this.f31407c.exit(0);
            return true;
        } else if (!this.f31408d.a()) {
            return false;
        } else {
            this.f31408d.b();
            this.f31407c.exit(0);
            return false;
        }
    }
}
