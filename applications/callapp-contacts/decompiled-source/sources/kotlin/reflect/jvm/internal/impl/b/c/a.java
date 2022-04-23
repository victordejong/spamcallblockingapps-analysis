package kotlin.reflect.jvm.internal.impl.b.c;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import kotlin.reflect.jvm.internal.impl.b.a;
import kotlin.reflect.jvm.internal.impl.protobuf.CodedOutputStream;
import kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException;
import kotlin.reflect.jvm.internal.impl.protobuf.d;
import kotlin.reflect.jvm.internal.impl.protobuf.e;
import kotlin.reflect.jvm.internal.impl.protobuf.f;
import kotlin.reflect.jvm.internal.impl.protobuf.h;
import kotlin.reflect.jvm.internal.impl.protobuf.j;
import kotlin.reflect.jvm.internal.impl.protobuf.p;
import kotlin.reflect.jvm.internal.impl.protobuf.r;
import kotlin.reflect.jvm.internal.impl.protobuf.x;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/c/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final h.e<a.c, b> f37165a = h.a(a.c.a(), b.a(), b.a(), 100, x.a.MESSAGE, b.class);

    /* renamed from: b  reason: collision with root package name */
    public static final h.e<a.h, b> f37166b = h.a(a.h.a(), b.a(), b.a(), 100, x.a.MESSAGE, b.class);

    /* renamed from: c  reason: collision with root package name */
    public static final h.e<a.h, Integer> f37167c = h.a(a.h.a(), 0, (p) null, 101, x.a.INT32, Integer.class);

    /* renamed from: d  reason: collision with root package name */
    public static final h.e<a.m, c> f37168d = h.a(a.m.a(), c.a(), c.a(), 100, x.a.MESSAGE, c.class);
    public static final h.e<a.m, Integer> e = h.a(a.m.a(), 0, (p) null, 101, x.a.INT32, Integer.class);
    public static final h.e<a.p, List<a.C0625a>> f = h.a(a.p.a(), a.C0625a.a(), 100, x.a.MESSAGE, a.C0625a.class);
    public static final h.e<a.p, Boolean> g = h.a(a.p.a(), Boolean.FALSE, (p) null, 101, x.a.BOOL, Boolean.class);
    public static final h.e<a.r, List<a.C0625a>> h = h.a(a.r.a(), a.C0625a.a(), 100, x.a.MESSAGE, a.C0625a.class);
    public static final h.e<a.b, Integer> i = h.a(a.b.a(), 0, (p) null, 101, x.a.INT32, Integer.class);
    public static final h.e<a.b, List<a.m>> j = h.a(a.b.a(), a.m.a(), 102, x.a.MESSAGE, a.m.class);
    public static final h.e<a.b, Integer> k = h.a(a.b.a(), 0, (p) null, 103, x.a.INT32, Integer.class);
    public static final h.e<a.b, Integer> l = h.a(a.b.a(), 0, (p) null, 104, x.a.INT32, Integer.class);
    public static final h.e<a.k, Integer> m = h.a(a.k.a(), 0, (p) null, 101, x.a.INT32, Integer.class);
    public static final h.e<a.k, List<a.m>> n = h.a(a.k.a(), a.m.a(), 102, x.a.MESSAGE, a.m.class);

    /* renamed from: kotlin.reflect.jvm.internal.impl.b.c.a$a  reason: collision with other inner class name */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/c/a$a.class */
    public static final class C0657a extends h implements kotlin.reflect.jvm.internal.impl.b.c.b {

        /* renamed from: a  reason: collision with root package name */
        public static r<C0657a> f37169a = new kotlin.reflect.jvm.internal.impl.protobuf.b<C0657a>() { // from class: kotlin.reflect.jvm.internal.impl.b.c.a.a.1
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.r
            public final /* synthetic */ Object a(e eVar, f fVar) throws InvalidProtocolBufferException {
                return new C0657a(eVar, fVar);
            }
        };

        /* renamed from: d  reason: collision with root package name */
        private static final C0657a f37170d;

        /* renamed from: b  reason: collision with root package name */
        public int f37171b;

        /* renamed from: c  reason: collision with root package name */
        public int f37172c;
        private final kotlin.reflect.jvm.internal.impl.protobuf.d e;
        private int f;
        private byte g;
        private int h;

        /* renamed from: kotlin.reflect.jvm.internal.impl.b.c.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/c/a$a$a.class */
        public static final class C0658a extends h.a<C0657a, C0658a> implements kotlin.reflect.jvm.internal.impl.b.c.b {

            /* renamed from: b  reason: collision with root package name */
            private int f37175b;

            /* renamed from: c  reason: collision with root package name */
            private int f37176c;

            /* renamed from: d  reason: collision with root package name */
            private int f37177d;

            private C0658a() {
            }

            private C0658a a(int i) {
                this.f37175b |= 1;
                this.f37176c = i;
                return this;
            }

            private C0658a b(int i) {
                this.f37175b |= 2;
                this.f37177d = i;
                return this;
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* JADX WARN: Removed duplicated region for block: B:16:0x0034  */
            /* renamed from: c */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public kotlin.reflect.jvm.internal.impl.b.c.a.C0657a.C0658a b(kotlin.reflect.jvm.internal.impl.protobuf.e r5, kotlin.reflect.jvm.internal.impl.protobuf.f r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    kotlin.reflect.jvm.internal.impl.protobuf.r<kotlin.reflect.jvm.internal.impl.b.c.a$a> r0 = kotlin.reflect.jvm.internal.impl.b.c.a.C0657a.f37169a     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.a(r1, r2)     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                    kotlin.reflect.jvm.internal.impl.b.c.a$a r0 = (kotlin.reflect.jvm.internal.impl.b.c.a.C0657a) r0     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                    r5 = r0
                    r0 = r4
                    r1 = r5
                    kotlin.reflect.jvm.internal.impl.b.c.a$a$a r0 = r0.a(r1)
                    r0 = r4
                    return r0
                L_0x0018:
                    r6 = move-exception
                    r0 = r7
                    r5 = r0
                    goto L_0x0030
                L_0x001e:
                    r5 = move-exception
                    r0 = r5
                    kotlin.reflect.jvm.internal.impl.protobuf.p r0 = r0.f38108a     // Catch: all -> 0x0018
                    kotlin.reflect.jvm.internal.impl.b.c.a$a r0 = (kotlin.reflect.jvm.internal.impl.b.c.a.C0657a) r0     // Catch: all -> 0x0018
                    r6 = r0
                    r0 = r5
                    throw r0     // Catch: all -> 0x0029
                L_0x0029:
                    r5 = move-exception
                    r0 = r6
                    r7 = r0
                    r0 = r5
                    r6 = r0
                    r0 = r7
                    r5 = r0
                L_0x0030:
                    r0 = r5
                    if (r0 == 0) goto L_0x003a
                    r0 = r4
                    r1 = r5
                    kotlin.reflect.jvm.internal.impl.b.c.a$a$a r0 = r0.a(r1)
                L_0x003a:
                    r0 = r6
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.b.c.a.C0657a.C0658a.b(kotlin.reflect.jvm.internal.impl.protobuf.e, kotlin.reflect.jvm.internal.impl.protobuf.f):kotlin.reflect.jvm.internal.impl.b.c.a$a$a");
            }

            static /* synthetic */ C0658a g() {
                return new C0658a();
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* renamed from: h */
            public C0658a clone() {
                return new C0658a().a(f());
            }

            public final C0658a a(C0657a aVar) {
                if (aVar == C0657a.a()) {
                    return this;
                }
                if (aVar.c()) {
                    a(aVar.f37171b);
                }
                if (aVar.d()) {
                    b(aVar.f37172c);
                }
                this.f38138a = this.f38138a.a(aVar.e);
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.a
            public final /* bridge */ /* synthetic */ C0657a a() {
                return C0657a.a();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.p.a
            public final /* synthetic */ p d() {
                C0657a f = f();
                if (f.e()) {
                    return f;
                }
                throw a((p) f);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
            public final boolean e() {
                return true;
            }

            public final C0657a f() {
                C0657a aVar = new C0657a(this);
                int i = this.f37175b;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                aVar.f37171b = this.f37176c;
                int i3 = i2;
                if ((i & 2) == 2) {
                    i3 = i2 | 2;
                }
                aVar.f37172c = this.f37177d;
                aVar.f = i3;
                return aVar;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.a, kotlin.reflect.jvm.internal.impl.protobuf.q
            public final /* synthetic */ p j() {
                return C0657a.a();
            }
        }

        static {
            C0657a aVar = new C0657a(true);
            f37170d = aVar;
            aVar.k();
        }

        private C0657a(e eVar, f fVar) throws InvalidProtocolBufferException {
            this.g = (byte) (-1);
            this.h = -1;
            k();
            d.b h = kotlin.reflect.jvm.internal.impl.protobuf.d.h();
            CodedOutputStream a2 = CodedOutputStream.a(h, 1);
            boolean z = false;
            while (!z) {
                try {
                    try {
                        int a3 = eVar.a();
                        if (a3 != 0) {
                            if (a3 == 8) {
                                this.f |= 1;
                                this.f37171b = eVar.d();
                            } else if (a3 == 16) {
                                this.f |= 2;
                                this.f37172c = eVar.d();
                            } else if (!a(eVar, a2, fVar, a3)) {
                            }
                        }
                        z = true;
                    } catch (Throwable th) {
                        try {
                            a2.a();
                        } catch (IOException e) {
                        } catch (Throwable th2) {
                            this.e = h.a();
                            throw th2;
                        }
                        this.e = h.a();
                        w();
                        throw th;
                    }
                } catch (InvalidProtocolBufferException e2) {
                    e2.f38108a = this;
                    throw e2;
                } catch (IOException e3) {
                    InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e3.getMessage());
                    invalidProtocolBufferException.f38108a = this;
                    throw invalidProtocolBufferException;
                }
            }
            try {
                a2.a();
            } catch (IOException e4) {
            } catch (Throwable th3) {
                this.e = h.a();
                throw th3;
            }
            this.e = h.a();
            w();
        }

        private C0657a(h.a aVar) {
            super(aVar);
            this.g = (byte) (-1);
            this.h = -1;
            this.e = aVar.f38138a;
        }

        private C0657a(boolean z) {
            this.g = (byte) (-1);
            this.h = -1;
            this.e = kotlin.reflect.jvm.internal.impl.protobuf.d.f38116b;
        }

        public static C0658a a(C0657a aVar) {
            return C0658a.g().a(aVar);
        }

        public static C0657a a() {
            return f37170d;
        }

        private void k() {
            this.f37171b = 0;
            this.f37172c = 0;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final void a(CodedOutputStream codedOutputStream) throws IOException {
            f();
            if ((this.f & 1) == 1) {
                codedOutputStream.a(1, this.f37171b);
            }
            if ((this.f & 2) == 2) {
                codedOutputStream.a(2, this.f37172c);
            }
            codedOutputStream.d(this.e);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.h, kotlin.reflect.jvm.internal.impl.protobuf.p
        public final r<C0657a> b() {
            return f37169a;
        }

        public final boolean c() {
            return (this.f & 1) == 1;
        }

        public final boolean d() {
            return (this.f & 2) == 2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
        public final boolean e() {
            byte b2 = this.g;
            if (b2 == 1) {
                return true;
            }
            if (b2 == 0) {
                return false;
            }
            this.g = (byte) 1;
            return true;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final int f() {
            int i = this.h;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            if ((this.f & 1) == 1) {
                i2 = 0 + CodedOutputStream.c(1, this.f37171b);
            }
            int i3 = i2;
            if ((this.f & 2) == 2) {
                i3 = i2 + CodedOutputStream.c(2, this.f37172c);
            }
            int a2 = i3 + this.e.a();
            this.h = a2;
            return a2;
        }

        /* renamed from: g */
        public final C0658a h() {
            return C0658a.g().a(this);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final /* synthetic */ p.a i() {
            return C0658a.g();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
        public final /* bridge */ /* synthetic */ p j() {
            return f37170d;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/c/a$b.class */
    public static final class b extends h implements kotlin.reflect.jvm.internal.impl.b.c.c {

        /* renamed from: a  reason: collision with root package name */
        public static r<b> f37178a = new kotlin.reflect.jvm.internal.impl.protobuf.b<b>() { // from class: kotlin.reflect.jvm.internal.impl.b.c.a.b.1
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.r
            public final /* synthetic */ Object a(e eVar, f fVar) throws InvalidProtocolBufferException {
                return new b(eVar, fVar);
            }
        };

        /* renamed from: d  reason: collision with root package name */
        private static final b f37179d;

        /* renamed from: b  reason: collision with root package name */
        public int f37180b;

        /* renamed from: c  reason: collision with root package name */
        public int f37181c;
        private final kotlin.reflect.jvm.internal.impl.protobuf.d e;
        private int f;
        private byte g;
        private int h;

        /* renamed from: kotlin.reflect.jvm.internal.impl.b.c.a$b$a  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/c/a$b$a.class */
        public static final class C0659a extends h.a<b, C0659a> implements kotlin.reflect.jvm.internal.impl.b.c.c {

            /* renamed from: b  reason: collision with root package name */
            private int f37185b;

            /* renamed from: c  reason: collision with root package name */
            private int f37186c;

            /* renamed from: d  reason: collision with root package name */
            private int f37187d;

            private C0659a() {
            }

            private C0659a a(int i) {
                this.f37185b |= 1;
                this.f37186c = i;
                return this;
            }

            private C0659a b(int i) {
                this.f37185b |= 2;
                this.f37187d = i;
                return this;
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
            /* renamed from: c */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public kotlin.reflect.jvm.internal.impl.b.c.a.b.C0659a b(kotlin.reflect.jvm.internal.impl.protobuf.e r5, kotlin.reflect.jvm.internal.impl.protobuf.f r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    kotlin.reflect.jvm.internal.impl.protobuf.r<kotlin.reflect.jvm.internal.impl.b.c.a$b> r0 = kotlin.reflect.jvm.internal.impl.b.c.a.b.f37178a     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.a(r1, r2)     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                    kotlin.reflect.jvm.internal.impl.b.c.a$b r0 = (kotlin.reflect.jvm.internal.impl.b.c.a.b) r0     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                    r5 = r0
                    r0 = r4
                    r1 = r5
                    kotlin.reflect.jvm.internal.impl.b.c.a$b$a r0 = r0.a(r1)
                    r0 = r4
                    return r0
                L_0x0018:
                    r5 = move-exception
                    r0 = r7
                    r6 = r0
                    goto L_0x002a
                L_0x001e:
                    r5 = move-exception
                    r0 = r5
                    kotlin.reflect.jvm.internal.impl.protobuf.p r0 = r0.f38108a     // Catch: all -> 0x0018
                    kotlin.reflect.jvm.internal.impl.b.c.a$b r0 = (kotlin.reflect.jvm.internal.impl.b.c.a.b) r0     // Catch: all -> 0x0018
                    r6 = r0
                    r0 = r5
                    throw r0     // Catch: all -> 0x0029
                L_0x0029:
                    r5 = move-exception
                L_0x002a:
                    r0 = r6
                    if (r0 == 0) goto L_0x0034
                    r0 = r4
                    r1 = r6
                    kotlin.reflect.jvm.internal.impl.b.c.a$b$a r0 = r0.a(r1)
                L_0x0034:
                    r0 = r5
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.b.c.a.b.C0659a.b(kotlin.reflect.jvm.internal.impl.protobuf.e, kotlin.reflect.jvm.internal.impl.protobuf.f):kotlin.reflect.jvm.internal.impl.b.c.a$b$a");
            }

            static /* synthetic */ C0659a g() {
                return new C0659a();
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* renamed from: h */
            public C0659a clone() {
                return new C0659a().a(f());
            }

            public final C0659a a(b bVar) {
                if (bVar == b.a()) {
                    return this;
                }
                if (bVar.c()) {
                    a(bVar.f37180b);
                }
                if (bVar.d()) {
                    b(bVar.f37181c);
                }
                this.f38138a = this.f38138a.a(bVar.e);
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.a
            public final /* bridge */ /* synthetic */ b a() {
                return b.a();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.p.a
            public final /* synthetic */ p d() {
                b f = f();
                if (f.e()) {
                    return f;
                }
                throw a((p) f);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
            public final boolean e() {
                return true;
            }

            public final b f() {
                b bVar = new b(this);
                int i = this.f37185b;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                bVar.f37180b = this.f37186c;
                int i3 = i2;
                if ((i & 2) == 2) {
                    i3 = i2 | 2;
                }
                bVar.f37181c = this.f37187d;
                bVar.f = i3;
                return bVar;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.a, kotlin.reflect.jvm.internal.impl.protobuf.q
            public final /* synthetic */ p j() {
                return b.a();
            }
        }

        static {
            b bVar = new b(true);
            f37179d = bVar;
            bVar.k();
        }

        private b(e eVar, f fVar) throws InvalidProtocolBufferException {
            this.g = (byte) (-1);
            this.h = -1;
            k();
            d.b h = kotlin.reflect.jvm.internal.impl.protobuf.d.h();
            CodedOutputStream a2 = CodedOutputStream.a(h, 1);
            boolean z = false;
            while (!z) {
                try {
                    try {
                        int a3 = eVar.a();
                        if (a3 != 0) {
                            if (a3 == 8) {
                                this.f |= 1;
                                this.f37180b = eVar.d();
                            } else if (a3 == 16) {
                                this.f |= 2;
                                this.f37181c = eVar.d();
                            } else if (!a(eVar, a2, fVar, a3)) {
                            }
                        }
                        z = true;
                    } catch (Throwable th) {
                        try {
                            a2.a();
                        } catch (IOException e) {
                        } catch (Throwable th2) {
                            this.e = h.a();
                            throw th2;
                        }
                        this.e = h.a();
                        w();
                        throw th;
                    }
                } catch (InvalidProtocolBufferException e2) {
                    e2.f38108a = this;
                    throw e2;
                } catch (IOException e3) {
                    InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e3.getMessage());
                    invalidProtocolBufferException.f38108a = this;
                    throw invalidProtocolBufferException;
                }
            }
            try {
                a2.a();
            } catch (IOException e4) {
            } catch (Throwable th3) {
                this.e = h.a();
                throw th3;
            }
            this.e = h.a();
            w();
        }

        private b(h.a aVar) {
            super(aVar);
            this.g = (byte) (-1);
            this.h = -1;
            this.e = aVar.f38138a;
        }

        private b(boolean z) {
            this.g = (byte) (-1);
            this.h = -1;
            this.e = kotlin.reflect.jvm.internal.impl.protobuf.d.f38116b;
        }

        public static C0659a a(b bVar) {
            return C0659a.g().a(bVar);
        }

        public static b a() {
            return f37179d;
        }

        private void k() {
            this.f37180b = 0;
            this.f37181c = 0;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final void a(CodedOutputStream codedOutputStream) throws IOException {
            f();
            if ((this.f & 1) == 1) {
                codedOutputStream.a(1, this.f37180b);
            }
            if ((this.f & 2) == 2) {
                codedOutputStream.a(2, this.f37181c);
            }
            codedOutputStream.d(this.e);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.h, kotlin.reflect.jvm.internal.impl.protobuf.p
        public final r<b> b() {
            return f37178a;
        }

        public final boolean c() {
            return (this.f & 1) == 1;
        }

        public final boolean d() {
            return (this.f & 2) == 2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
        public final boolean e() {
            byte b2 = this.g;
            if (b2 == 1) {
                return true;
            }
            if (b2 == 0) {
                return false;
            }
            this.g = (byte) 1;
            return true;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final int f() {
            int i = this.h;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            if ((this.f & 1) == 1) {
                i2 = 0 + CodedOutputStream.c(1, this.f37180b);
            }
            int i3 = i2;
            if ((this.f & 2) == 2) {
                i3 = i2 + CodedOutputStream.c(2, this.f37181c);
            }
            int a2 = i3 + this.e.a();
            this.h = a2;
            return a2;
        }

        /* renamed from: g */
        public final C0659a h() {
            return C0659a.g().a(this);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final /* synthetic */ p.a i() {
            return C0659a.g();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
        public final /* bridge */ /* synthetic */ p j() {
            return f37179d;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/c/a$c.class */
    public static final class c extends h implements kotlin.reflect.jvm.internal.impl.b.c.d {

        /* renamed from: a  reason: collision with root package name */
        public static r<c> f37188a = new kotlin.reflect.jvm.internal.impl.protobuf.b<c>() { // from class: kotlin.reflect.jvm.internal.impl.b.c.a.c.1
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.r
            public final /* synthetic */ Object a(e eVar, f fVar) throws InvalidProtocolBufferException {
                return new c(eVar, fVar);
            }
        };
        private static final c f;

        /* renamed from: b  reason: collision with root package name */
        public C0657a f37189b;

        /* renamed from: c  reason: collision with root package name */
        public b f37190c;

        /* renamed from: d  reason: collision with root package name */
        public b f37191d;
        public b e;
        private final kotlin.reflect.jvm.internal.impl.protobuf.d g;
        private int h;
        private byte i;
        private int j;

        /* renamed from: kotlin.reflect.jvm.internal.impl.b.c.a$c$a  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/c/a$c$a.class */
        public static final class C0660a extends h.a<c, C0660a> implements kotlin.reflect.jvm.internal.impl.b.c.d {

            /* renamed from: b  reason: collision with root package name */
            private int f37195b;

            /* renamed from: c  reason: collision with root package name */
            private C0657a f37196c = C0657a.a();

            /* renamed from: d  reason: collision with root package name */
            private b f37197d = b.a();
            private b e = b.a();
            private b f = b.a();

            private C0660a() {
            }

            private C0660a a(C0657a aVar) {
                if ((this.f37195b & 1) != 1 || this.f37196c == C0657a.a()) {
                    this.f37196c = aVar;
                } else {
                    this.f37196c = C0657a.a(this.f37196c).a(aVar).f();
                }
                this.f37195b |= 1;
                return this;
            }

            private C0660a a(b bVar) {
                if ((this.f37195b & 2) != 2 || this.f37197d == b.a()) {
                    this.f37197d = bVar;
                } else {
                    this.f37197d = b.a(this.f37197d).a(bVar).f();
                }
                this.f37195b |= 2;
                return this;
            }

            private C0660a b(b bVar) {
                if ((this.f37195b & 4) != 4 || this.e == b.a()) {
                    this.e = bVar;
                } else {
                    this.e = b.a(this.e).a(bVar).f();
                }
                this.f37195b |= 4;
                return this;
            }

            private C0660a c(b bVar) {
                if ((this.f37195b & 8) != 8 || this.f == b.a()) {
                    this.f = bVar;
                } else {
                    this.f = b.a(this.f).a(bVar).f();
                }
                this.f37195b |= 8;
                return this;
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
            /* renamed from: c */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public kotlin.reflect.jvm.internal.impl.b.c.a.c.C0660a b(kotlin.reflect.jvm.internal.impl.protobuf.e r5, kotlin.reflect.jvm.internal.impl.protobuf.f r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    kotlin.reflect.jvm.internal.impl.protobuf.r<kotlin.reflect.jvm.internal.impl.b.c.a$c> r0 = kotlin.reflect.jvm.internal.impl.b.c.a.c.f37188a     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.a(r1, r2)     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                    kotlin.reflect.jvm.internal.impl.b.c.a$c r0 = (kotlin.reflect.jvm.internal.impl.b.c.a.c) r0     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                    r5 = r0
                    r0 = r4
                    r1 = r5
                    kotlin.reflect.jvm.internal.impl.b.c.a$c$a r0 = r0.a(r1)
                    r0 = r4
                    return r0
                L_0x0018:
                    r5 = move-exception
                    r0 = r7
                    r6 = r0
                    goto L_0x002a
                L_0x001e:
                    r5 = move-exception
                    r0 = r5
                    kotlin.reflect.jvm.internal.impl.protobuf.p r0 = r0.f38108a     // Catch: all -> 0x0018
                    kotlin.reflect.jvm.internal.impl.b.c.a$c r0 = (kotlin.reflect.jvm.internal.impl.b.c.a.c) r0     // Catch: all -> 0x0018
                    r6 = r0
                    r0 = r5
                    throw r0     // Catch: all -> 0x0029
                L_0x0029:
                    r5 = move-exception
                L_0x002a:
                    r0 = r6
                    if (r0 == 0) goto L_0x0034
                    r0 = r4
                    r1 = r6
                    kotlin.reflect.jvm.internal.impl.b.c.a$c$a r0 = r0.a(r1)
                L_0x0034:
                    r0 = r5
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.b.c.a.c.C0660a.b(kotlin.reflect.jvm.internal.impl.protobuf.e, kotlin.reflect.jvm.internal.impl.protobuf.f):kotlin.reflect.jvm.internal.impl.b.c.a$c$a");
            }

            static /* synthetic */ C0660a f() {
                return new C0660a();
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* renamed from: g */
            public C0660a clone() {
                return new C0660a().a(h());
            }

            private c h() {
                c cVar = new c(this);
                int i = this.f37195b;
                int i2 = 1;
                if ((i & 1) != 1) {
                    i2 = 0;
                }
                cVar.f37189b = this.f37196c;
                int i3 = i2;
                if ((i & 2) == 2) {
                    i3 = i2 | 2;
                }
                cVar.f37190c = this.f37197d;
                int i4 = i3;
                if ((i & 4) == 4) {
                    i4 = i3 | 4;
                }
                cVar.f37191d = this.e;
                int i5 = i4;
                if ((i & 8) == 8) {
                    i5 = i4 | 8;
                }
                cVar.e = this.f;
                cVar.h = i5;
                return cVar;
            }

            public final C0660a a(c cVar) {
                if (cVar == c.a()) {
                    return this;
                }
                if (cVar.c()) {
                    a(cVar.f37189b);
                }
                if (cVar.d()) {
                    a(cVar.f37190c);
                }
                if (cVar.g()) {
                    b(cVar.f37191d);
                }
                if (cVar.k()) {
                    c(cVar.e);
                }
                this.f38138a = this.f38138a.a(cVar.g);
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.a
            public final /* bridge */ /* synthetic */ c a() {
                return c.a();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.p.a
            public final /* synthetic */ p d() {
                c h = h();
                if (h.e()) {
                    return h;
                }
                throw a((p) h);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
            public final boolean e() {
                return true;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.a, kotlin.reflect.jvm.internal.impl.protobuf.q
            public final /* synthetic */ p j() {
                return c.a();
            }
        }

        static {
            c cVar = new c(true);
            f = cVar;
            cVar.l();
        }

        private c(e eVar, f fVar) throws InvalidProtocolBufferException {
            this.i = (byte) (-1);
            this.j = -1;
            l();
            d.b h = kotlin.reflect.jvm.internal.impl.protobuf.d.h();
            CodedOutputStream a2 = CodedOutputStream.a(h, 1);
            boolean z = false;
            while (!z) {
                try {
                    try {
                        try {
                            int a3 = eVar.a();
                            if (a3 != 0) {
                                b.C0659a aVar = null;
                                b.C0659a aVar2 = null;
                                C0657a.C0658a aVar3 = null;
                                b.C0659a aVar4 = null;
                                if (a3 == 10) {
                                    aVar3 = (this.h & 1) == 1 ? this.f37189b.h() : aVar3;
                                    C0657a aVar5 = (C0657a) eVar.a(C0657a.f37169a, fVar);
                                    this.f37189b = aVar5;
                                    if (aVar3 != null) {
                                        aVar3.a(aVar5);
                                        this.f37189b = aVar3.f();
                                    }
                                    this.h |= 1;
                                } else if (a3 == 18) {
                                    aVar2 = (this.h & 2) == 2 ? this.f37190c.h() : aVar2;
                                    b bVar = (b) eVar.a(b.f37178a, fVar);
                                    this.f37190c = bVar;
                                    if (aVar2 != null) {
                                        aVar2.a(bVar);
                                        this.f37190c = aVar2.f();
                                    }
                                    this.h |= 2;
                                } else if (a3 == 26) {
                                    aVar = (this.h & 4) == 4 ? this.f37191d.h() : aVar;
                                    b bVar2 = (b) eVar.a(b.f37178a, fVar);
                                    this.f37191d = bVar2;
                                    if (aVar != null) {
                                        aVar.a(bVar2);
                                        this.f37191d = aVar.f();
                                    }
                                    this.h |= 4;
                                } else if (a3 == 34) {
                                    aVar4 = (this.h & 8) == 8 ? this.e.h() : aVar4;
                                    b bVar3 = (b) eVar.a(b.f37178a, fVar);
                                    this.e = bVar3;
                                    if (aVar4 != null) {
                                        aVar4.a(bVar3);
                                        this.e = aVar4.f();
                                    }
                                    this.h |= 8;
                                } else if (!a(eVar, a2, fVar, a3)) {
                                }
                            }
                            z = true;
                        } catch (IOException e) {
                            InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e.getMessage());
                            invalidProtocolBufferException.f38108a = this;
                            throw invalidProtocolBufferException;
                        }
                    } catch (InvalidProtocolBufferException e2) {
                        e2.f38108a = this;
                        throw e2;
                    }
                } catch (Throwable th) {
                    try {
                        a2.a();
                    } catch (IOException e3) {
                    } catch (Throwable th2) {
                        this.g = h.a();
                        throw th2;
                    }
                    this.g = h.a();
                    w();
                    throw th;
                }
            }
            try {
                a2.a();
            } catch (IOException e4) {
            } catch (Throwable th3) {
                this.g = h.a();
                throw th3;
            }
            this.g = h.a();
            w();
        }

        private c(h.a aVar) {
            super(aVar);
            this.i = (byte) (-1);
            this.j = -1;
            this.g = aVar.f38138a;
        }

        private c(boolean z) {
            this.i = (byte) (-1);
            this.j = -1;
            this.g = kotlin.reflect.jvm.internal.impl.protobuf.d.f38116b;
        }

        public static c a() {
            return f;
        }

        private void l() {
            this.f37189b = C0657a.a();
            this.f37190c = b.a();
            this.f37191d = b.a();
            this.e = b.a();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final void a(CodedOutputStream codedOutputStream) throws IOException {
            f();
            if ((this.h & 1) == 1) {
                codedOutputStream.a(1, this.f37189b);
            }
            if ((this.h & 2) == 2) {
                codedOutputStream.a(2, this.f37190c);
            }
            if ((this.h & 4) == 4) {
                codedOutputStream.a(3, this.f37191d);
            }
            if ((this.h & 8) == 8) {
                codedOutputStream.a(4, this.e);
            }
            codedOutputStream.d(this.g);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.h, kotlin.reflect.jvm.internal.impl.protobuf.p
        public final r<c> b() {
            return f37188a;
        }

        public final boolean c() {
            return (this.h & 1) == 1;
        }

        public final boolean d() {
            return (this.h & 2) == 2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
        public final boolean e() {
            byte b2 = this.i;
            if (b2 == 1) {
                return true;
            }
            if (b2 == 0) {
                return false;
            }
            this.i = (byte) 1;
            return true;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final int f() {
            int i = this.j;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            if ((this.h & 1) == 1) {
                i2 = 0 + CodedOutputStream.c(1, this.f37189b);
            }
            int i3 = i2;
            if ((this.h & 2) == 2) {
                i3 = i2 + CodedOutputStream.c(2, this.f37190c);
            }
            int i4 = i3;
            if ((this.h & 4) == 4) {
                i4 = i3 + CodedOutputStream.c(3, this.f37191d);
            }
            int i5 = i4;
            if ((this.h & 8) == 8) {
                i5 = i4 + CodedOutputStream.c(4, this.e);
            }
            int a2 = i5 + this.g.a();
            this.j = a2;
            return a2;
        }

        public final boolean g() {
            return (this.h & 4) == 4;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final /* synthetic */ p.a h() {
            return C0660a.f().a(this);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final /* synthetic */ p.a i() {
            return C0660a.f();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
        public final /* bridge */ /* synthetic */ p j() {
            return f;
        }

        public final boolean k() {
            return (this.h & 8) == 8;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/c/a$d.class */
    public static final class d extends h implements f {

        /* renamed from: a  reason: collision with root package name */
        public static r<d> f37198a = new kotlin.reflect.jvm.internal.impl.protobuf.b<d>() { // from class: kotlin.reflect.jvm.internal.impl.b.c.a.d.1
            @Override // kotlin.reflect.jvm.internal.impl.protobuf.r
            public final /* synthetic */ Object a(e eVar, f fVar) throws InvalidProtocolBufferException {
                return new d(eVar, fVar);
            }
        };

        /* renamed from: d  reason: collision with root package name */
        private static final d f37199d;

        /* renamed from: b  reason: collision with root package name */
        public List<b> f37200b;

        /* renamed from: c  reason: collision with root package name */
        public List<Integer> f37201c;
        private final kotlin.reflect.jvm.internal.impl.protobuf.d e;
        private int f;
        private byte g;
        private int h;

        /* renamed from: kotlin.reflect.jvm.internal.impl.b.c.a$d$a  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/c/a$d$a.class */
        public static final class C0661a extends h.a<d, C0661a> implements f {

            /* renamed from: b  reason: collision with root package name */
            private int f37206b;

            /* renamed from: c  reason: collision with root package name */
            private List<b> f37207c = Collections.emptyList();

            /* renamed from: d  reason: collision with root package name */
            private List<Integer> f37208d = Collections.emptyList();

            private C0661a() {
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
            /* renamed from: c */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public kotlin.reflect.jvm.internal.impl.b.c.a.d.C0661a b(kotlin.reflect.jvm.internal.impl.protobuf.e r5, kotlin.reflect.jvm.internal.impl.protobuf.f r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    kotlin.reflect.jvm.internal.impl.protobuf.r<kotlin.reflect.jvm.internal.impl.b.c.a$d> r0 = kotlin.reflect.jvm.internal.impl.b.c.a.d.f37198a     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.a(r1, r2)     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                    kotlin.reflect.jvm.internal.impl.b.c.a$d r0 = (kotlin.reflect.jvm.internal.impl.b.c.a.d) r0     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                    r5 = r0
                    r0 = r4
                    r1 = r5
                    kotlin.reflect.jvm.internal.impl.b.c.a$d$a r0 = r0.a(r1)
                    r0 = r4
                    return r0
                L_0x0018:
                    r5 = move-exception
                    r0 = r7
                    r6 = r0
                    goto L_0x002a
                L_0x001e:
                    r5 = move-exception
                    r0 = r5
                    kotlin.reflect.jvm.internal.impl.protobuf.p r0 = r0.f38108a     // Catch: all -> 0x0018
                    kotlin.reflect.jvm.internal.impl.b.c.a$d r0 = (kotlin.reflect.jvm.internal.impl.b.c.a.d) r0     // Catch: all -> 0x0018
                    r6 = r0
                    r0 = r5
                    throw r0     // Catch: all -> 0x0029
                L_0x0029:
                    r5 = move-exception
                L_0x002a:
                    r0 = r6
                    if (r0 == 0) goto L_0x0034
                    r0 = r4
                    r1 = r6
                    kotlin.reflect.jvm.internal.impl.b.c.a$d$a r0 = r0.a(r1)
                L_0x0034:
                    r0 = r5
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.b.c.a.d.C0661a.b(kotlin.reflect.jvm.internal.impl.protobuf.e, kotlin.reflect.jvm.internal.impl.protobuf.f):kotlin.reflect.jvm.internal.impl.b.c.a$d$a");
            }

            static /* synthetic */ C0661a f() {
                return new C0661a();
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* renamed from: g */
            public C0661a clone() {
                return new C0661a().a(h());
            }

            private d h() {
                d dVar = new d(this);
                if ((this.f37206b & 1) == 1) {
                    this.f37207c = Collections.unmodifiableList(this.f37207c);
                    this.f37206b &= -2;
                }
                dVar.f37200b = this.f37207c;
                if ((this.f37206b & 2) == 2) {
                    this.f37208d = Collections.unmodifiableList(this.f37208d);
                    this.f37206b &= -3;
                }
                dVar.f37201c = this.f37208d;
                return dVar;
            }

            private void i() {
                if ((this.f37206b & 1) != 1) {
                    this.f37207c = new ArrayList(this.f37207c);
                    this.f37206b |= 1;
                }
            }

            private void k() {
                if ((this.f37206b & 2) != 2) {
                    this.f37208d = new ArrayList(this.f37208d);
                    this.f37206b |= 2;
                }
            }

            public final C0661a a(d dVar) {
                if (dVar == d.a()) {
                    return this;
                }
                if (!dVar.f37200b.isEmpty()) {
                    if (this.f37207c.isEmpty()) {
                        this.f37207c = dVar.f37200b;
                        this.f37206b &= -2;
                    } else {
                        i();
                        this.f37207c.addAll(dVar.f37200b);
                    }
                }
                if (!dVar.f37201c.isEmpty()) {
                    if (this.f37208d.isEmpty()) {
                        this.f37208d = dVar.f37201c;
                        this.f37206b &= -3;
                    } else {
                        k();
                        this.f37208d.addAll(dVar.f37201c);
                    }
                }
                this.f38138a = this.f38138a.a(dVar.e);
                return this;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.a
            public final /* bridge */ /* synthetic */ d a() {
                return d.a();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.p.a
            public final /* synthetic */ p d() {
                d h = h();
                if (h.e()) {
                    return h;
                }
                throw a((p) h);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
            public final boolean e() {
                return true;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.a, kotlin.reflect.jvm.internal.impl.protobuf.q
            public final /* synthetic */ p j() {
                return d.a();
            }
        }

        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/c/a$d$b.class */
        public static final class b extends h implements e {

            /* renamed from: a  reason: collision with root package name */
            public static r<b> f37209a = new kotlin.reflect.jvm.internal.impl.protobuf.b<b>() { // from class: kotlin.reflect.jvm.internal.impl.b.c.a.d.b.1
                @Override // kotlin.reflect.jvm.internal.impl.protobuf.r
                public final /* synthetic */ Object a(e eVar, f fVar) throws InvalidProtocolBufferException {
                    return new b(eVar, fVar);
                }
            };
            private static final b h;

            /* renamed from: b  reason: collision with root package name */
            public int f37210b;

            /* renamed from: c  reason: collision with root package name */
            public int f37211c;

            /* renamed from: d  reason: collision with root package name */
            public Object f37212d;
            public EnumC0663b e;
            public List<Integer> f;
            public List<Integer> g;
            private final kotlin.reflect.jvm.internal.impl.protobuf.d i;
            private int j;
            private int k;
            private int l;
            private byte m;
            private int n;

            /* renamed from: kotlin.reflect.jvm.internal.impl.b.c.a$d$b$a  reason: collision with other inner class name */
            /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/c/a$d$b$a.class */
            public static final class C0662a extends h.a<b, C0662a> implements e {

                /* renamed from: b  reason: collision with root package name */
                private int f37213b;

                /* renamed from: d  reason: collision with root package name */
                private int f37215d;

                /* renamed from: c  reason: collision with root package name */
                private int f37214c = 1;
                private Object e = "";
                private EnumC0663b f = EnumC0663b.NONE;
                private List<Integer> g = Collections.emptyList();
                private List<Integer> h = Collections.emptyList();

                private C0662a() {
                }

                private C0662a a(int i) {
                    this.f37213b |= 1;
                    this.f37214c = i;
                    return this;
                }

                private C0662a a(EnumC0663b bVar) {
                    Objects.requireNonNull(bVar);
                    this.f37213b |= 8;
                    this.f = bVar;
                    return this;
                }

                private C0662a b(int i) {
                    this.f37213b |= 2;
                    this.f37215d = i;
                    return this;
                }

                /* JADX INFO: Access modifiers changed from: private */
                /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
                /* renamed from: c */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public kotlin.reflect.jvm.internal.impl.b.c.a.d.b.C0662a b(kotlin.reflect.jvm.internal.impl.protobuf.e r5, kotlin.reflect.jvm.internal.impl.protobuf.f r6) throws java.io.IOException {
                    /*
                        r4 = this;
                        r0 = 0
                        r7 = r0
                        kotlin.reflect.jvm.internal.impl.protobuf.r<kotlin.reflect.jvm.internal.impl.b.c.a$d$b> r0 = kotlin.reflect.jvm.internal.impl.b.c.a.d.b.f37209a     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                        r1 = r5
                        r2 = r6
                        java.lang.Object r0 = r0.a(r1, r2)     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                        kotlin.reflect.jvm.internal.impl.b.c.a$d$b r0 = (kotlin.reflect.jvm.internal.impl.b.c.a.d.b) r0     // Catch: all -> 0x0018, InvalidProtocolBufferException -> 0x001e
                        r5 = r0
                        r0 = r4
                        r1 = r5
                        kotlin.reflect.jvm.internal.impl.b.c.a$d$b$a r0 = r0.a(r1)
                        r0 = r4
                        return r0
                    L_0x0018:
                        r6 = move-exception
                        r0 = r7
                        r5 = r0
                        goto L_0x002a
                    L_0x001e:
                        r6 = move-exception
                        r0 = r6
                        kotlin.reflect.jvm.internal.impl.protobuf.p r0 = r0.f38108a     // Catch: all -> 0x0018
                        kotlin.reflect.jvm.internal.impl.b.c.a$d$b r0 = (kotlin.reflect.jvm.internal.impl.b.c.a.d.b) r0     // Catch: all -> 0x0018
                        r5 = r0
                        r0 = r6
                        throw r0     // Catch: all -> 0x0029
                    L_0x0029:
                        r6 = move-exception
                    L_0x002a:
                        r0 = r5
                        if (r0 == 0) goto L_0x0034
                        r0 = r4
                        r1 = r5
                        kotlin.reflect.jvm.internal.impl.b.c.a$d$b$a r0 = r0.a(r1)
                    L_0x0034:
                        r0 = r6
                        throw r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.b.c.a.d.b.C0662a.b(kotlin.reflect.jvm.internal.impl.protobuf.e, kotlin.reflect.jvm.internal.impl.protobuf.f):kotlin.reflect.jvm.internal.impl.b.c.a$d$b$a");
                }

                static /* synthetic */ C0662a f() {
                    return new C0662a();
                }

                /* JADX INFO: Access modifiers changed from: private */
                /* renamed from: g */
                public C0662a clone() {
                    return new C0662a().a(h());
                }

                private b h() {
                    b bVar = new b(this);
                    int i = this.f37213b;
                    int i2 = 1;
                    if ((i & 1) != 1) {
                        i2 = 0;
                    }
                    bVar.f37210b = this.f37214c;
                    int i3 = i2;
                    if ((i & 2) == 2) {
                        i3 = i2 | 2;
                    }
                    bVar.f37211c = this.f37215d;
                    int i4 = i3;
                    if ((i & 4) == 4) {
                        i4 = i3 | 4;
                    }
                    bVar.f37212d = this.e;
                    int i5 = i4;
                    if ((i & 8) == 8) {
                        i5 = i4 | 8;
                    }
                    bVar.e = this.f;
                    if ((this.f37213b & 16) == 16) {
                        this.g = Collections.unmodifiableList(this.g);
                        this.f37213b &= -17;
                    }
                    bVar.f = this.g;
                    if ((this.f37213b & 32) == 32) {
                        this.h = Collections.unmodifiableList(this.h);
                        this.f37213b &= -33;
                    }
                    bVar.g = this.h;
                    bVar.j = i5;
                    return bVar;
                }

                private void i() {
                    if ((this.f37213b & 16) != 16) {
                        this.g = new ArrayList(this.g);
                        this.f37213b |= 16;
                    }
                }

                private void k() {
                    if ((this.f37213b & 32) != 32) {
                        this.h = new ArrayList(this.h);
                        this.f37213b |= 32;
                    }
                }

                public final C0662a a(b bVar) {
                    if (bVar == b.a()) {
                        return this;
                    }
                    if (bVar.c()) {
                        a(bVar.f37210b);
                    }
                    if (bVar.d()) {
                        b(bVar.f37211c);
                    }
                    if (bVar.g()) {
                        this.f37213b |= 4;
                        this.e = bVar.f37212d;
                    }
                    if (bVar.k()) {
                        a(bVar.e);
                    }
                    if (!bVar.f.isEmpty()) {
                        if (this.g.isEmpty()) {
                            this.g = bVar.f;
                            this.f37213b &= -17;
                        } else {
                            i();
                            this.g.addAll(bVar.f);
                        }
                    }
                    if (!bVar.g.isEmpty()) {
                        if (this.h.isEmpty()) {
                            this.h = bVar.g;
                            this.f37213b &= -33;
                        } else {
                            k();
                            this.h.addAll(bVar.g);
                        }
                    }
                    this.f38138a = this.f38138a.a(bVar.i);
                    return this;
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.a
                public final /* bridge */ /* synthetic */ b a() {
                    return b.a();
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.p.a
                public final /* synthetic */ p d() {
                    b h = h();
                    if (h.e()) {
                        return h;
                    }
                    throw a((p) h);
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
                public final boolean e() {
                    return true;
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.h.a, kotlin.reflect.jvm.internal.impl.protobuf.q
                public final /* synthetic */ p j() {
                    return b.a();
                }
            }

            /* renamed from: kotlin.reflect.jvm.internal.impl.b.c.a$d$b$b  reason: collision with other inner class name */
            /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/c/a$d$b$b.class */
            public enum EnumC0663b implements j.a {
                NONE(0, 0),
                INTERNAL_TO_CLASS_ID(1, 1),
                DESC_TO_CLASS_ID(2, 2);
                
                private static j.b<EnumC0663b> internalValueMap = new j.b<EnumC0663b>() { // from class: kotlin.reflect.jvm.internal.impl.b.c.a.d.b.b.1
                    @Override // kotlin.reflect.jvm.internal.impl.protobuf.j.b
                    public final /* synthetic */ EnumC0663b a(int i) {
                        return EnumC0663b.valueOf(i);
                    }
                };
                private final int value;

                EnumC0663b(int i, int i2) {
                    this.value = i2;
                }

                public static EnumC0663b valueOf(int i) {
                    if (i == 0) {
                        return NONE;
                    }
                    if (i == 1) {
                        return INTERNAL_TO_CLASS_ID;
                    }
                    if (i != 2) {
                        return null;
                    }
                    return DESC_TO_CLASS_ID;
                }

                @Override // kotlin.reflect.jvm.internal.impl.protobuf.j.a
                public final int getNumber() {
                    return this.value;
                }
            }

            static {
                b bVar = new b(true);
                h = bVar;
                bVar.m();
            }

            private b(e eVar, f fVar) throws InvalidProtocolBufferException {
                this.k = -1;
                this.l = -1;
                this.m = (byte) (-1);
                this.n = -1;
                m();
                d.b h2 = kotlin.reflect.jvm.internal.impl.protobuf.d.h();
                CodedOutputStream a2 = CodedOutputStream.a(h2, 1);
                boolean z = false;
                boolean z2 = false;
                while (!z) {
                    try {
                        try {
                            try {
                                int a3 = eVar.a();
                                if (a3 != 0) {
                                    if (a3 == 8) {
                                        this.j |= 1;
                                        this.f37210b = eVar.d();
                                    } else if (a3 == 16) {
                                        this.j |= 2;
                                        this.f37211c = eVar.d();
                                    } else if (a3 == 24) {
                                        int d2 = eVar.d();
                                        EnumC0663b valueOf = EnumC0663b.valueOf(d2);
                                        if (valueOf == null) {
                                            a2.e(a3);
                                            a2.e(d2);
                                        } else {
                                            this.j |= 8;
                                            this.e = valueOf;
                                        }
                                    } else if (a3 == 32) {
                                        z2 = z2;
                                        if (!(z2 & true)) {
                                            this.f = new ArrayList();
                                            z2 |= true;
                                        }
                                        this.f.add(Integer.valueOf(eVar.d()));
                                    } else if (a3 == 34) {
                                        int b2 = eVar.b(eVar.d());
                                        z2 = z2;
                                        if (!(z2 & true)) {
                                            z2 = z2;
                                            if (eVar.h() > 0) {
                                                this.f = new ArrayList();
                                                z2 |= true;
                                            }
                                        }
                                        while (eVar.h() > 0) {
                                            this.f.add(Integer.valueOf(eVar.d()));
                                        }
                                        eVar.c(b2);
                                    } else if (a3 == 40) {
                                        z2 = z2;
                                        if (!(z2 & true)) {
                                            this.g = new ArrayList();
                                            z2 |= true;
                                        }
                                        this.g.add(Integer.valueOf(eVar.d()));
                                    } else if (a3 == 42) {
                                        int b3 = eVar.b(eVar.d());
                                        z2 = z2;
                                        if (!(z2 & true)) {
                                            z2 = z2;
                                            if (eVar.h() > 0) {
                                                this.g = new ArrayList();
                                                z2 |= true;
                                            }
                                        }
                                        while (eVar.h() > 0) {
                                            this.g.add(Integer.valueOf(eVar.d()));
                                        }
                                        eVar.c(b3);
                                    } else if (a3 == 50) {
                                        kotlin.reflect.jvm.internal.impl.protobuf.d c2 = eVar.c();
                                        this.j |= 4;
                                        this.f37212d = c2;
                                    } else if (!a(eVar, a2, fVar, a3)) {
                                    }
                                }
                                z = true;
                            } catch (InvalidProtocolBufferException e) {
                                e.f38108a = this;
                                throw e;
                            }
                        } catch (IOException e2) {
                            InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e2.getMessage());
                            invalidProtocolBufferException.f38108a = this;
                            throw invalidProtocolBufferException;
                        }
                    } catch (Throwable th) {
                        if (z2 & true) {
                            this.f = Collections.unmodifiableList(this.f);
                        }
                        if (z2 & true) {
                            this.g = Collections.unmodifiableList(this.g);
                        }
                        try {
                            a2.a();
                        } catch (IOException e3) {
                        } catch (Throwable th2) {
                            this.i = h2.a();
                            throw th2;
                        }
                        this.i = h2.a();
                        w();
                        throw th;
                    }
                }
                if (z2 & true) {
                    this.f = Collections.unmodifiableList(this.f);
                }
                if (z2 & true) {
                    this.g = Collections.unmodifiableList(this.g);
                }
                try {
                    a2.a();
                } catch (IOException e4) {
                } catch (Throwable th3) {
                    this.i = h2.a();
                    throw th3;
                }
                this.i = h2.a();
                w();
            }

            private b(h.a aVar) {
                super(aVar);
                this.k = -1;
                this.l = -1;
                this.m = (byte) (-1);
                this.n = -1;
                this.i = aVar.f38138a;
            }

            private b(boolean z) {
                this.k = -1;
                this.l = -1;
                this.m = (byte) (-1);
                this.n = -1;
                this.i = kotlin.reflect.jvm.internal.impl.protobuf.d.f38116b;
            }

            public static b a() {
                return h;
            }

            private kotlin.reflect.jvm.internal.impl.protobuf.d l() {
                Object obj = this.f37212d;
                if (!(obj instanceof String)) {
                    return (kotlin.reflect.jvm.internal.impl.protobuf.d) obj;
                }
                kotlin.reflect.jvm.internal.impl.protobuf.d a2 = kotlin.reflect.jvm.internal.impl.protobuf.d.a((String) obj);
                this.f37212d = a2;
                return a2;
            }

            private void m() {
                this.f37210b = 1;
                this.f37211c = 0;
                this.f37212d = "";
                this.e = EnumC0663b.NONE;
                this.f = Collections.emptyList();
                this.g = Collections.emptyList();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
            public final void a(CodedOutputStream codedOutputStream) throws IOException {
                f();
                if ((this.j & 1) == 1) {
                    codedOutputStream.a(1, this.f37210b);
                }
                if ((this.j & 2) == 2) {
                    codedOutputStream.a(2, this.f37211c);
                }
                if ((this.j & 8) == 8) {
                    codedOutputStream.b(3, this.e.getNumber());
                }
                if (this.f.size() > 0) {
                    codedOutputStream.e(34);
                    codedOutputStream.e(this.k);
                }
                for (int i = 0; i < this.f.size(); i++) {
                    codedOutputStream.a(this.f.get(i).intValue());
                }
                int i2 = 0;
                if (this.g.size() > 0) {
                    codedOutputStream.e(42);
                    codedOutputStream.e(this.l);
                    i2 = 0;
                }
                while (i2 < this.g.size()) {
                    codedOutputStream.a(this.g.get(i2).intValue());
                    i2++;
                }
                if ((this.j & 4) == 4) {
                    codedOutputStream.a(6, l());
                }
                codedOutputStream.d(this.i);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.h, kotlin.reflect.jvm.internal.impl.protobuf.p
            public final r<b> b() {
                return f37209a;
            }

            public final boolean c() {
                return (this.j & 1) == 1;
            }

            public final boolean d() {
                return (this.j & 2) == 2;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
            public final boolean e() {
                byte b2 = this.m;
                if (b2 == 1) {
                    return true;
                }
                if (b2 == 0) {
                    return false;
                }
                this.m = (byte) 1;
                return true;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
            public final int f() {
                int i = this.n;
                if (i != -1) {
                    return i;
                }
                int c2 = (this.j & 1) == 1 ? CodedOutputStream.c(1, this.f37210b) + 0 : 0;
                int i2 = c2;
                if ((this.j & 2) == 2) {
                    i2 = c2 + CodedOutputStream.c(2, this.f37211c);
                }
                int i3 = i2;
                if ((this.j & 8) == 8) {
                    i3 = i2 + CodedOutputStream.d(3, this.e.getNumber());
                }
                int i4 = 0;
                for (int i5 = 0; i5 < this.f.size(); i5++) {
                    i4 += CodedOutputStream.c(this.f.get(i5).intValue());
                }
                int i6 = i3 + i4;
                int i7 = i6;
                if (!this.f.isEmpty()) {
                    i7 = i6 + 1 + CodedOutputStream.c(i4);
                }
                this.k = i4;
                int i8 = 0;
                for (int i9 = 0; i9 < this.g.size(); i9++) {
                    i8 += CodedOutputStream.c(this.g.get(i9).intValue());
                }
                int i10 = i7 + i8;
                int i11 = i10;
                if (!this.g.isEmpty()) {
                    i11 = i10 + 1 + CodedOutputStream.c(i8);
                }
                this.l = i8;
                int i12 = i11;
                if ((this.j & 4) == 4) {
                    i12 = i11 + CodedOutputStream.b(l());
                }
                int a2 = i12 + this.i.a();
                this.n = a2;
                return a2;
            }

            public final boolean g() {
                return (this.j & 4) == 4;
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
            public final /* synthetic */ p.a h() {
                return C0662a.f().a(this);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
            public final /* synthetic */ p.a i() {
                return C0662a.f();
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
            public final /* bridge */ /* synthetic */ p j() {
                return h;
            }

            public final boolean k() {
                return (this.j & 8) == 8;
            }
        }

        static {
            d dVar = new d(true);
            f37199d = dVar;
            dVar.c();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private d(e eVar, f fVar) throws InvalidProtocolBufferException {
            this.f = -1;
            this.g = (byte) (-1);
            this.h = -1;
            c();
            d.b h = kotlin.reflect.jvm.internal.impl.protobuf.d.h();
            CodedOutputStream a2 = CodedOutputStream.a(h, 1);
            boolean z = false;
            boolean z2 = false;
            while (!z) {
                try {
                    try {
                        try {
                            int a3 = eVar.a();
                            if (a3 != 0) {
                                if (a3 == 10) {
                                    z2 = z2;
                                    if (!z2 || !true) {
                                        this.f37200b = new ArrayList();
                                        z2 |= true;
                                    }
                                    this.f37200b.add(eVar.a(b.f37209a, fVar));
                                } else if (a3 == 40) {
                                    z2 = z2;
                                    if (!(z2 & true)) {
                                        this.f37201c = new ArrayList();
                                        z2 |= true;
                                    }
                                    this.f37201c.add(Integer.valueOf(eVar.d()));
                                } else if (a3 == 42) {
                                    int b2 = eVar.b(eVar.d());
                                    z2 = z2;
                                    if (!(z2 & true)) {
                                        z2 = z2;
                                        if (eVar.h() > 0) {
                                            this.f37201c = new ArrayList();
                                            z2 |= true;
                                        }
                                    }
                                    while (eVar.h() > 0) {
                                        this.f37201c.add(Integer.valueOf(eVar.d()));
                                    }
                                    eVar.c(b2);
                                } else if (!a(eVar, a2, fVar, a3)) {
                                }
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            e.f38108a = this;
                            throw e;
                        }
                    } catch (IOException e2) {
                        InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e2.getMessage());
                        invalidProtocolBufferException.f38108a = this;
                        throw invalidProtocolBufferException;
                    }
                } catch (Throwable th) {
                    if (z2 && true) {
                        this.f37200b = Collections.unmodifiableList(this.f37200b);
                    }
                    if (z2 & true) {
                        this.f37201c = Collections.unmodifiableList(this.f37201c);
                    }
                    try {
                        a2.a();
                    } catch (IOException e3) {
                    } catch (Throwable th2) {
                        this.e = h.a();
                        throw th2;
                    }
                    this.e = h.a();
                    w();
                    throw th;
                }
            }
            if (z2 && true) {
                this.f37200b = Collections.unmodifiableList(this.f37200b);
            }
            if (z2 & true) {
                this.f37201c = Collections.unmodifiableList(this.f37201c);
            }
            try {
                a2.a();
            } catch (IOException e4) {
            } catch (Throwable th3) {
                this.e = h.a();
                throw th3;
            }
            this.e = h.a();
            w();
        }

        private d(h.a aVar) {
            super(aVar);
            this.f = -1;
            this.g = (byte) (-1);
            this.h = -1;
            this.e = aVar.f38138a;
        }

        private d(boolean z) {
            this.f = -1;
            this.g = (byte) (-1);
            this.h = -1;
            this.e = kotlin.reflect.jvm.internal.impl.protobuf.d.f38116b;
        }

        public static d a() {
            return f37199d;
        }

        public static d a(InputStream inputStream, f fVar) throws IOException {
            return f37198a.a(inputStream, fVar);
        }

        private void c() {
            this.f37200b = Collections.emptyList();
            this.f37201c = Collections.emptyList();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final void a(CodedOutputStream codedOutputStream) throws IOException {
            f();
            for (int i = 0; i < this.f37200b.size(); i++) {
                codedOutputStream.a(1, this.f37200b.get(i));
            }
            int i2 = 0;
            if (this.f37201c.size() > 0) {
                codedOutputStream.e(42);
                codedOutputStream.e(this.f);
                i2 = 0;
            }
            while (i2 < this.f37201c.size()) {
                codedOutputStream.a(this.f37201c.get(i2).intValue());
                i2++;
            }
            codedOutputStream.d(this.e);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.h, kotlin.reflect.jvm.internal.impl.protobuf.p
        public final r<d> b() {
            return f37198a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
        public final boolean e() {
            byte b2 = this.g;
            if (b2 == 1) {
                return true;
            }
            if (b2 == 0) {
                return false;
            }
            this.g = (byte) 1;
            return true;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final int f() {
            int i = this.h;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            for (int i3 = 0; i3 < this.f37200b.size(); i3++) {
                i2 += CodedOutputStream.c(1, this.f37200b.get(i3));
            }
            int i4 = 0;
            for (int i5 = 0; i5 < this.f37201c.size(); i5++) {
                i4 += CodedOutputStream.c(this.f37201c.get(i5).intValue());
            }
            int i6 = i2 + i4;
            int i7 = i6;
            if (!this.f37201c.isEmpty()) {
                i7 = i6 + 1 + CodedOutputStream.c(i4);
            }
            this.f = i4;
            int a2 = i7 + this.e.a();
            this.h = a2;
            return a2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final /* synthetic */ p.a h() {
            return C0661a.f().a(this);
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.p
        public final /* synthetic */ p.a i() {
            return C0661a.f();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.q
        public final /* bridge */ /* synthetic */ p j() {
            return f37199d;
        }
    }

    public static void a(f fVar) {
        fVar.a(f37165a);
        fVar.a(f37166b);
        fVar.a(f37167c);
        fVar.a(f37168d);
        fVar.a(e);
        fVar.a(f);
        fVar.a(g);
        fVar.a(h);
        fVar.a(i);
        fVar.a(j);
        fVar.a(k);
        fVar.a(l);
        fVar.a(m);
        fVar.a(n);
    }
}
