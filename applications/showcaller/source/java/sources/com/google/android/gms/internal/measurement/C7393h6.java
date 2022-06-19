package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.h6 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/h6.class */
public class C7393h6 {

    /* renamed from: a */
    private static final C7448l5 f34504a = C7448l5.m7188a();

    /* renamed from: b */
    protected volatile AbstractC7623y6 f34505b;

    /* renamed from: c */
    private volatile zzgr f34506c;

    /* renamed from: a */
    public final int m7371a() {
        if (this.f34506c != null) {
            return ((zzgp) this.f34506c).zza.length;
        }
        if (this.f34505b == null) {
            return 0;
        }
        return this.f34505b.mo6727g();
    }

    /* renamed from: b */
    public final zzgr m7370b() {
        if (this.f34506c != null) {
            return this.f34506c;
        }
        synchronized (this) {
            if (this.f34506c != null) {
                return this.f34506c;
            }
            if (this.f34505b == null) {
                this.f34506c = zzgr.f34851d;
            } else {
                this.f34506c = this.f34505b.mo6728d();
            }
            return this.f34506c;
        }
    }

    /* renamed from: c */
    protected final void m7369c(AbstractC7623y6 abstractC7623y6) {
        if (this.f34505b != null) {
            return;
        }
        synchronized (this) {
            if (this.f34505b != null) {
                return;
            }
            try {
                this.f34505b = abstractC7623y6;
                this.f34506c = zzgr.f34851d;
            } catch (zzib e) {
                this.f34505b = abstractC7623y6;
                this.f34506c = zzgr.f34851d;
            }
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C7393h6)) {
            return false;
        }
        C7393h6 c7393h6 = (C7393h6) obj;
        AbstractC7623y6 abstractC7623y6 = this.f34505b;
        AbstractC7623y6 abstractC7623y62 = c7393h6.f34505b;
        if (abstractC7623y6 == null && abstractC7623y62 == null) {
            return m7370b().equals(c7393h6.m7370b());
        }
        if (abstractC7623y6 != null && abstractC7623y62 != null) {
            return abstractC7623y6.equals(abstractC7623y62);
        }
        if (abstractC7623y6 != null) {
            c7393h6.m7369c(abstractC7623y6.mo6643h());
            return abstractC7623y6.equals(c7393h6.f34505b);
        }
        m7369c(abstractC7623y62.mo6643h());
        return this.f34505b.equals(abstractC7623y62);
    }

    public int hashCode() {
        return 1;
    }
}
