package p193e.p1577m.p1578a.p1596c.p1620l1;

import android.os.Handler;
import java.io.IOException;
import p193e.p1577m.p1578a.p1596c.AbstractC24861y0;
import p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24690d;
import p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24697f0;
/* renamed from: e.m.a.c.l1.p */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/l1/p.class */
public interface AbstractC24531p {

    /* renamed from: e.m.a.c.l1.p$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/l1/p$a.class */
    public static final class C24532a {

        /* renamed from: a */
        public final Object f68507a;

        /* renamed from: b */
        public final int f68508b;

        /* renamed from: c */
        public final int f68509c;

        /* renamed from: d */
        public final long f68510d;

        /* renamed from: e */
        public final int f68511e;

        public C24532a(Object obj) {
            this.f68507a = obj;
            this.f68508b = -1;
            this.f68509c = -1;
            this.f68510d = -1L;
            this.f68511e = -1;
        }

        public C24532a(Object obj, int i, int i2, long j) {
            this.f68507a = obj;
            this.f68508b = i;
            this.f68509c = i2;
            this.f68510d = j;
            this.f68511e = -1;
        }

        public C24532a(Object obj, long j) {
            this.f68507a = obj;
            this.f68508b = -1;
            this.f68509c = -1;
            this.f68510d = j;
            this.f68511e = -1;
        }

        public C24532a(Object obj, long j, int i) {
            this.f68507a = obj;
            this.f68508b = -1;
            this.f68509c = -1;
            this.f68510d = j;
            this.f68511e = i;
        }

        /* renamed from: a */
        public boolean m4974a() {
            return this.f68508b != -1;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || C24532a.class != obj.getClass()) {
                return false;
            }
            C24532a c24532a = (C24532a) obj;
            if (!this.f68507a.equals(c24532a.f68507a) || this.f68508b != c24532a.f68508b || this.f68509c != c24532a.f68509c || this.f68510d != c24532a.f68510d || this.f68511e != c24532a.f68511e) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return ((((((((this.f68507a.hashCode() + 527) * 31) + this.f68508b) * 31) + this.f68509c) * 31) + ((int) this.f68510d)) * 31) + this.f68511e;
        }
    }

    /* renamed from: e.m.a.c.l1.p$b */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/l1/p$b.class */
    public interface AbstractC24533b {
        /* renamed from: a */
        void mo4973a(AbstractC24531p abstractC24531p, AbstractC24861y0 abstractC24861y0);
    }

    /* renamed from: a */
    void mo4942a() throws IOException;

    /* renamed from: b */
    void mo4978b(AbstractC24533b abstractC24533b);

    /* renamed from: c */
    void mo4977c(AbstractC24534q abstractC24534q);

    /* renamed from: d */
    void mo4976d(AbstractC24533b abstractC24533b, AbstractC24697f0 abstractC24697f0);

    /* renamed from: e */
    AbstractC24529o mo4941e(C24532a c24532a, AbstractC24690d abstractC24690d, long j);

    /* renamed from: f */
    void mo4975f(Handler handler, AbstractC24534q abstractC24534q);

    /* renamed from: g */
    void mo4940g(AbstractC24529o abstractC24529o);
}
