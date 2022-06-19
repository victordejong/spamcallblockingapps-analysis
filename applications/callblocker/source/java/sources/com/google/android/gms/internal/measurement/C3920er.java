package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.er */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/er.class */
public class C3920er {

    /* renamed from: a */
    private static final C3884dp f18130a = C3884dp.m5694a();

    /* renamed from: b */
    private AbstractC3859ct f18131b;

    /* renamed from: c */
    private volatile AbstractC3943fn f18132c;

    /* renamed from: d */
    private volatile AbstractC3859ct f18133d;

    /* renamed from: b */
    private final AbstractC3943fn m5591b(AbstractC3943fn abstractC3943fn) {
        if (this.f18132c == null) {
            synchronized (this) {
                if (this.f18132c == null) {
                    try {
                        this.f18132c = abstractC3943fn;
                        this.f18133d = AbstractC3859ct.f17943a;
                    } catch (zzft e) {
                        this.f18132c = abstractC3943fn;
                        this.f18133d = AbstractC3859ct.f17943a;
                    }
                }
            }
        }
        return this.f18132c;
    }

    /* renamed from: a */
    public final AbstractC3943fn m5593a(AbstractC3943fn abstractC3943fn) {
        AbstractC3943fn abstractC3943fn2 = this.f18132c;
        this.f18131b = null;
        this.f18133d = null;
        this.f18132c = abstractC3943fn;
        return abstractC3943fn2;
    }

    /* renamed from: b */
    public final int m5592b() {
        return this.f18133d != null ? this.f18133d.mo5753a() : this.f18132c != null ? this.f18132c.mo5541an() : 0;
    }

    /* renamed from: c */
    public final AbstractC3859ct m5590c() {
        AbstractC3859ct abstractC3859ct;
        if (this.f18133d != null) {
            abstractC3859ct = this.f18133d;
        } else {
            synchronized (this) {
                if (this.f18133d != null) {
                    abstractC3859ct = this.f18133d;
                } else {
                    if (this.f18132c == null) {
                        this.f18133d = AbstractC3859ct.f17943a;
                    } else {
                        this.f18133d = this.f18132c.mo5542ah();
                    }
                    abstractC3859ct = this.f18133d;
                }
            }
        }
        return abstractC3859ct;
    }

    public boolean equals(Object obj) {
        boolean equals;
        if (this == obj) {
            equals = true;
        } else if (!(obj instanceof C3920er)) {
            equals = false;
        } else {
            C3920er c3920er = (C3920er) obj;
            AbstractC3943fn abstractC3943fn = this.f18132c;
            AbstractC3943fn abstractC3943fn2 = c3920er.f18132c;
            equals = (abstractC3943fn == null && abstractC3943fn2 == null) ? m5590c().equals(c3920er.m5590c()) : (abstractC3943fn == null || abstractC3943fn2 == null) ? abstractC3943fn != null ? abstractC3943fn.equals(c3920er.m5591b(abstractC3943fn.mo5533at())) : m5591b(abstractC3943fn2.mo5533at()).equals(abstractC3943fn2) : abstractC3943fn.equals(abstractC3943fn2);
        }
        return equals;
    }

    public int hashCode() {
        return 1;
    }
}
