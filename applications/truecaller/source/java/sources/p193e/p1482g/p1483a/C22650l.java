package p193e.p1482g.p1483a;

import java.security.PrivilegedAction;
import java.util.concurrent.Callable;
import p1727n3.p1789g0.C26232y;
/* renamed from: e.g.a.l */
/* loaded from: classes-dex2jar.jar:e/g/a/l.class */
public final class C22650l {

    /* renamed from: a */
    public static EnumC22653c f62699a;

    /* renamed from: b */
    public static final AbstractC22658n f62700b = new C22651a();

    /* renamed from: e.g.a.l$a */
    /* loaded from: classes-dex2jar.jar:e/g/a/l$a.class */
    public static final class C22651a implements AbstractC22658n {
        @Override // p193e.p1482g.p1483a.AbstractC22658n
        /* renamed from: clone */
        public AbstractC22658n mo49518clone() {
            return this;
        }

        @Override // p193e.p1482g.p1483a.AbstractC22658n
        /* renamed from: clone */
        public Object mo49518clone() throws CloneNotSupportedException {
            return this;
        }

        @Override // p193e.p1482g.p1483a.AbstractC22658n
        /* renamed from: d */
        public int mo7983d(int i) {
            return C26232y.m2340j1(i);
        }
    }

    /* renamed from: e.g.a.l$b */
    /* loaded from: classes-dex2jar.jar:e/g/a/l$b.class */
    public static final class C22652b implements PrivilegedAction<String> {
        @Override // java.security.PrivilegedAction
        public String run() {
            return System.getProperty("hppc.bitmixer");
        }
    }

    /* renamed from: e.g.a.l$c */
    /* loaded from: classes-dex2jar.jar:e/g/a/l$c.class */
    public static abstract class EnumC22653c extends Enum<EnumC22653c> implements Callable<AbstractC22658n> {

        /* renamed from: a */
        public static final EnumC22653c f62701a;

        /* renamed from: b */
        public static final EnumC22653c f62702b;

        /* renamed from: c */
        public static final EnumC22653c f62703c;

        /* renamed from: d */
        public static final /* synthetic */ EnumC22653c[] f62704d;

        /* renamed from: e.g.a.l$c$a */
        /* loaded from: classes-dex2jar.jar:e/g/a/l$c$a.class */
        public static final class C22654a extends EnumC22653c {
            public C22654a(String str, int i) {
                super(str, i, null);
            }

            @Override // java.util.concurrent.Callable
            public AbstractC22658n call() throws Exception {
                return C22662q.f62718b;
            }
        }

        /* renamed from: e.g.a.l$c$b */
        /* loaded from: classes-dex2jar.jar:e/g/a/l$c$b.class */
        public static final class C22655b extends EnumC22653c {
            public C22655b(String str, int i) {
                super(str, i, null);
            }

            @Override // java.util.concurrent.Callable
            public /* bridge */ /* synthetic */ AbstractC22658n call() throws Exception {
                return C22650l.f62700b;
            }
        }

        /* renamed from: e.g.a.l$c$c */
        /* loaded from: classes-dex2jar.jar:e/g/a/l$c$c.class */
        public static final class C22656c extends EnumC22653c {
            public C22656c(String str, int i) {
                super(str, i, null);
            }

            @Override // java.util.concurrent.Callable
            public AbstractC22658n call() throws Exception {
                return new C22657m();
            }
        }

        static {
            C22654a c22654a = new C22654a("RANDOM", 0);
            f62701a = c22654a;
            C22655b c22655b = new C22655b("DETERMINISTIC", 1);
            f62702b = c22655b;
            C22656c c22656c = new C22656c("NONE", 2);
            f62703c = c22656c;
            f62704d = new EnumC22653c[]{c22654a, c22655b, c22656c};
        }

        public EnumC22653c(String str, int i, C22651a c22651a) {
            super(str, i);
        }

        public static EnumC22653c valueOf(String str) {
            return (EnumC22653c) Enum.valueOf(EnumC22653c.class, str);
        }

        public static EnumC22653c[] values() {
            return (EnumC22653c[]) f62704d.clone();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0034, code lost:
        p193e.p1482g.p1483a.C22650l.f62699a = r0;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p193e.p1482g.p1483a.AbstractC22658n m7990a() {
        /*
            e.g.a.l$c r0 = p193e.p1482g.p1483a.C22650l.f62699a
            if (r0 != 0) goto L5f
            e.g.a.l$b r0 = new e.g.a.l$b     // Catch: java.lang.SecurityException -> L41
            r5 = r0
            r0 = r5
            r0.<init>()     // Catch: java.lang.SecurityException -> L41
            r0 = r5
            java.lang.Object r0 = java.security.AccessController.doPrivileged(r0)     // Catch: java.lang.SecurityException -> L41
            java.lang.String r0 = (java.lang.String) r0     // Catch: java.lang.SecurityException -> L41
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L53
            e.g.a.l$c[] r0 = p193e.p1482g.p1483a.C22650l.EnumC22653c.values()     // Catch: java.lang.SecurityException -> L41
            r6 = r0
            r0 = 0
            r7 = r0
        L20:
            r0 = r7
            r1 = 3
            if (r0 >= r1) goto L53
            r0 = r6
            r1 = r7
            r0 = r0[r1]
            r8 = r0
            r0 = r8
            java.lang.String r0 = r0.name()     // Catch: java.lang.SecurityException -> L41
            r1 = r5
            boolean r0 = r0.equalsIgnoreCase(r1)     // Catch: java.lang.SecurityException -> L41
            if (r0 == 0) goto L3b
            r0 = r8
            p193e.p1482g.p1483a.C22650l.f62699a = r0     // Catch: java.lang.SecurityException -> L41
            goto L53
        L3b:
            int r7 = r7 + 1
            goto L20
        L41:
            r5 = move-exception
            java.lang.Class<e.g.a.j> r0 = p193e.p1482g.p1483a.C22648j.class
            java.lang.String r0 = r0.getName()
            java.util.logging.Logger r0 = java.util.logging.Logger.getLogger(r0)
            java.util.logging.Level r1 = java.util.logging.Level.INFO
            java.lang.String r2 = "Failed to read 'tests.seed' property for initial random seed."
            r3 = r5
            r0.log(r1, r2, r3)
        L53:
            e.g.a.l$c r0 = p193e.p1482g.p1483a.C22650l.f62699a
            if (r0 != 0) goto L5f
            e.g.a.l$c r0 = p193e.p1482g.p1483a.C22650l.EnumC22653c.f62701a
            p193e.p1482g.p1483a.C22650l.f62699a = r0
        L5f:
            e.g.a.l$c r0 = p193e.p1482g.p1483a.C22650l.f62699a     // Catch: java.lang.Exception -> L6d
            java.lang.Object r0 = r0.call()     // Catch: java.lang.Exception -> L6d
            e.g.a.n r0 = (p193e.p1482g.p1483a.AbstractC22658n) r0     // Catch: java.lang.Exception -> L6d
            r5 = r0
            r0 = r5
            return r0
        L6d:
            r5 = move-exception
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r1 = r0
            r2 = r5
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1482g.p1483a.C22650l.m7990a():e.g.a.n");
    }
}
