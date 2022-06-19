package kotlin.reflect.jvm.internal.impl.p539b.p541b;

import kotlin.reflect.jvm.internal.impl.p539b.C18702a;
import kotlin.reflect.jvm.internal.impl.protobuf.C19692j;
/* renamed from: kotlin.reflect.jvm.internal.impl.b.b.b */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/b/b.class */
public final class C18808b {

    /* renamed from: A */
    public static final C18810a f64266A;

    /* renamed from: B */
    public static final C18810a f64267B;

    /* renamed from: C */
    public static final C18810a f64268C;

    /* renamed from: D */
    public static final C18810a f64269D;

    /* renamed from: E */
    public static final C18810a f64270E;

    /* renamed from: F */
    public static final C18810a f64271F;

    /* renamed from: G */
    public static final C18810a f64272G;

    /* renamed from: H */
    public static final C18810a f64273H;

    /* renamed from: I */
    public static final C18810a f64274I;

    /* renamed from: J */
    public static final C18810a f64275J;

    /* renamed from: K */
    public static final C18810a f64276K;

    /* renamed from: L */
    public static final C18810a f64277L;

    /* renamed from: M */
    public static final C18810a f64278M;

    /* renamed from: b */
    public static final C18810a f64281b;

    /* renamed from: c */
    public static final AbstractC18812c<C18702a.EnumC18800w> f64282c;

    /* renamed from: d */
    public static final AbstractC18812c<C18702a.EnumC18746j> f64283d;

    /* renamed from: e */
    public static final AbstractC18812c<C18702a.C18715b.EnumC18718b> f64284e;

    /* renamed from: f */
    public static final C18810a f64285f;

    /* renamed from: g */
    public static final C18810a f64286g;

    /* renamed from: h */
    public static final C18810a f64287h;

    /* renamed from: i */
    public static final C18810a f64288i;

    /* renamed from: j */
    public static final C18810a f64289j;

    /* renamed from: k */
    public static final C18810a f64290k;

    /* renamed from: l */
    public static final C18810a f64291l;

    /* renamed from: m */
    public static final C18810a f64292m;

    /* renamed from: n */
    public static final AbstractC18812c<C18702a.EnumC18744i> f64293n;

    /* renamed from: o */
    public static final C18810a f64294o;

    /* renamed from: p */
    public static final C18810a f64295p;

    /* renamed from: q */
    public static final C18810a f64296q;

    /* renamed from: r */
    public static final C18810a f64297r;

    /* renamed from: s */
    public static final C18810a f64298s;

    /* renamed from: t */
    public static final C18810a f64299t;

    /* renamed from: u */
    public static final C18810a f64300u;

    /* renamed from: v */
    public static final C18810a f64301v;

    /* renamed from: w */
    public static final C18810a f64302w;

    /* renamed from: x */
    public static final C18810a f64303x;

    /* renamed from: y */
    public static final C18810a f64304y;

    /* renamed from: z */
    public static final C18810a f64305z;

    /* renamed from: a */
    public static final C18810a f64280a = AbstractC18812c.m3063a();

    /* renamed from: N */
    public static final C18810a f64279N = AbstractC18812c.m3063a();

    /* renamed from: kotlin.reflect.jvm.internal.impl.b.b.b$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/b/b$a.class */
    public static final class C18810a extends AbstractC18812c<Boolean> {
        public C18810a(int i) {
            super(i, 1);
        }

        /* renamed from: b */
        private static /* synthetic */ void m3065b() {
            throw new IllegalStateException(String.format("@NotNull method %s.%s must not return null", "kotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField", "get"));
        }

        /* renamed from: a */
        public final int mo3062a(Boolean bool) {
            if (bool.booleanValue()) {
                return 1 << this.f64307a;
            }
            return 0;
        }

