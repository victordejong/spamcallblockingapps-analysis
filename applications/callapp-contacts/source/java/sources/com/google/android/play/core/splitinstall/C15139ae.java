package com.google.android.play.core.splitinstall;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import com.google.android.play.core.internal.C15072h;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* renamed from: com.google.android.play.core.splitinstall.ae */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitinstall/ae.class */
public final class C15139ae {

    /* renamed from: a */
    private static final C15072h f54920a = new C15072h("SplitInstallInfoProvider");

    /* renamed from: b */
    private final Context f54921b;

    /* renamed from: c */
    private final String f54922c;

    public C15139ae(Context context) {
        this.f54921b = context;
        this.f54922c = context.getPackageName();
    }

    public C15139ae(Context context, String str) {
        this.f54921b = context;
        this.f54922c = str;
    }

    /* renamed from: a */
    public static boolean m9400a(String str) {
        return str.startsWith("config.");
    }

    /* renamed from: b */
    public static boolean m9398b(String str) {
        return str.startsWith("config.") || str.contains(".config.");
    }

    /* renamed from: d */
    private final Set<String> m9396d() {
        String[] strArr;
        HashSet hashSet = new HashSet();
        Bundle m9395e = m9395e();
        if (m9395e != null) {
            String string = m9395e.getString("com.android.dynamic.apk.fused.modules");
            if (string == null || string.isEmpty()) {
                f54920a.m9511a("App has no fused modules.", new Object[0]);
            } else {
                Collections.addAll(hashSet, string.split(",", -1));
                hashSet.remove("");
                hashSet.remove("base");
            }
        }
        if (Build.VERSION.SDK_INT >= 21) {
            try {
                PackageInfo packageInfo = this.f54921b.getPackageManager().getPackageInfo(this.f54922c, 0);
                strArr = null;
                if (packageInfo != null) {
                    strArr = packageInfo.splitNames;
                }
            } catch (PackageManager.NameNotFoundException e) {
                f54920a.m9507d("App is not found in PackageManager", new Object[0]);
                strArr = null;
            }
            if (strArr != null) {
                f54920a.m9511a("Adding splits from package manager: %s", Arrays.toString(strArr));
                Collections.addAll(hashSet, strArr);
            } else {
                f54920a.m9511a("No splits are found or app cannot be found in package manager.", new Object[0]);
            }
            AbstractC15137ac m9403a = C15138ad.m9403a();
            if (m9403a != null) {
                hashSet.addAll(m9403a.mo9404a());
            }
        }
        return hashSet;
    }

    /* renamed from: e */
    private final Bundle m9395e() {
        try {
            ApplicationInfo applicationInfo = this.f54921b.getPackageManager().getApplicationInfo(this.f54922c, 128);
            if (applicationInfo != null && applicationInfo.metaData != null) {
                return applicationInfo.metaData;
            }
            f54920a.m9511a("App has no applicationInfo or metaData", new Object[0]);
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            f54920a.m9507d("App is not found in PackageManager", new Object[0]);
            return null;
        }
    }

    /* renamed from: a */
    public final Set<String> m9401a() {
        HashSet hashSet = new HashSet();
        for (String str : m9396d()) {
            if (!m9398b(str)) {
                hashSet.add(str);
            }
        }
        return hashSet;
    }

    /* renamed from: b */
    public final Set<String> m9399b() {
        C15173w m9397c = m9397c();
        if (m9397c == null) {
            return null;
        }
        HashSet hashSet = new HashSet();
        Set<String> m9396d = m9396d();
        m9396d.add("");
        Set<String> m9401a = m9401a();
        m9401a.add("");
        for (Map.Entry<String, Set<String>> entry : m9397c.m9341a(m9401a).entrySet()) {
            if (m9396d.containsAll(entry.getValue())) {
                hashSet.add(entry.getKey());
            }
        }
        return hashSet;
    }

    /* renamed from: c */
    public final C15173w m9397c() {
        Bundle m9395e = m9395e();
        if (m9395e == null) {
            f54920a.m9507d("No metadata found in Context.", new Object[0]);
            return null;
        }
        int i = m9395e.getInt("com.android.vending.splits");
        if (i == 0) {
            f54920a.m9507d("No metadata found in AndroidManifest.", new Object[0]);
            return null;
        }
        try {
            C15173w m9331a = C15176z.m9331a(this.f54921b.getResources().getXml(i), new C15172v());
            if (m9331a == null) {
                f54920a.m9507d("Can't parse languages metadata.", new Object[0]);
            }
            return m9331a;
        } catch (Resources.NotFoundException e) {
            f54920a.m9507d("Resource with languages metadata doesn't exist.", new Object[0]);
            return null;
        }
    }
}
