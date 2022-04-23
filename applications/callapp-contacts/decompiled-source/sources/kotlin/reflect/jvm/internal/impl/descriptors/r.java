package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.ServiceLoader;
import java.util.Set;
import kotlin.a.ap;
import kotlin.reflect.jvm.internal.impl.descriptors.be;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ac;
import kotlin.reflect.jvm.internal.impl.g.g;
import kotlin.reflect.jvm.internal.impl.resolve.d;
import kotlin.reflect.jvm.internal.impl.resolve.e.a.e;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.utils.a;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/r.class */
public final class r {

    /* renamed from: a  reason: collision with root package name */
    public static final s f37590a;

    /* renamed from: b  reason: collision with root package name */
    public static final s f37591b;

    /* renamed from: c  reason: collision with root package name */
    public static final s f37592c;

    /* renamed from: d  reason: collision with root package name */
    public static final s f37593d;
    public static final s e;
    public static final s f;
    public static final s g;
    public static final s h;
    public static final s i;
    public static final Set<s> j;
    public static final s k;
    private static final Map<s, Integer> n;
    private static final g p;
    private static final Map<bf, s> q;
    private static final e o = new e() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.r.2
        @Override // kotlin.reflect.jvm.internal.impl.resolve.e.a.e
        public final KotlinType a() {
            throw new IllegalStateException("This method should not be called");
        }
    };
    public static final e l = new e() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.r.3
        @Override // kotlin.reflect.jvm.internal.impl.resolve.e.a.e
        public final KotlinType a() {
            throw new IllegalStateException("This method should not be called");
        }
    };
    @Deprecated
    public static final e m = new e() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.r.4
        @Override // kotlin.reflect.jvm.internal.impl.resolve.e.a.e
        public final KotlinType a() {
            throw new IllegalStateException("This method should not be called");
        }
    };

    static {
        p pVar = new p(be.e.f37419a) { // from class: kotlin.reflect.jvm.internal.impl.descriptors.r.1
            private static /* synthetic */ void a(int i2) {
                Object[] objArr = new Object[3];
                if (i2 == 1) {
                    objArr[0] = "what";
                } else if (i2 != 2) {
                    objArr[0] = "descriptor";
                } else {
                    objArr[0] = "from";
                }
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1";
                if (i2 == 1 || i2 == 2) {
                    objArr[2] = "isVisible";
                } else {
                    objArr[2] = "hasContainingSourceFile";
                }
                throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.s
            public final boolean a(e eVar, o oVar, k kVar) {
                k kVar2;
                if (oVar == null) {
                    a(1);
                }
                if (kVar == null) {
                    a(2);
                }
                if (d.e(oVar)) {
                    if (kVar == null) {
                        a(0);
                    }
                    if (d.n(kVar) != au.f37402a) {
                        return r.a((k) oVar, kVar);
                    }
                }
                k kVar3 = oVar;
                if (oVar instanceof j) {
                    h b2 = ((j) oVar).b();
                    kVar3 = oVar;
                    if (d.h(b2)) {
                        kVar3 = oVar;
                        if (d.e(b2)) {
                            kVar3 = oVar;
                            if (kVar instanceof j) {
                                kVar3 = oVar;
                                if (d.e(kVar.getContainingDeclaration())) {
                                    kVar3 = oVar;
                                    if (r.a((k) oVar, kVar)) {
                                        return true;
                                    }
                                }
                            }
                        }
                    }
                }
                while (true) {
                    kVar2 = kVar3;
                    if (kVar3 == null) {
                        break;
                    }
                    k containingDeclaration = kVar3.getContainingDeclaration();
                    if (containingDeclaration instanceof d) {
                        kVar2 = containingDeclaration;
                        if (!d.g(containingDeclaration)) {
                            break;
                        }
                    }
                    kVar3 = containingDeclaration;
                    if (containingDeclaration instanceof ae) {
                        kVar2 = containingDeclaration;
                        break;
                    }
                }
                if (kVar2 == null) {
                    return false;
                }
                while (kVar != null) {
                    if (kVar2 == kVar) {
                        return true;
                    }
                    if (kVar instanceof ae) {
                        return (kVar2 instanceof ae) && ((ae) kVar2).c().equals(((ae) kVar).c()) && d.a(kVar, kVar2);
                    }
                    kVar = kVar.getContainingDeclaration();
                }
                return false;
            }
        };
        f37590a = pVar;
        p pVar2 = new p(be.f.f37420a) { // from class: kotlin.reflect.jvm.internal.impl.descriptors.r.5
            private static /* synthetic */ void a(int i2) {
                Object[] objArr = new Object[3];
                if (i2 != 1) {
                    objArr[0] = "what";
                } else {
                    objArr[0] = "from";
                }
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$2";
                objArr[2] = "isVisible";
                throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.s
            public final boolean a(e eVar, o oVar, k kVar) {
                k a2;
                if (oVar == null) {
                    a(0);
                }
                if (kVar == null) {
                    a(1);
                }
                if (!r.f37590a.a(eVar, oVar, kVar)) {
                    return false;
                }
                if (eVar == r.l) {
                    return true;
                }
                if (eVar == r.o || (a2 = d.a(oVar, d.class)) == null || !(eVar instanceof kotlin.reflect.jvm.internal.impl.resolve.e.a.g)) {
                    return false;
                }
                return ((kotlin.reflect.jvm.internal.impl.resolve.e.a.g) eVar).b().getOriginal().equals(a2.getOriginal());
            }
        };
        f37591b = pVar2;
        p pVar3 = new p(be.g.f37421a) { // from class: kotlin.reflect.jvm.internal.impl.descriptors.r.6
            private static /* synthetic */ void a(int i2) {
                Object[] objArr = new Object[3];
                if (i2 == 1) {
                    objArr[0] = "from";
                } else if (i2 == 2) {
                    objArr[0] = "whatDeclaration";
                } else if (i2 != 3) {
                    objArr[0] = "what";
                } else {
                    objArr[0] = "fromClass";
                }
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$3";
                if (i2 == 2 || i2 == 3) {
                    objArr[2] = "doesReceiverFitForProtectedVisibility";
                } else {
                    objArr[2] = "isVisible";
                }
                throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
            }

            /* JADX WARN: Code restructure failed: missing block: B:52:0x00fa, code lost:
                if (kotlin.reflect.jvm.internal.impl.types.DynamicTypesKt.isDynamic(r7) != false) goto L_0x009d;
             */
            @Override // kotlin.reflect.jvm.internal.impl.descriptors.s
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final boolean a(kotlin.reflect.jvm.internal.impl.resolve.e.a.e r5, kotlin.reflect.jvm.internal.impl.descriptors.o r6, kotlin.reflect.jvm.internal.impl.descriptors.k r7) {
                /*
                    Method dump skipped, instructions count: 274
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.descriptors.r.AnonymousClass6.a(kotlin.reflect.jvm.internal.impl.resolve.e.a.e, kotlin.reflect.jvm.internal.impl.descriptors.o, kotlin.reflect.jvm.internal.impl.descriptors.k):boolean");
            }
        };
        f37592c = pVar3;
        p pVar4 = new p(be.b.f37416a) { // from class: kotlin.reflect.jvm.internal.impl.descriptors.r.7
            private static /* synthetic */ void a(int i2) {
                Object[] objArr = new Object[3];
                if (i2 != 1) {
                    objArr[0] = "what";
                } else {
                    objArr[0] = "from";
                }
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$4";
                objArr[2] = "isVisible";
                throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.s
            public final boolean a(e eVar, o oVar, k kVar) {
                if (oVar == null) {
                    a(0);
                }
                if (kVar == null) {
                    a(1);
                }
                if (!d.f(kVar).shouldSeeInternalsOf(d.f(oVar))) {
                    return false;
                }
                return r.p.a(oVar, kVar);
            }
        };
        f37593d = pVar4;
        p pVar5 = new p(be.h.f37422a) { // from class: kotlin.reflect.jvm.internal.impl.descriptors.r.8
            private static /* synthetic */ void a(int i2) {
                Object[] objArr = new Object[3];
                if (i2 != 1) {
                    objArr[0] = "what";
                } else {
                    objArr[0] = "from";
                }
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$5";
                objArr[2] = "isVisible";
                throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.s
            public final boolean a(e eVar, o oVar, k kVar) {
                if (oVar == null) {
                    a(0);
                }
                if (kVar != null) {
                    return true;
                }
                a(1);
                return true;
            }
        };
        e = pVar5;
        p pVar6 = new p(be.d.f37418a) { // from class: kotlin.reflect.jvm.internal.impl.descriptors.r.9
            private static /* synthetic */ void a(int i2) {
                Object[] objArr = new Object[3];
                if (i2 != 1) {
                    objArr[0] = "what";
                } else {
                    objArr[0] = "from";
                }
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$6";
                objArr[2] = "isVisible";
                throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.s
            public final boolean a(e eVar, o oVar, k kVar) {
                if (oVar == null) {
                    a(0);
                }
                if (kVar == null) {
                    a(1);
                }
                throw new IllegalStateException("This method shouldn't be invoked for LOCAL visibility");
            }
        };
        f = pVar6;
        p pVar7 = new p(be.a.f37415a) { // from class: kotlin.reflect.jvm.internal.impl.descriptors.r.10
            private static /* synthetic */ void a(int i2) {
                Object[] objArr = new Object[3];
                if (i2 != 1) {
                    objArr[0] = "what";
                } else {
                    objArr[0] = "from";
                }
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$7";
                objArr[2] = "isVisible";
                throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.s
            public final boolean a(e eVar, o oVar, k kVar) {
                if (oVar == null) {
                    a(0);
                }
                if (kVar == null) {
                    a(1);
                }
                throw new IllegalStateException("Visibility is unknown yet");
            }
        };
        g = pVar7;
        p pVar8 = new p(be.c.f37417a) { // from class: kotlin.reflect.jvm.internal.impl.descriptors.r.11
            private static /* synthetic */ void a(int i2) {
                Object[] objArr = new Object[3];
                if (i2 != 1) {
                    objArr[0] = "what";
                } else {
                    objArr[0] = "from";
                }
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$8";
                objArr[2] = "isVisible";
                throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.s
            public final boolean a(e eVar, o oVar, k kVar) {
                if (oVar == null) {
                    a(0);
                }
                if (kVar != null) {
                    return false;
                }
                a(1);
                return false;
            }
        };
        h = pVar8;
        p pVar9 = new p(be.i.f37423a) { // from class: kotlin.reflect.jvm.internal.impl.descriptors.r.12
            private static /* synthetic */ void a(int i2) {
                Object[] objArr = new Object[3];
                if (i2 != 1) {
                    objArr[0] = "what";
                } else {
                    objArr[0] = "from";
                }
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$9";
                objArr[2] = "isVisible";
                throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.s
            public final boolean a(e eVar, o oVar, k kVar) {
                if (oVar == null) {
                    a(0);
                }
                if (kVar != null) {
                    return false;
                }
                a(1);
                return false;
            }
        };
        i = pVar9;
        j = Collections.unmodifiableSet(ap.a((Object[]) new s[]{pVar, pVar2, pVar4, pVar6}));
        HashMap a2 = a.a(4);
        a2.put(pVar2, 0);
        a2.put(pVar, 0);
        a2.put(pVar4, 1);
        a2.put(pVar3, 1);
        a2.put(pVar5, 2);
        n = Collections.unmodifiableMap(a2);
        k = pVar5;
        Iterator it2 = ServiceLoader.load(g.class, g.class.getClassLoader()).iterator();
        p = it2.hasNext() ? (g) it2.next() : g.a.f37686a;
        q = new HashMap();
        b(pVar);
        b(pVar2);
        b(pVar3);
        b(pVar4);
        b(pVar5);
        b(pVar6);
        b(pVar7);
        b(pVar8);
        b(pVar9);
    }

    public static Integer a(s sVar, s sVar2) {
        if (sVar == null) {
            a(12);
        }
        if (sVar2 == null) {
            a(13);
        }
        Integer a2 = sVar.a(sVar2);
        if (a2 != null) {
            return a2;
        }
        Integer a3 = sVar2.a(sVar);
        if (a3 != null) {
            return Integer.valueOf(-a3.intValue());
        }
        return null;
    }

    private static o a(e eVar, o oVar, k kVar) {
        o a2;
        if (oVar == null) {
            a(8);
        }
        if (kVar == null) {
            a(9);
        }
        k original = oVar.getOriginal();
        while (true) {
            o oVar2 = (o) original;
            if (oVar2 == null || oVar2.getVisibility() == f) {
                break;
            } else if (!oVar2.getVisibility().a(eVar, oVar2, kVar)) {
                return oVar2;
            } else {
                original = d.a(oVar2, o.class);
            }
        }
        if (!(oVar instanceof ac) || (a2 = a(eVar, ((ac) oVar).a(), kVar)) == null) {
            return null;
        }
        return a2;
    }

    public static s a(bf bfVar) {
        if (bfVar == null) {
            a(15);
        }
        s sVar = q.get(bfVar);
        if (sVar != null) {
            if (sVar == null) {
                a(16);
            }
            return sVar;
        }
        throw new IllegalArgumentException("Inapplicable visibility: ".concat(String.valueOf(bfVar)));
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0132  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0156  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0162  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static /* synthetic */ void a(int r4) {
        /*
            Method dump skipped, instructions count: 365
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.descriptors.r.a(int):void");
    }

    public static boolean a(k kVar, k kVar2) {
        if (kVar == null) {
            a(6);
        }
        if (kVar2 == null) {
            a(7);
        }
        au n2 = d.n(kVar2);
        if (n2 != au.f37402a) {
            return n2.equals(d.n(kVar));
        }
        return false;
    }

    public static boolean a(o oVar, k kVar) {
        if (oVar == null) {
            a(2);
        }
        if (kVar == null) {
            a(3);
        }
        return a(l, oVar, kVar) == null;
    }

    public static boolean a(s sVar) {
        if (sVar == null) {
            a(14);
        }
        return sVar == f37590a || sVar == f37591b;
    }

    private static void b(s sVar) {
        q.put(sVar.a(), sVar);
    }
}
