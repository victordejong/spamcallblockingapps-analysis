package com.google.android.gms.internal.ads;

import android.os.Build;
import android.os.ConditionVariable;
import com.google.android.gms.internal.ads.aut;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cwd.class */
public class cwd {

    /* renamed from: b */
    protected volatile Boolean f46660b;

    /* renamed from: c */
    private dtg f46661c;

    /* renamed from: d */
    private static final ConditionVariable f46658d = new ConditionVariable();

    /* renamed from: a */
    protected static volatile ehq f46657a = null;

    /* renamed from: e */
    private static volatile Random f46659e = null;

    public cwd(dtg dtgVar) {
        this.f46661c = dtgVar;
        dtgVar.f47548b.execute(new cvd(this));
    }

    /* renamed from: a */
    public static int m17143a() {
        try {
            return Build.VERSION.SDK_INT >= 21 ? ThreadLocalRandom.current().nextInt() : m17137c().nextInt();
        } catch (RuntimeException e) {
            return m17137c().nextInt();
        }
    }

    /* renamed from: c */
    private static Random m17137c() {
        if (f46659e == null) {
            synchronized (cwd.class) {
                try {
                    if (f46659e == null) {
                        f46659e = new Random();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f46659e;
    }

    /* renamed from: a */
    public final void m17142a(int i, int i2, long j) {
        m17141a(i, i2, j, null, null);
    }

    /* renamed from: a */
    public final void m17141a(int i, int i2, long j, String str, Exception exc) {
        try {
            f46658d.block();
            if (!this.f46660b.booleanValue() || f46657a == null) {
                return;
            }
            aut.C12193a.C12196b m18392a = aut.C12193a.m18402a().m18390a(this.f46661c.f47547a.getPackageName()).m18392a(j);
            if (str != null) {
                m18392a.m18387d(str);
            }
            if (exc != null) {
                StringWriter stringWriter = new StringWriter();
                dlf.m16512a(exc, new PrintWriter(stringWriter));
                m18392a.m18389b(stringWriter.toString()).m18388c(exc.getClass().getName());
            }
            ehu m15042a = f46657a.m15042a(m18392a.mo16259f().mo16256g());
            m15042a.f49044b = i;
            if (i2 != -1) {
                m15042a.f49043a = i2;
            }
            m15042a.m14887a();
        } catch (Exception e) {
        }
    }

    /* renamed from: a */
    public final void m17140a(int i, long j, String str) {
        m17141a(i, -1, j, str, null);
    }
}
