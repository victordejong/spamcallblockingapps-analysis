package kotlin.reflect.jvm.internal.impl.p539b.p542c;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import kotlin.reflect.jvm.internal.impl.p539b.C18702a;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19669b;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19673d;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19708r;
import kotlin.reflect.jvm.internal.impl.protobuf.C19676e;
import kotlin.reflect.jvm.internal.impl.protobuf.C19678f;
import kotlin.reflect.jvm.internal.impl.protobuf.C19692j;
import kotlin.reflect.jvm.internal.impl.protobuf.C19728x;
import kotlin.reflect.jvm.internal.impl.protobuf.CodedOutputStream;
import kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException;
/* renamed from: kotlin.reflect.jvm.internal.impl.b.c.a */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/c/a.class */
public final class C18827a {

    /* renamed from: a */
    public static final AbstractC19683h.C19690e<C18702a.C18720c, C18832b> f64328a = AbstractC19683h.m1705a(C18702a.C18720c.m3565a(), C18832b.m3015a(), C18832b.m3015a(), 100, C19728x.EnumC19730a.MESSAGE, C18832b.class);

    /* renamed from: b */
    public static final AbstractC19683h.C19690e<C18702a.C18741h, C18832b> f64329b = AbstractC19683h.m1705a(C18702a.C18741h.m3472a(), C18832b.m3015a(), C18832b.m3015a(), 100, C19728x.EnumC19730a.MESSAGE, C18832b.class);

    /* renamed from: c */
    public static final AbstractC19683h.C19690e<C18702a.C18741h, Integer> f64330c = AbstractC19683h.m1705a(C18702a.C18741h.m3472a(), 0, (AbstractC19705p) null, 101, C19728x.EnumC19730a.INT32, Integer.class);

    /* renamed from: d */
    public static final AbstractC19683h.C19690e<C18702a.C18754m, C18835c> f64331d = AbstractC19683h.m1705a(C18702a.C18754m.m3377a(), C18835c.m2996a(), C18835c.m2996a(), 100, C19728x.EnumC19730a.MESSAGE, C18835c.class);

    /* renamed from: e */
    public static final AbstractC19683h.C19690e<C18702a.C18754m, Integer> f64332e = AbstractC19683h.m1705a(C18702a.C18754m.m3377a(), 0, (AbstractC19705p) null, 101, C19728x.EnumC19730a.INT32, Integer.class);

    /* renamed from: f */
    public static final AbstractC19683h.C19690e<C18702a.C18768p, List<C18702a.C18704a>> f64333f = AbstractC19683h.m1704a(C18702a.C18768p.m3289a(), C18702a.C18704a.m3702a(), 100, C19728x.EnumC19730a.MESSAGE, C18702a.C18704a.class);

    /* renamed from: g */
    public static final AbstractC19683h.C19690e<C18702a.C18768p, Boolean> f64334g = AbstractC19683h.m1705a(C18702a.C18768p.m3289a(), Boolean.FALSE, (AbstractC19705p) null, 101, C19728x.EnumC19730a.BOOL, Boolean.class);

    /* renamed from: h */
    public static final AbstractC19683h.C19690e<C18702a.C18779r, List<C18702a.C18704a>> f64335h = AbstractC19683h.m1704a(C18702a.C18779r.m3180a(), C18702a.C18704a.m3702a(), 100, C19728x.EnumC19730a.MESSAGE, C18702a.C18704a.class);

    /* renamed from: i */
    public static final AbstractC19683h.C19690e<C18702a.C18715b, Integer> f64336i = AbstractC19683h.m1705a(C18702a.C18715b.m3624a(), 0, (AbstractC19705p) null, 101, C19728x.EnumC19730a.INT32, Integer.class);

    /* renamed from: j */
    public static final AbstractC19683h.C19690e<C18702a.C18715b, List<C18702a.C18754m>> f64337j = AbstractC19683h.m1704a(C18702a.C18715b.m3624a(), C18702a.C18754m.m3377a(), 102, C19728x.EnumC19730a.MESSAGE, C18702a.C18754m.class);

    /* renamed from: k */
    public static final AbstractC19683h.C19690e<C18702a.C18715b, Integer> f64338k = AbstractC19683h.m1705a(C18702a.C18715b.m3624a(), 0, (AbstractC19705p) null, 103, C19728x.EnumC19730a.INT32, Integer.class);

    /* renamed from: l */
    public static final AbstractC19683h.C19690e<C18702a.C18715b, Integer> f64339l = AbstractC19683h.m1705a(C18702a.C18715b.m3624a(), 0, (AbstractC19705p) null, 104, C19728x.EnumC19730a.INT32, Integer.class);

    /* renamed from: m */
    public static final AbstractC19683h.C19690e<C18702a.C18748k, Integer> f64340m = AbstractC19683h.m1705a(C18702a.C18748k.m3426a(), 0, (AbstractC19705p) null, 101, C19728x.EnumC19730a.INT32, Integer.class);

    /* renamed from: n */
    public static final AbstractC19683h.C19690e<C18702a.C18748k, List<C18702a.C18754m>> f64341n = AbstractC19683h.m1704a(C18702a.C18748k.m3426a(), C18702a.C18754m.m3377a(), 102, C19728x.EnumC19730a.MESSAGE, C18702a.C18754m.class);

    /* renamed from: kotlin.reflect.jvm.internal.impl.b.c.a$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/c/a$a.class */
    public static final class C18829a extends AbstractC19683h implements AbstractC18860b {

        /* renamed from: a */
        public static AbstractC19708r<C18829a> f64342a = new AbstractC19669b<C18829a>() { // from class: kotlin.reflect.jvm.internal.impl.b.c.a.a.1
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19708r
            /* renamed from: a */
            public final /* synthetic */ Object mo1651a(C19676e c19676e, C19678f c19678f) throws InvalidProtocolBufferException {
                return new C18829a(c19676e, c19678f);
            }
        };

        /* renamed from: d */
        private static final C18829a f64343d;

        /* renamed from: b */
        public int f64344b;

        /* renamed from: c */
        public int f64345c;

        /* renamed from: e */
        private final AbstractC19673d f64346e;

        /* renamed from: f */
        private int f64347f;

        /* renamed from: g */
        private byte f64348g;

        /* renamed from: h */
        private int f64349h;

        /* renamed from: kotlin.reflect.jvm.internal.impl.b.c.a$a$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/c/a$a$a.class */
        public static final class C18831a extends AbstractC19683h.AbstractC19685a<C18829a, C18831a> implements AbstractC18860b {

            /* renamed from: b */
            private int f64350b;

            /* renamed from: c */
            private int f64351c;

            /* renamed from: d */
            private int f64352d;

            private C18831a() {
            }

            /* renamed from: a */
            private C18831a m3022a(int i) {
                this.f64350b |= 1;
                this.f64351c = i;
                return this;
            }