        /* renamed from: a */
        public final Boolean mo3059b(int i) {
            boolean z = true;
            if ((i & (1 << this.f64307a)) == 0) {
                z = false;
            }
            Boolean valueOf = Boolean.valueOf(z);
            if (valueOf == null) {
                m3065b();
            }
            return valueOf;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.b.b.b$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/b/b$b.class */
    public static final class C18811b<E extends C19692j.AbstractC19693a> extends AbstractC18812c<E> {

        /* renamed from: c */
        private final E[] f64306c;

        public C18811b(int i, E[] eArr) {
            super(i, m3064a((Object[]) eArr));
            this.f64306c = eArr;
        }

        /* renamed from: a */
        private static <E> int m3064a(E[] eArr) {
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

        @Override // kotlin.reflect.jvm.internal.impl.p539b.p541b.C18808b.AbstractC18812c
        /* renamed from: a */
        public final /* synthetic */ int mo3062a(Object obj) {
            return ((C19692j.AbstractC19693a) obj).getNumber() << this.f64307a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.p539b.p541b.C18808b.AbstractC18812c
        /* renamed from: b */
        public final /* synthetic */ Object mo3059b(int i) {
            E[] eArr;
            int i2 = this.f64308b;
            int i3 = this.f64307a;
            int i4 = this.f64307a;
            for (E e : this.f64306c) {
                if (e.getNumber() == ((i & (((1 << i2) - 1) << i3)) >> i4)) {
                    return e;
                }
            }
            return null;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.b.b.b$c */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/b/b$c.class */
    public static abstract class AbstractC18812c<E> {

        /* renamed from: a */
        public final int f64307a;

        /* renamed from: b */
        public final int f64308b;

        private AbstractC18812c(int i, int i2) {
            this.f64307a = i;
            this.f64308b = i2;
        }

        /* renamed from: a */
        public static C18810a m3063a() {
            return new C18810a(0);
        }

        /* renamed from: a */
        public static C18810a m3061a(AbstractC18812c<?> abstractC18812c) {
            return new C18810a(abstractC18812c.f64307a + abstractC18812c.f64308b);
        }

        /* renamed from: a */
        public static AbstractC18812c m3060a(AbstractC18812c abstractC18812c, C19692j.AbstractC19693a[] abstractC19693aArr) {
            return new C18811b(abstractC18812c.f64307a + abstractC18812c.f64308b, abstractC19693aArr);
        }

        /* renamed from: a */
        public abstract int mo3062a(E e);

        /* renamed from: b */
        public abstract E mo3059b(int i);
    }

    static {
        C18810a m3063a = AbstractC18812c.m3063a();
        f64281b = m3063a;
        AbstractC18812c<C18702a.EnumC18800w> m3060a = AbstractC18812c.m3060a(m3063a, C18702a.EnumC18800w.values());
        f64282c = m3060a;
        AbstractC18812c<C18702a.EnumC18746j> m3060a2 = AbstractC18812c.m3060a(m3060a, C18702a.EnumC18746j.values());
        f64283d = m3060a2;
        AbstractC18812c<C18702a.C18715b.EnumC18718b> m3060a3 = AbstractC18812c.m3060a(m3060a2, C18702a.C18715b.EnumC18718b.values());
        f64284e = m3060a3;
        C18810a m3061a = AbstractC18812c.m3061a((AbstractC18812c<?>) m3060a3);
        f64285f = m3061a;
        C18810a m3061a2 = AbstractC18812c.m3061a((AbstractC18812c<?>) m3061a);
        f64286g = m3061a2;
        C18810a m3061a3 = AbstractC18812c.m3061a((AbstractC18812c<?>) m3061a2);
        f64287h = m3061a3;
        C18810a m3061a4 = AbstractC18812c.m3061a((AbstractC18812c<?>) m3061a3);
        f64288i = m3061a4;
        C18810a m3061a5 = AbstractC18812c.m3061a((AbstractC18812c<?>) m3061a4);
        f64289j = m3061a5;
        f64290k = AbstractC18812c.m3061a((AbstractC18812c<?>) m3061a5);
        C18810a m3061a6 = AbstractC18812c.m3061a((AbstractC18812c<?>) m3060a);
        f64291l = m3061a6;
        f64292m = AbstractC18812c.m3061a((AbstractC18812c<?>) m3061a6);
        AbstractC18812c<C18702a.EnumC18744i> m3060a4 = AbstractC18812c.m3060a(m3060a2, C18702a.EnumC18744i.values());
        f64293n = m3060a4;
        C18810a m3061a7 = AbstractC18812c.m3061a((AbstractC18812c<?>) m3060a4);
        f64294o = m3061a7;
        C18810a m3061a8 = AbstractC18812c.m3061a((AbstractC18812c<?>) m3061a7);
        f64295p = m3061a8;
        C18810a m3061a9 = AbstractC18812c.m3061a((AbstractC18812c<?>) m3061a8);
        f64296q = m3061a9;
        C18810a m3061a10 = AbstractC18812c.m3061a((AbstractC18812c<?>) m3061a9);
        f64297r = m3061a10;
        C18810a m3061a11 = AbstractC18812c.m3061a((AbstractC18812c<?>) m3061a10);
        f64298s = m3061a11;
        C18810a m3061a12 = AbstractC18812c.m3061a((AbstractC18812c<?>) m3061a11);
        f64299t = m3061a12;
        C18810a m3061a13 = AbstractC18812c.m3061a((AbstractC18812c<?>) m3061a12);
        f64300u = m3061a13;
        f64301v = AbstractC18812c.m3061a((AbstractC18812c<?>) m3061a13);
        C18810a m3061a14 = AbstractC18812c.m3061a((AbstractC18812c<?>) m3060a4);
        f64302w = m3061a14;
        C18810a m3061a15 = AbstractC18812c.m3061a((AbstractC18812c<?>) m3061a14);
        f64303x = m3061a15;
        C18810a m3061a16 = AbstractC18812c.m3061a((AbstractC18812c<?>) m3061a15);
        f64304y = m3061a16;
        C18810a m3061a17 = AbstractC18812c.m3061a((AbstractC18812c<?>) m3061a16);
        f64305z = m3061a17;
        C18810a m3061a18 = AbstractC18812c.m3061a((AbstractC18812c<?>) m3061a17);
        f64266A = m3061a18;
        C18810a m3061a19 = AbstractC18812c.m3061a((AbstractC18812c<?>) m3061a18);
        f64267B = m3061a19;
        C18810a m3061a20 = AbstractC18812c.m3061a((AbstractC18812c<?>) m3061a19);
        f64268C = m3061a20;
        C18810a m3061a21 = AbstractC18812c.m3061a((AbstractC18812c<?>) m3061a20);
        f64269D = m3061a21;
        f64270E = AbstractC18812c.m3061a((AbstractC18812c<?>) m3061a21);
        C18810a m3061a22 = AbstractC18812c.m3061a((AbstractC18812c<?>) m3063a);
        f64271F = m3061a22;
        C18810a m3061a23 = AbstractC18812c.m3061a((AbstractC18812c<?>) m3061a22);
        f64272G = m3061a23;
        f64273H = AbstractC18812c.m3061a((AbstractC18812c<?>) m3061a23);
        C18810a m3061a24 = AbstractC18812c.m3061a((AbstractC18812c<?>) m3060a2);
        f64274I = m3061a24;
        C18810a m3061a25 = AbstractC18812c.m3061a((AbstractC18812c<?>) m3061a24);
        f64275J = m3061a25;
        f64276K = AbstractC18812c.m3061a((AbstractC18812c<?>) m3061a25);
        C18810a m3063a2 = AbstractC18812c.m3063a();
        f64277L = m3063a2;
        f64278M = AbstractC18812c.m3061a((AbstractC18812c<?>) m3063a2);
    }

    /* renamed from: a */
    public static int m3068a(boolean z, C18702a.EnumC18800w enumC18800w, C18702a.EnumC18746j enumC18746j) {
        if (enumC18800w == null) {
            m3069a(10);
        }
        if (enumC18746j == null) {
            m3069a(11);
        }
        return f64281b.mo3062a(Boolean.valueOf(z)) | f64283d.mo3062a((AbstractC18812c<C18702a.EnumC18746j>) enumC18746j) | f64282c.mo3062a((AbstractC18812c<C18702a.EnumC18800w>) enumC18800w) | f64274I.mo3062a(Boolean.FALSE) | f64275J.mo3062a(Boolean.FALSE) | f64276K.mo3062a(Boolean.FALSE);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00a0  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static /* synthetic */ void m3069a(int r5) {
        /*
            r0 = 3
            java.lang.Object[] r0 = new java.lang.Object[r0]
            r6 = r0
            r0 = r5
            r1 = 1
            if (r0 == r1) goto L44
            r0 = r5
            r1 = 2
            if (r0 == r1) goto L3c
            r0 = r5
            r1 = 5
            if (r0 == r1) goto L44
            r0 = r5
            r1 = 6
            if (r0 == r1) goto L34
            r0 = r5
            r1 = 8
            if (r0 == r1) goto L44
            r0 = r5
            r1 = 9
            if (r0 == r1) goto L34
            r0 = r5
            r1 = 11
            if (r0 == r1) goto L44
            r0 = r6
            r1 = 0
            java.lang.String r2 = "visibility"
            r0[r1] = r2
            goto L49
        L34:
            r0 = r6
            r1 = 0
            java.lang.String r2 = "memberKind"
            r0[r1] = r2
            goto L49
        L3c:
            r0 = r6
            r1 = 0
            java.lang.String r2 = "kind"
            r0[r1] = r2
            goto L49
        L44:
            r0 = r6
            r1 = 0
            java.lang.String r2 = "modality"
            r0[r1] = r2
        L49:
            r0 = r6
            r1 = 1
            java.lang.String r2 = "kotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags"
            r0[r1] = r2
            r0 = r5
            switch(r0) {
                case 3: goto La0;
                case 4: goto L98;
                case 5: goto L98;
                case 6: goto L98;
                case 7: goto L90;
                case 8: goto L90;
                case 9: goto L90;
                case 10: goto L88;
                case 11: goto L88;
                default: goto L80;
            }
        L80:
            r0 = r6
            r1 = 2
            java.lang.String r2 = "getClassFlags"
            r0[r1] = r2
            goto La5
        L88:
            r0 = r6
            r1 = 2
            java.lang.String r2 = "getAccessorFlags"
            r0[r1] = r2
            goto La5
        L90:
            r0 = r6
            r1 = 2
            java.lang.String r2 = "getPropertyFlags"
            r0[r1] = r2
            goto La5
        L98:
            r0 = r6
            r1 = 2
            java.lang.String r2 = "getFunctionFlags"
            r0[r1] = r2
            goto La5
        La0:
            r0 = r6
            r1 = 2
            java.lang.String r2 = "getConstructorFlags"
            r0[r1] = r2
        La5:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            java.lang.String r2 = "Argument for @NotNull parameter '%s' of %s.%s must not be null"
            r3 = r6
            java.lang.String r2 = java.lang.String.format(r2, r3)
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.p539b.p541b.C18808b.m3069a(int):void");
    }
}
