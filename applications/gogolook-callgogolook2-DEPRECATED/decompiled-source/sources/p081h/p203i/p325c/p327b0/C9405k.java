package p081h.p203i.p325c.p327b0;

import androidx.annotation.NonNull;
import p081h.p203i.p325c.p327b0.p328p.C9426k;
/* renamed from: h.i.c.b0.k */
/* loaded from: classes2-dex2jar.jar:h/i/c/b0/k.class */
public class C9405k {

    /* renamed from: a */
    public final long f21451a;

    /* renamed from: b */
    public final long f21452b;

    /* renamed from: h.i.c.b0.k$b */
    /* loaded from: classes2-dex2jar.jar:h/i/c/b0/k$b.class */
    public static class C9407b {

        /* renamed from: a */
        public long f21453a = 60;

        /* renamed from: b */
        public long f21454b = C9426k.f21501j;

        @NonNull
        /* renamed from: a */
        public C9407b m15291a(long j) {
            if (j >= 0) {
                this.f21454b = j;
                return this;
            }
            throw new IllegalArgumentException("Minimum interval between fetches has to be a non-negative number. " + j + " is an invalid argument");
        }

        @NonNull
        /* renamed from: a */
        public C9405k m15292a() {
            return new C9405k(this);
        }
    }

    public C9405k(C9407b bVar) {
        this.f21451a = bVar.f21453a;
        this.f21452b = bVar.f21454b;
    }

    /* renamed from: a */
    public long m15294a() {
        return this.f21451a;
    }

    /* renamed from: b */
    public long m15293b() {
        return this.f21452b;
    }
}
