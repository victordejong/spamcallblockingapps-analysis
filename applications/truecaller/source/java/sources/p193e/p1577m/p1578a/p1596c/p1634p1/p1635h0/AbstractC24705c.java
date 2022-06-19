package p193e.p1577m.p1578a.p1596c.p1634p1.p1635h0;

import java.io.File;
import java.io.IOException;
import java.util.NavigableSet;
/* renamed from: e.m.a.c.p1.h0.c */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/p1/h0/c.class */
public interface AbstractC24705c {

    /* renamed from: e.m.a.c.p1.h0.c$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/p1/h0/c$a.class */
    public static class C24706a extends IOException {
        public C24706a(String str) {
            super(str);
        }

        public C24706a(String str, Throwable th) {
            super(str, th);
        }

        public C24706a(Throwable th) {
            super(th);
        }
    }

    /* renamed from: e.m.a.c.p1.h0.c$b */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/p1/h0/c$b.class */
    public interface AbstractC24707b {
        /* renamed from: a */
        void mo4717a(AbstractC24705c abstractC24705c, C24718l c24718l);

        /* renamed from: d */
        void mo4714d(AbstractC24705c abstractC24705c, C24718l c24718l);

        /* renamed from: e */
        void mo4713e(AbstractC24705c abstractC24705c, C24718l c24718l, C24718l c24718l2);
    }

    /* renamed from: a */
    AbstractC24728q mo4711a(String str);

    /* renamed from: b */
    void mo4710b(String str, C24729r c24729r) throws C24706a;

    /* renamed from: c */
    void mo4709c(C24718l c24718l) throws C24706a;

    /* renamed from: d */
    C24718l mo4708d(String str, long j) throws InterruptedException, C24706a;

    /* renamed from: e */
    File mo4707e(String str, long j, long j2) throws C24706a;

    /* renamed from: f */
    long mo4706f(String str, long j, long j2);

    /* renamed from: g */
    long mo4705g();

    /* renamed from: h */
    void mo4704h(C24718l c24718l);

    /* renamed from: i */
    C24718l mo4703i(String str, long j) throws C24706a;

    /* renamed from: j */
    void mo4702j(File file, long j) throws C24706a;

    /* renamed from: k */
    NavigableSet<C24718l> mo4701k(String str);
}
