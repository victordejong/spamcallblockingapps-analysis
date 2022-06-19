package kotlin.reflect.jvm.internal.impl.resolve;

import com.appsflyer.internal.referrer.Payload;
import java.util.Collections;
import kotlin.reflect.jvm.internal.impl.builtins.C18954j;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19017an;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19020aq;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19025as;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19026at;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19213s;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w;
import kotlin.reflect.jvm.internal.impl.descriptors.C19200r;
import kotlin.reflect.jvm.internal.impl.descriptors.EnumC19222y;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.C19142aa;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.C19148ae;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.C19158d;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.C19189x;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.C19190y;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.C19191z;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.resolve.p564b.C19756a;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.p568a.C19813b;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.Variance;
/* renamed from: kotlin.reflect.jvm.internal.impl.resolve.c */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/c.class */
public final class C19762c {

    /* renamed from: kotlin.reflect.jvm.internal.impl.resolve.c$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/c$a.class */
    public static final class C19763a extends C19158d {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19763a(AbstractC19070d abstractC19070d, AbstractC19026at abstractC19026at, boolean z) {
            super(abstractC19070d, null, AbstractC18983g.C18984a.m2705a(), true, AbstractC19039b.EnumC19040a.DECLARATION, abstractC19026at);
            if (abstractC19070d == null) {
                m1510a(0);
            }
            if (abstractC19026at == null) {
                m1510a(1);
            }
            AbstractC18983g.C18984a c18984a = AbstractC18983g.f64717a;
            m2588a(Collections.emptyList(), C19807d.m1477a(abstractC19070d, z));
        }

