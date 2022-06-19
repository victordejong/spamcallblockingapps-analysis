package com.bumptech.glide.p110c;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;
@Deprecated
/* renamed from: com.bumptech.glide.c.e */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/c/e.class */
public final class C3554e {

    /* renamed from: a */
    private final Context f13542a;

    public C3554e(Context context) {
        this.f13542a = context;
    }

    /* renamed from: a */
    private static AbstractC3552c m37715a(String str) {
        try {
            Class<?> cls = Class.forName(str);
            AbstractC3552c abstractC3552c = null;
            try {
                abstractC3552c = cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            } catch (IllegalAccessException e) {
                m37716a(cls, e);
            } catch (InstantiationException e2) {
                m37716a(cls, e2);
            } catch (NoSuchMethodException e3) {
                m37716a(cls, e3);
            } catch (InvocationTargetException e4) {
                m37716a(cls, e4);
            }
            if (!(abstractC3552c instanceof AbstractC3552c)) {
                throw new RuntimeException("Expected instanceof GlideModule, but found: ".concat(String.valueOf(abstractC3552c)));
            }
            return abstractC3552c;
        } catch (ClassNotFoundException e5) {
            throw new IllegalArgumentException("Unable to find GlideModule implementation", e5);
        }
    }

    /* renamed from: a */
    private static void m37716a(Class<?> cls, Exception exc) {
        throw new RuntimeException("Unable to instantiate GlideModule implementation for ".concat(String.valueOf(cls)), exc);
    }

    /* renamed from: a */
    public final List<AbstractC3552c> m37717a() {
        Log.isLoggable("ManifestParser", 3);
        ArrayList arrayList = new ArrayList();
        try {
            ApplicationInfo applicationInfo = this.f13542a.getPackageManager().getApplicationInfo(this.f13542a.getPackageName(), 128);
            if (applicationInfo.metaData == null) {
                Log.isLoggable("ManifestParser", 3);
                return arrayList;
            }
            if (Log.isLoggable("ManifestParser", 2)) {
                new StringBuilder("Got app info metadata: ").append(applicationInfo.metaData);
            }
            for (String str : applicationInfo.metaData.keySet()) {
                if ("GlideModule".equals(applicationInfo.metaData.get(str))) {
                    arrayList.add(m37715a(str));
                    Log.isLoggable("ManifestParser", 3);
                }
            }
            Log.isLoggable("ManifestParser", 3);
            return arrayList;
        } catch (PackageManager.NameNotFoundException e) {
            throw new RuntimeException("Unable to find metadata to parse GlideModules", e);
        }
    }
}
