package com.google.android.play.core.splitinstall;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import com.google.android.play.core.internal.h;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitinstall/ae.class */
public final class ae {

    /* renamed from: a  reason: collision with root package name */
    private static final h f31486a = new h("SplitInstallInfoProvider");

    /* renamed from: b  reason: collision with root package name */
    private final Context f31487b;

    /* renamed from: c  reason: collision with root package name */
    private final String f31488c;

    public ae(Context context) {
        this.f31487b = context;
        this.f31488c = context.getPackageName();
    }

    public ae(Context context, String str) {
        this.f31487b = context;
        this.f31488c = str;
    }

    public static boolean a(String str) {
        return str.startsWith("config.");
    }

    public static boolean b(String str) {
        return str.startsWith("config.") || str.contains(".config.");
    }

    private final Set<String> d() {
        String[] strArr;
        HashSet hashSet = new HashSet();
        Bundle e = e();
        if (e != null) {
            String string = e.getString("com.android.dynamic.apk.fused.modules");
            if (string == null || string.isEmpty()) {
                f31486a.a("App has no fused modules.", new Object[0]);
            } else {
                Collections.addAll(hashSet, string.split(",", -1));
                hashSet.remove("");
                hashSet.remove("base");
            }
        }
        if (Build.VERSION.SDK_INT >= 21) {
            try {
                PackageInfo packageInfo = this.f31487b.getPackageManager().getPackageInfo(this.f31488c, 0);
                strArr = null;
                if (packageInfo != null) {
                    strArr = packageInfo.splitNames;
                }
            } catch (PackageManager.NameNotFoundException e2) {
                f31486a.d("App is not found in PackageManager", new Object[0]);
                strArr = null;
            }
            if (strArr != null) {
                f31486a.a("Adding splits from package manager: %s", Arrays.toString(strArr));
                Collections.addAll(hashSet, strArr);
            } else {
                f31486a.a("No splits are found or app cannot be found in package manager.", new Object[0]);
            }
            ac a2 = ad.a();
            if (a2 != null) {
                hashSet.addAll(a2.a());
            }
        }
        return hashSet;
    }

    private final Bundle e() {
        try {
            ApplicationInfo applicationInfo = this.f31487b.getPackageManager().getApplicationInfo(this.f31488c, 128);
            if (applicationInfo != null && applicationInfo.metaData != null) {
                return applicationInfo.metaData;
            }
            f31486a.a("App has no applicationInfo or metaData", new Object[0]);
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            f31486a.d("App is not found in PackageManager", new Object[0]);
            return null;
        }
    }

    public final Set<String> a() {
        HashSet hashSet = new HashSet();
        for (String str : d()) {
            if (!b(str)) {
                hashSet.add(str);
            }
        }
        return hashSet;
    }

    public final Set<String> b() {
        w c2 = c();
        if (c2 == null) {
            return null;
        }
        HashSet hashSet = new HashSet();
        Set<String> d2 = d();
        d2.add("");
        Set<String> a2 = a();
        a2.add("");
        for (Map.Entry<String, Set<String>> entry : c2.a(a2).entrySet()) {
            if (d2.containsAll(entry.getValue())) {
                hashSet.add(entry.getKey());
            }
        }
        return hashSet;
    }

    public final w c() {
        Bundle e = e();
        if (e == null) {
            f31486a.d("No metadata found in Context.", new Object[0]);
            return null;
        }
        int i = e.getInt("com.android.vending.splits");
        if (i == 0) {
            f31486a.d("No metadata found in AndroidManifest.", new Object[0]);
            return null;
        }
        try {
            w a2 = z.a(this.f31487b.getResources().getXml(i), new v());
            if (a2 == null) {
                f31486a.d("Can't parse languages metadata.", new Object[0]);
            }
            return a2;
        } catch (Resources.NotFoundException e2) {
            f31486a.d("Resource with languages metadata doesn't exist.", new Object[0]);
            return null;
        }
    }
}
