package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.security.GeneralSecurityException;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/yu1.class */
public final class yu1 {

    /* renamed from: g */
    private static final HashMap<String, Class<?>> f9274g = new HashMap<>();

    /* renamed from: a */
    private final Context f9275a;

    /* renamed from: b */
    private final zu1 f9276b;

    /* renamed from: c */
    private final et1 f9277c;

    /* renamed from: d */
    private final at1 f9278d;

    /* renamed from: e */
    private qu1 f9279e;

    /* renamed from: f */
    private final Object f9280f = new Object();

    public yu1(Context context, zu1 zu1Var, et1 et1Var, at1 at1Var) {
        this.f9275a = context;
        this.f9276b = zu1Var;
        this.f9277c = et1Var;
        this.f9278d = at1Var;
    }

    /* renamed from: d */
    private final Class<?> m4683d(ru1 ru1Var) {
        synchronized (this) {
            String E = ru1Var.m5858a().E();
            HashMap<String, Class<?>> hashMap = f9274g;
            Class<?> cls = hashMap.get(E);
            if (cls != null) {
                return cls;
            }
            try {
                if (this.f9278d.m8089a(ru1Var.m5857b())) {
                    try {
                        File c = ru1Var.m5856c();
                        if (!c.exists()) {
                            c.mkdirs();
                        }
                        Class loadClass = new DexClassLoader(ru1Var.m5857b().getAbsolutePath(), c.getAbsolutePath(), null, this.f9275a.getClassLoader()).loadClass("com.google.ccc.abuse.droidguard.DroidGuard");
                        hashMap.put(E, loadClass);
                        return loadClass;
                    } catch (ClassNotFoundException | IllegalArgumentException | SecurityException e) {
                        throw new zzeav(2008, e);
                    }
                } else {
                    throw new zzeav(2026, "VM did not pass signature verification");
                }
            } catch (GeneralSecurityException e2) {
                throw new zzeav(2026, e2);
            }
        }
    }

    /* renamed from: a */
    public final boolean m4686a(ru1 ru1Var) {
        int i;
        et1 et1Var;
        zzeav zzeavVar;
        long currentTimeMillis = System.currentTimeMillis();
        try {
            try {
                qu1 qu1Var = new qu1(m4683d(ru1Var).getDeclaredConstructor(Context.class, String.class, byte[].class, Object.class, Bundle.class, Integer.TYPE).newInstance(this.f9275a, "msa-r", ru1Var.m5855d(), null, new Bundle(), 2), ru1Var, this.f9276b, this.f9277c);
                if (qu1Var.f()) {
                    int h = qu1Var.h();
                    if (h == 0) {
                        synchronized (this.f9280f) {
                            qu1 qu1Var2 = this.f9279e;
                            if (qu1Var2 != null) {
                                try {
                                    qu1Var2.g();
                                } catch (zzeav e) {
                                    this.f9277c.m7589d(e.zza(), -1L, e);
                                }
                            }
                            this.f9279e = qu1Var;
                        }
                        this.f9277c.m7590c(3000, System.currentTimeMillis() - currentTimeMillis);
                        return true;
                    }
                    StringBuilder sb = new StringBuilder(15);
                    sb.append("ci: ");
                    sb.append(h);
                    throw new zzeav(4001, sb.toString());
                }
                throw new zzeav(4000, "init failed");
            } catch (Exception e2) {
                throw new zzeav(2004, e2);
            }
        } catch (zzeav e3) {
            et1 et1Var2 = this.f9277c;
            i = e3.zza();
            zzeavVar = e3;
            et1Var = et1Var2;
            et1Var.m7589d(i, System.currentTimeMillis() - currentTimeMillis, zzeavVar);
            return false;
        } catch (Exception e4) {
            i = 4010;
            zzeavVar = e4;
            et1Var = this.f9277c;
            et1Var.m7589d(i, System.currentTimeMillis() - currentTimeMillis, zzeavVar);
            return false;
        }
    }

    /* renamed from: b */
    public final ht1 m4685b() {
        qu1 qu1Var;
        synchronized (this.f9280f) {
            qu1Var = this.f9279e;
        }
        return qu1Var;
    }

    /* renamed from: c */
    public final ru1 m4684c() {
        synchronized (this.f9280f) {
            qu1 qu1Var = this.f9279e;
            if (qu1Var == null) {
                return null;
            }
            return qu1Var.e();
        }
    }
}