        /* renamed from: a */
        private static /* synthetic */ void m1510a(int i) {
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

    /* renamed from: a */
    public static AbstractC19020aq m1522a(AbstractC18973a abstractC18973a, KotlinType kotlinType, AbstractC18983g abstractC18983g) {
        if (abstractC18973a == null) {
            m1523a(29);
        }
        if (abstractC18983g == null) {
            m1523a(30);
        }
        if (kotlinType == null) {
            return null;
        }
        return new C19191z(abstractC18973a, new C19813b(abstractC18973a, kotlinType, null), abstractC18983g);
    }

    /* renamed from: a */
    public static AbstractC19025as m1516a(AbstractC19070d abstractC19070d) {
        if (abstractC19070d == null) {
            m1523a(22);
        }
        AbstractC18983g.C18984a c18984a = AbstractC18983g.f64717a;
        C19142aa initialize = C19142aa.create(abstractC19070d, AbstractC18983g.C18984a.m2705a(), C18954j.f64572b, AbstractC19039b.EnumC19040a.SYNTHESIZED, abstractC19070d.getSource()).initialize((AbstractC19020aq) null, (AbstractC19020aq) null, Collections.emptyList(), Collections.emptyList(), (KotlinType) C19756a.m1526d(abstractC19070d).m2823a(Variance.INVARIANT, abstractC19070d.getDefaultType()), EnumC19222y.FINAL, C19200r.f65006e);
        if (initialize == null) {
            m1523a(23);
        }
        return initialize;
    }

    /* renamed from: a */
    public static C19189x m1521a(AbstractC19017an abstractC19017an, AbstractC18983g abstractC18983g) {
        if (abstractC19017an == null) {
            m1523a(13);
        }
        if (abstractC18983g == null) {
            m1523a(14);
        }
        return m1514b(abstractC19017an, abstractC18983g);
    }

    /* renamed from: a */
    public static C19189x m1517a(AbstractC19017an abstractC19017an, AbstractC18983g abstractC18983g, boolean z, boolean z2, boolean z3, AbstractC19026at abstractC19026at) {
        if (abstractC19017an == null) {
            m1523a(17);
        }
        if (abstractC18983g == null) {
            m1523a(18);
        }
        if (abstractC19026at == null) {
            m1523a(19);
        }
        return new C19189x(abstractC19017an, abstractC18983g, abstractC19017an.getModality(), abstractC19017an.getVisibility(), z, false, false, AbstractC19039b.EnumC19040a.DECLARATION, null, abstractC19026at);
    }

    /* renamed from: a */
    public static C19190y m1520a(AbstractC19017an abstractC19017an, AbstractC18983g abstractC18983g, AbstractC18983g abstractC18983g2) {
        if (abstractC19017an == null) {
            m1523a(0);
        }
        if (abstractC18983g == null) {
            m1523a(1);
        }
        if (abstractC18983g2 == null) {
            m1523a(2);
        }
        return m1519a(abstractC19017an, abstractC18983g, abstractC18983g2, abstractC19017an.getSource());
    }

    /* renamed from: a */
    private static C19190y m1519a(AbstractC19017an abstractC19017an, AbstractC18983g abstractC18983g, AbstractC18983g abstractC18983g2, AbstractC19026at abstractC19026at) {
        if (abstractC19017an == null) {
            m1523a(3);
        }
        if (abstractC18983g == null) {
            m1523a(4);
        }
        if (abstractC18983g2 == null) {
            m1523a(5);
        }
        if (abstractC19026at == null) {
            m1523a(6);
        }
        return m1518a(abstractC19017an, abstractC18983g, abstractC18983g2, true, false, false, abstractC19017an.getVisibility(), abstractC19026at);
    }

    /* renamed from: a */
    public static C19190y m1518a(AbstractC19017an abstractC19017an, AbstractC18983g abstractC18983g, AbstractC18983g abstractC18983g2, boolean z, boolean z2, boolean z3, AbstractC19213s abstractC19213s, AbstractC19026at abstractC19026at) {
        if (abstractC19017an == null) {
            m1523a(7);
        }
        if (abstractC18983g == null) {
            m1523a(8);
        }
        if (abstractC18983g2 == null) {
            m1523a(9);
        }
        if (abstractC19213s == null) {
            m1523a(10);
        }
        if (abstractC19026at == null) {
            m1523a(11);
        }
        C19190y c19190y = new C19190y(abstractC19017an, abstractC18983g, abstractC19017an.getModality(), abstractC19213s, z, false, false, AbstractC19039b.EnumC19040a.DECLARATION, null, abstractC19026at);
        c19190y.m2532a(C19190y.m2533a(c19190y, abstractC19017an.mo2593g(), abstractC18983g2));
        return c19190y;
    }

    /* renamed from: a */
    public static /* synthetic */ void m1523a(int i) {
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

    /* renamed from: a */
    public static boolean m1515a(AbstractC19219w abstractC19219w) {
        if (abstractC19219w == null) {
            m1523a(26);
        }
        return abstractC19219w.getName().equals(C18954j.f64572b) && m1511c(abstractC19219w);
    }

    /* renamed from: b */
    public static AbstractC19025as m1513b(AbstractC19070d abstractC19070d) {
        if (abstractC19070d == null) {
            m1523a(24);
        }
        AbstractC18983g.C18984a c18984a = AbstractC18983g.f64717a;
        C19142aa create = C19142aa.create(abstractC19070d, AbstractC18983g.C18984a.m2705a(), C18954j.f64573c, AbstractC19039b.EnumC19040a.SYNTHESIZED, abstractC19070d.getSource());
        AbstractC18983g.C18984a c18984a2 = AbstractC18983g.f64717a;
        C19142aa initialize = create.initialize((AbstractC19020aq) null, (AbstractC19020aq) null, Collections.emptyList(), Collections.singletonList(new C19148ae(create, null, 0, AbstractC18983g.C18984a.m2705a(), C18966e.m2719a("value"), C19756a.m1526d(abstractC19070d).m2780p(), false, false, false, null, abstractC19070d.getSource())), (KotlinType) abstractC19070d.getDefaultType(), EnumC19222y.FINAL, C19200r.f65006e);
        if (initialize == null) {
            m1523a(25);
        }
        return initialize;
    }

    /* renamed from: b */
    private static C19189x m1514b(AbstractC19017an abstractC19017an, AbstractC18983g abstractC18983g) {
        if (abstractC19017an == null) {
            m1523a(15);
        }
        if (abstractC18983g == null) {
            m1523a(16);
        }
        return m1517a(abstractC19017an, abstractC18983g, true, false, false, abstractC19017an.getSource());
    }

    /* renamed from: b */
    public static boolean m1512b(AbstractC19219w abstractC19219w) {
        if (abstractC19219w == null) {
            m1523a(27);
        }
        return abstractC19219w.getName().equals(C18954j.f64573c) && m1511c(abstractC19219w);
    }

    /* renamed from: c */
    private static boolean m1511c(AbstractC19219w abstractC19219w) {
        if (abstractC19219w == null) {
            m1523a(28);
        }
        return abstractC19219w.getKind() == AbstractC19039b.EnumC19040a.SYNTHESIZED && C19807d.m1456j(abstractC19219w.getContainingDeclaration());
    }
}
