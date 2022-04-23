package p012b.p076s.p078b.p079a.p086s0.p091v;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import p012b.p076s.p078b.p079a.p080a1.C1184p;
/* renamed from: b.s.b.a.s0.v.a */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/v/a.class */
public abstract class AbstractC1392a {

    /* renamed from: a */
    public final int f5572a;

    /* renamed from: b.s.b.a.s0.v.a$a */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/s0/v/a$a.class */
    public static final class C1393a extends AbstractC1392a {

        /* renamed from: b */
        public final long f5573b;

        /* renamed from: c */
        public final List<C1394b> f5574c = new ArrayList();

        /* renamed from: d */
        public final List<C1393a> f5575d = new ArrayList();

        public C1393a(int i, long j) {
            super(i);
            this.f5573b = j;
        }

        /* renamed from: a */
        public void m33491a(C1393a aVar) {
            this.f5575d.add(aVar);
        }

        /* renamed from: a */
        public void m33490a(C1394b bVar) {
            this.f5574c.add(bVar);
        }

        /* renamed from: d */
        public C1393a m33489d(int i) {
            int size = this.f5575d.size();
            for (int i2 = 0; i2 < size; i2++) {
                C1393a aVar = this.f5575d.get(i2);
                if (aVar.f5572a == i) {
                    return aVar;
                }
            }
            return null;
        }

        /* renamed from: e */
        public C1394b m33488e(int i) {
            int size = this.f5574c.size();
            for (int i2 = 0; i2 < size; i2++) {
                C1394b bVar = this.f5574c.get(i2);
                if (bVar.f5572a == i) {
                    return bVar;
                }
            }
            return null;
        }

        @Override // p012b.p076s.p078b.p079a.p086s0.p091v.AbstractC1392a
        public String toString() {
            String a = AbstractC1392a.m33494a(this.f5572a);
            String arrays = Arrays.toString(this.f5574c.toArray());
            String arrays2 = Arrays.toString(this.f5575d.toArray());
            StringBuilder sb = new StringBuilder(String.valueOf(a).length() + 22 + String.valueOf(arrays).length() + String.valueOf(arrays2).length());
            sb.append(a);
            sb.append(" leaves: ");
            sb.append(arrays);
            sb.append(" containers: ");
            sb.append(arrays2);
            return sb.toString();
        }
    }

    /* renamed from: b.s.b.a.s0.v.a$b */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/s0/v/a$b.class */
    public static final class C1394b extends AbstractC1392a {

        /* renamed from: b */
        public final C1184p f5576b;

        public C1394b(int i, C1184p pVar) {
            super(i);
            this.f5576b = pVar;
        }
    }

    public AbstractC1392a(int i) {
        this.f5572a = i;
    }

    /* renamed from: a */
    public static String m33494a(int i) {
        StringBuilder sb = new StringBuilder(4);
        sb.append((char) ((i >> 24) & 255));
        sb.append((char) ((i >> 16) & 255));
        sb.append((char) ((i >> 8) & 255));
        sb.append((char) (i & 255));
        return sb.toString();
    }

    /* renamed from: b */
    public static int m33493b(int i) {
        return i & 16777215;
    }

    /* renamed from: c */
    public static int m33492c(int i) {
        return (i >> 24) & 255;
    }

    public String toString() {
        return m33494a(this.f5572a);
    }
}
