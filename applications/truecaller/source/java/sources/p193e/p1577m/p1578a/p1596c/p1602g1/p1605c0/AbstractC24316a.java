package p193e.p1577m.p1578a.p1596c.p1602g1.p1605c0;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24798t;
/* renamed from: e.m.a.c.g1.c0.a */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/c0/a.class */
public abstract class AbstractC24316a {

    /* renamed from: a */
    public final int f67524a;

    /* renamed from: e.m.a.c.g1.c0.a$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/c0/a$a.class */
    public static final class C24317a extends AbstractC24316a {

        /* renamed from: b */
        public final long f67525b;

        /* renamed from: c */
        public final List<C24318b> f67526c = new ArrayList();

        /* renamed from: d */
        public final List<C24317a> f67527d = new ArrayList();

        public C24317a(int i, long j) {
            super(i);
            this.f67525b = j;
        }

        /* renamed from: b */
        public C24317a m5265b(int i) {
            int size = this.f67527d.size();
            for (int i2 = 0; i2 < size; i2++) {
                C24317a c24317a = this.f67527d.get(i2);
                if (c24317a.f67524a == i) {
                    return c24317a;
                }
            }
            return null;
        }

        /* renamed from: c */
        public C24318b m5264c(int i) {
            int size = this.f67526c.size();
            for (int i2 = 0; i2 < size; i2++) {
                C24318b c24318b = this.f67526c.get(i2);
                if (c24318b.f67524a == i) {
                    return c24318b;
                }
            }
            return null;
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1605c0.AbstractC24316a
        public String toString() {
            return AbstractC24316a.m5266a(this.f67524a) + " leaves: " + Arrays.toString(this.f67526c.toArray()) + " containers: " + Arrays.toString(this.f67527d.toArray());
        }
    }

    /* renamed from: e.m.a.c.g1.c0.a$b */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/c0/a$b.class */
    public static final class C24318b extends AbstractC24316a {

        /* renamed from: b */
        public final C24798t f67528b;

        public C24318b(int i, C24798t c24798t) {
            super(i);
            this.f67528b = c24798t;
        }
    }

    public AbstractC24316a(int i) {
        this.f67524a = i;
    }

    /* renamed from: a */
    public static String m5266a(int i) {
        StringBuilder m8728C = C22128a.m8728C("");
        m8728C.append((char) ((i >> 24) & 255));
        m8728C.append((char) ((i >> 16) & 255));
        m8728C.append((char) ((i >> 8) & 255));
        m8728C.append((char) (i & 255));
        return m8728C.toString();
    }

    public String toString() {
        return m5266a(this.f67524a);
    }
}
