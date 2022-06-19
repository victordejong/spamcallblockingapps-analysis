package com.bumptech.glide.p220m;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;
@Deprecated
/* renamed from: com.bumptech.glide.m.d */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/m/d.class */
public final class C4329d {

    /* renamed from: a */
    private final Context f13306a;

    public C4329d(Context context) {
        this.f13306a = context;
    }

    /* renamed from: b */
    private static AbstractC4327b m22848b(String str) {
        try {
            Class<?> cls = Class.forName(str);
            AbstractC4327b abstractC4327b = null;
            try {
                abstractC4327b = cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            } catch (IllegalAccessException e) {
                m22847c(cls, e);
            } catch (InstantiationException e2) {
                m22847c(cls, e2);
            } catch (NoSuchMethodException e3) {
                m22847c(cls, e3);
            } catch (InvocationTargetException e4) {
                m22847c(cls, e4);
            }
            if (abstractC4327b instanceof AbstractC4327b) {
                return abstractC4327b;
            }
            throw new RuntimeException("Expected instanceof GlideModule, but found: " + abstractC4327b);
        } catch (ClassNotFoundException e5) {
            throw new IllegalArgumentException("Unable to find GlideModule implementation", e5);
        }
    }

    /* renamed from: c */
    private static void m22847c(Class<?> cls, Exception exc) {
        throw new RuntimeException("Unable to instantiate GlideModule implementation for " + cls, exc);
    }

    /* renamed from: a */
    public List<AbstractC4327b> m22849a() {
        if (Log.isLoggable("ManifestParser", 3)) {
            Log.d("ManifestParser", "Loading Glide modules");
        }
        ArrayList arrayList = new ArrayList();
        try {
            ApplicationInfo applicationInfo = this.f13306a.getPackageManager().getApplicationInfo(this.f13306a.getPackageName(), 128);
            if (applicationInfo.metaData == null) {
                if (Log.isLoggable("ManifestParser", 3)) {
                    Log.d("ManifestParser", "Got null app info metadata");
                }
                return arrayList;
            }
            if (Log.isLoggable("ManifestParser", 2)) {
                Log.v("ManifestParser", "Got app info metadata: " + applicationInfo.metaData);
            }
            for (String str : applicationInfo.metaData.keySet()) {
                if ("GlideModule".equals(applicationInfo.metaData.get(str))) {
                    arrayList.add(m22848b(str));
                    if (Log.isLoggable("ManifestParser", 3)) {
                        Log.d("ManifestParser", "Loaded Glide module: " + str);
                    }
                }
            }
            if (Log.isLoggable("ManifestParser", 3)) {
                Log.d("ManifestParser", "Finished loading Glide modules");
            }
            return arrayList;
        } catch (PackageManager.NameNotFoundException e) {
            throw new RuntimeException("Unable to find metadata to parse GlideModules", e);
        }
    }
}
