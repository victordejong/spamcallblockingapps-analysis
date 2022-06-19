package com.google.android.gms.internal.ads;

import android.os.Build;
import android.os.ConditionVariable;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bf2.class */
public final class bf2 {

    /* renamed from: c */
    private static final ConditionVariable f6142c = new ConditionVariable();

    /* renamed from: d */
    protected static volatile dv1 f6143d = null;

    /* renamed from: e */
    private static volatile Random f6144e = null;

    /* renamed from: a */
    private final si2 f6145a;

    /* renamed from: b */
    protected volatile Boolean f6146b;

    public bf2(si2 si2Var) {
        this.f6145a = si2Var;
        si2Var.m5683d().execute(new ce2(this));
    }

    /* renamed from: d */
    public static final int m7992d() {
        try {
            return Build.VERSION.SDK_INT >= 21 ? ThreadLocalRandom.current().nextInt() : m7991e().nextInt();
        } catch (RuntimeException e) {
            return m7991e().nextInt();
        }
    }

    /* renamed from: e */
    private static Random m7991e() {
        if (f6144e == null) {
            synchronized (bf2.class) {
                try {
                    if (f6144e == null) {
                        f6144e = new Random();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f6144e;
    }

    /* renamed from: a */
    public final void m7995a(int i, int i2, long j, String str, Exception exc) {
        try {
            f6142c.block();
            if (!this.f6146b.booleanValue() || f6143d == null) {
                return;
            }
            n80 E = se0.E();
            E.q(this.f6145a.f8469a.getPackageName());
            E.r(j);
            if (str != null) {
                E.u(str);
            }
            if (exc != null) {
                StringWriter stringWriter = new StringWriter();
                ab2.m8149c(exc, new PrintWriter(stringWriter));
                E.s(stringWriter.toString());
                E.t(exc.getClass().getName());
            }
            bv1 m7681a = f6143d.m7681a(E.m().A());
            m7681a.m7915c(i);
            if (i2 != -1) {
                m7681a.m7916b(i2);
            }
            m7681a.m7917a();
        } catch (Exception e) {
        }
    }
}
