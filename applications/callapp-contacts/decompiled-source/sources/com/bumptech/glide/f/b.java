package com.bumptech.glide.f;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.util.Log;
import com.bumptech.glide.load.f;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/f/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final ConcurrentMap<String, f> f7327a = new ConcurrentHashMap();

    private b() {
    }

    public static f a(Context context) {
        String packageName = context.getPackageName();
        ConcurrentMap<String, f> concurrentMap = f7327a;
        f fVar = concurrentMap.get(packageName);
        f fVar2 = fVar;
        if (fVar == null) {
            PackageInfo b2 = b(context);
            fVar2 = new e(b2 != null ? String.valueOf(b2.versionCode) : UUID.randomUUID().toString());
            f putIfAbsent = concurrentMap.putIfAbsent(packageName, fVar2);
            if (putIfAbsent != null) {
                fVar2 = putIfAbsent;
            }
        }
        return fVar2;
    }

    private static PackageInfo b(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
        } catch (PackageManager.NameNotFoundException e) {
            Log.e("AppVersionSignature", "Cannot resolve info for" + context.getPackageName(), e);
            return null;
        }
    }
}
