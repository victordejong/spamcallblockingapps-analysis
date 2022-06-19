package com.bumptech.glide.p222o;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.util.Log;
import com.bumptech.glide.load.AbstractC3999c;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* renamed from: com.bumptech.glide.o.b */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/o/b.class */
public final class C4365b {

    /* renamed from: a */
    private static final ConcurrentMap<String, AbstractC3999c> f13363a = new ConcurrentHashMap();

    /* renamed from: a */
    private static PackageInfo m22759a(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
        } catch (PackageManager.NameNotFoundException e) {
            Log.e("AppVersionSignature", "Cannot resolve info for" + context.getPackageName(), e);
            return null;
        }
    }

    /* renamed from: b */
    private static String m22758b(PackageInfo packageInfo) {
        return packageInfo != null ? String.valueOf(packageInfo.versionCode) : UUID.randomUUID().toString();
    }

    /* renamed from: c */
    public static AbstractC3999c m22757c(Context context) {
        String packageName = context.getPackageName();
        ConcurrentMap<String, AbstractC3999c> concurrentMap = f13363a;
        AbstractC3999c abstractC3999c = concurrentMap.get(packageName);
        AbstractC3999c abstractC3999c2 = abstractC3999c;
        if (abstractC3999c == null) {
            abstractC3999c2 = m22756d(context);
            AbstractC3999c putIfAbsent = concurrentMap.putIfAbsent(packageName, abstractC3999c2);
            if (putIfAbsent != null) {
                abstractC3999c2 = putIfAbsent;
            }
        }
        return abstractC3999c2;
    }

    /* renamed from: d */
    private static AbstractC3999c m22756d(Context context) {
        return new C4367d(m22758b(m22759a(context)));
    }
}
