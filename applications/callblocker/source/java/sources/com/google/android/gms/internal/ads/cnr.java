package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cnr.class */
public final class cnr {

    /* renamed from: a */
    private static final HashMap<String, Class<?>> f13414a = new HashMap<>();

    /* renamed from: b */
    private final Context f13415b;

    /* renamed from: c */
    private final cnt f13416c;

    /* renamed from: d */
    private final clq f13417d;

    /* renamed from: e */
    private cni f13418e;

    /* renamed from: f */
    private final Object f13419f = new Object();

    public cnr(Context context, cnt cntVar, clq clqVar) {
        this.f13415b = context;
        this.f13416c = cntVar;
        this.f13417d = clqVar;
    }

    /* renamed from: a */
    private final Object m10965a(Class<?> cls, cng cngVar) {
        try {
            return cls.getDeclaredConstructor(Context.class, String.class, byte[].class, Object.class, Bundle.class, Integer.TYPE).newInstance(this.f13415b, "msa-r", cngVar.m10992d(), null, new Bundle(), 2);
        } catch (Exception e) {
            throw new zzdnk(2004, e);
        }
    }

    /* renamed from: b */
    private final Class<?> m10963b(cng cngVar) {
        Class loadClass;
        synchronized (this) {
            if (cngVar.m10996a() == null) {
                throw new zzdnk(4010, "mc");
            }
            String m9353a = cngVar.m10996a().m9353a();
            Class cls = f13414a.get(m9353a);
            if (cls != null) {
                loadClass = cls;
            } else {
                try {
                    File m10993c = cngVar.m10993c();
                    if (!m10993c.exists()) {
                        m10993c.mkdirs();
                    }
                    loadClass = new DexClassLoader(cngVar.m10994b().getAbsolutePath(), m10993c.getAbsolutePath(), null, this.f13415b.getClassLoader()).loadClass("com.google.ccc.abuse.droidguard.DroidGuard");
                    f13414a.put(m9353a, loadClass);
                } catch (ClassNotFoundException | IllegalArgumentException | SecurityException e) {
                    throw new zzdnk(2008, e);
                }
            }
        }
        return loadClass;
    }

    /* renamed from: a */
    public final clw m10967a() {
        cni cniVar;
        synchronized (this.f13419f) {
            cniVar = this.f13418e;
        }
        return cniVar;
    }

    /* renamed from: a */
    public final void m10966a(cng cngVar) {
        long currentTimeMillis = System.currentTimeMillis();
        try {
            cni cniVar = new cni(m10965a(m10963b(cngVar), cngVar), cngVar, this.f13416c, this.f13417d);
            if (!cniVar.m10983b()) {
                throw new zzdnk(4000, "init failed");
            }
            int m10981d = cniVar.m10981d();
            if (m10981d != 0) {
                throw new zzdnk(4001, new StringBuilder(15).append("ci: ").append(m10981d).toString());
            }
            synchronized (this.f13419f) {
                if (this.f13418e != null) {
                    try {
                        this.f13418e.m10982c();
                    } catch (zzdnk e) {
                        this.f13417d.m11085a(e.m6637a(), -1L, e);
                    }
                }
                this.f13418e = cniVar;
            }
            this.f13417d.m11086a(3000, System.currentTimeMillis() - currentTimeMillis);
        } catch (zzdnk e2) {
            this.f13417d.m11085a(e2.m6637a(), System.currentTimeMillis() - currentTimeMillis, e2);
        } catch (Exception e3) {
            this.f13417d.m11085a(4010, System.currentTimeMillis() - currentTimeMillis, e3);
        }
    }

    /* renamed from: b */
    public final cng m10964b() {
        cng m10990a;
        synchronized (this.f13419f) {
            m10990a = this.f13418e != null ? this.f13418e.m10990a() : null;
        }
        return m10990a;
    }
}
