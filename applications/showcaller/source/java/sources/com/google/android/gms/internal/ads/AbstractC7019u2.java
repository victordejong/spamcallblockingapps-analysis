package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.u2 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/u2.class */
public abstract class AbstractC7019u2 implements AbstractC6764n6 {

    /* renamed from: a */
    protected final C6802o7 f30477a = new C6802o7();

    /* renamed from: a */
    public final boolean m10425a() {
        AbstractC6839p7 mo12991z = mo12991z();
        if (mo12991z.m12364k()) {
            return false;
        }
        int mo12992w = mo12992w();
        mo12997m();
        mo12996n();
        return mo12991z.mo12371c(mo12992w, 0, false) != -1;
    }

    /* renamed from: b */
    public final boolean m10424b() {
        AbstractC6839p7 mo12991z = mo12991z();
        if (mo12991z.m12364k()) {
            return false;
        }
        int mo12992w = mo12992w();
        mo12997m();
        mo12996n();
        return mo12991z.mo12372b(mo12992w, 0, false) != -1;
    }

    /* renamed from: c */
    public final boolean m10423c() {
        AbstractC6839p7 mo12991z = mo12991z();
        return !mo12991z.m12364k() && mo12991z.mo12368f(mo12992w(), this.f30477a, 0L).m12715b();
    }

    /* renamed from: d */
    public final boolean m10422d() {
        AbstractC6839p7 mo12991z = mo12991z();
        return !mo12991z.m12364k() && mo12991z.mo12368f(mo12992w(), this.f30477a, 0L).f27459j;
    }
}
