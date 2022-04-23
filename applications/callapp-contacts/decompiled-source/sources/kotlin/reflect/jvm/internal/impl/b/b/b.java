package kotlin.reflect.jvm.internal.impl.b.b;

import kotlin.reflect.jvm.internal.impl.b.a;
import kotlin.reflect.jvm.internal.impl.protobuf.j;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/b/b.class */
public final class b {
    public static final a A;
    public static final a B;
    public static final a C;
    public static final a D;
    public static final a E;
    public static final a F;
    public static final a G;
    public static final a H;
    public static final a I;
    public static final a J;
    public static final a K;
    public static final a L;
    public static final a M;

    /* renamed from: b  reason: collision with root package name */
    public static final a f37143b;

    /* renamed from: c  reason: collision with root package name */
    public static final c<a.w> f37144c;

    /* renamed from: d  reason: collision with root package name */
    public static final c<a.j> f37145d;
    public static final c<a.b.EnumC0632b> e;
    public static final a f;
    public static final a g;
    public static final a h;
    public static final a i;
    public static final a j;
    public static final a k;
    public static final a l;
    public static final a m;
    public static final c<a.i> n;
    public static final a o;
    public static final a p;
    public static final a q;
    public static final a r;
    public static final a s;
    public static final a t;
    public static final a u;
    public static final a v;
    public static final a w;
    public static final a x;
    public static final a y;
    public static final a z;

    /* renamed from: a  reason: collision with root package name */
    public static final a f37142a = c.a();
    public static final a N = c.a();

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/b/b$a.class */
    public static final class a extends c<Boolean> {
        public a(int i) {
            super(i, 1);
        }

        private static /* synthetic */ void b() {
            throw new IllegalStateException(String.format("@NotNull method %s.%s must not return null", "kotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField", "get"));
        }

        public final int a(Boolean bool) {
            if (bool.booleanValue()) {
                return 1 << this.f37147a;
            }
            return 0;
        }

        /* renamed from: a */
        public final Boolean b(int i) {
            boolean z = true;
            if ((i & (1 << this.f37147a)) == 0) {
                z = false;
            }
            Boolean valueOf = Boolean.valueOf(z);
            if (valueOf == null) {
                b();
            }
            return valueOf;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.b.b.b$b  reason: collision with other inner class name */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/b/b$b.class */
    public static final class C0655b<E extends j.a> extends c<E> {

        /* renamed from: c  reason: collision with root package name */
        private final E[] f37146c;

        public C0655b(int i, E[] eArr) {
            super(i, a((Object[]) eArr));
            this.f37146c = eArr;
        }

        private static <E> int a(E[] eArr) {
            if (eArr != null) {
                int length = eArr.length - 1;
                if (length == 0) {
                    return 1;
                }
                for (int i = 31; i >= 0; i--) {
                    if (((1 << i) & length) != 0) {
                        return i + 1;
                    }
                }
                throw new IllegalStateException("Empty enum: " + eArr.getClass());
            }
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "enumEntries", "kotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField", "bitWidth"));
        }

