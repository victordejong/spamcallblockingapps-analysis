package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.HashMap;
import java.util.Map;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19006ae;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19064bf;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19197o;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19198p;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19213s;
import kotlin.reflect.jvm.internal.impl.descriptors.C19200r;
import kotlin.reflect.jvm.internal.impl.descriptors.p549c.C19066a;
import kotlin.reflect.jvm.internal.impl.resolve.C19807d;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.p568a.AbstractC19816e;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.java.r */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/r.class */
public final class C19516r {

    /* renamed from: a */
    public static final AbstractC19213s f65503a;

    /* renamed from: b */
    public static final AbstractC19213s f65504b;

    /* renamed from: c */
    public static final AbstractC19213s f65505c;

    /* renamed from: d */
    private static final Map<AbstractC19064bf, AbstractC19213s> f65506d = new HashMap();

    static {
        AbstractC19198p abstractC19198p = new AbstractC19198p(C19066a.C19067a.f64785a) { // from class: kotlin.reflect.jvm.internal.impl.load.java.r.1
            /* renamed from: a */
            private static /* synthetic */ void m2053a(int i) {
                Object[] objArr = new Object[3];
                if (i != 1) {
                    objArr[0] = "what";
                } else {
                    objArr[0] = "from";
                }
                objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/JavaDescriptorVisibilities$1";
                objArr[2] = "isVisible";
                throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19213s
            /* renamed from: a */
            public final boolean mo2050a(AbstractC19816e abstractC19816e, AbstractC19197o abstractC19197o, AbstractC19193k abstractC19193k) {
                if (abstractC19197o == null) {
                    m2053a(0);
                }
                if (abstractC19193k == null) {
                    m2053a(1);
                }
                return C19516r.m2054b(abstractC19197o, abstractC19193k);
            }
        };
        f65503a = abstractC19198p;
        AbstractC19198p abstractC19198p2 = new AbstractC19198p(C19066a.C19069c.f64787a) { // from class: kotlin.reflect.jvm.internal.impl.load.java.r.2
            /* renamed from: a */
            private static /* synthetic */ void m2052a(int i) {
                Object[] objArr = new Object[3];
                if (i != 1) {
                    objArr[0] = "what";
                } else {
                    objArr[0] = "from";
                }
                objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/JavaDescriptorVisibilities$2";
                objArr[2] = "isVisible";
                throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19213s
            /* renamed from: a */
            public final boolean mo2050a(AbstractC19816e abstractC19816e, AbstractC19197o abstractC19197o, AbstractC19193k abstractC19193k) {
                if (abstractC19197o == null) {
                    m2052a(0);
                }
                if (abstractC19193k == null) {
                    m2052a(1);
                }
                return C19516r.m2055a(abstractC19816e, abstractC19197o, abstractC19193k);
            }
        };
        f65504b = abstractC19198p2;
        AbstractC19198p abstractC19198p3 = new AbstractC19198p(C19066a.C19068b.f64786a) { // from class: kotlin.reflect.jvm.internal.impl.load.java.r.3
            /* renamed from: a */
            private static /* synthetic */ void m2051a(int i) {
                Object[] objArr = new Object[3];
                if (i != 1) {
                    objArr[0] = "what";
                } else {
                    objArr[0] = "from";
                }
                objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/JavaDescriptorVisibilities$3";
                objArr[2] = "isVisible";
                throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
            }

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19213s
            /* renamed from: a */
            public final boolean mo2050a(AbstractC19816e abstractC19816e, AbstractC19197o abstractC19197o, AbstractC19193k abstractC19193k) {
                if (abstractC19197o == null) {
                    m2051a(0);
                }
                if (abstractC19193k == null) {
                    m2051a(1);
                }
                return C19516r.m2055a(abstractC19816e, abstractC19197o, abstractC19193k);
            }
        };
        f65505c = abstractC19198p3;
        m2056a(abstractC19198p);
        m2056a(abstractC19198p2);
        m2056a(abstractC19198p3);
    }

    /* renamed from: a */
    public static AbstractC19213s m2058a(AbstractC19064bf abstractC19064bf) {
        if (abstractC19064bf == null) {
            m2059a(4);
        }
        AbstractC19213s abstractC19213s = f65506d.get(abstractC19064bf);
        if (abstractC19213s != null) {
            if (abstractC19213s == null) {
                m2059a(6);
            }
            return abstractC19213s;
        }
        AbstractC19213s m2520a = C19200r.m2520a(abstractC19064bf);
        if (m2520a == null) {
            m2059a(5);
        }
        return m2520a;
    }

    /* renamed from: a */
    private static /* synthetic */ void m2059a(int i) {
        String str = (i == 5 || i == 6) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 5 || i == 6) ? 2 : 3];
        switch (i) {
            case 1:
                objArr[0] = "from";
                break;
            case 2:
                objArr[0] = "first";
                break;
            case 3:
                objArr[0] = "second";
                break;
            case 4:
                objArr[0] = "visibility";
                break;
            case 5:
            case 6:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/load/java/JavaDescriptorVisibilities";
                break;
            default:
                objArr[0] = "what";
                break;
        }
        if (i == 5 || i == 6) {
            objArr[1] = "toDescriptorVisibility";
        } else {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/JavaDescriptorVisibilities";
        }
        if (i == 2 || i == 3) {
            objArr[2] = "areInSamePackage";
        } else if (i == 4) {
            objArr[2] = "toDescriptorVisibility";
        } else if (i != 5 && i != 6) {
            objArr[2] = "isVisibleForProtectedAndPackage";
        }
        String format = String.format(str, objArr);
        throw ((i == 5 || i == 6) ? new IllegalStateException(format) : new IllegalArgumentException(format));
    }

    /* renamed from: a */
    private static void m2056a(AbstractC19213s abstractC19213s) {
        f65506d.put(abstractC19213s.mo2503a(), abstractC19213s);
    }

    /* renamed from: a */
    static /* synthetic */ boolean m2055a(AbstractC19816e abstractC19816e, AbstractC19197o abstractC19197o, AbstractC19193k abstractC19193k) {
        if (abstractC19197o == null) {
            m2059a(0);
        }
        if (abstractC19193k == null) {
            m2059a(1);
        }
        if (m2054b(C19807d.m1471a(abstractC19197o), abstractC19193k)) {
            return true;
        }
        return C19200r.f65004c.mo2050a(abstractC19816e, abstractC19197o, abstractC19193k);
    }

    /* renamed from: b */
    public static boolean m2054b(AbstractC19193k abstractC19193k, AbstractC19193k abstractC19193k2) {
        if (abstractC19193k == null) {
            m2059a(2);
        }
        if (abstractC19193k2 == null) {
            m2059a(3);
        }
        AbstractC19006ae abstractC19006ae = (AbstractC19006ae) C19807d.m1474a(abstractC19193k, AbstractC19006ae.class, false);
        AbstractC19006ae abstractC19006ae2 = (AbstractC19006ae) C19807d.m1474a(abstractC19193k2, AbstractC19006ae.class, false);
        return (abstractC19006ae2 == null || abstractC19006ae == null || !abstractC19006ae.mo2542c().equals(abstractC19006ae2.mo2542c())) ? false : true;
    }
}
