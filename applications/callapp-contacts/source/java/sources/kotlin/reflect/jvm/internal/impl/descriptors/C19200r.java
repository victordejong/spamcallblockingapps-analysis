package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.ServiceLoader;
import java.util.Set;
import kotlin.p518a.C18255ap;
import kotlin.reflect.jvm.internal.impl.descriptors.C19054be;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractC19144ac;
import kotlin.reflect.jvm.internal.impl.p555g.AbstractC19320g;
import kotlin.reflect.jvm.internal.impl.resolve.C19807d;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.p568a.AbstractC19816e;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.p568a.AbstractC19818g;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.utils.C19999a;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.r */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/r.class */
public final class C19200r {

    /* renamed from: a */
    public static final AbstractC19213s f65002a;

    /* renamed from: b */
    public static final AbstractC19213s f65003b;

    /* renamed from: c */
    public static final AbstractC19213s f65004c;

    /* renamed from: d */
    public static final AbstractC19213s f65005d;

    /* renamed from: e */
    public static final AbstractC19213s f65006e;

    /* renamed from: f */
    public static final AbstractC19213s f65007f;

    /* renamed from: g */
    public static final AbstractC19213s f65008g;

    /* renamed from: h */
    public static final AbstractC19213s f65009h;

    /* renamed from: i */
    public static final AbstractC19213s f65010i;

    /* renamed from: j */
    public static final Set<AbstractC19213s> f65011j;

    /* renamed from: k */
    public static final AbstractC19213s f65012k;

    /* renamed from: n */
    private static final Map<AbstractC19213s, Integer> f65015n;

    /* renamed from: p */
    private static final AbstractC19320g f65017p;

    /* renamed from: q */
    private static final Map<AbstractC19064bf, AbstractC19213s> f65018q;

