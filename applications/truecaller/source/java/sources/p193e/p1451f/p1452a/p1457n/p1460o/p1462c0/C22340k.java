package p193e.p1451f.p1452a.p1457n.p1460o.p1462c0;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Objects;
import p1727n3.p1807k.p1820h.AbstractC26555e;
import p193e.p1451f.p1452a.p1457n.AbstractC22263f;
import p193e.p1451f.p1452a.p1480t.C22620g;
import p193e.p1451f.p1452a.p1480t.C22623j;
import p193e.p1451f.p1452a.p1480t.p1481k.AbstractC22633d;
import p193e.p1451f.p1452a.p1480t.p1481k.C22625a;
/* renamed from: e.f.a.n.o.c0.k */
/* loaded from: classes-dex2jar.jar:e/f/a/n/o/c0/k.class */
public class C22340k {

    /* renamed from: a */
    public final C22620g<AbstractC22263f, String> f62023a = new C22620g<>(1000);

    /* renamed from: b */
    public final AbstractC26555e<C22342b> f62024b = C22625a.m8013a(10, new C22341a(this));

    /* renamed from: e.f.a.n.o.c0.k$a */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/o/c0/k$a.class */
    public class C22341a implements C22625a.AbstractC22627b<C22342b> {
        public C22341a(C22340k c22340k) {
        }

        @Override // p193e.p1451f.p1452a.p1480t.p1481k.C22625a.AbstractC22627b
        public C22342b create() {
            try {
                return new C22342b(MessageDigest.getInstance("SHA-256"));
            } catch (NoSuchAlgorithmException e) {
                throw new RuntimeException(e);
            }
        }
    }

    /* renamed from: e.f.a.n.o.c0.k$b */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/o/c0/k$b.class */
    public static final class C22342b implements C22625a.AbstractC22629d {

        /* renamed from: a */
        public final MessageDigest f62025a;

        /* renamed from: b */
        public final AbstractC22633d f62026b = new AbstractC22633d.C22635b();

        public C22342b(MessageDigest messageDigest) {
            this.f62025a = messageDigest;
        }

        @Override // p193e.p1451f.p1452a.p1480t.p1481k.C22625a.AbstractC22629d
        /* renamed from: d */
        public AbstractC22633d mo8012d() {
            return this.f62026b;
        }
    }

    /* renamed from: a */
    public String m8305a(AbstractC22263f abstractC22263f) {
        String m8030a;
        synchronized (this.f62023a) {
            m8030a = this.f62023a.m8030a(abstractC22263f);
        }
        String str = m8030a;
        if (m8030a == null) {
            C22342b mo1689a = this.f62024b.mo1689a();
            Objects.requireNonNull(mo1689a, "Argument must not be null");
            C22342b c22342b = mo1689a;
            try {
                abstractC22263f.mo8036b(c22342b.f62025a);
                byte[] digest = c22342b.f62025a.digest();
                char[] cArr = C22623j.f62649b;
                synchronized (cArr) {
                    for (int i = 0; i < digest.length; i++) {
                        int i2 = digest[i] & 255;
                        int i3 = i * 2;
                        char[] cArr2 = C22623j.f62648a;
                        cArr[i3] = cArr2[i2 >>> 4];
                        cArr[i3 + 1] = cArr2[i2 & 15];
                    }
                    str = new String(cArr);
                }
            } finally {
                this.f62024b.mo1688b(c22342b);
            }
        }
        synchronized (this.f62023a) {
            this.f62023a.m8027d(abstractC22263f, str);
        }
        return str;
    }
}
