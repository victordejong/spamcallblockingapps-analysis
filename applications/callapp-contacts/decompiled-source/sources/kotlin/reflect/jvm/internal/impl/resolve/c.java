package kotlin.reflect.jvm.internal.impl.resolve;

import com.appsflyer.internal.referrer.Payload;
import java.util.Collections;
import kotlin.reflect.jvm.internal.impl.builtins.j;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.descriptors.an;
import kotlin.reflect.jvm.internal.impl.descriptors.aq;
import kotlin.reflect.jvm.internal.impl.descriptors.as;
import kotlin.reflect.jvm.internal.impl.descriptors.at;
import kotlin.reflect.jvm.internal.impl.descriptors.b;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.aa;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ae;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.d;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.x;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.z;
import kotlin.reflect.jvm.internal.impl.descriptors.r;
import kotlin.reflect.jvm.internal.impl.descriptors.s;
import kotlin.reflect.jvm.internal.impl.descriptors.w;
import kotlin.reflect.jvm.internal.impl.descriptors.y;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.Variance;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/c.class */
public final class c {

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/c$a.class */
    public static final class a extends d {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(kotlin.reflect.jvm.internal.impl.descriptors.d dVar, at atVar, boolean z) {
            super(dVar, null, g.a.a(), true, b.a.DECLARATION, atVar);
            if (dVar == null) {
                a(0);
            }
            if (atVar == null) {
                a(1);
            }
            g.a aVar = g.f37361a;
            a(Collections.emptyList(), d.a(dVar, z));
        }

        private static /* synthetic */ void a(int i) {
            Object[] objArr = new Object[3];
            if (i != 1) {
                objArr[0] = "containingClass";
            } else {
                objArr[0] = Payload.SOURCE;
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/resolve/DescriptorFactory$DefaultClassConstructorDescriptor";
            objArr[2] = "<init>";
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }
    }

    public static aq a(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, KotlinType kotlinType, g gVar) {
        if (aVar == null) {
            a(29);
        }
        if (gVar == null) {
            a(30);
        }
        if (kotlinType == null) {
            return null;
        }
        return new z(aVar, new kotlin.reflect.jvm.internal.impl.resolve.e.a.b(aVar, kotlinType, null), gVar);
    }

    public static as a(kotlin.reflect.jvm.internal.impl.descriptors.d dVar) {
        if (dVar == null) {
            a(22);
        }
        g.a aVar = g.f37361a;
        aa initialize = aa.create(dVar, g.a.a(), j.f37317b, b.a.SYNTHESIZED, dVar.getSource()).initialize((aq) null, (aq) null, Collections.emptyList(), Collections.emptyList(), (KotlinType) kotlin.reflect.jvm.internal.impl.resolve.b.a.d(dVar).a(Variance.INVARIANT, dVar.getDefaultType()), y.FINAL, r.e);
        if (initialize == null) {
            a(23);
        }
        return initialize;
    }

    public static x a(an anVar, g gVar) {
        if (anVar == null) {
            a(13);
        }
        if (gVar == null) {
            a(14);
        }
        return b(anVar, gVar);
    }

    public static x a(an anVar, g gVar, boolean z, boolean z2, boolean z3, at atVar) {
        if (anVar == null) {
            a(17);
        }
        if (gVar == null) {
            a(18);
        }
        if (atVar == null) {
            a(19);
        }
        return new x(anVar, gVar, anVar.getModality(), anVar.getVisibility(), z, false, false, b.a.DECLARATION, null, atVar);
    }

    public static kotlin.reflect.jvm.internal.impl.descriptors.impl.y a(an anVar, g gVar, g gVar2) {
        if (anVar == null) {
            a(0);
        }
        if (gVar == null) {
            a(1);
        }
        if (gVar2 == null) {
            a(2);
        }
        return a(anVar, gVar, gVar2, anVar.getSource());
    }

    private static kotlin.reflect.jvm.internal.impl.descriptors.impl.y a(an anVar, g gVar, g gVar2, at atVar) {
        if (anVar == null) {
            a(3);
        }
        if (gVar == null) {
            a(4);
        }
        if (gVar2 == null) {
            a(5);
        }
        if (atVar == null) {
            a(6);
        }
        return a(anVar, gVar, gVar2, true, false, false, anVar.getVisibility(), atVar);
    }

