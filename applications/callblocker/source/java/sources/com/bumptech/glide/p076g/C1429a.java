package com.bumptech.glide.p076g;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.util.Log;
import com.bumptech.glide.load.AbstractC1777f;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* renamed from: com.bumptech.glide.g.a */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/g/a.class */
public final class C1429a {

    /* renamed from: a */
    private static final ConcurrentMap<String, AbstractC1777f> f4721a = new ConcurrentHashMap();

    /* renamed from: a */
    public static AbstractC1777f m17057a(Context context) {
        String packageName = context.getPackageName();
        AbstractC1777f abstractC1777f = f4721a.get(packageName);
        AbstractC1777f abstractC1777f2 = abstractC1777f;
        if (abstractC1777f == null) {
            AbstractC1777f m17055b = m17055b(context);
            AbstractC1777f putIfAbsent = f4721a.putIfAbsent(packageName, m17055b);
            abstractC1777f2 = putIfAbsent;
            if (putIfAbsent == null) {
                abstractC1777f2 = m17055b;
            }
        }
        return abstractC1777f2;
    }

    /* renamed from: a */
    private static String m17056a(PackageInfo packageInfo) {
        return packageInfo != null ? String.valueOf(packageInfo.versionCode) : UUID.randomUUID().toString();
    }

    /* renamed from: b */
    private static AbstractC1777f m17055b(Context context) {
        return new C1431c(m17056a(m17054c(context)));
    }

    /* renamed from: c */
    private static PackageInfo m17054c(Context context) {
        PackageInfo packageInfo;
        try {
            packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
        } catch (PackageManager.NameNotFoundException e) {
            Log.e("AppVersionSignature", "Cannot resolve info for" + context.getPackageName(), e);
            packageInfo = null;
        }
        return packageInfo;
    }
}