    /* renamed from: o */
    private static final AbstractC19816e f65016o = new AbstractC19816e() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.r.2
        @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.p568a.AbstractC19816e
        /* renamed from: a */
        public final KotlinType mo1437a() {
            throw new IllegalStateException("This method should not be called");
        }
    };

    /* renamed from: l */
    public static final AbstractC19816e f65013l = new AbstractC19816e() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.r.3
        @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.p568a.AbstractC19816e
        /* renamed from: a */
        public final KotlinType mo1437a() {
            throw new IllegalStateException("This method should not be called");
        }
    };
    @Deprecated

    /* renamed from: m */
    public static final AbstractC19816e f65014m = new AbstractC19816e() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.r.4
        @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.p568a.AbstractC19816e
        /* renamed from: a */
        public final KotlinType mo1437a() {
            throw new IllegalStateException("This method should not be called");
        }
    };

    static {
        AbstractC19198p abstractC19198p = new AbstractC19198p(C19054be.C19059e.f64777a) { // from class: kotlin.reflect.jvm.internal.impl.descriptors.r.1
            /* renamed from: a */
            private static /* synthetic */ void m2512a(int i) {
                Object[] objArr = new Object[3];
                if (i == 1) {
                    objArr[0] = "what";
                } else if (i != 2) {
                    objArr[0] = "descriptor";
                } else {
                    objArr[0] = "from";
                }
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1";
                if (i == 1 || i == 2) {
                    objArr[2] = "isVisible";
                } else {
                    objArr[2] = "hasContainingSourceFile";
                }
                throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19213s
            /* renamed from: a */
            public final boolean mo2050a(AbstractC19816e abstractC19816e, AbstractC19197o abstractC19197o, AbstractC19193k abstractC19193k) {
                AbstractC19193k abstractC19193k2;
                if (abstractC19197o == null) {
                    m2512a(1);
                }
                if (abstractC19193k == null) {
                    m2512a(2);
                }
                if (C19807d.m1461e(abstractC19197o)) {
                    if (abstractC19193k == null) {
                        m2512a(0);
                    }
                    if (C19807d.m1452n(abstractC19193k) != AbstractC19028au.f64760a) {
                        return C19200r.m2519a((AbstractC19193k) abstractC19197o, abstractC19193k);
                    }
                }
                AbstractC19193k abstractC19193k3 = abstractC19197o;
                if (abstractC19197o instanceof AbstractC19192j) {
                    AbstractC19130h mo2527b = ((AbstractC19192j) abstractC19197o).mo2527b();
                    abstractC19193k3 = abstractC19197o;
                    if (C19807d.m1458h(mo2527b)) {
                        abstractC19193k3 = abstractC19197o;
                        if (C19807d.m1461e(mo2527b)) {
                            abstractC19193k3 = abstractC19197o;
                            if (abstractC19193k instanceof AbstractC19192j) {
                                abstractC19193k3 = abstractC19197o;
                                if (C19807d.m1461e(abstractC19193k.getContainingDeclaration())) {
                                    abstractC19193k3 = abstractC19197o;
                                    if (C19200r.m2519a((AbstractC19193k) abstractC19197o, abstractC19193k)) {
                                        return true;
                                    }
                                }
                            }
                        }
                    }
                }
                while (true) {
                    abstractC19193k2 = abstractC19193k3;
                    if (abstractC19193k3 == null) {
                        break;
                    }
                    AbstractC19193k containingDeclaration = abstractC19193k3.getContainingDeclaration();
                    if (containingDeclaration instanceof AbstractC19070d) {
                        abstractC19193k2 = containingDeclaration;
                        if (!C19807d.m1459g(containingDeclaration)) {
                            break;
                        }
                    }
                    abstractC19193k3 = containingDeclaration;
                    if (containingDeclaration instanceof AbstractC19006ae) {
                        abstractC19193k2 = containingDeclaration;
                        break;
                    }
                }
                if (abstractC19193k2 == null) {
                    return false;
                }
                while (abstractC19193k != null) {
                    if (abstractC19193k2 == abstractC19193k) {
                        return true;
                    }
                    if (abstractC19193k instanceof AbstractC19006ae) {
                        return (abstractC19193k2 instanceof AbstractC19006ae) && ((AbstractC19006ae) abstractC19193k2).mo2542c().equals(((AbstractC19006ae) abstractC19193k).mo2542c()) && C19807d.m1472a(abstractC19193k, abstractC19193k2);
                    }
                    abstractC19193k = abstractC19193k.getContainingDeclaration();
                }
                return false;
            }
        };
        f65002a = abstractC19198p;
        AbstractC19198p abstractC19198p2 = new AbstractC19198p(C19054be.C19060f.f64778a) { // from class: kotlin.reflect.jvm.internal.impl.descriptors.r.5
            /* renamed from: a */
            private static /* synthetic */ void m2508a(int i) {
                Object[] objArr = new Object[3];
                if (i != 1) {
                    objArr[0] = "what";
                } else {
                    objArr[0] = "from";
                }
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$2";
                objArr[2] = "isVisible";
                throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19213s
            /* renamed from: a */
            public final boolean mo2050a(AbstractC19816e abstractC19816e, AbstractC19197o abstractC19197o, AbstractC19193k abstractC19193k) {
                AbstractC19193k m1475a;
                if (abstractC19197o == null) {
                    m2508a(0);
                }
                if (abstractC19193k == null) {
                    m2508a(1);
                }
                if (C19200r.f65002a.mo2050a(abstractC19816e, abstractC19197o, abstractC19193k)) {
                    if (abstractC19816e == C19200r.f65013l) {
                        return true;
                    }
                    if (abstractC19816e != C19200r.f65016o && (m1475a = C19807d.m1475a(abstractC19197o, AbstractC19070d.class)) != null && (abstractC19816e instanceof AbstractC19818g)) {
                        return ((AbstractC19818g) abstractC19816e).mo1435b().getOriginal().equals(m1475a.getOriginal());
                    }
                    return false;
                }
                return false;
            }
        };
        f65003b = abstractC19198p2;
        AbstractC19198p abstractC19198p3 = new AbstractC19198p(C19054be.C19061g.f64779a) { // from class: kotlin.reflect.jvm.internal.impl.descriptors.r.6
            /* renamed from: a */
            private static /* synthetic */ void m2507a(int i) {
                Object[] objArr = new Object[3];
                if (i == 1) {
                    objArr[0] = "from";
                } else if (i == 2) {
                    objArr[0] = "whatDeclaration";
                } else if (i != 3) {
                    objArr[0] = "what";
                } else {
                    objArr[0] = "fromClass";
                }
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$3";
                if (i == 2 || i == 3) {
                    objArr[2] = "doesReceiverFitForProtectedVisibility";
                } else {
                    objArr[2] = "isVisible";
                }
                throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
            }

            /* JADX WARN: Code restructure failed: missing block: B:52:0x00fa, code lost:
                if (kotlin.reflect.jvm.internal.impl.types.DynamicTypesKt.isDynamic(r7) != false) goto L35;
             */
            @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19213s
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final boolean mo2050a(kotlin.reflect.jvm.internal.impl.resolve.p567e.p568a.AbstractC19816e r5, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19197o r6, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k r7) {
                /*
                    Method dump skipped, instructions count: 274
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.descriptors.C19200r.C192096.mo2050a(kotlin.reflect.jvm.internal.impl.resolve.e.a.e, kotlin.reflect.jvm.internal.impl.descriptors.o, kotlin.reflect.jvm.internal.impl.descriptors.k):boolean");
            }
        };
        f65004c = abstractC19198p3;
        AbstractC19198p abstractC19198p4 = new AbstractC19198p(C19054be.C19056b.f64774a) { // from class: kotlin.reflect.jvm.internal.impl.descriptors.r.7
            /* renamed from: a */
            private static /* synthetic */ void m2506a(int i) {
                Object[] objArr = new Object[3];
                if (i != 1) {
                    objArr[0] = "what";
                } else {
                    objArr[0] = "from";
                }
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$4";
                objArr[2] = "isVisible";
                throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19213s
            /* renamed from: a */
            public final boolean mo2050a(AbstractC19816e abstractC19816e, AbstractC19197o abstractC19197o, AbstractC19193k abstractC19193k) {
                if (abstractC19197o == null) {
                    m2506a(0);
                }
                if (abstractC19193k == null) {
                    m2506a(1);
                }
                if (!C19807d.m1460f(abstractC19193k).shouldSeeInternalsOf(C19807d.m1460f(abstractC19197o))) {
                    return false;
                }
                return C19200r.f65017p.mo2297a(abstractC19197o, abstractC19193k);
            }
        };
        f65005d = abstractC19198p4;
        AbstractC19198p abstractC19198p5 = new AbstractC19198p(C19054be.C19062h.f64780a) { // from class: kotlin.reflect.jvm.internal.impl.descriptors.r.8
            /* renamed from: a */
            private static /* synthetic */ void m2505a(int i) {
                Object[] objArr = new Object[3];
                if (i != 1) {
                    objArr[0] = "what";
                } else {
                    objArr[0] = "from";
                }
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$5";
                objArr[2] = "isVisible";
                throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19213s
            /* renamed from: a */
            public final boolean mo2050a(AbstractC19816e abstractC19816e, AbstractC19197o abstractC19197o, AbstractC19193k abstractC19193k) {
                if (abstractC19197o == null) {
                    m2505a(0);
                }
                if (abstractC19193k == null) {
                    m2505a(1);
                    return true;
                }
                return true;
            }
        };
        f65006e = abstractC19198p5;
        AbstractC19198p abstractC19198p6 = new AbstractC19198p(C19054be.C19058d.f64776a) { // from class: kotlin.reflect.jvm.internal.impl.descriptors.r.9
            /* renamed from: a */
            private static /* synthetic */ void m2504a(int i) {
                Object[] objArr = new Object[3];
                if (i != 1) {
                    objArr[0] = "what";
                } else {
                    objArr[0] = "from";
                }
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$6";
                objArr[2] = "isVisible";
                throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19213s
            /* renamed from: a */
            public final boolean mo2050a(AbstractC19816e abstractC19816e, AbstractC19197o abstractC19197o, AbstractC19193k abstractC19193k) {
                if (abstractC19197o == null) {
                    m2504a(0);
                }
                if (abstractC19193k == null) {
                    m2504a(1);
                }
                throw new IllegalStateException("This method shouldn't be invoked for LOCAL visibility");
            }
        };
        f65007f = abstractC19198p6;
        AbstractC19198p abstractC19198p7 = new AbstractC19198p(C19054be.C19055a.f64773a) { // from class: kotlin.reflect.jvm.internal.impl.descriptors.r.10
            /* renamed from: a */
            private static /* synthetic */ void m2511a(int i) {
                Object[] objArr = new Object[3];
                if (i != 1) {
                    objArr[0] = "what";
                } else {
                    objArr[0] = "from";
                }
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$7";
                objArr[2] = "isVisible";
                throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19213s
            /* renamed from: a */
            public final boolean mo2050a(AbstractC19816e abstractC19816e, AbstractC19197o abstractC19197o, AbstractC19193k abstractC19193k) {
                if (abstractC19197o == null) {
                    m2511a(0);
                }
                if (abstractC19193k == null) {
                    m2511a(1);
                }
                throw new IllegalStateException("Visibility is unknown yet");
            }
        };
        f65008g = abstractC19198p7;
        AbstractC19198p abstractC19198p8 = new AbstractC19198p(C19054be.C19057c.f64775a) { // from class: kotlin.reflect.jvm.internal.impl.descriptors.r.11
            /* renamed from: a */
            private static /* synthetic */ void m2510a(int i) {
                Object[] objArr = new Object[3];
                if (i != 1) {
                    objArr[0] = "what";
                } else {
                    objArr[0] = "from";
                }
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$8";
                objArr[2] = "isVisible";
                throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19213s
            /* renamed from: a */
            public final boolean mo2050a(AbstractC19816e abstractC19816e, AbstractC19197o abstractC19197o, AbstractC19193k abstractC19193k) {
                if (abstractC19197o == null) {
                    m2510a(0);
                }
                if (abstractC19193k == null) {
                    m2510a(1);
                    return false;
                }
                return false;
            }
        };
        f65009h = abstractC19198p8;
        AbstractC19198p abstractC19198p9 = new AbstractC19198p(C19054be.C19063i.f64781a) { // from class: kotlin.reflect.jvm.internal.impl.descriptors.r.12
            /* renamed from: a */
            private static /* synthetic */ void m2509a(int i) {
                Object[] objArr = new Object[3];
                if (i != 1) {
                    objArr[0] = "what";
                } else {
                    objArr[0] = "from";
                }
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$9";
                objArr[2] = "isVisible";
                throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19213s
            /* renamed from: a */
            public final boolean mo2050a(AbstractC19816e abstractC19816e, AbstractC19197o abstractC19197o, AbstractC19193k abstractC19193k) {
                if (abstractC19197o == null) {
                    m2509a(0);
                }
                if (abstractC19193k == null) {
                    m2509a(1);
                    return false;
                }
                return false;
            }
        };
        f65010i = abstractC19198p9;
        f65011j = Collections.unmodifiableSet(C18255ap.m4239a((Object[]) new AbstractC19213s[]{abstractC19198p, abstractC19198p2, abstractC19198p4, abstractC19198p6}));
        HashMap m1211a = C19999a.m1211a(4);
        m1211a.put(abstractC19198p2, 0);
        m1211a.put(abstractC19198p, 0);
        m1211a.put(abstractC19198p4, 1);
        m1211a.put(abstractC19198p3, 1);
        m1211a.put(abstractC19198p5, 2);
        f65015n = Collections.unmodifiableMap(m1211a);
        f65012k = abstractC19198p5;
        Iterator it2 = ServiceLoader.load(AbstractC19320g.class, AbstractC19320g.class.getClassLoader()).iterator();
        f65017p = it2.hasNext() ? (AbstractC19320g) it2.next() : AbstractC19320g.C19321a.f65169a;
        f65018q = new HashMap();
        m2513b(abstractC19198p);
        m2513b(abstractC19198p2);
        m2513b(abstractC19198p3);
        m2513b(abstractC19198p4);
        m2513b(abstractC19198p5);
        m2513b(abstractC19198p6);
        m2513b(abstractC19198p7);
        m2513b(abstractC19198p8);
        m2513b(abstractC19198p9);
    }

    /* renamed from: a */
    public static Integer m2516a(AbstractC19213s abstractC19213s, AbstractC19213s abstractC19213s2) {
        if (abstractC19213s == null) {
            m2521a(12);
        }
        if (abstractC19213s2 == null) {
            m2521a(13);
        }
        Integer m2502a = abstractC19213s.m2502a(abstractC19213s2);
        if (m2502a != null) {
            return m2502a;
        }
        Integer m2502a2 = abstractC19213s2.m2502a(abstractC19213s);
        if (m2502a2 == null) {
            return null;
        }
        return Integer.valueOf(-m2502a2.intValue());
    }

    /* renamed from: a */
    private static AbstractC19197o m2515a(AbstractC19816e abstractC19816e, AbstractC19197o abstractC19197o, AbstractC19193k abstractC19193k) {
        AbstractC19197o m2515a;
        if (abstractC19197o == null) {
            m2521a(8);
        }
        if (abstractC19193k == null) {
            m2521a(9);
        }
        AbstractC19193k original = abstractC19197o.getOriginal();
        while (true) {
            AbstractC19197o abstractC19197o2 = (AbstractC19197o) original;
            if (abstractC19197o2 == null || abstractC19197o2.getVisibility() == f65007f) {
                break;
            } else if (!abstractC19197o2.getVisibility().mo2050a(abstractC19816e, abstractC19197o2, abstractC19193k)) {
                return abstractC19197o2;
            } else {
                original = C19807d.m1475a(abstractC19197o2, AbstractC19197o.class);
            }
        }
        if (!(abstractC19197o instanceof AbstractC19144ac) || (m2515a = m2515a(abstractC19816e, ((AbstractC19144ac) abstractC19197o).mo2616a(), abstractC19193k)) == null) {
            return null;
        }
        return m2515a;
    }

    /* renamed from: a */
    public static AbstractC19213s m2520a(AbstractC19064bf abstractC19064bf) {
        if (abstractC19064bf == null) {
            m2521a(15);
        }
        AbstractC19213s abstractC19213s = f65018q.get(abstractC19064bf);
        if (abstractC19213s != null) {
            if (abstractC19213s == null) {
                m2521a(16);
            }
            return abstractC19213s;
        }
        throw new IllegalArgumentException("Inapplicable visibility: ".concat(String.valueOf(abstractC19064bf)));
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
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static /* synthetic */ void m2521a(int r4) {
        /*
            Method dump skipped, instructions count: 365
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.descriptors.C19200r.m2521a(int):void");
    }

    /* renamed from: a */
    public static boolean m2519a(AbstractC19193k abstractC19193k, AbstractC19193k abstractC19193k2) {
        if (abstractC19193k == null) {
            m2521a(6);
        }
        if (abstractC19193k2 == null) {
            m2521a(7);
        }
        AbstractC19028au m1452n = C19807d.m1452n(abstractC19193k2);
        if (m1452n != AbstractC19028au.f64760a) {
            return m1452n.equals(C19807d.m1452n(abstractC19193k));
        }
        return false;
    }

    /* renamed from: a */
    public static boolean m2518a(AbstractC19197o abstractC19197o, AbstractC19193k abstractC19193k) {
        if (abstractC19197o == null) {
            m2521a(2);
        }
        if (abstractC19193k == null) {
            m2521a(3);
        }
        return m2515a(f65013l, abstractC19197o, abstractC19193k) == null;
    }

    /* renamed from: a */
    public static boolean m2517a(AbstractC19213s abstractC19213s) {
        if (abstractC19213s == null) {
            m2521a(14);
        }
        return abstractC19213s == f65002a || abstractC19213s == f65003b;
    }

    /* renamed from: b */
    private static void m2513b(AbstractC19213s abstractC19213s) {
        f65018q.put(abstractC19213s.mo2503a(), abstractC19213s);
    }
}