    public static kotlin.reflect.jvm.internal.impl.descriptors.impl.y a(an anVar, g gVar, g gVar2, boolean z, boolean z2, boolean z3, s sVar, at atVar) {
        if (anVar == null) {
            a(7);
        }
        if (gVar == null) {
            a(8);
        }
        if (gVar2 == null) {
            a(9);
        }
        if (sVar == null) {
            a(10);
        }
        if (atVar == null) {
            a(11);
        }
        kotlin.reflect.jvm.internal.impl.descriptors.impl.y yVar = new kotlin.reflect.jvm.internal.impl.descriptors.impl.y(anVar, gVar, anVar.getModality(), sVar, z, false, false, b.a.DECLARATION, null, atVar);
        yVar.a(kotlin.reflect.jvm.internal.impl.descriptors.impl.y.a(yVar, anVar.g(), gVar2));
        return yVar;
    }

    public static /* synthetic */ void a(int i) {
        String str = (i == 12 || i == 23 || i == 25) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 12 || i == 23 || i == 25) ? 2 : 3];
        switch (i) {
            case 1:
            case 4:
            case 8:
            case 14:
            case 16:
            case 18:
            case 30:
                objArr[0] = "annotations";
                break;
            case 2:
            case 5:
            case 9:
                objArr[0] = "parameterAnnotations";
                break;
            case 3:
            case 7:
            case 13:
            case 15:
            case 17:
            default:
                objArr[0] = "propertyDescriptor";
                break;
            case 6:
            case 11:
            case 19:
                objArr[0] = "sourceElement";
                break;
            case 10:
                objArr[0] = "visibility";
                break;
            case 12:
            case 23:
            case 25:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/resolve/DescriptorFactory";
                break;
            case 20:
                objArr[0] = "containingClass";
                break;
            case 21:
                objArr[0] = Payload.SOURCE;
                break;
            case 22:
            case 24:
                objArr[0] = "enumClass";
                break;
            case 26:
            case 27:
            case 28:
                objArr[0] = "descriptor";
                break;
            case 29:
                objArr[0] = "owner";
                break;
        }
        if (i == 12) {
            objArr[1] = "createSetter";
        } else if (i == 23) {
            objArr[1] = "createEnumValuesMethod";
        } else if (i != 25) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/resolve/DescriptorFactory";
        } else {
            objArr[1] = "createEnumValueOfMethod";
        }
        switch (i) {
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
                objArr[2] = "createSetter";
                break;
            case 12:
            case 23:
            case 25:
                break;
            case 13:
            case 14:
                objArr[2] = "createDefaultGetter";
                break;
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
                objArr[2] = "createGetter";
                break;
            case 20:
            case 21:
                objArr[2] = "createPrimaryConstructorForObject";
                break;
            case 22:
                objArr[2] = "createEnumValuesMethod";
                break;
            case 24:
                objArr[2] = "createEnumValueOfMethod";
                break;
            case 26:
                objArr[2] = "isEnumValuesMethod";
                break;
            case 27:
                objArr[2] = "isEnumValueOfMethod";
                break;
            case 28:
                objArr[2] = "isEnumSpecialMethod";
                break;
            case 29:
            case 30:
                objArr[2] = "createExtensionReceiverParameterForCallable";
                break;
            default:
                objArr[2] = "createDefaultSetter";
                break;
        }
        String format = String.format(str, objArr);
        throw ((i == 12 || i == 23 || i == 25) ? new IllegalStateException(format) : new IllegalArgumentException(format));
    }

    public static boolean a(w wVar) {
        if (wVar == null) {
            a(26);
        }
        return wVar.getName().equals(j.f37317b) && c(wVar);
    }

    public static as b(kotlin.reflect.jvm.internal.impl.descriptors.d dVar) {
        if (dVar == null) {
            a(24);
        }
        g.a aVar = g.f37361a;
        aa create = aa.create(dVar, g.a.a(), j.f37318c, b.a.SYNTHESIZED, dVar.getSource());
        g.a aVar2 = g.f37361a;
        aa initialize = create.initialize((aq) null, (aq) null, Collections.emptyList(), Collections.singletonList(new ae(create, null, 0, g.a.a(), e.a("value"), kotlin.reflect.jvm.internal.impl.resolve.b.a.d(dVar).p(), false, false, false, null, dVar.getSource())), (KotlinType) dVar.getDefaultType(), y.FINAL, r.e);
        if (initialize == null) {
            a(25);
        }
        return initialize;
    }

    private static x b(an anVar, g gVar) {
        if (anVar == null) {
            a(15);
        }
        if (gVar == null) {
            a(16);
        }
        return a(anVar, gVar, true, false, false, anVar.getSource());
    }

    public static boolean b(w wVar) {
        if (wVar == null) {
            a(27);
        }
        return wVar.getName().equals(j.f37318c) && c(wVar);
    }

    private static boolean c(w wVar) {
        if (wVar == null) {
            a(28);
        }
        return wVar.getKind() == b.a.SYNTHESIZED && d.j(wVar.getContainingDeclaration());
    }
}
