package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/mr1.class */
public final class mr1 {

    /* renamed from: c */
    private static final mr1 f7623c = new mr1();

    /* renamed from: a */
    private final ArrayList<er1> f7624a = new ArrayList<>();

    /* renamed from: b */
    private final ArrayList<er1> f7625b = new ArrayList<>();

    private mr1() {
    }

    /* renamed from: a */
    public static mr1 m6521a() {
        return f7623c;
    }

    /* renamed from: b */
    public final void m6520b(er1 er1Var) {
        this.f7624a.add(er1Var);
    }

    /* renamed from: c */
    public final void m6519c(er1 er1Var) {
        boolean g = m6515g();
        this.f7625b.add(er1Var);
        if (!g) {
            tr1.m5490a().m5488c();
        }
    }

    /* renamed from: d */
    public final void m6518d(er1 er1Var) {
        boolean g = m6515g();
        this.f7624a.remove(er1Var);
        this.f7625b.remove(er1Var);
        if (g && !m6515g()) {
            tr1.m5490a().m5487d();
        }
    }

    /* renamed from: e */
    public final Collection<er1> m6517e() {
        return Collections.unmodifiableCollection(this.f7624a);
    }

    /* renamed from: f */
    public final Collection<er1> m6516f() {
        return Collections.unmodifiableCollection(this.f7625b);
    }

    /* renamed from: g */
    public final boolean m6515g() {
        return this.f7625b.size() > 0;
    }
}
