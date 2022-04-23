package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.HashMap;
import java.util.Map;
import kotlin.reflect.jvm.internal.impl.descriptors.ae;
import kotlin.reflect.jvm.internal.impl.descriptors.bf;
import kotlin.reflect.jvm.internal.impl.descriptors.c.a;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.o;
import kotlin.reflect.jvm.internal.impl.descriptors.p;
import kotlin.reflect.jvm.internal.impl.descriptors.s;
import kotlin.reflect.jvm.internal.impl.resolve.d;
import kotlin.reflect.jvm.internal.impl.resolve.e.a.e;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/r.class */
public final class r {

    /* renamed from: a  reason: collision with root package name */
    public static final s f37903a;

    /* renamed from: b  reason: collision with root package name */
    public static final s f37904b;

    /* renamed from: c  reason: collision with root package name */
    public static final s f37905c;

    /* renamed from: d  reason: collision with root package name */
    private static final Map<bf, s> f37906d = new HashMap();

    static {
        p pVar = new p(a.C0671a.f37427a) { // from class: kotlin.reflect.jvm.internal.impl.load.java.r.1
            private static /* synthetic */ void a(int i) {
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

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.s
            public final boolean a(e eVar, o oVar, k kVar) {
                if (oVar == null) {
                    a(0);
                }
                if (kVar == null) {
                    a(1);
                }
                return r.b(oVar, kVar);
            }
        };
        f37903a = pVar;
        p pVar2 = new p(a.c.f37429a) { // from class: kotlin.reflect.jvm.internal.impl.load.java.r.2
            private static /* synthetic */ void a(int i) {
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

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.s
            public final boolean a(e eVar, o oVar, k kVar) {
                if (oVar == null) {
                    a(0);
                }
                if (kVar == null) {
                    a(1);
                }
                return r.a(eVar, oVar, kVar);
            }
        };
        f37904b = pVar2;
        p pVar3 = new p(a.b.f37428a) { // from class: kotlin.reflect.jvm.internal.impl.load.java.r.3
            private static /* synthetic */ void a(int i) {
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

            @Override // kotlin.reflect.jvm.internal.impl.descriptors.s
            public final boolean a(e eVar, o oVar, k kVar) {
                if (oVar == null) {
                    a(0);
                }
                if (kVar == null) {
                    a(1);
                }
                return r.a(eVar, oVar, kVar);
            }
        };
        f37905c = pVar3;
        a(pVar);
        a(pVar2);
        a(pVar3);
    }

    public static s a(bf bfVar) {
        if (bfVar == null) {
            a(4);
        }
        s sVar = f37906d.get(bfVar);
        if (sVar == null) {
            s a2 = kotlin.reflect.jvm.internal.impl.descriptors.r.a(bfVar);
            if (a2 == null) {
                a(5);
            }
            return a2;
        }
        if (sVar == null) {
            a(6);
        }
        return sVar;
    }

    private static /* synthetic */ void a(int i) {
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
        } else if (!(i == 5 || i == 6)) {
            objArr[2] = "isVisibleForProtectedAndPackage";
        }
        String format = String.format(str, objArr);
        throw ((i == 5 || i == 6) ? new IllegalStateException(format) : new IllegalArgumentException(format));
    }

    private static void a(s sVar) {
        f37906d.put(sVar.a(), sVar);
    }

    static /* synthetic */ boolean a(e eVar, o oVar, k kVar) {
        if (oVar == null) {
            a(0);
        }
        if (kVar == null) {
            a(1);
        }
        if (b(d.a(oVar), kVar)) {
            return true;
        }
        return kotlin.reflect.jvm.internal.impl.descriptors.r.f37592c.a(eVar, oVar, kVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(k kVar, k kVar2) {
        if (kVar == null) {
            a(2);
        }
        if (kVar2 == null) {
            a(3);
        }
        ae aeVar = (ae) d.a(kVar, ae.class, false);
        ae aeVar2 = (ae) d.a(kVar2, ae.class, false);
        return (aeVar2 == null || aeVar == null || !aeVar.c().equals(aeVar2.c())) ? false : true;
    }
}
