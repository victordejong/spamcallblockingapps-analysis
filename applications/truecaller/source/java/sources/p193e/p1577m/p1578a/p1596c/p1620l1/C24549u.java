package p193e.p1577m.p1578a.p1596c.p1620l1;

import java.nio.ByteBuffer;
import p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24690d;
import p193e.p1577m.p1578a.p1596c.p1634p1.C24680c;
import p193e.p1577m.p1578a.p1596c.p1634p1.C24743o;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24798t;
/* renamed from: e.m.a.c.l1.u */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/l1/u.class */
public class C24549u {

    /* renamed from: a */
    public final AbstractC24690d f68602a;

    /* renamed from: b */
    public final int f68603b;

    /* renamed from: c */
    public final C24798t f68604c = new C24798t(32);

    /* renamed from: d */
    public C24550a f68605d;

    /* renamed from: e */
    public C24550a f68606e;

    /* renamed from: f */
    public C24550a f68607f;

    /* renamed from: g */
    public long f68608g;

    /* renamed from: e.m.a.c.l1.u$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/l1/u$a.class */
    public static final class C24550a {

        /* renamed from: a */
        public final long f68609a;

        /* renamed from: b */
        public final long f68610b;

        /* renamed from: c */
        public boolean f68611c;

        /* renamed from: d */
        public C24680c f68612d;

        /* renamed from: e */
        public C24550a f68613e;

        public C24550a(long j, int i) {
            this.f68609a = j;
            this.f68610b = j + i;
        }

        /* renamed from: a */
        public int m4930a(long j) {
            return ((int) (j - this.f68609a)) + this.f68612d.f69164b;
        }
    }

    public C24549u(AbstractC24690d abstractC24690d) {
        this.f68602a = abstractC24690d;
        int i = ((C24743o) abstractC24690d).f69338b;
        this.f68603b = i;
        C24550a c24550a = new C24550a(0L, i);
        this.f68605d = c24550a;
        this.f68606e = c24550a;
        this.f68607f = c24550a;
    }

    /* renamed from: a */
    public void m4935a(long j) {
        C24550a c24550a;
        if (j == -1) {
            return;
        }
        while (true) {
            c24550a = this.f68605d;
            if (j < c24550a.f68610b) {
                break;
            }
            AbstractC24690d abstractC24690d = this.f68602a;
            C24680c c24680c = c24550a.f68612d;
            C24743o c24743o = (C24743o) abstractC24690d;
            synchronized (c24743o) {
                C24680c[] c24680cArr = c24743o.f69339c;
                c24680cArr[0] = c24680c;
                c24743o.m4684a(c24680cArr);
            }
            C24550a c24550a2 = this.f68605d;
            c24550a2.f68612d = null;
            C24550a c24550a3 = c24550a2.f68613e;
            c24550a2.f68613e = null;
            this.f68605d = c24550a3;
        }
        if (this.f68606e.f68609a >= c24550a.f68609a) {
            return;
        }
        this.f68606e = c24550a;
    }

    /* renamed from: b */
    public final void m4934b(int i) {
        long j = this.f68608g + i;
        this.f68608g = j;
        C24550a c24550a = this.f68607f;
        if (j == c24550a.f68610b) {
            this.f68607f = c24550a.f68613e;
        }
    }

    /* renamed from: c */
    public final int m4933c(int i) {
        C24680c c24680c;
        C24550a c24550a = this.f68607f;
        if (!c24550a.f68611c) {
            C24743o c24743o = (C24743o) this.f68602a;
            synchronized (c24743o) {
                c24743o.f69341e++;
                int i2 = c24743o.f69342f;
                if (i2 > 0) {
                    C24680c[] c24680cArr = c24743o.f69343g;
                    int i3 = i2 - 1;
                    c24743o.f69342f = i3;
                    c24680c = c24680cArr[i3];
                    c24680cArr[i3] = null;
                } else {
                    c24680c = new C24680c(new byte[c24743o.f69338b], 0);
                }
            }
            C24550a c24550a2 = new C24550a(this.f68607f.f68610b, this.f68603b);
            c24550a.f68612d = c24680c;
            c24550a.f68613e = c24550a2;
            c24550a.f68611c = true;
        }
        return Math.min(i, (int) (this.f68607f.f68610b - this.f68608g));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* renamed from: d */
    public final void m4932d(long j, ByteBuffer byteBuffer, int i) {
        char c;
        int i2;
        while (true) {
            C24550a c24550a = this.f68606e;
            c = j;
            i2 = i;
            if (j >= c24550a.f68610b) {
                this.f68606e = c24550a.f68613e;
            }
        }
        while (i2 > 0) {
            int min = Math.min(i2, (int) (this.f68606e.f68610b - c));
            C24550a c24550a2 = this.f68606e;
            byteBuffer.put(c24550a2.f68612d.f69163a, c24550a2.m4930a(c), min);
            int i3 = i2 - min;
            ?? r0 = c + min;
            C24550a c24550a3 = this.f68606e;
            c = r0;
            i2 = i3;
            if (r0 == c24550a3.f68610b) {
                this.f68606e = c24550a3.f68613e;
                c = r0;
                i2 = i3;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r0v9, types: [e.m.a.c.l1.u$a] */
    /* JADX WARN: Type inference failed for: r7v0, types: [long] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* renamed from: e */
    public final void m4931e(long j, byte[] bArr, int i) {
        while (true) {
            C24550a c24550a = this.f68606e;
            if (j < c24550a.f68610b) {
                break;
            }
            this.f68606e = c24550a.f68613e;
        }
        int i2 = i;
        while (i2 > 0) {
            int min = Math.min(i2, (int) (this.f68606e.f68610b - j));
            ?? r0 = this.f68606e;
            System.arraycopy(r0.f68612d.f69163a, r0.m4930a(j), bArr, i - i2, min);
            int i3 = i2 - min;
            ?? r02 = j + min;
            C24550a c24550a2 = this.f68606e;
            i2 = i3;
            j = r02;
            if (r02 == c24550a2.f68610b) {
                this.f68606e = c24550a2.f68613e;
                i2 = i3;
                j = r02;
            }
        }
    }
}
