package p012b.p076s.p078b.p079a.p102w0;

import android.os.Handler;
import java.io.IOException;
import p012b.p076s.p078b.p079a.AbstractC1252n0;
import p012b.p076s.p078b.p079a.p111z0.AbstractC1678b;
import p012b.p076s.p078b.p079a.p111z0.AbstractC1704x;
/* renamed from: b.s.b.a.w0.r */
/* loaded from: classes-dex2jar.jar:b/s/b/a/w0/r.class */
public interface AbstractC1634r {

    /* renamed from: b.s.b.a.w0.r$a */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/w0/r$a.class */
    public static final class C1635a {

        /* renamed from: a */
        public final Object f6755a;

        /* renamed from: b */
        public final int f6756b;

        /* renamed from: c */
        public final int f6757c;

        /* renamed from: d */
        public final long f6758d;

        /* renamed from: e */
        public final int f6759e;

        public C1635a(Object obj) {
            this(obj, -1L);
        }

        public C1635a(Object obj, int i, int i2, long j) {
            this(obj, i, i2, j, -1);
        }

        public C1635a(Object obj, int i, int i2, long j, int i3) {
            this.f6755a = obj;
            this.f6756b = i;
            this.f6757c = i2;
            this.f6758d = j;
            this.f6759e = i3;
        }

        public C1635a(Object obj, long j) {
            this(obj, -1, -1, j, -1);
        }

        public C1635a(Object obj, long j, int i) {
            this(obj, -1, -1, j, i);
        }

        /* renamed from: a */
        public C1635a m32500a(Object obj) {
            return this.f6755a.equals(obj) ? this : new C1635a(obj, this.f6756b, this.f6757c, this.f6758d, this.f6759e);
        }

        /* renamed from: a */
        public boolean m32501a() {
            return this.f6756b != -1;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || C1635a.class != obj.getClass()) {
                return false;
            }
            C1635a aVar = (C1635a) obj;
            if (!(this.f6755a.equals(aVar.f6755a) && this.f6756b == aVar.f6756b && this.f6757c == aVar.f6757c && this.f6758d == aVar.f6758d && this.f6759e == aVar.f6759e)) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return ((((((((527 + this.f6755a.hashCode()) * 31) + this.f6756b) * 31) + this.f6757c) * 31) + ((int) this.f6758d)) * 31) + this.f6759e;
        }
    }

    /* renamed from: b.s.b.a.w0.r$b */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/w0/r$b.class */
    public interface AbstractC1636b {
        /* renamed from: a */
        void mo32499a(AbstractC1634r rVar, AbstractC1252n0 n0Var, Object obj);
    }

    /* renamed from: a */
    AbstractC1631p mo32294a(C1635a aVar, AbstractC1678b bVar, long j);

    /* renamed from: a */
    Object mo32507a();

    /* renamed from: a */
    void mo32506a(Handler handler, AbstractC1533a0 a0Var);

    /* renamed from: a */
    void mo32505a(AbstractC1533a0 a0Var);

    /* renamed from: a */
    void mo32295a(AbstractC1631p pVar);

    /* renamed from: a */
    void mo32504a(AbstractC1636b bVar);

    /* renamed from: a */
    void mo32503a(AbstractC1636b bVar, AbstractC1704x xVar);

    /* renamed from: b */
    void mo32502b() throws IOException;
}
