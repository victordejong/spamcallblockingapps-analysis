package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.security.GeneralSecurityException;
import java.util.HashMap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ft2.class */
public final class ft2 {

    /* renamed from: a */
    private static final HashMap<String, Class<?>> f23128a = new HashMap<>();

    /* renamed from: b */
    private final Context f23129b;

    /* renamed from: c */
    private final gt2 f23130c;

    /* renamed from: d */
    private final mr2 f23131d;

    /* renamed from: e */
    private final ir2 f23132e;

    /* renamed from: f */
    private ws2 f23133f;

    /* renamed from: g */
    private final Object f23134g = new Object();

    public ft2(Context context, gt2 gt2Var, mr2 mr2Var, ir2 ir2Var) {
        this.f23129b = context;
        this.f23130c = gt2Var;
        this.f23131d = mr2Var;
        this.f23132e = ir2Var;
    }

    /* renamed from: d */
    private final Class<?> m15054d(xs2 xs2Var) {
        synchronized (this) {
            String m14511C = xs2Var.m9069a().m14511C();
            HashMap<String, Class<?>> hashMap = f23128a;
            Class<?> cls = hashMap.get(m14511C);
            if (cls != null) {
                return cls;
            }
            try {
                if (!this.f23132e.m14295a(xs2Var.m9068b())) {
                    throw new zzfkf(2026, "VM did not pass signature verification");
                }
                try {
                    File m9067c = xs2Var.m9067c();
                    if (!m9067c.exists()) {
                        m9067c.mkdirs();
                    }
                    Class loadClass = new DexClassLoader(xs2Var.m9068b().getAbsolutePath(), m9067c.getAbsolutePath(), null, this.f23129b.getClassLoader()).loadClass("com.google.ccc.abuse.droidguard.DroidGuard");
                    hashMap.put(m14511C, loadClass);
                    return loadClass;
                } catch (ClassNotFoundException | IllegalArgumentException | SecurityException e) {
                    throw new zzfkf(2008, e);
                }
            } catch (GeneralSecurityException e2) {
                throw new zzfkf(2026, e2);
            }
        }
    }

    /* renamed from: a */
    public final boolean m15057a(xs2 xs2Var) {
        long currentTimeMillis = System.currentTimeMillis();
        try {
            try {
                ws2 ws2Var = new ws2(m15054d(xs2Var).getDeclaredConstructor(Context.class, String.class, byte[].class, Object.class, Bundle.class, Integer.TYPE).newInstance(this.f23129b, "msa-r", xs2Var.m9066d(), null, new Bundle(), 2), xs2Var, this.f23130c, this.f23131d);
                if (!ws2Var.m9471f()) {
                    throw new zzfkf(4000, "init failed");
                }
                int m9469h = ws2Var.m9469h();
                if (m9469h != 0) {
                    StringBuilder sb = new StringBuilder(15);
                    sb.append("ci: ");
                    sb.append(m9469h);
                    throw new zzfkf(4001, sb.toString());
                }
                synchronized (this.f23134g) {
                    ws2 ws2Var2 = this.f23133f;
                    if (ws2Var2 != null) {
                        try {
                            ws2Var2.m9470g();
                        } catch (zzfkf e) {
                            this.f23131d.m13100c(e.zza(), -1L, e);
                        }
                    }
                    this.f23133f = ws2Var;
                }
                this.f23131d.m13101b(3000, System.currentTimeMillis() - currentTimeMillis);
                return true;
            } catch (Exception e2) {
                throw new zzfkf(2004, e2);
            }
        } catch (zzfkf e3) {
            this.f23131d.m13100c(e3.zza(), System.currentTimeMillis() - currentTimeMillis, e3);
            return false;
        } catch (Exception e4) {
            this.f23131d.m13100c(4010, System.currentTimeMillis() - currentTimeMillis, e4);
            return false;
        }
    }

    /* renamed from: b */
    public final pr2 m15056b() {
        ws2 ws2Var;
        synchronized (this.f23134g) {
            ws2Var = this.f23133f;
        }
        return ws2Var;
    }

    /* renamed from: c */
    public final xs2 m15055c() {
        synchronized (this.f23134g) {
            ws2 ws2Var = this.f23133f;
            if (ws2Var != null) {
                return ws2Var.m9472e();
            }
            return null;
        }
    }
}
