package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.q9 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/q9.class */
final class C6878q9<T> {

    /* renamed from: a */
    public final T f28343a;

    /* renamed from: b */
    private C6544h9 f28344b = new C6544h9();

    /* renamed from: c */
    private boolean f28345c;

    /* renamed from: d */
    private boolean f28346d;

    public C6878q9(T t) {
        this.f28343a = t;
    }

    /* renamed from: a */
    public final void m12012a(AbstractC6841p9<T> abstractC6841p9) {
        this.f28346d = true;
        if (this.f28345c) {
            abstractC6841p9.mo8157a(this.f28343a, this.f28344b.m14721b());
        }
    }

    /* renamed from: b */
    public final void m12011b(int i, AbstractC6804o9<T> abstractC6804o9) {
        if (!this.f28346d) {
            if (i != -1) {
                this.f28344b.m14722a(i);
            }
            this.f28345c = true;
            abstractC6804o9.mo8143a(this.f28343a);
        }
    }

    /* renamed from: c */
    public final void m12010c(AbstractC6841p9<T> abstractC6841p9) {
        if (this.f28346d || !this.f28345c) {
            return;
        }
        C6619j9 m14721b = this.f28344b.m14721b();
        this.f28344b = new C6544h9();
        this.f28345c = false;
        abstractC6841p9.mo8157a(this.f28343a, m14721b);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C6878q9.class == obj.getClass()) {
            return this.f28343a.equals(((C6878q9) obj).f28343a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f28343a.hashCode();
    }
}
