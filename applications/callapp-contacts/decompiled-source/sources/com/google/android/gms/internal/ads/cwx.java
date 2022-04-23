package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import com.callapp.contacts.activity.contact.details.ConferenceActivity;
import com.facebook.ads.AdError;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.lang.reflect.Constructor;
import java.security.GeneralSecurityException;
import java.util.Arrays;
import java.util.HashMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cwx.class */
public final class cwx {

    /* renamed from: a  reason: collision with root package name */
    private static final HashMap<String, Class<?>> f26517a = new HashMap<>();

    /* renamed from: b  reason: collision with root package name */
    private final Context f26518b;

    /* renamed from: c  reason: collision with root package name */
    private final cww f26519c;

    /* renamed from: d  reason: collision with root package name */
    private final cuy f26520d;
    private final cux e;
    private cwo f;
    private final Object g = new Object();

    public cwx(Context context, cww cwwVar, cuy cuyVar, cux cuxVar) {
        this.f26518b = context;
        this.f26519c = cwwVar;
        this.f26520d = cuyVar;
        this.e = cuxVar;
    }

    private final Object a(Class<?> cls, cwn cwnVar) throws zzdww {
        try {
            Constructor<?> declaredConstructor = cls.getDeclaredConstructor(Context.class, String.class, byte[].class, Object.class, Bundle.class, Integer.TYPE);
            Context context = this.f26518b;
            if (cwnVar.e == null) {
                cwnVar.e = cwp.b(cwnVar.f26500d);
            }
            return declaredConstructor.newInstance(context, "msa-r", cwnVar.e == null ? null : Arrays.copyOf(cwnVar.e, cwnVar.e.length), null, new Bundle(), 2);
        } catch (Exception e) {
            throw new zzdww((int) AdError.INTERNAL_ERROR_2004, e);
        }
    }

    private final Class<?> b(cwn cwnVar) throws zzdww {
        synchronized (this) {
            if (cwnVar.f26497a != null) {
                String str = cwnVar.f26497a.zzaci;
                HashMap<String, Class<?>> hashMap = f26517a;
                Class<?> cls = hashMap.get(str);
                if (cls != null) {
                    return cls;
                }
                try {
                    if (this.e.a(cwnVar.f26498b)) {
                        try {
                            File file = cwnVar.f26499c;
                            if (!file.exists()) {
                                file.mkdirs();
                            }
                            Class loadClass = new DexClassLoader(cwnVar.f26498b.getAbsolutePath(), file.getAbsolutePath(), null, this.f26518b.getClassLoader()).loadClass("com.google.ccc.abuse.droidguard.DroidGuard");
                            hashMap.put(str, loadClass);
                            return loadClass;
                        } catch (ClassNotFoundException | IllegalArgumentException | SecurityException e) {
                            throw new zzdww((int) AdError.REMOTE_ADS_SERVICE_ERROR, e);
                        }
                    } else {
                        throw new zzdww(2026, "VM did not pass signature verification");
                    }
                } catch (GeneralSecurityException e2) {
                    throw new zzdww(2026, e2);
                }
            } else {
                throw new zzdww(4010, "mc");
            }
        }
    }

    public final cvf a() {
        cwo cwoVar;
        synchronized (this.g) {
            cwoVar = this.f;
        }
        return cwoVar;
    }

    public final void a(cwn cwnVar) {
        long currentTimeMillis = System.currentTimeMillis();
        try {
            cwo cwoVar = new cwo(a(b(cwnVar), cwnVar), cwnVar, this.f26519c, this.f26520d);
            if (cwoVar.a()) {
                int c2 = cwoVar.c();
                if (c2 == 0) {
                    synchronized (this.g) {
                        cwo cwoVar2 = this.f;
                        if (cwoVar2 != null) {
                            try {
                                cwoVar2.b();
                            } catch (zzdww e) {
                                this.f26520d.a(e.f28621a, -1L, e);
                            }
                        }
                        this.f = cwoVar;
                    }
                    this.f26520d.a(3000, System.currentTimeMillis() - currentTimeMillis);
                    return;
                }
                StringBuilder sb = new StringBuilder(15);
                sb.append("ci: ");
                sb.append(c2);
                throw new zzdww(4001, sb.toString());
            }
            throw new zzdww((int) ConferenceActivity.SNACK_BAR_DURATION, "init failed");
        } catch (zzdww e2) {
            this.f26520d.a(e2.f28621a, System.currentTimeMillis() - currentTimeMillis, e2);
        } catch (Exception e3) {
            this.f26520d.a(4010, System.currentTimeMillis() - currentTimeMillis, e3);
        }
    }

    public final cwn b() {
        synchronized (this.g) {
            cwo cwoVar = this.f;
            if (cwoVar == null) {
                return null;
            }
            return cwoVar.f26501a;
        }
    }
}
