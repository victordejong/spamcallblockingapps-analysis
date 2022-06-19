package com.google.android.play.core.appupdate;

import android.app.PendingIntent;
/* renamed from: com.google.android.play.core.appupdate.a */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/appupdate/a.class */
public abstract class AbstractC14872a {
    /* renamed from: b */
    private final boolean m9827b(AbstractC14875d abstractC14875d) {
        return abstractC14875d.mo9794b() && mo9803i() <= mo9802j();
    }

    /* renamed from: a */
    public final PendingIntent m9828a(AbstractC14875d abstractC14875d) {
        if (abstractC14875d.mo9795a() == 0) {
            if (mo9800l() != null) {
                return mo9800l();
            }
            if (!m9827b(abstractC14875d)) {
                return null;
            }
            return mo9798n();
        } else if (abstractC14875d.mo9795a() != 1) {
            return null;
        } else {
            if (mo9801k() != null) {
                return mo9801k();
            }
            if (!m9827b(abstractC14875d)) {
                return null;
            }
            return mo9799m();
        }
    }

    /* renamed from: a */
    public abstract String mo9811a();

    /* renamed from: b */
    public abstract int mo9810b();

    /* renamed from: c */
    public abstract int mo9809c();

    /* renamed from: d */
    public abstract int mo9808d();

    /* renamed from: e */
    public abstract Integer mo9807e();

    /* renamed from: f */
    public abstract int mo9806f();

    /* renamed from: g */
    public abstract long mo9805g();

    /* renamed from: h */
    public abstract long mo9804h();

    /* renamed from: i */
    public abstract long mo9803i();

    /* renamed from: j */
    public abstract long mo9802j();

    /* renamed from: k */
    public abstract PendingIntent mo9801k();

    /* renamed from: l */
    public abstract PendingIntent mo9800l();

    /* renamed from: m */
    public abstract PendingIntent mo9799m();

    /* renamed from: n */
    public abstract PendingIntent mo9798n();
}
