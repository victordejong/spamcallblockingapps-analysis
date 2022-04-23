package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import com.android.volley.toolbox.BasicNetwork;
import com.facebook.ads.AdError;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.security.GeneralSecurityException;
import java.util.HashMap;
import p131c.p161d.p170b.p224d.p252g.p253a.s00;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdvb.class */
public final class zzdvb {

    /* renamed from: g */
    public static final HashMap<String, Class<?>> f27889g = new HashMap<>();

    /* renamed from: a */
    public final Context f27890a;

    /* renamed from: b */
    public final zzdve f27891b;

    /* renamed from: c */
    public final zzdtc f27892c;

    /* renamed from: d */
    public final zzdta f27893d;

    /* renamed from: e */
    public s00 f27894e;

    /* renamed from: f */
    public final Object f27895f = new Object();

    public zzdvb(Context context, zzdve zzdveVar, zzdtc zzdtcVar, zzdta zzdtaVar) {
        this.f27890a = context;
        this.f27891b = zzdveVar;
        this.f27892c = zzdtcVar;
        this.f27893d = zzdtaVar;
    }

    /* renamed from: a */
    public final zzdtf m13124a() {
        s00 s00Var;
        synchronized (this.f27895f) {
            s00Var = this.f27894e;
        }
        return s00Var;
    }

    /* renamed from: a */
    public final Class<?> m13123a(zzdus zzdusVar) throws zzdvc {
        synchronized (this) {
            if (zzdusVar.m13145b() != null) {
                String m = zzdusVar.m13145b().m12099m();
                Class<?> cls = f27889g.get(m);
                if (cls != null) {
                    return cls;
                }
                try {
                    if (this.f27893d.m13224a(zzdusVar.m13144c())) {
                        try {
                            File d = zzdusVar.m13143d();
                            if (!d.exists()) {
                                d.mkdirs();
                            }
                            Class<?> loadClass = new DexClassLoader(zzdusVar.m13144c().getAbsolutePath(), d.getAbsolutePath(), null, this.f27890a.getClassLoader()).loadClass("com.google.ccc.abuse.droidguard.DroidGuard");
                            f27889g.put(m, loadClass);
                            return loadClass;
                        } catch (ClassNotFoundException | IllegalArgumentException | SecurityException e) {
                            throw new zzdvc((int) AdError.REMOTE_ADS_SERVICE_ERROR, e);
                        }
                    } else {
                        throw new zzdvc(2026, "VM did not pass signature verification");
                    }
                } catch (GeneralSecurityException e2) {
                    throw new zzdvc(2026, e2);
                }
            } else {
                throw new zzdvc(4010, "mc");
            }
        }
    }

    /* renamed from: a */
    public final Object m13122a(Class<?> cls, zzdus zzdusVar) throws zzdvc {
        try {
            return cls.getDeclaredConstructor(Context.class, String.class, byte[].class, Object.class, Bundle.class, Integer.TYPE).newInstance(this.f27890a, "msa-r", zzdusVar.m13142e(), null, new Bundle(), 2);
        } catch (Exception e) {
            throw new zzdvc((int) AdError.INTERNAL_ERROR_2004, e);
        }
    }

    /* renamed from: b */
    public final zzdus m13121b() {
        synchronized (this.f27895f) {
            if (this.f27894e == null) {
                return null;
            }
            return this.f27894e.m26398b();
        }
    }

    /* renamed from: b */
    public final void m13120b(zzdus zzdusVar) {
        long currentTimeMillis = System.currentTimeMillis();
        try {
            s00 s00Var = new s00(m13122a(m13123a(zzdusVar), zzdusVar), zzdusVar, this.f27891b, this.f27892c);
            if (s00Var.m26397c()) {
                int d = s00Var.m26396d();
                if (d == 0) {
                    synchronized (this.f27895f) {
                        if (this.f27894e != null) {
                            try {
                                this.f27894e.m26401a();
                            } catch (zzdvc e) {
                                this.f27892c.m13221a(e.zzaxb(), -1L, e);
                            }
                        }
                        this.f27894e = s00Var;
                    }
                    this.f27892c.m13222a(BasicNetwork.SLOW_REQUEST_THRESHOLD_MS, System.currentTimeMillis() - currentTimeMillis);
                    return;
                }
                StringBuilder sb = new StringBuilder(15);
                sb.append("ci: ");
                sb.append(d);
                throw new zzdvc(4001, sb.toString());
            }
            throw new zzdvc(4000, "init failed");
        } catch (zzdvc e2) {
            this.f27892c.m13221a(e2.zzaxb(), System.currentTimeMillis() - currentTimeMillis, e2);
        } catch (Exception e3) {
            this.f27892c.m13221a(4010, System.currentTimeMillis() - currentTimeMillis, e3);
        }
    }
}
