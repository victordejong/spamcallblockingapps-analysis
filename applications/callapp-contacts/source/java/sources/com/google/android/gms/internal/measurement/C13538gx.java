package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.gx */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/gx.class */
public class C13538gx {

    /* renamed from: b */
    private static final C13512fy f50770b = C13512fy.m12798a();

    /* renamed from: a */
    protected volatile AbstractC13556ho f50771a;

    /* renamed from: c */
    private volatile AbstractC13500fm f50772c;

    /* renamed from: a */
    private void m12738a(AbstractC13556ho abstractC13556ho) {
        if (this.f50771a != null) {
            return;
        }
        synchronized (this) {
            if (this.f50771a != null) {
                return;
            }
            try {
                this.f50771a = abstractC13556ho;
                this.f50772c = AbstractC13500fm.f50716b;
            } catch (zzib e) {
                this.f50771a = abstractC13556ho;
                this.f50772c = AbstractC13500fm.f50716b;
            }
        }
    }

    /* renamed from: b */
    private AbstractC13500fm m12737b() {
        if (this.f50772c != null) {
            return this.f50772c;
        }
        synchronized (this) {
            if (this.f50772c != null) {
                return this.f50772c;
            }
            if (this.f50771a == null) {
                this.f50772c = AbstractC13500fm.f50716b;
            } else {
                this.f50772c = this.f50771a.mo12708i();
            }
            return this.f50772c;
        }
    }

    /* renamed from: a */
    public final int m12739a() {
        if (this.f50772c != null) {
            return ((C13498fk) this.f50772c).f50715a.length;
        }
        if (this.f50771a == null) {
            return 0;
        }
        return this.f50771a.mo12707n();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C13538gx)) {
            return false;
        }
        C13538gx c13538gx = (C13538gx) obj;
        AbstractC13556ho abstractC13556ho = this.f50771a;
        AbstractC13556ho abstractC13556ho2 = c13538gx.f50771a;
        if (abstractC13556ho == null && abstractC13556ho2 == null) {
            return m12737b().equals(c13538gx.m12737b());
        }
        if (abstractC13556ho != null && abstractC13556ho2 != null) {
            return abstractC13556ho.equals(abstractC13556ho2);
        }
        if (abstractC13556ho != null) {
            c13538gx.m12738a(abstractC13556ho.mo12704C());
            return abstractC13556ho.equals(c13538gx.f50771a);
        }
        m12738a(abstractC13556ho2.mo12704C());
        return this.f50771a.equals(abstractC13556ho2);
    }

    public int hashCode() {
        return 1;
    }
}
