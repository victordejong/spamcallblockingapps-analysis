package com.bumptech.glide.p115f;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.util.Log;
import com.bumptech.glide.load.AbstractC3818f;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* renamed from: com.bumptech.glide.f.b */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/f/b.class */
public final class C3613b {

    /* renamed from: a */
    private static final ConcurrentMap<String, AbstractC3818f> f13723a = new ConcurrentHashMap();

    private C3613b() {
    }

    /* renamed from: a */
    public static AbstractC3818f m37618a(Context context) {
        String packageName = context.getPackageName();
        ConcurrentMap<String, AbstractC3818f> concurrentMap = f13723a;
        AbstractC3818f abstractC3818f = concurrentMap.get(packageName);
        C3616e c3616e = abstractC3818f;
        if (abstractC3818f == null) {
            PackageInfo m37617b = m37617b(context);
            c3616e = new C3616e(m37617b != null ? String.valueOf(m37617b.versionCode) : UUID.randomUUID().toString());
            AbstractC3818f putIfAbsent = concurrentMap.putIfAbsent(packageName, c3616e);
            if (putIfAbsent != null) {
                c3616e = putIfAbsent;
            }
        }
        return c3616e;
    }

    /* renamed from: b */
    private static PackageInfo m37617b(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
        } catch (PackageManager.NameNotFoundException e) {
            Log.e("AppVersionSignature", "Cannot resolve info for" + context.getPackageName(), e);
            return null;
        }
    }
}
