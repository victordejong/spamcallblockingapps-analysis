package kotlin.reflect.jvm.internal.impl.load.java.p558a;

import java.util.Collection;
import java.util.LinkedHashSet;
import kotlin.C20128v;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19050ba;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19065c;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.resolve.AbstractC19855g;
import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractC19955o;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.java.a.a */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/a/a.class */
public final class C19344a {
    /* renamed from: a */
    public static <D extends AbstractC19039b> Collection<D> m2287a(C18966e c18966e, Collection<D> collection, Collection<D> collection2, AbstractC19070d abstractC19070d, AbstractC19955o abstractC19955o, OverridingUtil overridingUtil) {
        if (c18966e == null) {
            m2288a(0);
        }
        if (collection == null) {
            m2288a(1);
        }
        if (collection2 == null) {
            m2288a(2);
        }
        if (abstractC19070d == null) {
            m2288a(3);
        }
        if (abstractC19955o == null) {
            m2288a(4);
        }
        if (overridingUtil == null) {
            m2288a(5);
        }
        return m2286a(c18966e, collection, collection2, abstractC19070d, abstractC19955o, overridingUtil, false);
    }

    /* renamed from: a */
    private static <D extends AbstractC19039b> Collection<D> m2286a(C18966e c18966e, Collection<D> collection, Collection<D> collection2, AbstractC19070d abstractC19070d, final AbstractC19955o abstractC19955o, OverridingUtil overridingUtil, final boolean z) {
        if (c18966e == null) {
            m2288a(12);
        }
        if (collection == null) {
            m2288a(13);
        }
        if (collection2 == null) {
            m2288a(14);
        }
        if (abstractC19070d == null) {
            m2288a(15);
        }
        if (abstractC19955o == null) {
            m2288a(16);
        }
        if (overridingUtil == null) {
            m2288a(17);
        }
        final LinkedHashSet linkedHashSet = new LinkedHashSet();
        overridingUtil.m1580a(c18966e, collection, collection2, abstractC19070d, new AbstractC19855g() { // from class: kotlin.reflect.jvm.internal.impl.load.java.a.a.1
            /* renamed from: a */
            private static /* synthetic */ void m2283a(int i) {
                Object[] objArr = new Object[3];
                if (i == 1) {
                    objArr[0] = "fromSuper";
                } else if (i == 2) {
                    objArr[0] = "fromCurrent";
                } else if (i == 3) {
                    objArr[0] = "member";
                } else if (i != 4) {
                    objArr[0] = "fakeOverride";
                } else {
                    objArr[0] = "overridden";
                }
                objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/components/DescriptorResolverUtils$1";
                if (i == 1 || i == 2) {
                    objArr[2] = "conflict";
                } else if (i == 3 || i == 4) {
                    objArr[2] = "setOverriddenDescriptors";
                } else {
                    objArr[2] = "addFakeOverride";
                }
                throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
            }

            @Override // kotlin.reflect.jvm.internal.impl.resolve.AbstractC19856h
            /* renamed from: a */
            public final void mo1343a(AbstractC19039b abstractC19039b) {
                if (abstractC19039b == null) {
                    m2283a(0);
                }
                OverridingUtil.m1568a(abstractC19039b, new Function1<AbstractC19039b, C20128v>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.a.a.1.1
                    @Override // kotlin.jvm.functions.Function1
                    public final /* synthetic */ C20128v invoke(AbstractC19039b abstractC19039b2) {
                        AbstractC19039b abstractC19039b3 = abstractC19039b2;
                        if (abstractC19039b3 != null) {
                            abstractC19955o.mo1252a(abstractC19039b3);
                            return C20128v.f66529a;
                        }
                        throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "descriptor", "kotlin/reflect/jvm/internal/impl/load/java/components/DescriptorResolverUtils$1$1", "invoke"));
                    }
                });
                linkedHashSet.add(abstractC19039b);
            }

