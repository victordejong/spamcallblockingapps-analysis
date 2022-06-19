package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/up2.class */
public final class up2 {

    /* renamed from: a */
    private static final up2 f30705a = new up2();

    /* renamed from: b */
    private final ArrayList<np2> f30706b = new ArrayList<>();

    /* renamed from: c */
    private final ArrayList<np2> f30707c = new ArrayList<>();

    private up2() {
    }

    /* renamed from: a */
    public static up2 m10275a() {
        return f30705a;
    }

    /* renamed from: b */
    public final void m10274b(np2 np2Var) {
        this.f30706b.add(np2Var);
    }

    /* renamed from: c */
    public final void m10273c(np2 np2Var) {
        boolean m10269g = m10269g();
        this.f30707c.add(np2Var);
        if (!m10269g) {
            bq2.m16299a().m16297c();
        }
    }

    /* renamed from: d */
    public final void m10272d(np2 np2Var) {
        boolean m10269g = m10269g();
        this.f30706b.remove(np2Var);
        this.f30707c.remove(np2Var);
        if (!m10269g || m10269g()) {
            return;
        }
        bq2.m16299a().m16296d();
    }

    /* renamed from: e */
    public final Collection<np2> m10271e() {
        return Collections.unmodifiableCollection(this.f30706b);
    }

    /* renamed from: f */
    public final Collection<np2> m10270f() {
        return Collections.unmodifiableCollection(this.f30707c);
    }

    /* renamed from: g */
    public final boolean m10269g() {
        return this.f30707c.size() > 0;
    }
}
