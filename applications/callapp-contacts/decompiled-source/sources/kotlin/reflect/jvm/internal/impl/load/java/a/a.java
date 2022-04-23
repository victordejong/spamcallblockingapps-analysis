package kotlin.reflect.jvm.internal.impl.load.java.a;

import java.util.Collection;
import java.util.LinkedHashSet;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.b;
import kotlin.reflect.jvm.internal.impl.descriptors.ba;
import kotlin.reflect.jvm.internal.impl.descriptors.c;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil;
import kotlin.reflect.jvm.internal.impl.resolve.g;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.o;
import kotlin.v;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/a/a.class */
public final class a {
    public static <D extends b> Collection<D> a(e eVar, Collection<D> collection, Collection<D> collection2, d dVar, o oVar, OverridingUtil overridingUtil) {
        if (eVar == null) {
            a(0);
        }
        if (collection == null) {
            a(1);
        }
        if (collection2 == null) {
            a(2);
        }
        if (dVar == null) {
            a(3);
        }
        if (oVar == null) {
            a(4);
        }
        if (overridingUtil == null) {
            a(5);
        }
        return a(eVar, collection, collection2, dVar, oVar, overridingUtil, false);
    }

    private static <D extends b> Collection<D> a(e eVar, Collection<D> collection, Collection<D> collection2, d dVar, final o oVar, OverridingUtil overridingUtil, final boolean z) {
        if (eVar == null) {
            a(12);
        }
        if (collection == null) {
            a(13);
        }
        if (collection2 == null) {
            a(14);
        }
        if (dVar == null) {
            a(15);
        }
        if (oVar == null) {
            a(16);
        }
        if (overridingUtil == null) {
            a(17);
        }
        final LinkedHashSet linkedHashSet = new LinkedHashSet();
        overridingUtil.a(eVar, collection, collection2, dVar, new g() { // from class: kotlin.reflect.jvm.internal.impl.load.java.a.a.1
            private static /* synthetic */ void a(int i) {
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

            @Override // kotlin.reflect.jvm.internal.impl.resolve.h
            public final void a(b bVar) {
                if (bVar == null) {
                    a(0);
                }
                OverridingUtil.a(bVar, new Function1<b, v>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.a.a.1.1
                    @Override // kotlin.jvm.functions.Function1
                    public final /* synthetic */ v invoke(b bVar2) {
                        b bVar3 = bVar2;
                        if (bVar3 != null) {
                            o.this.a(bVar3);
                            return v.f38654a;
                        }
                        throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "descriptor", "kotlin/reflect/jvm/internal/impl/load/java/components/DescriptorResolverUtils$1$1", "invoke"));
                    }
                });
                linkedHashSet.add(bVar);
            }

            @Override // kotlin.reflect.jvm.internal.impl.resolve.h
            public final void a(b bVar, Collection<? extends b> collection3) {
                if (bVar == null) {
                    a(3);
                }
                if (collection3 == null) {
                    a(4);
                }
                if (!z || bVar.getKind() == b.a.FAKE_OVERRIDE) {
                    super.a(bVar, collection3);
                }
            }

            @Override // kotlin.reflect.jvm.internal.impl.resolve.g
            public final void a(b bVar, b bVar2) {
                if (bVar == null) {
                    a(1);
                }
                if (bVar2 == null) {
                    a(2);
                }
            }
        });
        return linkedHashSet;
    }

    public static ba a(e eVar, d dVar) {
        if (eVar == null) {
            a(19);
        }
        if (dVar == null) {
            a(20);
        }
        Collection<c> constructors = dVar.getConstructors();
        if (constructors.size() != 1) {
            return null;
        }
        for (ba baVar : constructors.iterator().next().getValueParameters()) {
            if (baVar.getName().equals(eVar)) {
                return baVar;
            }
        }
        return null;
    }

    private static /* synthetic */ void a(int i) {
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

    public static <D extends b> Collection<D> b(e eVar, Collection<D> collection, Collection<D> collection2, d dVar, o oVar, OverridingUtil overridingUtil) {
        if (eVar == null) {
            a(6);
        }
        if (collection == null) {
            a(7);
        }
        if (collection2 == null) {
            a(8);
        }
        if (dVar == null) {
            a(9);
        }
        if (oVar == null) {
            a(10);
        }
        if (overridingUtil == null) {
            a(11);
        }
        return a(eVar, collection, collection2, dVar, oVar, overridingUtil, true);
    }
}