        @Override // kotlin.reflect.jvm.internal.impl.b.b.b.c
        public final /* synthetic */ int a(Object obj) {
            return ((j.a) obj).getNumber() << this.f37147a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.b.b.b.c
        public final /* synthetic */ Object b(int i) {
            E[] eArr;
            int i2 = this.f37148b;
            int i3 = this.f37147a;
            int i4 = this.f37147a;
            for (E e : this.f37146c) {
                if (e.getNumber() == ((i & (((1 << i2) - 1) << i3)) >> i4)) {
                    return e;
                }
            }
            return null;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/b/b$c.class */
    public static abstract class c<E> {

        /* renamed from: a  reason: collision with root package name */
        public final int f37147a;

        /* renamed from: b  reason: collision with root package name */
        public final int f37148b;

        private c(int i, int i2) {
            this.f37147a = i;
            this.f37148b = i2;
        }

        public static a a() {
            return new a(0);
        }

        public static a a(c<?> cVar) {
            return new a(cVar.f37147a + cVar.f37148b);
        }

        /* JADX WARN: Incorrect types in method signature: <E::Lkotlin/reflect/jvm/internal/impl/protobuf/j$a;>(Lkotlin/reflect/jvm/internal/impl/b/b/b$c<*>;[TE;)Lkotlin/reflect/jvm/internal/impl/b/b/b$c<TE;>; */
        public static c a(c cVar, j.a[] aVarArr) {
            return new C0655b(cVar.f37147a + cVar.f37148b, aVarArr);
        }

        public abstract int a(E e);

        public abstract E b(int i);
    }

    static {
        a a2 = c.a();
        f37143b = a2;
        c<a.w> a3 = c.a(a2, a.w.values());
        f37144c = a3;
        c<a.j> a4 = c.a(a3, a.j.values());
        f37145d = a4;
        c<a.b.EnumC0632b> a5 = c.a(a4, a.b.EnumC0632b.values());
        e = a5;
        a a6 = c.a((c<?>) a5);
        f = a6;
        a a7 = c.a((c<?>) a6);
        g = a7;
        a a8 = c.a((c<?>) a7);
        h = a8;
        a a9 = c.a((c<?>) a8);
        i = a9;
        a a10 = c.a((c<?>) a9);
        j = a10;
        k = c.a((c<?>) a10);
        a a11 = c.a((c<?>) a3);
        l = a11;
        m = c.a((c<?>) a11);
        c<a.i> a12 = c.a(a4, a.i.values());
        n = a12;
        a a13 = c.a((c<?>) a12);
        o = a13;
        a a14 = c.a((c<?>) a13);
        p = a14;
        a a15 = c.a((c<?>) a14);
        q = a15;
        a a16 = c.a((c<?>) a15);
        r = a16;
        a a17 = c.a((c<?>) a16);
        s = a17;
        a a18 = c.a((c<?>) a17);
        t = a18;
        a a19 = c.a((c<?>) a18);
        u = a19;
        v = c.a((c<?>) a19);
        a a20 = c.a((c<?>) a12);
        w = a20;
        a a21 = c.a((c<?>) a20);
        x = a21;
        a a22 = c.a((c<?>) a21);
        y = a22;
        a a23 = c.a((c<?>) a22);
        z = a23;
        a a24 = c.a((c<?>) a23);
        A = a24;
        a a25 = c.a((c<?>) a24);
        B = a25;
        a a26 = c.a((c<?>) a25);
        C = a26;
        a a27 = c.a((c<?>) a26);
        D = a27;
        E = c.a((c<?>) a27);
        a a28 = c.a((c<?>) a2);
        F = a28;
        a a29 = c.a((c<?>) a28);
        G = a29;
        H = c.a((c<?>) a29);
        a a30 = c.a((c<?>) a4);
        I = a30;
        a a31 = c.a((c<?>) a30);
        J = a31;
        K = c.a((c<?>) a31);
        a a32 = c.a();
        L = a32;
        M = c.a((c<?>) a32);
    }

    public static int a(boolean z2, a.w wVar, a.j jVar) {
        if (wVar == null) {
            a(10);
        }
        if (jVar == null) {
            a(11);
        }
        return f37143b.a(Boolean.valueOf(z2)) | f37145d.a((c<a.j>) jVar) | f37144c.a((c<a.w>) wVar) | I.a(Boolean.FALSE) | J.a(Boolean.FALSE) | K.a(Boolean.FALSE);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00a0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static /* synthetic */ void a(int r5) {
        /*
            r0 = 3
            java.lang.Object[] r0 = new java.lang.Object[r0]
            r6 = r0
            r0 = r5
            r1 = 1
            if (r0 == r1) goto L_0x0044
            r0 = r5
            r1 = 2
            if (r0 == r1) goto L_0x003c
            r0 = r5
            r1 = 5
            if (r0 == r1) goto L_0x0044
            r0 = r5
            r1 = 6
            if (r0 == r1) goto L_0x0034
            r0 = r5
            r1 = 8
            if (r0 == r1) goto L_0x0044
            r0 = r5
            r1 = 9
            if (r0 == r1) goto L_0x0034
            r0 = r5
            r1 = 11
            if (r0 == r1) goto L_0x0044
            r0 = r6
            r1 = 0
            java.lang.String r2 = "visibility"
            r0[r1] = r2
            goto L_0x0049
        L_0x0034:
            r0 = r6
            r1 = 0
            java.lang.String r2 = "memberKind"
            r0[r1] = r2
            goto L_0x0049
        L_0x003c:
            r0 = r6
            r1 = 0
            java.lang.String r2 = "kind"
            r0[r1] = r2
            goto L_0x0049
        L_0x0044:
            r0 = r6
            r1 = 0
            java.lang.String r2 = "modality"
            r0[r1] = r2
        L_0x0049:
            r0 = r6
            r1 = 1
            java.lang.String r2 = "kotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags"
            r0[r1] = r2
            r0 = r5
            switch(r0) {
                case 3: goto L_0x00a0;
                case 4: goto L_0x0098;
                case 5: goto L_0x0098;
                case 6: goto L_0x0098;
                case 7: goto L_0x0090;
                case 8: goto L_0x0090;
                case 9: goto L_0x0090;
                case 10: goto L_0x0088;
                case 11: goto L_0x0088;
                default: goto L_0x0080;
            }
        L_0x0080:
            r0 = r6
            r1 = 2
            java.lang.String r2 = "getClassFlags"
            r0[r1] = r2
            goto L_0x00a5
        L_0x0088:
            r0 = r6
            r1 = 2
            java.lang.String r2 = "getAccessorFlags"
            r0[r1] = r2
            goto L_0x00a5
        L_0x0090:
            r0 = r6
            r1 = 2
            java.lang.String r2 = "getPropertyFlags"
            r0[r1] = r2
            goto L_0x00a5
        L_0x0098:
            r0 = r6
            r1 = 2
            java.lang.String r2 = "getFunctionFlags"
            r0[r1] = r2
            goto L_0x00a5
        L_0x00a0:
            r0 = r6
            r1 = 2
            java.lang.String r2 = "getConstructorFlags"
            r0[r1] = r2
        L_0x00a5:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            java.lang.String r2 = "Argument for @NotNull parameter '%s' of %s.%s must not be null"
            r3 = r6
            java.lang.String r2 = java.lang.String.format(r2, r3)
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.b.b.b.a(int):void");
    }
}