            /* renamed from: b */
            private C18831a m3020b(int i) {
                this.f64350b |= 2;
                this.f64352d = i;
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0034  */
            /* renamed from: c */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public kotlin.reflect.jvm.internal.impl.p539b.p542c.C18827a.C18829a.C18831a mo1657b(kotlin.reflect.jvm.internal.impl.protobuf.C19676e r5, kotlin.reflect.jvm.internal.impl.protobuf.C19678f r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    kotlin.reflect.jvm.internal.impl.protobuf.r<kotlin.reflect.jvm.internal.impl.b.c.a$a> r0 = kotlin.reflect.jvm.internal.impl.p539b.p542c.C18827a.C18829a.f64342a     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.mo1651a(r1, r2)     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                    kotlin.reflect.jvm.internal.impl.b.c.a$a r0 = (kotlin.reflect.jvm.internal.impl.p539b.p542c.C18827a.C18829a) r0     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                    r5 = r0
                    r0 = r4
                    r1 = r5
                    kotlin.reflect.jvm.internal.impl.b.c.a$a$a r0 = r0.mo1702a(r1)
                    r0 = r4
                    return r0
                L18:
                    r6 = move-exception
                    r0 = r7
                    r5 = r0
                    goto L30
                L1e:
                    r5 = move-exception
                    r0 = r5
                    kotlin.reflect.jvm.internal.impl.protobuf.p r0 = r0.f65795a     // Catch: java.lang.Throwable -> L18
                    kotlin.reflect.jvm.internal.impl.b.c.a$a r0 = (kotlin.reflect.jvm.internal.impl.p539b.p542c.C18827a.C18829a) r0     // Catch: java.lang.Throwable -> L18
                    r6 = r0
                    r0 = r5
                    throw r0     // Catch: java.lang.Throwable -> L29
                L29:
                    r5 = move-exception
                    r0 = r6
                    r7 = r0
                    r0 = r5
                    r6 = r0
                    r0 = r7
                    r5 = r0
                L30:
                    r0 = r5
                    if (r0 == 0) goto L3a
                    r0 = r4
                    r1 = r5
                    kotlin.reflect.jvm.internal.impl.b.c.a$a$a r0 = r0.mo1702a(r1)
                L3a:
                    r0 = r6
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.p539b.p542c.C18827a.C18829a.C18831a.mo1657b(kotlin.reflect.jvm.internal.impl.protobuf.e, kotlin.reflect.jvm.internal.impl.protobuf.f):kotlin.reflect.jvm.internal.impl.b.c.a$a$a");
            }

            /* renamed from: g */
            static /* synthetic */ C18831a m3017g() {
                return new C18831a();
            }

            /* renamed from: h */
            public C18831a clone() {
                return new C18831a().mo1702a(m3018f());
            }

            /* renamed from: a */
            public final C18831a mo1702a(C18829a c18829a) {
                if (c18829a == C18829a.m3038a()) {
                    return this;
                }
                if (c18829a.m3028c()) {
                    m3022a(c18829a.f64344b);
                }
                if (c18829a.m3025d()) {
                    m3020b(c18829a.f64345c);
                }
                this.f65839a = this.f65839a.m1769a(c18829a.f64346e);
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h.AbstractC19685a
            /* renamed from: a */
            public final /* bridge */ /* synthetic */ C18829a mo1703a() {
                return C18829a.m3038a();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p.AbstractC19706a
            /* renamed from: d */
            public final /* synthetic */ AbstractC19705p mo1656d() {
                C18829a m3018f = m3018f();
                if (m3018f.mo1655e()) {
                    return m3018f;
                }
                throw m1778a((AbstractC19705p) m3018f);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
            /* renamed from: e */
            public final boolean mo1655e() {
                return true;
            }

            /* renamed from: f */
            public final C18829a m3018f() {
                C18829a c18829a = new C18829a(this);
                int i = this.f64350b;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                c18829a.f64344b = this.f64351c;
                int i3 = i2;
                if ((i & 2) == 2) {
                    i3 = i2 | 2;
                }
                c18829a.f64345c = this.f64352d;
                c18829a.f64347f = i3;
                return c18829a;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h.AbstractC19685a, kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
            /* renamed from: j */
            public final /* synthetic */ AbstractC19705p mo1654j() {
                return C18829a.m3038a();
            }
        }

        static {
            C18829a c18829a = new C18829a(true);
            f64343d = c18829a;
            c18829a.m3023k();
        }

        private C18829a(C19676e c19676e, C19678f c19678f) throws InvalidProtocolBufferException {
            this.f64348g = (byte) (-1);
            this.f64349h = -1;
            m3023k();
            AbstractC19673d.C19675b m1763h = AbstractC19673d.m1763h();
            CodedOutputStream m1823a = CodedOutputStream.m1823a(m1763h, 1);
            boolean z = false;
            while (!z) {
                try {
                    try {
                        int m1759a = c19676e.m1759a();
                        if (m1759a != 0) {
                            if (m1759a == 8) {
                                this.f64347f |= 1;
                                this.f64344b = c19676e.m1748d();
                            } else if (m1759a == 16) {
                                this.f64347f |= 2;
                                this.f64345c = c19676e.m1748d();
                            } else if (!mo1695a(c19676e, m1823a, c19678f, m1759a)) {
                            }
                        }
                        z = true;
                    } catch (Throwable th) {
                        try {
                            m1823a.m1832a();
                        } catch (IOException e) {
                        } catch (Throwable th2) {
                            this.f64346e = m1763h.m1762a();
                            throw th2;
                        }
                        this.f64346e = m1763h.m1762a();
                        mo1688w();
                        throw th;
                    }
                } catch (InvalidProtocolBufferException e2) {
                    e2.f65795a = this;
                    throw e2;
                } catch (IOException e3) {
                    InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e3.getMessage());
                    invalidProtocolBufferException.f65795a = this;
                    throw invalidProtocolBufferException;
                }
            }
            try {
                m1823a.m1832a();
            } catch (IOException e4) {
            } catch (Throwable th3) {
                this.f64346e = m1763h.m1762a();
                throw th3;
            }
            this.f64346e = m1763h.m1762a();
            mo1688w();
        }

        private C18829a(AbstractC19683h.AbstractC19685a abstractC19685a) {
            super(abstractC19685a);
            this.f64348g = (byte) (-1);
            this.f64349h = -1;
            this.f64346e = abstractC19685a.f65839a;
        }

        private C18829a(boolean z) {
            this.f64348g = (byte) (-1);
            this.f64349h = -1;
            this.f64346e = AbstractC19673d.f65805b;
        }

        /* renamed from: a */
        public static C18831a m3036a(C18829a c18829a) {
            return C18831a.m3017g().mo1702a(c18829a);
        }

        /* renamed from: a */
        public static C18829a m3038a() {
            return f64343d;
        }

        /* renamed from: k */
        private void m3023k() {
            this.f64344b = 0;
            this.f64345c = 0;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: a */
        public final void mo1662a(CodedOutputStream codedOutputStream) throws IOException {
            mo1660f();
            if ((this.f64347f & 1) == 1) {
                codedOutputStream.m1827a(1, this.f64344b);
            }
            if ((this.f64347f & 2) == 2) {
                codedOutputStream.m1827a(2, this.f64345c);
            }
            codedOutputStream.m1796d(this.f64346e);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h, kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: b */
        public final AbstractC19708r<C18829a> mo1661b() {
            return f64342a;
        }

        /* renamed from: c */
        public final boolean m3028c() {
            return (this.f64347f & 1) == 1;
        }

        /* renamed from: d */
        public final boolean m3025d() {
            return (this.f64347f & 2) == 2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
        /* renamed from: e */
        public final boolean mo1655e() {
            byte b = this.f64348g;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.f64348g = (byte) 1;
            return true;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: f */
        public final int mo1660f() {
            int i = this.f64349h;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            if ((this.f64347f & 1) == 1) {
                i2 = 0 + CodedOutputStream.m1803c(1, this.f64344b);
            }
            int i3 = i2;
            if ((this.f64347f & 2) == 2) {
                i3 = i2 + CodedOutputStream.m1803c(2, this.f64345c);
            }
            int mo1649a = i3 + this.f64346e.mo1649a();
            this.f64349h = mo1649a;
            return mo1649a;
        }

        /* renamed from: g */
        public final C18831a mo1659h() {
            return C18831a.m3017g().mo1702a(this);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: i */
        public final /* synthetic */ AbstractC19705p.AbstractC19706a mo1658i() {
            return C18831a.m3017g();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
        /* renamed from: j */
        public final /* bridge */ /* synthetic */ AbstractC19705p mo1654j() {
            return f64343d;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.b.c.a$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/c/a$b.class */
    public static final class C18832b extends AbstractC19683h implements AbstractC18861c {

        /* renamed from: a */
        public static AbstractC19708r<C18832b> f64353a = new AbstractC19669b<C18832b>() { // from class: kotlin.reflect.jvm.internal.impl.b.c.a.b.1
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19708r
            /* renamed from: a */
            public final /* synthetic */ Object mo1651a(C19676e c19676e, C19678f c19678f) throws InvalidProtocolBufferException {
                return new C18832b(c19676e, c19678f);
            }
        };

        /* renamed from: d */
        private static final C18832b f64354d;

        /* renamed from: b */
        public int f64355b;

        /* renamed from: c */
        public int f64356c;

        /* renamed from: e */
        private final AbstractC19673d f64357e;

        /* renamed from: f */
        private int f64358f;

        /* renamed from: g */
        private byte f64359g;

        /* renamed from: h */
        private int f64360h;

        /* renamed from: kotlin.reflect.jvm.internal.impl.b.c.a$b$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/c/a$b$a.class */
        public static final class C18834a extends AbstractC19683h.AbstractC19685a<C18832b, C18834a> implements AbstractC18861c {

            /* renamed from: b */
            private int f64361b;

            /* renamed from: c */
            private int f64362c;

            /* renamed from: d */
            private int f64363d;

            private C18834a() {
            }

            /* renamed from: a */
            private C18834a m3003a(int i) {
                this.f64361b |= 1;
                this.f64362c = i;
                return this;
            }

            /* renamed from: b */
            private C18834a m3001b(int i) {
                this.f64361b |= 2;
                this.f64363d = i;
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
            /* renamed from: c */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public kotlin.reflect.jvm.internal.impl.p539b.p542c.C18827a.C18832b.C18834a mo1657b(kotlin.reflect.jvm.internal.impl.protobuf.C19676e r5, kotlin.reflect.jvm.internal.impl.protobuf.C19678f r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    kotlin.reflect.jvm.internal.impl.protobuf.r<kotlin.reflect.jvm.internal.impl.b.c.a$b> r0 = kotlin.reflect.jvm.internal.impl.p539b.p542c.C18827a.C18832b.f64353a     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.mo1651a(r1, r2)     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                    kotlin.reflect.jvm.internal.impl.b.c.a$b r0 = (kotlin.reflect.jvm.internal.impl.p539b.p542c.C18827a.C18832b) r0     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                    r5 = r0
                    r0 = r4
                    r1 = r5
                    kotlin.reflect.jvm.internal.impl.b.c.a$b$a r0 = r0.mo1702a(r1)
                    r0 = r4
                    return r0
                L18:
                    r5 = move-exception
                    r0 = r7
                    r6 = r0
                    goto L2a
                L1e:
                    r5 = move-exception
                    r0 = r5
                    kotlin.reflect.jvm.internal.impl.protobuf.p r0 = r0.f65795a     // Catch: java.lang.Throwable -> L18
                    kotlin.reflect.jvm.internal.impl.b.c.a$b r0 = (kotlin.reflect.jvm.internal.impl.p539b.p542c.C18827a.C18832b) r0     // Catch: java.lang.Throwable -> L18
                    r6 = r0
                    r0 = r5
                    throw r0     // Catch: java.lang.Throwable -> L29
                L29:
                    r5 = move-exception
                L2a:
                    r0 = r6
                    if (r0 == 0) goto L34
                    r0 = r4
                    r1 = r6
                    kotlin.reflect.jvm.internal.impl.b.c.a$b$a r0 = r0.mo1702a(r1)
                L34:
                    r0 = r5
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.p539b.p542c.C18827a.C18832b.C18834a.mo1657b(kotlin.reflect.jvm.internal.impl.protobuf.e, kotlin.reflect.jvm.internal.impl.protobuf.f):kotlin.reflect.jvm.internal.impl.b.c.a$b$a");
            }

            /* renamed from: g */
            static /* synthetic */ C18834a m2998g() {
                return new C18834a();
            }

            /* renamed from: h */
            public C18834a clone() {
                return new C18834a().mo1702a(m2999f());
            }

            /* renamed from: a */
            public final C18834a mo1702a(C18832b c18832b) {
                if (c18832b == C18832b.m3015a()) {
                    return this;
                }
                if (c18832b.m3008c()) {
                    m3003a(c18832b.f64355b);
                }
                if (c18832b.m3006d()) {
                    m3001b(c18832b.f64356c);
                }
                this.f65839a = this.f65839a.m1769a(c18832b.f64357e);
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h.AbstractC19685a
            /* renamed from: a */
            public final /* bridge */ /* synthetic */ C18832b mo1703a() {
                return C18832b.m3015a();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p.AbstractC19706a
            /* renamed from: d */
            public final /* synthetic */ AbstractC19705p mo1656d() {
                C18832b m2999f = m2999f();
                if (m2999f.mo1655e()) {
                    return m2999f;
                }
                throw m1778a((AbstractC19705p) m2999f);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
            /* renamed from: e */
            public final boolean mo1655e() {
                return true;
            }

            /* renamed from: f */
            public final C18832b m2999f() {
                C18832b c18832b = new C18832b(this);
                int i = this.f64361b;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                c18832b.f64355b = this.f64362c;
                int i3 = i2;
                if ((i & 2) == 2) {
                    i3 = i2 | 2;
                }
                c18832b.f64356c = this.f64363d;
                c18832b.f64358f = i3;
                return c18832b;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h.AbstractC19685a, kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
            /* renamed from: j */
            public final /* synthetic */ AbstractC19705p mo1654j() {
                return C18832b.m3015a();
            }
        }

        static {
            C18832b c18832b = new C18832b(true);
            f64354d = c18832b;
            c18832b.m3004k();
        }

        private C18832b(C19676e c19676e, C19678f c19678f) throws InvalidProtocolBufferException {
            this.f64359g = (byte) (-1);
            this.f64360h = -1;
            m3004k();
            AbstractC19673d.C19675b m1763h = AbstractC19673d.m1763h();
            CodedOutputStream m1823a = CodedOutputStream.m1823a(m1763h, 1);
            boolean z = false;
            while (!z) {
                try {
                    try {
                        int m1759a = c19676e.m1759a();
                        if (m1759a != 0) {
                            if (m1759a == 8) {
                                this.f64358f |= 1;
                                this.f64355b = c19676e.m1748d();
                            } else if (m1759a == 16) {
                                this.f64358f |= 2;
                                this.f64356c = c19676e.m1748d();
                            } else if (!mo1695a(c19676e, m1823a, c19678f, m1759a)) {
                            }
                        }
                        z = true;
                    } catch (Throwable th) {
                        try {
                            m1823a.m1832a();
                        } catch (IOException e) {
                        } catch (Throwable th2) {
                            this.f64357e = m1763h.m1762a();
                            throw th2;
                        }
                        this.f64357e = m1763h.m1762a();
                        mo1688w();
                        throw th;
                    }
                } catch (InvalidProtocolBufferException e2) {
                    e2.f65795a = this;
                    throw e2;
                } catch (IOException e3) {
                    InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e3.getMessage());
                    invalidProtocolBufferException.f65795a = this;
                    throw invalidProtocolBufferException;
                }
            }
            try {
                m1823a.m1832a();
            } catch (IOException e4) {
            } catch (Throwable th3) {
                this.f64357e = m1763h.m1762a();
                throw th3;
            }
            this.f64357e = m1763h.m1762a();
            mo1688w();
        }

        private C18832b(AbstractC19683h.AbstractC19685a abstractC19685a) {
            super(abstractC19685a);
            this.f64359g = (byte) (-1);
            this.f64360h = -1;
            this.f64357e = abstractC19685a.f65839a;
        }

        private C18832b(boolean z) {
            this.f64359g = (byte) (-1);
            this.f64360h = -1;
            this.f64357e = AbstractC19673d.f65805b;
        }

        /* renamed from: a */
        public static C18834a m3012a(C18832b c18832b) {
            return C18834a.m2998g().mo1702a(c18832b);
        }

        /* renamed from: a */
        public static C18832b m3015a() {
            return f64354d;
        }

        /* renamed from: k */
        private void m3004k() {
            this.f64355b = 0;
            this.f64356c = 0;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: a */
        public final void mo1662a(CodedOutputStream codedOutputStream) throws IOException {
            mo1660f();
            if ((this.f64358f & 1) == 1) {
                codedOutputStream.m1827a(1, this.f64355b);
            }
            if ((this.f64358f & 2) == 2) {
                codedOutputStream.m1827a(2, this.f64356c);
            }
            codedOutputStream.m1796d(this.f64357e);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h, kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: b */
        public final AbstractC19708r<C18832b> mo1661b() {
            return f64353a;
        }

        /* renamed from: c */
        public final boolean m3008c() {
            return (this.f64358f & 1) == 1;
        }

        /* renamed from: d */
        public final boolean m3006d() {
            return (this.f64358f & 2) == 2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
        /* renamed from: e */
        public final boolean mo1655e() {
            byte b = this.f64359g;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.f64359g = (byte) 1;
            return true;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: f */
        public final int mo1660f() {
            int i = this.f64360h;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            if ((this.f64358f & 1) == 1) {
                i2 = 0 + CodedOutputStream.m1803c(1, this.f64355b);
            }
            int i3 = i2;
            if ((this.f64358f & 2) == 2) {
                i3 = i2 + CodedOutputStream.m1803c(2, this.f64356c);
            }
            int mo1649a = i3 + this.f64357e.mo1649a();
            this.f64360h = mo1649a;
            return mo1649a;
        }

        /* renamed from: g */
        public final C18834a mo1659h() {
            return C18834a.m2998g().mo1702a(this);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: i */
        public final /* synthetic */ AbstractC19705p.AbstractC19706a mo1658i() {
            return C18834a.m2998g();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
        /* renamed from: j */
        public final /* bridge */ /* synthetic */ AbstractC19705p mo1654j() {
            return f64354d;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.b.c.a$c */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/c/a$c.class */
    public static final class C18835c extends AbstractC19683h implements AbstractC18862d {

        /* renamed from: a */
        public static AbstractC19708r<C18835c> f64364a = new AbstractC19669b<C18835c>() { // from class: kotlin.reflect.jvm.internal.impl.b.c.a.c.1
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19708r
            /* renamed from: a */
            public final /* synthetic */ Object mo1651a(C19676e c19676e, C19678f c19678f) throws InvalidProtocolBufferException {
                return new C18835c(c19676e, c19678f);
            }
        };

        /* renamed from: f */
        private static final C18835c f64365f;

        /* renamed from: b */
        public C18829a f64366b;

        /* renamed from: c */
        public C18832b f64367c;

        /* renamed from: d */
        public C18832b f64368d;

        /* renamed from: e */
        public C18832b f64369e;

        /* renamed from: g */
        private final AbstractC19673d f64370g;

        /* renamed from: h */
        private int f64371h;

        /* renamed from: i */
        private byte f64372i;

        /* renamed from: j */
        private int f64373j;

        /* renamed from: kotlin.reflect.jvm.internal.impl.b.c.a$c$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/c/a$c$a.class */
        public static final class C18837a extends AbstractC19683h.AbstractC19685a<C18835c, C18837a> implements AbstractC18862d {

            /* renamed from: b */
            private int f64374b;

            /* renamed from: c */
            private C18829a f64375c = C18829a.m3038a();

            /* renamed from: d */
            private C18832b f64376d = C18832b.m3015a();

            /* renamed from: e */
            private C18832b f64377e = C18832b.m3015a();

            /* renamed from: f */
            private C18832b f64378f = C18832b.m3015a();

            private C18837a() {
            }

            /* renamed from: a */
            private C18837a m2984a(C18829a c18829a) {
                if ((this.f64374b & 1) != 1 || this.f64375c == C18829a.m3038a()) {
                    this.f64375c = c18829a;
                } else {
                    this.f64375c = C18829a.m3036a(this.f64375c).mo1702a(c18829a).m3018f();
                }
                this.f64374b |= 1;
                return this;
            }

            /* renamed from: a */
            private C18837a m2983a(C18832b c18832b) {
                if ((this.f64374b & 2) != 2 || this.f64376d == C18832b.m3015a()) {
                    this.f64376d = c18832b;
                } else {
                    this.f64376d = C18832b.m3012a(this.f64376d).mo1702a(c18832b).m2999f();
                }
                this.f64374b |= 2;
                return this;
            }

            /* renamed from: b */
            private C18837a m2981b(C18832b c18832b) {
                if ((this.f64374b & 4) != 4 || this.f64377e == C18832b.m3015a()) {
                    this.f64377e = c18832b;
                } else {
                    this.f64377e = C18832b.m3012a(this.f64377e).mo1702a(c18832b).m2999f();
                }
                this.f64374b |= 4;
                return this;
            }

            /* renamed from: c */
            private C18837a m2980c(C18832b c18832b) {
                if ((this.f64374b & 8) != 8 || this.f64378f == C18832b.m3015a()) {
                    this.f64378f = c18832b;
                } else {
                    this.f64378f = C18832b.m3012a(this.f64378f).mo1702a(c18832b).m2999f();
                }
                this.f64374b |= 8;
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
            /* renamed from: c */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public kotlin.reflect.jvm.internal.impl.p539b.p542c.C18827a.C18835c.C18837a mo1657b(kotlin.reflect.jvm.internal.impl.protobuf.C19676e r5, kotlin.reflect.jvm.internal.impl.protobuf.C19678f r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    kotlin.reflect.jvm.internal.impl.protobuf.r<kotlin.reflect.jvm.internal.impl.b.c.a$c> r0 = kotlin.reflect.jvm.internal.impl.p539b.p542c.C18827a.C18835c.f64364a     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.mo1651a(r1, r2)     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                    kotlin.reflect.jvm.internal.impl.b.c.a$c r0 = (kotlin.reflect.jvm.internal.impl.p539b.p542c.C18827a.C18835c) r0     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                    r5 = r0
                    r0 = r4
                    r1 = r5
                    kotlin.reflect.jvm.internal.impl.b.c.a$c$a r0 = r0.mo1702a(r1)
                    r0 = r4
                    return r0
                L18:
                    r5 = move-exception
                    r0 = r7
                    r6 = r0
                    goto L2a
                L1e:
                    r5 = move-exception
                    r0 = r5
                    kotlin.reflect.jvm.internal.impl.protobuf.p r0 = r0.f65795a     // Catch: java.lang.Throwable -> L18
                    kotlin.reflect.jvm.internal.impl.b.c.a$c r0 = (kotlin.reflect.jvm.internal.impl.p539b.p542c.C18827a.C18835c) r0     // Catch: java.lang.Throwable -> L18
                    r6 = r0
                    r0 = r5
                    throw r0     // Catch: java.lang.Throwable -> L29
                L29:
                    r5 = move-exception
                L2a:
                    r0 = r6
                    if (r0 == 0) goto L34
                    r0 = r4
                    r1 = r6
                    kotlin.reflect.jvm.internal.impl.b.c.a$c$a r0 = r0.mo1702a(r1)
                L34:
                    r0 = r5
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.p539b.p542c.C18827a.C18835c.C18837a.mo1657b(kotlin.reflect.jvm.internal.impl.protobuf.e, kotlin.reflect.jvm.internal.impl.protobuf.f):kotlin.reflect.jvm.internal.impl.b.c.a$c$a");
            }

            /* renamed from: f */
            static /* synthetic */ C18837a m2978f() {
                return new C18837a();
            }

            /* renamed from: g */
            public C18837a clone() {
                return new C18837a().mo1702a(m2976h());
            }

            /* renamed from: h */
            private C18835c m2976h() {
                C18835c c18835c = new C18835c(this);
                int i = this.f64374b;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                c18835c.f64366b = this.f64375c;
                int i3 = i2;
                if ((i & 2) == 2) {
                    i3 = i2 | 2;
                }
                c18835c.f64367c = this.f64376d;
                int i4 = i3;
                if ((i & 4) == 4) {
                    i4 = i3 | 4;
                }
                c18835c.f64368d = this.f64377e;
                int i5 = i4;
                if ((i & 8) == 8) {
                    i5 = i4 | 8;
                }
                c18835c.f64369e = this.f64378f;
                c18835c.f64371h = i5;
                return c18835c;
            }

            /* renamed from: a */
            public final C18837a mo1702a(C18835c c18835c) {
                if (c18835c == C18835c.m2996a()) {
                    return this;
                }
                if (c18835c.m2990c()) {
                    m2984a(c18835c.f64366b);
                }
                if (c18835c.m2988d()) {
                    m2983a(c18835c.f64367c);
                }
                if (c18835c.m2987g()) {
                    m2981b(c18835c.f64368d);
                }
                if (c18835c.m2986k()) {
                    m2980c(c18835c.f64369e);
                }
                this.f65839a = this.f65839a.m1769a(c18835c.f64370g);
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h.AbstractC19685a
            /* renamed from: a */
            public final /* bridge */ /* synthetic */ C18835c mo1703a() {
                return C18835c.m2996a();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p.AbstractC19706a
            /* renamed from: d */
            public final /* synthetic */ AbstractC19705p mo1656d() {
                C18835c m2976h = m2976h();
                if (m2976h.mo1655e()) {
                    return m2976h;
                }
                throw m1778a((AbstractC19705p) m2976h);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
            /* renamed from: e */
            public final boolean mo1655e() {
                return true;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h.AbstractC19685a, kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
            /* renamed from: j */
            public final /* synthetic */ AbstractC19705p mo1654j() {
                return C18835c.m2996a();
            }
        }

        static {
            C18835c c18835c = new C18835c(true);
            f64365f = c18835c;
            c18835c.m2985l();
        }

        private C18835c(C19676e c19676e, C19678f c19678f) throws InvalidProtocolBufferException {
            this.f64372i = (byte) (-1);
            this.f64373j = -1;
            m2985l();
            AbstractC19673d.C19675b m1763h = AbstractC19673d.m1763h();
            CodedOutputStream m1823a = CodedOutputStream.m1823a(m1763h, 1);
            boolean z = false;
            while (!z) {
                try {
                    try {
                        try {
                            int m1759a = c19676e.m1759a();
                            if (m1759a != 0) {
                                C18832b.C18834a c18834a = null;
                                if (m1759a == 10) {
                                    C18829a.C18831a mo1659h = (this.f64371h & 1) == 1 ? this.f64366b.mo1659h() : null;
                                    C18829a c18829a = (C18829a) c19676e.m1753a(C18829a.f64342a, c19678f);
                                    this.f64366b = c18829a;
                                    if (mo1659h != null) {
                                        mo1659h.mo1702a(c18829a);
                                        this.f64366b = mo1659h.m3018f();
                                    }
                                    this.f64371h |= 1;
                                } else if (m1759a == 18) {
                                    C18832b.C18834a mo1659h2 = (this.f64371h & 2) == 2 ? this.f64367c.mo1659h() : null;
                                    C18832b c18832b = (C18832b) c19676e.m1753a(C18832b.f64353a, c19678f);
                                    this.f64367c = c18832b;
                                    if (mo1659h2 != null) {
                                        mo1659h2.mo1702a(c18832b);
                                        this.f64367c = mo1659h2.m2999f();
                                    }
                                    this.f64371h |= 2;
                                } else if (m1759a == 26) {
                                    C18832b.C18834a mo1659h3 = (this.f64371h & 4) == 4 ? this.f64368d.mo1659h() : null;
                                    C18832b c18832b2 = (C18832b) c19676e.m1753a(C18832b.f64353a, c19678f);
                                    this.f64368d = c18832b2;
                                    if (mo1659h3 != null) {
                                        mo1659h3.mo1702a(c18832b2);
                                        this.f64368d = mo1659h3.m2999f();
                                    }
                                    this.f64371h |= 4;
                                } else if (m1759a == 34) {
                                    c18834a = (this.f64371h & 8) == 8 ? this.f64369e.mo1659h() : c18834a;
                                    C18832b c18832b3 = (C18832b) c19676e.m1753a(C18832b.f64353a, c19678f);
                                    this.f64369e = c18832b3;
                                    if (c18834a != null) {
                                        c18834a.mo1702a(c18832b3);
                                        this.f64369e = c18834a.m2999f();
                                    }
                                    this.f64371h |= 8;
                                } else if (!mo1695a(c19676e, m1823a, c19678f, m1759a)) {
                                }
                            }
                            z = true;
                        } catch (IOException e) {
                            InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e.getMessage());
                            invalidProtocolBufferException.f65795a = this;
                            throw invalidProtocolBufferException;
                        }
                    } catch (InvalidProtocolBufferException e2) {
                        e2.f65795a = this;
                        throw e2;
                    }
                } catch (Throwable th) {
                    try {
                        m1823a.m1832a();
                    } catch (IOException e3) {
                    } catch (Throwable th2) {
                        this.f64370g = m1763h.m1762a();
                        throw th2;
                    }
                    this.f64370g = m1763h.m1762a();
                    mo1688w();
                    throw th;
                }
            }
            try {
                m1823a.m1832a();
            } catch (IOException e4) {
            } catch (Throwable th3) {
                this.f64370g = m1763h.m1762a();
                throw th3;
            }
            this.f64370g = m1763h.m1762a();
            mo1688w();
        }

        private C18835c(AbstractC19683h.AbstractC19685a abstractC19685a) {
            super(abstractC19685a);
            this.f64372i = (byte) (-1);
            this.f64373j = -1;
            this.f64370g = abstractC19685a.f65839a;
        }

        private C18835c(boolean z) {
            this.f64372i = (byte) (-1);
            this.f64373j = -1;
            this.f64370g = AbstractC19673d.f65805b;
        }

        /* renamed from: a */
        public static C18835c m2996a() {
            return f64365f;
        }

        /* renamed from: l */
        private void m2985l() {
            this.f64366b = C18829a.m3038a();
            this.f64367c = C18832b.m3015a();
            this.f64368d = C18832b.m3015a();
            this.f64369e = C18832b.m3015a();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: a */
        public final void mo1662a(CodedOutputStream codedOutputStream) throws IOException {
            mo1660f();
            if ((this.f64371h & 1) == 1) {
                codedOutputStream.m1825a(1, this.f64366b);
            }
            if ((this.f64371h & 2) == 2) {
                codedOutputStream.m1825a(2, this.f64367c);
            }
            if ((this.f64371h & 4) == 4) {
                codedOutputStream.m1825a(3, this.f64368d);
            }
            if ((this.f64371h & 8) == 8) {
                codedOutputStream.m1825a(4, this.f64369e);
            }
            codedOutputStream.m1796d(this.f64370g);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h, kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: b */
        public final AbstractC19708r<C18835c> mo1661b() {
            return f64364a;
        }

        /* renamed from: c */
        public final boolean m2990c() {
            return (this.f64371h & 1) == 1;
        }

        /* renamed from: d */
        public final boolean m2988d() {
            return (this.f64371h & 2) == 2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
        /* renamed from: e */
        public final boolean mo1655e() {
            byte b = this.f64372i;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.f64372i = (byte) 1;
            return true;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: f */
        public final int mo1660f() {
            int i = this.f64373j;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            if ((this.f64371h & 1) == 1) {
                i2 = 0 + CodedOutputStream.m1802c(1, this.f64366b);
            }
            int i3 = i2;
            if ((this.f64371h & 2) == 2) {
                i3 = i2 + CodedOutputStream.m1802c(2, this.f64367c);
            }
            int i4 = i3;
            if ((this.f64371h & 4) == 4) {
                i4 = i3 + CodedOutputStream.m1802c(3, this.f64368d);
            }
            int i5 = i4;
            if ((this.f64371h & 8) == 8) {
                i5 = i4 + CodedOutputStream.m1802c(4, this.f64369e);
            }
            int mo1649a = i5 + this.f64370g.mo1649a();
            this.f64373j = mo1649a;
            return mo1649a;
        }

        /* renamed from: g */
        public final boolean m2987g() {
            return (this.f64371h & 4) == 4;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: h */
        public final /* synthetic */ AbstractC19705p.AbstractC19706a mo1659h() {
            return C18837a.m2978f().mo1702a(this);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: i */
        public final /* synthetic */ AbstractC19705p.AbstractC19706a mo1658i() {
            return C18837a.m2978f();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
        /* renamed from: j */
        public final /* bridge */ /* synthetic */ AbstractC19705p mo1654j() {
            return f64365f;
        }

        /* renamed from: k */
        public final boolean m2986k() {
            return (this.f64371h & 8) == 8;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.b.c.a$d */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/c/a$d.class */
    public static final class C18838d extends AbstractC19683h implements AbstractC18864f {

        /* renamed from: a */
        public static AbstractC19708r<C18838d> f64379a = new AbstractC19669b<C18838d>() { // from class: kotlin.reflect.jvm.internal.impl.b.c.a.d.1
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19708r
            /* renamed from: a */
            public final /* synthetic */ Object mo1651a(C19676e c19676e, C19678f c19678f) throws InvalidProtocolBufferException {
                return new C18838d(c19676e, c19678f);
            }
        };

        /* renamed from: d */
        private static final C18838d f64380d;

        /* renamed from: b */
        public List<C18841b> f64381b;

        /* renamed from: c */
        public List<Integer> f64382c;

        /* renamed from: e */
        private final AbstractC19673d f64383e;

        /* renamed from: f */
        private int f64384f;

        /* renamed from: g */
        private byte f64385g;

        /* renamed from: h */
        private int f64386h;

        /* renamed from: kotlin.reflect.jvm.internal.impl.b.c.a$d$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/c/a$d$a.class */
        public static final class C18840a extends AbstractC19683h.AbstractC19685a<C18838d, C18840a> implements AbstractC18864f {

            /* renamed from: b */
            private int f64387b;

            /* renamed from: c */
            private List<C18841b> f64388c = Collections.emptyList();

            /* renamed from: d */
            private List<Integer> f64389d = Collections.emptyList();

            private C18840a() {
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
            /* renamed from: c */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public kotlin.reflect.jvm.internal.impl.p539b.p542c.C18827a.C18838d.C18840a mo1657b(kotlin.reflect.jvm.internal.impl.protobuf.C19676e r5, kotlin.reflect.jvm.internal.impl.protobuf.C19678f r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    kotlin.reflect.jvm.internal.impl.protobuf.r<kotlin.reflect.jvm.internal.impl.b.c.a$d> r0 = kotlin.reflect.jvm.internal.impl.p539b.p542c.C18827a.C18838d.f64379a     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.mo1651a(r1, r2)     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                    kotlin.reflect.jvm.internal.impl.b.c.a$d r0 = (kotlin.reflect.jvm.internal.impl.p539b.p542c.C18827a.C18838d) r0     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                    r5 = r0
                    r0 = r4
                    r1 = r5
                    kotlin.reflect.jvm.internal.impl.b.c.a$d$a r0 = r0.mo1702a(r1)
                    r0 = r4
                    return r0
                L18:
                    r5 = move-exception
                    r0 = r7
                    r6 = r0
                    goto L2a
                L1e:
                    r5 = move-exception
                    r0 = r5
                    kotlin.reflect.jvm.internal.impl.protobuf.p r0 = r0.f65795a     // Catch: java.lang.Throwable -> L18
                    kotlin.reflect.jvm.internal.impl.b.c.a$d r0 = (kotlin.reflect.jvm.internal.impl.p539b.p542c.C18827a.C18838d) r0     // Catch: java.lang.Throwable -> L18
                    r6 = r0
                    r0 = r5
                    throw r0     // Catch: java.lang.Throwable -> L29
                L29:
                    r5 = move-exception
                L2a:
                    r0 = r6
                    if (r0 == 0) goto L34
                    r0 = r4
                    r1 = r6
                    kotlin.reflect.jvm.internal.impl.b.c.a$d$a r0 = r0.mo1702a(r1)
                L34:
                    r0 = r5
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.p539b.p542c.C18827a.C18838d.C18840a.mo1657b(kotlin.reflect.jvm.internal.impl.protobuf.e, kotlin.reflect.jvm.internal.impl.protobuf.f):kotlin.reflect.jvm.internal.impl.b.c.a$d$a");
            }

            /* renamed from: f */
            static /* synthetic */ C18840a m2964f() {
                return new C18840a();
            }

            /* renamed from: g */
            public C18840a clone() {
                return new C18840a().mo1702a(m2962h());
            }

            /* renamed from: h */
            private C18838d m2962h() {
                C18838d c18838d = new C18838d(this);
                if ((this.f64387b & 1) == 1) {
                    this.f64388c = Collections.unmodifiableList(this.f64388c);
                    this.f64387b &= -2;
                }
                c18838d.f64381b = this.f64388c;
                if ((this.f64387b & 2) == 2) {
                    this.f64389d = Collections.unmodifiableList(this.f64389d);
                    this.f64387b &= -3;
                }
                c18838d.f64382c = this.f64389d;
                return c18838d;
            }

            /* renamed from: i */
            private void m2961i() {
                if ((this.f64387b & 1) != 1) {
                    this.f64388c = new ArrayList(this.f64388c);
                    this.f64387b |= 1;
                }
            }

            /* renamed from: k */
            private void m2960k() {
                if ((this.f64387b & 2) != 2) {
                    this.f64389d = new ArrayList(this.f64389d);
                    this.f64387b |= 2;
                }
            }

            /* renamed from: a */
            public final C18840a mo1702a(C18838d c18838d) {
                if (c18838d == C18838d.m2974a()) {
                    return this;
                }
                if (!c18838d.f64381b.isEmpty()) {
                    if (this.f64388c.isEmpty()) {
                        this.f64388c = c18838d.f64381b;
                        this.f64387b &= -2;
                    } else {
                        m2961i();
                        this.f64388c.addAll(c18838d.f64381b);
                    }
                }
                if (!c18838d.f64382c.isEmpty()) {
                    if (this.f64389d.isEmpty()) {
                        this.f64389d = c18838d.f64382c;
                        this.f64387b &= -3;
                    } else {
                        m2960k();
                        this.f64389d.addAll(c18838d.f64382c);
                    }
                }
                this.f65839a = this.f65839a.m1769a(c18838d.f64383e);
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h.AbstractC19685a
            /* renamed from: a */
            public final /* bridge */ /* synthetic */ C18838d mo1703a() {
                return C18838d.m2974a();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p.AbstractC19706a
            /* renamed from: d */
            public final /* synthetic */ AbstractC19705p mo1656d() {
                C18838d m2962h = m2962h();
                if (m2962h.mo1655e()) {
                    return m2962h;
                }
                throw m1778a((AbstractC19705p) m2962h);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
            /* renamed from: e */
            public final boolean mo1655e() {
                return true;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h.AbstractC19685a, kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
            /* renamed from: j */
            public final /* synthetic */ AbstractC19705p mo1654j() {
                return C18838d.m2974a();
            }
        }

        /* renamed from: kotlin.reflect.jvm.internal.impl.b.c.a$d$b */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/c/a$d$b.class */
        public static final class C18841b extends AbstractC19683h implements AbstractC18863e {

            /* renamed from: a */
            public static AbstractC19708r<C18841b> f64390a = new AbstractC19669b<C18841b>() { // from class: kotlin.reflect.jvm.internal.impl.b.c.a.d.b.1
                @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19708r
                /* renamed from: a */
                public final /* synthetic */ Object mo1651a(C19676e c19676e, C19678f c19678f) throws InvalidProtocolBufferException {
                    return new C18841b(c19676e, c19678f);
                }
            };

            /* renamed from: h */
            private static final C18841b f64391h;

            /* renamed from: b */
            public int f64392b;

            /* renamed from: c */
            public int f64393c;

            /* renamed from: d */
            public Object f64394d;

            /* renamed from: e */
            public EnumC18844b f64395e;

            /* renamed from: f */
            public List<Integer> f64396f;

            /* renamed from: g */
            public List<Integer> f64397g;

            /* renamed from: i */
            private final AbstractC19673d f64398i;

            /* renamed from: j */
            private int f64399j;

            /* renamed from: k */
            private int f64400k;

            /* renamed from: l */
            private int f64401l;

            /* renamed from: m */
            private byte f64402m;

            /* renamed from: n */
            private int f64403n;

            /* renamed from: kotlin.reflect.jvm.internal.impl.b.c.a$d$b$a */
            /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/c/a$d$b$a.class */
            public static final class C18843a extends AbstractC19683h.AbstractC19685a<C18841b, C18843a> implements AbstractC18863e {

                /* renamed from: b */
                private int f64404b;

                /* renamed from: d */
                private int f64406d;

                /* renamed from: c */
                private int f64405c = 1;

                /* renamed from: e */
                private Object f64407e = "";

                /* renamed from: f */
                private EnumC18844b f64408f = EnumC18844b.NONE;

                /* renamed from: g */
                private List<Integer> f64409g = Collections.emptyList();

                /* renamed from: h */
                private List<Integer> f64410h = Collections.emptyList();

                private C18843a() {
                }

                /* renamed from: a */
                private C18843a m2941a(int i) {
                    this.f64404b |= 1;
                    this.f64405c = i;
                    return this;
                }

                /* renamed from: a */
                private C18843a m2940a(EnumC18844b enumC18844b) {
                    Objects.requireNonNull(enumC18844b);
                    this.f64404b |= 8;
                    this.f64408f = enumC18844b;
                    return this;
                }

                /* renamed from: b */
                private C18843a m2938b(int i) {
                    this.f64404b |= 2;
                    this.f64406d = i;
                    return this;
                }

                /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
                /* renamed from: c */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public kotlin.reflect.jvm.internal.impl.p539b.p542c.C18827a.C18838d.C18841b.C18843a mo1657b(kotlin.reflect.jvm.internal.impl.protobuf.C19676e r5, kotlin.reflect.jvm.internal.impl.protobuf.C19678f r6) throws java.io.IOException {
                    /*
                        r4 = this;
                        r0 = 0
                        r7 = r0
                        kotlin.reflect.jvm.internal.impl.protobuf.r<kotlin.reflect.jvm.internal.impl.b.c.a$d$b> r0 = kotlin.reflect.jvm.internal.impl.p539b.p542c.C18827a.C18838d.C18841b.f64390a     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                        r1 = r5
                        r2 = r6
                        java.lang.Object r0 = r0.mo1651a(r1, r2)     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                        kotlin.reflect.jvm.internal.impl.b.c.a$d$b r0 = (kotlin.reflect.jvm.internal.impl.p539b.p542c.C18827a.C18838d.C18841b) r0     // Catch: java.lang.Throwable -> L18 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L1e
                        r5 = r0
                        r0 = r4
                        r1 = r5
                        kotlin.reflect.jvm.internal.impl.b.c.a$d$b$a r0 = r0.mo1702a(r1)
                        r0 = r4
                        return r0
                    L18:
                        r6 = move-exception
                        r0 = r7
                        r5 = r0
                        goto L2a
                    L1e:
                        r6 = move-exception
                        r0 = r6
                        kotlin.reflect.jvm.internal.impl.protobuf.p r0 = r0.f65795a     // Catch: java.lang.Throwable -> L18
                        kotlin.reflect.jvm.internal.impl.b.c.a$d$b r0 = (kotlin.reflect.jvm.internal.impl.p539b.p542c.C18827a.C18838d.C18841b) r0     // Catch: java.lang.Throwable -> L18
                        r5 = r0
                        r0 = r6
                        throw r0     // Catch: java.lang.Throwable -> L29
                    L29:
                        r6 = move-exception
                    L2a:
                        r0 = r5
                        if (r0 == 0) goto L34
                        r0 = r4
                        r1 = r5
                        kotlin.reflect.jvm.internal.impl.b.c.a$d$b$a r0 = r0.mo1702a(r1)
                    L34:
                        r0 = r6
                        throw r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.p539b.p542c.C18827a.C18838d.C18841b.C18843a.mo1657b(kotlin.reflect.jvm.internal.impl.protobuf.e, kotlin.reflect.jvm.internal.impl.protobuf.f):kotlin.reflect.jvm.internal.impl.b.c.a$d$b$a");
                }

                /* renamed from: f */
                static /* synthetic */ C18843a m2936f() {
                    return new C18843a();
                }

                /* renamed from: g */
                public C18843a clone() {
                    return new C18843a().mo1702a(m2934h());
                }

                /* renamed from: h */
                private C18841b m2934h() {
                    C18841b c18841b = new C18841b(this);
                    int i = this.f64404b;
                    int i2 = 1;
                    if ((i & 1) != 1) {
                        i2 = 0;
                    }
                    c18841b.f64392b = this.f64405c;
                    int i3 = i2;
                    if ((i & 2) == 2) {
                        i3 = i2 | 2;
                    }
                    c18841b.f64393c = this.f64406d;
                    int i4 = i3;
                    if ((i & 4) == 4) {
                        i4 = i3 | 4;
                    }
                    c18841b.f64394d = this.f64407e;
                    int i5 = i4;
                    if ((i & 8) == 8) {
                        i5 = i4 | 8;
                    }
                    c18841b.f64395e = this.f64408f;
                    if ((this.f64404b & 16) == 16) {
                        this.f64409g = Collections.unmodifiableList(this.f64409g);
                        this.f64404b &= -17;
                    }
                    c18841b.f64396f = this.f64409g;
                    if ((this.f64404b & 32) == 32) {
                        this.f64410h = Collections.unmodifiableList(this.f64410h);
                        this.f64404b &= -33;
                    }
                    c18841b.f64397g = this.f64410h;
                    c18841b.f64399j = i5;
                    return c18841b;
                }

                /* renamed from: i */
                private void m2933i() {
                    if ((this.f64404b & 16) != 16) {
                        this.f64409g = new ArrayList(this.f64409g);
                        this.f64404b |= 16;
                    }
                }

                /* renamed from: k */
                private void m2932k() {
                    if ((this.f64404b & 32) != 32) {
                        this.f64410h = new ArrayList(this.f64410h);
                        this.f64404b |= 32;
                    }
                }

                /* renamed from: a */
                public final C18843a mo1702a(C18841b c18841b) {
                    if (c18841b == C18841b.m2959a()) {
                        return this;
                    }
                    if (c18841b.m2950c()) {
                        m2941a(c18841b.f64392b);
                    }
                    if (c18841b.m2947d()) {
                        m2938b(c18841b.f64393c);
                    }
                    if (c18841b.m2945g()) {
                        this.f64404b |= 4;
                        this.f64407e = c18841b.f64394d;
                    }
                    if (c18841b.m2944k()) {
                        m2940a(c18841b.f64395e);
                    }
                    if (!c18841b.f64396f.isEmpty()) {
                        if (this.f64409g.isEmpty()) {
                            this.f64409g = c18841b.f64396f;
                            this.f64404b &= -17;
                        } else {
                            m2933i();
                            this.f64409g.addAll(c18841b.f64396f);
                        }
                    }
                    if (!c18841b.f64397g.isEmpty()) {
                        if (this.f64410h.isEmpty()) {
                            this.f64410h = c18841b.f64397g;
                            this.f64404b &= -33;
                        } else {
                            m2932k();
                            this.f64410h.addAll(c18841b.f64397g);
                        }
                    }
                    this.f65839a = this.f65839a.m1769a(c18841b.f64398i);
                    return this;
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h.AbstractC19685a
                /* renamed from: a */
                public final /* bridge */ /* synthetic */ C18841b mo1703a() {
                    return C18841b.m2959a();
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p.AbstractC19706a
                /* renamed from: d */
                public final /* synthetic */ AbstractC19705p mo1656d() {
                    C18841b m2934h = m2934h();
                    if (m2934h.mo1655e()) {
                        return m2934h;
                    }
                    throw m1778a((AbstractC19705p) m2934h);
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
                /* renamed from: e */
                public final boolean mo1655e() {
                    return true;
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h.AbstractC19685a, kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
                /* renamed from: j */
                public final /* synthetic */ AbstractC19705p mo1654j() {
                    return C18841b.m2959a();
                }
            }

            /* renamed from: kotlin.reflect.jvm.internal.impl.b.c.a$d$b$b */
            /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/c/a$d$b$b.class */
            public enum EnumC18844b implements C19692j.AbstractC19693a {
                NONE(0, 0),
                INTERNAL_TO_CLASS_ID(1, 1),
                DESC_TO_CLASS_ID(2, 2);
                
                private static C19692j.AbstractC19694b<EnumC18844b> internalValueMap = new C19692j.AbstractC19694b<EnumC18844b>() { // from class: kotlin.reflect.jvm.internal.impl.b.c.a.d.b.b.1
                    @Override // kotlin.reflect.jvm.internal.impl.protobuf.C19692j.AbstractC19694b
                    /* renamed from: a */
                    public final /* synthetic */ EnumC18844b mo1672a(int i) {
                        return EnumC18844b.valueOf(i);
                    }
                };
                private final int value;

                EnumC18844b(int i, int i2) {
                    this.value = i2;
                }

                public static EnumC18844b valueOf(int i) {
                    if (i != 0) {
                        if (i == 1) {
                            return INTERNAL_TO_CLASS_ID;
                        }
                        if (i == 2) {
                            return DESC_TO_CLASS_ID;
                        }
                        return null;
                    }
                    return NONE;
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.C19692j.AbstractC19693a
                public final int getNumber() {
                    return this.value;
                }
            }

            static {
                C18841b c18841b = new C18841b(true);
                f64391h = c18841b;
                c18841b.m2942m();
            }

            private C18841b(C19676e c19676e, C19678f c19678f) throws InvalidProtocolBufferException {
                this.f64400k = -1;
                this.f64401l = -1;
                this.f64402m = (byte) (-1);
                this.f64403n = -1;
                m2942m();
                AbstractC19673d.C19675b m1763h = AbstractC19673d.m1763h();
                CodedOutputStream m1823a = CodedOutputStream.m1823a(m1763h, 1);
                boolean z = false;
                boolean z2 = false;
                while (!z) {
                    boolean z3 = z2;
                    try {
                        try {
                            try {
                                int m1759a = c19676e.m1759a();
                                if (m1759a != 0) {
                                    if (m1759a == 8) {
                                        this.f64399j |= 1;
                                        boolean z4 = z2;
                                        this.f64392b = c19676e.m1748d();
                                    } else if (m1759a == 16) {
                                        this.f64399j |= 2;
                                        boolean z5 = z2;
                                        this.f64393c = c19676e.m1748d();
                                    } else if (m1759a == 24) {
                                        int m1748d = c19676e.m1748d();
                                        boolean z6 = z2;
                                        EnumC18844b valueOf = EnumC18844b.valueOf(m1748d);
                                        if (valueOf == null) {
                                            m1823a.m1795e(m1759a);
                                            boolean z7 = z2;
                                            m1823a.m1795e(m1748d);
                                        } else {
                                            this.f64399j |= 8;
                                            boolean z8 = z2;
                                            this.f64395e = valueOf;
                                        }
                                    } else if (m1759a == 32) {
                                        boolean z9 = z2;
                                        if (!(z2 & true)) {
                                            boolean z10 = z2;
                                            boolean z11 = z2;
                                            this.f64396f = new ArrayList();
                                            z9 = z2 | true;
                                        }
                                        this.f64396f.add(Integer.valueOf(c19676e.m1748d()));
                                        z2 = z9;
                                    } else if (m1759a == 34) {
                                        int m1751b = c19676e.m1751b(c19676e.m1748d());
                                        boolean z12 = z2;
                                        if (!(z2 & true)) {
                                            z12 = z2;
                                            if (c19676e.m1740h() > 0) {
                                                boolean z13 = z2;
                                                boolean z14 = z2;
                                                boolean z15 = z2;
                                                this.f64396f = new ArrayList();
                                                z12 = z2 | true;
                                            }
                                        }
                                        while (c19676e.m1740h() > 0) {
                                            boolean z16 = z12;
                                            this.f64396f.add(Integer.valueOf(c19676e.m1748d()));
                                        }
                                        c19676e.m1749c(m1751b);
                                        z2 = z12;
                                    } else if (m1759a == 40) {
                                        boolean z17 = z2;
                                        if (!(z2 & true)) {
                                            boolean z18 = z2;
                                            boolean z19 = z2;
                                            this.f64397g = new ArrayList();
                                            z17 = z2 | true;
                                        }
                                        this.f64397g.add(Integer.valueOf(c19676e.m1748d()));
                                        z2 = z17;
                                    } else if (m1759a == 42) {
                                        int m1751b2 = c19676e.m1751b(c19676e.m1748d());
                                        boolean z20 = z2;
                                        if (!(z2 & true)) {
                                            z20 = z2;
                                            if (c19676e.m1740h() > 0) {
                                                boolean z21 = z2;
                                                boolean z22 = z2;
                                                boolean z23 = z2;
                                                this.f64397g = new ArrayList();
                                                z20 = z2 | true;
                                            }
                                        }
                                        while (c19676e.m1740h() > 0) {
                                            boolean z24 = z20;
                                            this.f64397g.add(Integer.valueOf(c19676e.m1748d()));
                                        }
                                        c19676e.m1749c(m1751b2);
                                        z2 = z20;
                                    } else if (m1759a == 50) {
                                        AbstractC19673d m1750c = c19676e.m1750c();
                                        boolean z25 = z2;
                                        this.f64399j |= 4;
                                        boolean z26 = z2;
                                        this.f64394d = m1750c;
                                    } else if (!mo1695a(c19676e, m1823a, c19678f, m1759a)) {
                                    }
                                }
                                z = true;
                            } catch (InvalidProtocolBufferException e) {
                                e.f65795a = this;
                                throw e;
                            }
                        } catch (IOException e2) {
                            InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e2.getMessage());
                            invalidProtocolBufferException.f65795a = this;
                            throw invalidProtocolBufferException;
                        }
                    } catch (Throwable th) {
                        if (z3 & true) {
                            this.f64396f = Collections.unmodifiableList(this.f64396f);
                        }
                        if (z3 & true) {
                            this.f64397g = Collections.unmodifiableList(this.f64397g);
                        }
                        try {
                            m1823a.m1832a();
                        } catch (IOException e3) {
                        } catch (Throwable th2) {
                            this.f64398i = m1763h.m1762a();
                            throw th2;
                        }
                        this.f64398i = m1763h.m1762a();
                        mo1688w();
                        throw th;
                    }
                }
                if (z2 & true) {
                    this.f64396f = Collections.unmodifiableList(this.f64396f);
                }
                if (z2 & true) {
                    this.f64397g = Collections.unmodifiableList(this.f64397g);
                }
                try {
                    m1823a.m1832a();
                } catch (IOException e4) {
                } catch (Throwable th3) {
                    this.f64398i = m1763h.m1762a();
                    throw th3;
                }
                this.f64398i = m1763h.m1762a();
                mo1688w();
            }

            private C18841b(AbstractC19683h.AbstractC19685a abstractC19685a) {
                super(abstractC19685a);
                this.f64400k = -1;
                this.f64401l = -1;
                this.f64402m = (byte) (-1);
                this.f64403n = -1;
                this.f64398i = abstractC19685a.f65839a;
            }

            private C18841b(boolean z) {
                this.f64400k = -1;
                this.f64401l = -1;
                this.f64402m = (byte) (-1);
                this.f64403n = -1;
                this.f64398i = AbstractC19673d.f65805b;
            }

            /* renamed from: a */
            public static C18841b m2959a() {
                return f64391h;
            }

            /* renamed from: l */
            private AbstractC19673d m2943l() {
                Object obj = this.f64394d;
                if (obj instanceof String) {
                    AbstractC19673d m1771a = AbstractC19673d.m1771a((String) obj);
                    this.f64394d = m1771a;
                    return m1771a;
                }
                return (AbstractC19673d) obj;
            }

            /* renamed from: m */
            private void m2942m() {
                this.f64392b = 1;
                this.f64393c = 0;
                this.f64394d = "";
                this.f64395e = EnumC18844b.NONE;
                this.f64396f = Collections.emptyList();
                this.f64397g = Collections.emptyList();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
            /* renamed from: a */
            public final void mo1662a(CodedOutputStream codedOutputStream) throws IOException {
                mo1660f();
                if ((this.f64399j & 1) == 1) {
                    codedOutputStream.m1827a(1, this.f64392b);
                }
                if ((this.f64399j & 2) == 2) {
                    codedOutputStream.m1827a(2, this.f64393c);
                }
                if ((this.f64399j & 8) == 8) {
                    codedOutputStream.m1812b(3, this.f64395e.getNumber());
                }
                if (this.f64396f.size() > 0) {
                    codedOutputStream.m1795e(34);
                    codedOutputStream.m1795e(this.f64400k);
                }
                for (int i = 0; i < this.f64396f.size(); i++) {
                    codedOutputStream.m1828a(this.f64396f.get(i).intValue());
                }
                int i2 = 0;
                if (this.f64397g.size() > 0) {
                    codedOutputStream.m1795e(42);
                    codedOutputStream.m1795e(this.f64401l);
                    i2 = 0;
                }
                while (i2 < this.f64397g.size()) {
                    codedOutputStream.m1828a(this.f64397g.get(i2).intValue());
                    i2++;
                }
                if ((this.f64399j & 4) == 4) {
                    codedOutputStream.m1826a(6, m2943l());
                }
                codedOutputStream.m1796d(this.f64398i);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h, kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
            /* renamed from: b */
            public final AbstractC19708r<C18841b> mo1661b() {
                return f64390a;
            }

            /* renamed from: c */
            public final boolean m2950c() {
                return (this.f64399j & 1) == 1;
            }

            /* renamed from: d */
            public final boolean m2947d() {
                return (this.f64399j & 2) == 2;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
            /* renamed from: e */
            public final boolean mo1655e() {
                byte b = this.f64402m;
                if (b == 1) {
                    return true;
                }
                if (b == 0) {
                    return false;
                }
                this.f64402m = (byte) 1;
                return true;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
            /* renamed from: f */
            public final int mo1660f() {
                int i = this.f64403n;
                if (i != -1) {
                    return i;
                }
                int m1803c = (this.f64399j & 1) == 1 ? CodedOutputStream.m1803c(1, this.f64392b) + 0 : 0;
                int i2 = m1803c;
                if ((this.f64399j & 2) == 2) {
                    i2 = m1803c + CodedOutputStream.m1803c(2, this.f64393c);
                }
                int i3 = i2;
                if ((this.f64399j & 8) == 8) {
                    i3 = i2 + CodedOutputStream.m1798d(3, this.f64395e.getNumber());
                }
                int i4 = 0;
                for (int i5 = 0; i5 < this.f64396f.size(); i5++) {
                    i4 += CodedOutputStream.m1804c(this.f64396f.get(i5).intValue());
                }
                int i6 = i3 + i4;
                int i7 = i6;
                if (!this.f64396f.isEmpty()) {
                    i7 = i6 + 1 + CodedOutputStream.m1804c(i4);
                }
                this.f64400k = i4;
                int i8 = 0;
                for (int i9 = 0; i9 < this.f64397g.size(); i9++) {
                    i8 += CodedOutputStream.m1804c(this.f64397g.get(i9).intValue());
                }
                int i10 = i7 + i8;
                int i11 = i10;
                if (!this.f64397g.isEmpty()) {
                    i11 = i10 + 1 + CodedOutputStream.m1804c(i8);
                }
                this.f64401l = i8;
                int i12 = i11;
                if ((this.f64399j & 4) == 4) {
                    i12 = i11 + CodedOutputStream.m1808b(m2943l());
                }
                int mo1649a = i12 + this.f64398i.mo1649a();
                this.f64403n = mo1649a;
                return mo1649a;
            }

            /* renamed from: g */
            public final boolean m2945g() {
                return (this.f64399j & 4) == 4;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
            /* renamed from: h */
            public final /* synthetic */ AbstractC19705p.AbstractC19706a mo1659h() {
                return C18843a.m2936f().mo1702a(this);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
            /* renamed from: i */
            public final /* synthetic */ AbstractC19705p.AbstractC19706a mo1658i() {
                return C18843a.m2936f();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
            /* renamed from: j */
            public final /* bridge */ /* synthetic */ AbstractC19705p mo1654j() {
                return f64391h;
            }

            /* renamed from: k */
            public final boolean m2944k() {
                return (this.f64399j & 8) == 8;
            }
        }

        static {
            C18838d c18838d = new C18838d(true);
            f64380d = c18838d;
            c18838d.m2968c();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private C18838d(C19676e c19676e, C19678f c19678f) throws InvalidProtocolBufferException {
            this.f64384f = -1;
            this.f64385g = (byte) (-1);
            this.f64386h = -1;
            m2968c();
            AbstractC19673d.C19675b m1763h = AbstractC19673d.m1763h();
            CodedOutputStream m1823a = CodedOutputStream.m1823a(m1763h, 1);
            boolean z = false;
            boolean z2 = false;
            while (!z) {
                boolean z3 = z2;
                try {
                    try {
                        try {
                            int m1759a = c19676e.m1759a();
                            if (m1759a != 0) {
                                if (m1759a == 10) {
                                    boolean z4 = z2;
                                    if (!(z2 & true)) {
                                        boolean z5 = z2;
                                        boolean z6 = z2;
                                        this.f64381b = new ArrayList();
                                        z4 = z2 | true;
                                    }
                                    this.f64381b.add(c19676e.m1753a(C18841b.f64390a, c19678f));
                                    z2 = z4;
                                } else if (m1759a == 40) {
                                    boolean z7 = z2;
                                    if (!(z2 & true)) {
                                        boolean z8 = z2;
                                        boolean z9 = z2;
                                        this.f64382c = new ArrayList();
                                        z7 = z2 | true;
                                    }
                                    this.f64382c.add(Integer.valueOf(c19676e.m1748d()));
                                    z2 = z7;
                                } else if (m1759a == 42) {
                                    int m1751b = c19676e.m1751b(c19676e.m1748d());
                                    boolean z10 = z2;
                                    if (!(z2 & true)) {
                                        z10 = z2;
                                        if (c19676e.m1740h() > 0) {
                                            boolean z11 = z2;
                                            boolean z12 = z2;
                                            boolean z13 = z2;
                                            this.f64382c = new ArrayList();
                                            z10 = z2 | true;
                                        }
                                    }
                                    while (c19676e.m1740h() > 0) {
                                        boolean z14 = z10;
                                        this.f64382c.add(Integer.valueOf(c19676e.m1748d()));
                                    }
                                    c19676e.m1749c(m1751b);
                                    z2 = z10;
                                } else if (!mo1695a(c19676e, m1823a, c19678f, m1759a)) {
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            e.f65795a = this;
                            throw e;
                        }
                    } catch (IOException e2) {
                        InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e2.getMessage());
                        invalidProtocolBufferException.f65795a = this;
                        throw invalidProtocolBufferException;
                    }
                } catch (Throwable th) {
                    if (z3 & true) {
                        this.f64381b = Collections.unmodifiableList(this.f64381b);
                    }
                    if (z3 & true) {
                        this.f64382c = Collections.unmodifiableList(this.f64382c);
                    }
                    try {
                        m1823a.m1832a();
                    } catch (IOException e3) {
                    } catch (Throwable th2) {
                        this.f64383e = m1763h.m1762a();
                        throw th2;
                    }
                    this.f64383e = m1763h.m1762a();
                    mo1688w();
                    throw th;
                }
            }
            if (z2 & true) {
                this.f64381b = Collections.unmodifiableList(this.f64381b);
            }
            if (z2 & true) {
                this.f64382c = Collections.unmodifiableList(this.f64382c);
            }
            try {
                m1823a.m1832a();
            } catch (IOException e4) {
            } catch (Throwable th3) {
                this.f64383e = m1763h.m1762a();
                throw th3;
            }
            this.f64383e = m1763h.m1762a();
            mo1688w();
        }

        private C18838d(AbstractC19683h.AbstractC19685a abstractC19685a) {
            super(abstractC19685a);
            this.f64384f = -1;
            this.f64385g = (byte) (-1);
            this.f64386h = -1;
            this.f64383e = abstractC19685a.f65839a;
        }

        private C18838d(boolean z) {
            this.f64384f = -1;
            this.f64385g = (byte) (-1);
            this.f64386h = -1;
            this.f64383e = AbstractC19673d.f65805b;
        }

        /* renamed from: a */
        public static C18838d m2974a() {
            return f64380d;
        }

        /* renamed from: a */
        public static C18838d m2973a(InputStream inputStream, C19678f c19678f) throws IOException {
            return f64379a.mo1653a(inputStream, c19678f);
        }

        /* renamed from: c */
        private void m2968c() {
            this.f64381b = Collections.emptyList();
            this.f64382c = Collections.emptyList();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: a */
        public final void mo1662a(CodedOutputStream codedOutputStream) throws IOException {
            mo1660f();
            for (int i = 0; i < this.f64381b.size(); i++) {
                codedOutputStream.m1825a(1, this.f64381b.get(i));
            }
            int i2 = 0;
            if (this.f64382c.size() > 0) {
                codedOutputStream.m1795e(42);
                codedOutputStream.m1795e(this.f64384f);
                i2 = 0;
            }
            while (i2 < this.f64382c.size()) {
                codedOutputStream.m1828a(this.f64382c.get(i2).intValue());
                i2++;
            }
            codedOutputStream.m1796d(this.f64383e);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19683h, kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: b */
        public final AbstractC19708r<C18838d> mo1661b() {
            return f64379a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
        /* renamed from: e */
        public final boolean mo1655e() {
            byte b = this.f64385g;
            if (b == 1) {
                return true;
            }
            if (b == 0) {
                return false;
            }
            this.f64385g = (byte) 1;
            return true;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: f */
        public final int mo1660f() {
            int i = this.f64386h;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            for (int i3 = 0; i3 < this.f64381b.size(); i3++) {
                i2 += CodedOutputStream.m1802c(1, this.f64381b.get(i3));
            }
            int i4 = 0;
            for (int i5 = 0; i5 < this.f64382c.size(); i5++) {
                i4 += CodedOutputStream.m1804c(this.f64382c.get(i5).intValue());
            }
            int i6 = i2 + i4;
            int i7 = i6;
            if (!this.f64382c.isEmpty()) {
                i7 = i6 + 1 + CodedOutputStream.m1804c(i4);
            }
            this.f64384f = i4;
            int mo1649a = i7 + this.f64383e.mo1649a();
            this.f64386h = mo1649a;
            return mo1649a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: h */
        public final /* synthetic */ AbstractC19705p.AbstractC19706a mo1659h() {
            return C18840a.m2964f().mo1702a(this);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p
        /* renamed from: i */
        public final /* synthetic */ AbstractC19705p.AbstractC19706a mo1658i() {
            return C18840a.m2964f();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19707q
        /* renamed from: j */
        public final /* bridge */ /* synthetic */ AbstractC19705p mo1654j() {
            return f64380d;
        }
    }

    /* renamed from: a */
    public static void m3039a(C19678f c19678f) {
        c19678f.m1733a(f64328a);
        c19678f.m1733a(f64329b);
        c19678f.m1733a(f64330c);
        c19678f.m1733a(f64331d);
        c19678f.m1733a(f64332e);
        c19678f.m1733a(f64333f);
        c19678f.m1733a(f64334g);
        c19678f.m1733a(f64335h);
        c19678f.m1733a(f64336i);
        c19678f.m1733a(f64337j);
        c19678f.m1733a(f64338k);
        c19678f.m1733a(f64339l);
        c19678f.m1733a(f64340m);
        c19678f.m1733a(f64341n);
    }
}
