package com.google.android.gms.internal.ads;

import android.os.Build;
import android.os.ConditionVariable;
import com.google.android.gms.internal.ads.akn;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/chc.class */
public class chc {

    /* renamed from: b */
    protected volatile Boolean f13032b;

    /* renamed from: c */
    private din f13033c;

    /* renamed from: d */
    private static final ConditionVariable f13030d = new ConditionVariable();

    /* renamed from: a */
    protected static volatile dwn f13029a = null;

    /* renamed from: e */
    private static volatile Random f13031e = null;

    public chc(din dinVar) {
        this.f13033c = dinVar;
        dinVar.m9407c().execute(new cke(this));
    }

    /* renamed from: a */
    public static int m11359a() {
        int nextInt;
        try {
            nextInt = Build.VERSION.SDK_INT >= 21 ? ThreadLocalRandom.current().nextInt() : m11353c().nextInt();
        } catch (RuntimeException e) {
            nextInt = m11353c().nextInt();
        }
        return nextInt;
    }

    /* renamed from: c */
    private static Random m11353c() {
        if (f13031e == null) {
            synchronized (chc.class) {
                try {
                    if (f13031e == null) {
                        f13031e = new Random();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f13031e;
    }

    /* renamed from: a */
    public final void m11358a(int i, int i2, long j) {
        m11356a(i, i2, j, null, null);
    }

    /* renamed from: a */
    public final void m11357a(int i, int i2, long j, String str) {
        m11356a(i, -1, j, str, null);
    }

    /* renamed from: a */
    public final void m11356a(int i, int i2, long j, String str, Exception exc) {
        try {
            f13030d.block();
            if (!this.f13032b.booleanValue() || f13029a == null) {
                return;
            }
            akn.C2774a.C2775a m13002a = akn.C2774a.m13018a().m13000a(this.f13033c.f14410a.getPackageName()).m13002a(j);
            if (str != null) {
                m13002a.m12997d(str);
            }
            if (exc != null) {
                StringWriter stringWriter = new StringWriter();
                dap.m10260a(exc, new PrintWriter(stringWriter));
                m13002a.m12999b(stringWriter.toString()).m12998c(exc.getClass().getName());
            }
            dws m8433a = f13029a.m8433a(((akn.C2774a) ((dcw) m13002a.mo9987g())).mo9984l());
            m8433a.m8430b(i);
            if (i2 != -1) {
                m8433a.m8431a(i2);
            }
            m8433a.m8432a();
        } catch (Exception e) {
        }
    }
}