            @Override // kotlin.reflect.jvm.internal.impl.resolve.AbstractC19856h
            /* renamed from: a */
            public final void mo1398a(AbstractC19039b abstractC19039b, Collection<? extends AbstractC19039b> collection3) {
                if (abstractC19039b == null) {
                    m2283a(3);
                }
                if (collection3 == null) {
                    m2283a(4);
                }
                if (!z || abstractC19039b.getKind() == AbstractC19039b.EnumC19040a.FAKE_OVERRIDE) {
                    super.mo1398a(abstractC19039b, collection3);
                }
            }

            @Override // kotlin.reflect.jvm.internal.impl.resolve.AbstractC19855g
            /* renamed from: a */
            public final void mo1342a(AbstractC19039b abstractC19039b, AbstractC19039b abstractC19039b2) {
                if (abstractC19039b == null) {
                    m2283a(1);
                }
                if (abstractC19039b2 == null) {
                    m2283a(2);
                }
            }
        });
        return linkedHashSet;
    }

    /* renamed from: a */
    public static AbstractC19050ba m2285a(C18966e c18966e, AbstractC19070d abstractC19070d) {
        if (c18966e == null) {
            m2288a(19);
        }
        if (abstractC19070d == null) {
            m2288a(20);
        }
        Collection<AbstractC19065c> constructors = abstractC19070d.getConstructors();
        if (constructors.size() != 1) {
            return null;
        }
        for (AbstractC19050ba abstractC19050ba : constructors.iterator().next().getValueParameters()) {
            if (abstractC19050ba.getName().equals(c18966e)) {
                return abstractC19050ba;
            }
        }
        return null;
    }

    /* renamed from: a */
    private static /* synthetic */ void m2288a(int i) {
        String str = i != 18 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
        Object[] objArr = new Object[i != 18 ? 3 : 2];
        switch (i) {
            case 1:
            case 7:
            case 13:
                objArr[0] = "membersFromSupertypes";
                break;
            case 2:
            case 8:
            case 14:
                objArr[0] = "membersFromCurrent";
                break;
            case 3:
            case 9:
            case 15:
                objArr[0] = "classDescriptor";
                break;
            case 4:
            case 10:
            case 16:
                objArr[0] = "errorReporter";
                break;
            case 5:
            case 11:
            case 17:
                objArr[0] = "overridingUtil";
                break;
            case 6:
            case 12:
            case 19:
            default:
                objArr[0] = "name";
                break;
            case 18:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/load/java/components/DescriptorResolverUtils";
                break;
            case 20:
                objArr[0] = "annotationClass";
                break;
        }
        if (i != 18) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/components/DescriptorResolverUtils";
        } else {
            objArr[1] = "resolveOverrides";
        }
        switch (i) {
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
                objArr[2] = "resolveOverridesForStaticMembers";
                break;
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
                objArr[2] = "resolveOverrides";
                break;
            case 18:
                break;
            case 19:
            case 20:
                objArr[2] = "getAnnotationParameterByName";
                break;
            default:
                objArr[2] = "resolveOverridesForNonStaticMembers";
                break;
        }
        String format = String.format(str, objArr);
        throw (i != 18 ? new IllegalArgumentException(format) : new IllegalStateException(format));
    }

    /* renamed from: b */
    public static <D extends AbstractC19039b> Collection<D> m2284b(C18966e c18966e, Collection<D> collection, Collection<D> collection2, AbstractC19070d abstractC19070d, AbstractC19955o abstractC19955o, OverridingUtil overridingUtil) {
        if (c18966e == null) {
            m2288a(6);
        }
        if (collection == null) {
            m2288a(7);
        }
        if (collection2 == null) {
            m2288a(8);
        }
        if (abstractC19070d == null) {
            m2288a(9);
        }
        if (abstractC19955o == null) {
            m2288a(10);
        }
        if (overridingUtil == null) {
            m2288a(11);
        }
        return m2286a(c18966e, collection, collection2, abstractC19070d, abstractC19955o, overridingUtil, true);
    }
}
