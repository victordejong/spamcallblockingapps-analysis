package com.google.android.gms.internal.ads;

import android.os.Build;
import android.os.ConditionVariable;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;
/* renamed from: com.google.android.gms.internal.ads.p */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/p.class */
public final class C6831p {

    /* renamed from: a */
    private static final ConditionVariable f27801a = new ConditionVariable();

    /* renamed from: b */
    protected static volatile jt2 f27802b = null;

    /* renamed from: c */
    private static volatile Random f27803c = null;

    /* renamed from: d */
    private final C6869q0 f27804d;

    /* renamed from: e */
    protected volatile Boolean f27805e;

    public C6831p(C6869q0 c6869q0) {
        this.f27804d = c6869q0;
        c6869q0.m12079e().execute(new RunnableC6794o(this));
    }

    /* renamed from: d */
    public static final int m12467d() {
        try {
            return Build.VERSION.SDK_INT >= 21 ? ThreadLocalRandom.current().nextInt() : m12466e().nextInt();
        } catch (RuntimeException e) {
            return m12466e().nextInt();
        }
    }

    /* renamed from: e */
    private static Random m12466e() {
        if (f27803c == null) {
            synchronized (C6831p.class) {
                try {
                    if (f27803c == null) {
                        f27803c = new Random();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f27803c;
    }

    /* renamed from: c */
    public final void m12468c(int i, int i2, long j, String str, Exception exc) {
        try {
            f27801a.block();
            if (!this.f27805e.booleanValue() || f27802b == null) {
                return;
            }
            u04 m9004C = y04.m9004C();
            m9004C.m10442q(this.f27804d.f28255b.getPackageName());
            m9004C.m10441r(j);
            if (str != null) {
                m9004C.m10438v(str);
            }
            if (exc != null) {
                StringWriter stringWriter = new StringWriter();
                qc3.m11956c(exc, new PrintWriter(stringWriter));
                m9004C.m10440s(stringWriter.toString());
                m9004C.m10439t(exc.getClass().getName());
            }
            ht2 m14041a = f27802b.m14041a(m9004C.m15512n().mo10723K());
            m14041a.m14551c(i);
            if (i2 != -1) {
                m14041a.m14552b(i2);
            }
            m14041a.m14553a();
        } catch (Exception e) {
        }
    }
}
