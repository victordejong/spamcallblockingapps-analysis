package kotlin.reflect.jvm.internal.impl.resolve;

import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.reflect.jvm.internal.impl.builtins.AbstractC18940g;
import kotlin.reflect.jvm.internal.impl.builtins.C18959n;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18999ab;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19006ae;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19013aj;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19017an;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19019ap;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19020aq;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19028au;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19052bc;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19196n;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19197o;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19213s;
import kotlin.reflect.jvm.internal.impl.descriptors.C19200r;
import kotlin.reflect.jvm.internal.impl.descriptors.EnumC19127e;
import kotlin.reflect.jvm.internal.impl.descriptors.EnumC19222y;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.p545c.C18962c;
import kotlin.reflect.jvm.internal.impl.p545c.C18968g;
import kotlin.reflect.jvm.internal.impl.resolve.p564b.C19756a;
import kotlin.reflect.jvm.internal.impl.types.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeChecker;
/* renamed from: kotlin.reflect.jvm.internal.impl.resolve.d */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/d.class */
public class C19807d {

    /* renamed from: a */
    public static final C18961b f65977a = new C18961b("kotlin.jvm.JvmName");

    /* renamed from: b */
    static final /* synthetic */ boolean f65978b = true;

    private C19807d() {
    }

    /* renamed from: a */
    public static <D extends AbstractC18973a> Set<D> m1483a(D d) {
        if (d == null) {
            m1484a(66);
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        m1482a(d.getOriginal(), linkedHashSet);
        return linkedHashSet;
    }

    /* renamed from: a */
    public static AbstractC18999ab m1470a(KotlinType kotlinType) {
        if (kotlinType == null) {
            m1484a(18);
        }
        AbstractC19129g declarationDescriptor = kotlinType.getConstructor().getDeclarationDescriptor();
        if (declarationDescriptor == null) {
            return null;
        }
        return m1449q(declarationDescriptor);
    }

    /* renamed from: a */
    public static AbstractC19020aq m1476a(AbstractC19193k abstractC19193k) {
        if (abstractC19193k == null) {
            m1484a(0);
        }
        if (abstractC19193k instanceof AbstractC19070d) {
            return ((AbstractC19070d) abstractC19193k).getThisAsReceiverParameter();
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [kotlin.reflect.jvm.internal.impl.descriptors.b] */
    /* renamed from: a */
    public static <D extends AbstractC19039b> D m1481a(D d) {
        D d2 = d;
        if (d == null) {
            m1484a(57);
            d2 = d;
        }
        while (d2.getKind() == AbstractC19039b.EnumC19040a.FAKE_OVERRIDE) {
            Collection<? extends AbstractC19039b> overriddenDescriptors = d2.getOverriddenDescriptors();
            if (overriddenDescriptors.isEmpty()) {
                throw new IllegalStateException("Fake override should have at least one overridden descriptor: ".concat(String.valueOf(d2)));
            }
            d2 = overriddenDescriptors.iterator().next();
        }
        if (d2 == null) {
            m1484a(58);
        }
        return d2;
    }

    /* renamed from: a */
    public static AbstractC19070d m1479a(AbstractC19070d abstractC19070d) {
        if (abstractC19070d == null) {
            m1484a(42);
        }
        for (KotlinType kotlinType : abstractC19070d.getTypeConstructor().mo53752getSupertypes()) {
            AbstractC19070d m1465b = m1465b(kotlinType);
            if (m1465b.getKind() != EnumC19127e.INTERFACE) {
                return m1465b;
            }
        }
        return null;
    }

    /* renamed from: a */
    private static AbstractC19070d m1468a(TypeConstructor typeConstructor) {
        if (typeConstructor == null) {
            m1484a(44);
        }
        AbstractC19129g declarationDescriptor = typeConstructor.getDeclarationDescriptor();
        if (f65978b || (declarationDescriptor instanceof AbstractC19070d)) {
            AbstractC19070d abstractC19070d = (AbstractC19070d) declarationDescriptor;
            if (abstractC19070d == null) {
                m1484a(45);
            }
            return abstractC19070d;
        }
        throw new AssertionError("Classifier descriptor of a type should be of type ClassDescriptor: ".concat(String.valueOf(typeConstructor)));
    }

    /* renamed from: a */
    public static <D extends AbstractC19193k> D m1475a(AbstractC19193k abstractC19193k, Class<D> cls) {
        return (D) m1474a(abstractC19193k, cls, true);
    }

    /* renamed from: a */
    public static <D extends AbstractC19193k> D m1474a(AbstractC19193k abstractC19193k, Class<D> cls, boolean z) {
        if (cls == null) {
            m1484a(17);
        }
        if (abstractC19193k == null) {
            return null;
        }
        AbstractC19193k abstractC19193k2 = abstractC19193k;
        if (z) {
            abstractC19193k2 = abstractC19193k.getContainingDeclaration();
        }
        while (abstractC19193k2 != null) {
            if (cls.isInstance(abstractC19193k2)) {
                return (D) abstractC19193k2;
            }
            abstractC19193k2 = abstractC19193k2.getContainingDeclaration();
        }
        return null;
    }

    /* renamed from: a */
    public static <D extends AbstractC19197o> D m1471a(D d) {
        if (d == null) {
            m1484a(59);
        }
        if (d instanceof AbstractC19039b) {
            return m1481a((AbstractC19039b) d);
        }
        if (d == null) {
            m1484a(60);
        }
        return d;
    }

    /* renamed from: a */
    public static AbstractC19213s m1477a(AbstractC19070d abstractC19070d, boolean z) {
        if (abstractC19070d == null) {
            m1484a(46);
        }
        EnumC19127e kind = abstractC19070d.getKind();
        if (kind == EnumC19127e.ENUM_CLASS || kind.isSingleton()) {
            AbstractC19213s abstractC19213s = C19200r.f65002a;
            if (abstractC19213s == null) {
                m1484a(47);
            }
            return abstractC19213s;
        } else if (m1458h(abstractC19070d)) {
            if (z) {
                AbstractC19213s abstractC19213s2 = C19200r.f65005d;
                if (abstractC19213s2 == null) {
                    m1484a(48);
                }
                return abstractC19213s2;
            }
            AbstractC19213s abstractC19213s3 = C19200r.f65002a;
            if (abstractC19213s3 == null) {
                m1484a(49);
            }
            return abstractC19213s3;
        } else if (m1448r(abstractC19070d)) {
            AbstractC19213s abstractC19213s4 = C19200r.f65012k;
            if (abstractC19213s4 == null) {
                m1484a(50);
            }
            return abstractC19213s4;
        } else if (!f65978b && kind != EnumC19127e.CLASS && kind != EnumC19127e.INTERFACE && kind != EnumC19127e.ANNOTATION_CLASS) {
            throw new AssertionError();
        } else {
            AbstractC19213s abstractC19213s5 = C19200r.f65006e;
            if (abstractC19213s5 == null) {
                m1484a(51);
            }
            return abstractC19213s5;
        }
    }

    /* renamed from: a */
    private static /* synthetic */ void m1484a(int i) {
        String str;
        int i2;
        IllegalArgumentException illegalArgumentException;
        switch (i) {
            case 4:
            case 7:
            case 9:
            case 10:
            case 20:
            case 38:
            case 40:
            case 41:
            case 45:
            case 47:
            case 48:
            case 49:
            case 50:
            case 51:
            case 58:
            case 60:
            case 67:
            case 71:
            case 78:
            case 79:
            case 81:
            case 84:
            case 89:
            case 91:
                str = "@NotNull method %s.%s must not return null";
                break;
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i) {
            case 4:
            case 7:
            case 9:
            case 10:
            case 20:
            case 38:
            case 40:
            case 41:
            case 45:
            case 47:
            case 48:
            case 49:
            case 50:
            case 51:
            case 58:
            case 60:
            case 67:
            case 71:
            case 78:
            case 79:
            case 81:
            case 84:
            case 89:
            case 91:
                i2 = 2;
                break;
            default:
                i2 = 3;
                break;
        }
        Object[] objArr = new Object[i2];
        switch (i) {
            case 1:
            case 2:
            case 3:
            case 5:
            case 6:
            case 8:
            case 11:
            case 12:
            case 13:
            case 19:
            case 21:
            case 22:
            case 32:
            case 33:
            case 34:
            case 55:
            case 56:
            case 57:
            case 59:
            case 77:
            case 90:
            case 92:
                objArr[0] = "descriptor";
                break;
            case 4:
            case 7:
            case 9:
            case 10:
            case 20:
            case 38:
            case 40:
            case 41:
            case 45:
            case 47:
            case 48:
            case 49:
            case 50:
            case 51:
            case 58:
            case 60:
            case 67:
            case 71:
            case 78:
            case 79:
            case 81:
            case 84:
            case 89:
            case 91:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils";
                break;
            case 14:
                objArr[0] = "first";
                break;
            case 15:
                objArr[0] = "second";
                break;
            case 16:
            case 17:
                objArr[0] = "aClass";
                break;
            case 18:
                objArr[0] = "kotlinType";
                break;
            case 23:
                objArr[0] = "declarationDescriptor";
                break;
            case 24:
            case 26:
                objArr[0] = "subClass";
                break;
            case 25:
            case 27:
            case 31:
                objArr[0] = "superClass";
                break;
            case 28:
            case 30:
            case 43:
            case 62:
                objArr[0] = "type";
                break;
            case 29:
                objArr[0] = "other";
                break;
            case 35:
                objArr[0] = "classKind";
                break;
            case 36:
            case 37:
            case 39:
            case 42:
            case 46:
            case 52:
            case 63:
            case 64:
            case 65:
            case 72:
            case 73:
                objArr[0] = "classDescriptor";
                break;
            case 44:
                objArr[0] = "typeConstructor";
                break;
            case 53:
                objArr[0] = "innerClassName";
                break;
            case 54:
                objArr[0] = "location";
                break;
            case 61:
                objArr[0] = "variable";
                break;
            case 66:
                objArr[0] = "f";
                break;
            case 68:
                objArr[0] = "current";
                break;
            case 69:
                objArr[0] = "result";
                break;
            case 70:
                objArr[0] = "memberDescriptor";
                break;
            case 74:
            case 75:
            case 76:
                objArr[0] = "annotated";
                break;
            case 80:
            case 82:
            case 85:
            case 87:
                objArr[0] = "scope";
                break;
            case 83:
            case 86:
            case 88:
                objArr[0] = "name";
                break;
            default:
                objArr[0] = "containingDeclaration";
                break;
        }
        switch (i) {
            case 4:
                objArr[1] = "getFqNameSafe";
                break;
            case 7:
                objArr[1] = "getFqNameUnsafe";
                break;
            case 9:
            case 10:
                objArr[1] = "getFqNameFromTopLevelClass";
                break;
            case 20:
                objArr[1] = "getContainingModule";
                break;
            case 38:
                objArr[1] = "getSuperclassDescriptors";
                break;
            case 40:
            case 41:
                objArr[1] = "getSuperClassType";
                break;
            case 45:
                objArr[1] = "getClassDescriptorForTypeConstructor";
                break;
            case 47:
            case 48:
            case 49:
            case 50:
            case 51:
                objArr[1] = "getDefaultConstructorVisibility";
                break;
            case 58:
                objArr[1] = "unwrapFakeOverride";
                break;
            case 60:
                objArr[1] = "unwrapFakeOverrideToAnyDeclaration";
                break;
            case 67:
                objArr[1] = "getAllOverriddenDescriptors";
                break;
            case 71:
                objArr[1] = "getAllOverriddenDeclarations";
                break;
            case 78:
            case 79:
                objArr[1] = "getContainingSourceFile";
                break;
            case 81:
                objArr[1] = "getAllDescriptors";
                break;
            case 84:
                objArr[1] = "getFunctionByName";
                break;
            case 89:
                objArr[1] = "getPropertyByName";
                break;
            case 91:
                objArr[1] = "getDirectMember";
                break;
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils";
                break;
        }
        switch (i) {
            case 1:
                objArr[2] = "isLocal";
                break;
            case 2:
                objArr[2] = "getFqName";
                break;
            case 3:
                objArr[2] = "getFqNameSafe";
                break;
            case 4:
            case 7:
            case 9:
            case 10:
            case 20:
            case 38:
            case 40:
            case 41:
            case 45:
            case 47:
            case 48:
            case 49:
            case 50:
            case 51:
            case 58:
            case 60:
            case 67:
            case 71:
            case 78:
            case 79:
            case 81:
            case 84:
            case 89:
            case 91:
                break;
            case 5:
                objArr[2] = "getFqNameSafeIfPossible";
                break;
            case 6:
                objArr[2] = "getFqNameUnsafe";
                break;
            case 8:
                objArr[2] = "getFqNameFromTopLevelClass";
                break;
            case 11:
                objArr[2] = "isExtension";
                break;
            case 12:
                objArr[2] = "isOverride";
                break;
            case 13:
                objArr[2] = "isStaticDeclaration";
                break;
            case 14:
            case 15:
                objArr[2] = "areInSameModule";
                break;
            case 16:
            case 17:
                objArr[2] = "getParentOfType";
                break;
            case 18:
            case 21:
                objArr[2] = "getContainingModuleOrNull";
                break;
            case 19:
                objArr[2] = "getContainingModule";
                break;
            case 22:
                objArr[2] = "getContainingClass";
                break;
            case 23:
                objArr[2] = "isAncestor";
                break;
            case 24:
            case 25:
                objArr[2] = "isDirectSubclass";
                break;
            case 26:
            case 27:
                objArr[2] = "isSubclass";
                break;
            case 28:
            case 29:
                objArr[2] = "isSameClass";
                break;
            case 30:
            case 31:
                objArr[2] = "isSubtypeOfClass";
                break;
            case 32:
                objArr[2] = "isAnonymousObject";
                break;
            case 33:
                objArr[2] = "isAnonymousFunction";
                break;
            case 34:
                objArr[2] = "isEnumEntry";
                break;
            case 35:
                objArr[2] = "isKindOf";
                break;
            case 36:
                objArr[2] = "hasAbstractMembers";
                break;
            case 37:
                objArr[2] = "getSuperclassDescriptors";
                break;
            case 39:
                objArr[2] = "getSuperClassType";
                break;
            case 42:
                objArr[2] = "getSuperClassDescriptor";
                break;
            case 43:
                objArr[2] = "getClassDescriptorForType";
                break;
            case 44:
                objArr[2] = "getClassDescriptorForTypeConstructor";
                break;
            case 46:
                objArr[2] = "getDefaultConstructorVisibility";
                break;
            case 52:
            case 53:
            case 54:
                objArr[2] = "getInnerClassByName";
                break;
            case 55:
                objArr[2] = "isStaticNestedClass";
                break;
            case 56:
                objArr[2] = "isTopLevelOrInnerClass";
                break;
            case 57:
                objArr[2] = "unwrapFakeOverride";
                break;
            case 59:
                objArr[2] = "unwrapFakeOverrideToAnyDeclaration";
                break;
            case 61:
            case 62:
                objArr[2] = "shouldRecordInitializerForProperty";
                break;
            case 63:
                objArr[2] = "classCanHaveAbstractFakeOverride";
                break;
            case 64:
                objArr[2] = "classCanHaveAbstractDeclaration";
                break;
            case 65:
                objArr[2] = "classCanHaveOpenMembers";
                break;
            case 66:
                objArr[2] = "getAllOverriddenDescriptors";
                break;
            case 68:
            case 69:
                objArr[2] = "collectAllOverriddenDescriptors";
                break;
            case 70:
                objArr[2] = "getAllOverriddenDeclarations";
                break;
            case 72:
                objArr[2] = "isSingletonOrAnonymousObject";
                break;
            case 73:
                objArr[2] = "canHaveDeclaredConstructors";
                break;
            case 74:
                objArr[2] = "getJvmName";
                break;
            case 75:
                objArr[2] = "findJvmNameAnnotation";
                break;
            case 76:
                objArr[2] = "hasJvmNameAnnotation";
                break;
            case 77:
                objArr[2] = "getContainingSourceFile";
                break;
            case 80:
                objArr[2] = "getAllDescriptors";
                break;
            case 82:
            case 83:
                objArr[2] = "getFunctionByName";
                break;
            case 85:
            case 86:
                objArr[2] = "getFunctionByNameOrNull";
                break;
            case 87:
            case 88:
                objArr[2] = "getPropertyByName";
                break;
            case 90:
                objArr[2] = "getDirectMember";
                break;
            case 92:
                objArr[2] = "isMethodOfAny";
                break;
            default:
                objArr[2] = "getDispatchReceiverParameterIfNeeded";
                break;
        }
        String format = String.format(str, objArr);
        switch (i) {
            case 4:
            case 7:
            case 9:
            case 10:
            case 20:
            case 38:
            case 40:
            case 41:
            case 45:
            case 47:
            case 48:
            case 49:
            case 50:
            case 51:
            case 58:
            case 60:
            case 67:
            case 71:
            case 78:
            case 79:
            case 81:
            case 84:
            case 89:
            case 91:
                illegalArgumentException = new IllegalStateException(format);
                break;
            default:
                illegalArgumentException = new IllegalArgumentException(format);
                break;
        }
        throw illegalArgumentException;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private static <D extends AbstractC18973a> void m1482a(D d, Set<D> set) {
        if (d == null) {
            m1484a(68);
        }
        if (set == 0) {
            m1484a(69);
        }
        if (set.contains(d)) {
            return;
        }
        for (AbstractC18973a abstractC18973a : d.getOriginal().getOverriddenDescriptors()) {
            AbstractC18973a original = abstractC18973a.getOriginal();
            m1482a(original, set);
            set.add(original);
        }
    }

    /* renamed from: a */
    public static boolean m1480a(AbstractC19052bc abstractC19052bc, KotlinType kotlinType) {
        if (abstractC19052bc == null) {
            m1484a(61);
        }
        if (kotlinType == null) {
            m1484a(62);
        }
        if (abstractC19052bc.at_() || KotlinTypeKt.isError(kotlinType)) {
            return false;
        }
        if (TypeUtils.acceptsNullable(kotlinType)) {
            return true;
        }
        AbstractC18940g m1526d = C19756a.m1526d(abstractC19052bc);
        if (AbstractC18940g.m2805d(kotlinType) || KotlinTypeChecker.DEFAULT.equalTypes(m1526d.m2780p(), kotlinType) || KotlinTypeChecker.DEFAULT.equalTypes(m1526d.m2835a("Number").getDefaultType(), kotlinType) || KotlinTypeChecker.DEFAULT.equalTypes(m1526d.m2798g(), kotlinType)) {
            return true;
        }
        C18959n c18959n = C18959n.f64674a;
        return C18959n.m2759a(kotlinType);
    }

    /* renamed from: a */
    public static boolean m1478a(AbstractC19070d abstractC19070d, AbstractC19070d abstractC19070d2) {
        if (abstractC19070d == null) {
            m1484a(24);
        }
        if (abstractC19070d2 == null) {
            m1484a(25);
        }
        for (KotlinType kotlinType : abstractC19070d.getTypeConstructor().mo53752getSupertypes()) {
            if (m1464b(kotlinType, abstractC19070d2.getOriginal())) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    private static boolean m1473a(AbstractC19193k abstractC19193k, EnumC19127e enumC19127e) {
        if (enumC19127e == null) {
            m1484a(35);
        }
        return (abstractC19193k instanceof AbstractC19070d) && ((AbstractC19070d) abstractC19193k).getKind() == enumC19127e;
    }

    /* renamed from: a */
    public static boolean m1472a(AbstractC19193k abstractC19193k, AbstractC19193k abstractC19193k2) {
        if (abstractC19193k == null) {
            m1484a(14);
        }
        if (abstractC19193k2 == null) {
            m1484a(15);
        }
        return m1460f(abstractC19193k).equals(m1460f(abstractC19193k2));
    }

    /* renamed from: a */
    public static boolean m1469a(KotlinType kotlinType, AbstractC19193k abstractC19193k) {
        if (kotlinType == null) {
            m1484a(30);
        }
        if (abstractC19193k == null) {
            m1484a(31);
        }
        if (m1464b(kotlinType, abstractC19193k)) {
            return true;
        }
        for (KotlinType kotlinType2 : kotlinType.getConstructor().mo53752getSupertypes()) {
            if (m1469a(kotlinType2, abstractC19193k)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    public static AbstractC19070d m1465b(KotlinType kotlinType) {
        if (kotlinType == null) {
            m1484a(43);
        }
        return m1468a(kotlinType.getConstructor());
    }

    /* renamed from: b */
    public static boolean m1467b(AbstractC19070d abstractC19070d, AbstractC19070d abstractC19070d2) {
        if (abstractC19070d == null) {
            m1484a(26);
        }
        if (abstractC19070d2 == null) {
            m1484a(27);
        }
        return m1469a(abstractC19070d.getDefaultType(), abstractC19070d2.getOriginal());
    }

    /* renamed from: b */
    public static boolean m1466b(AbstractC19193k abstractC19193k) {
        AbstractC19193k abstractC19193k2 = abstractC19193k;
        if (abstractC19193k == null) {
            m1484a(1);
            abstractC19193k2 = abstractC19193k;
        }
        while (abstractC19193k2 != null) {
            if (m1448r(abstractC19193k2)) {
                return true;
            }
            boolean z = false;
            if (abstractC19193k2 instanceof AbstractC19197o) {
                z = false;
                if (((AbstractC19197o) abstractC19193k2).getVisibility() == C19200r.f65007f) {
                    z = true;
                }
            }
            if (z) {
                return true;
            }
            abstractC19193k2 = abstractC19193k2.getContainingDeclaration();
        }
        return false;
    }

    /* renamed from: b */
    private static boolean m1464b(KotlinType kotlinType, AbstractC19193k abstractC19193k) {
        if (kotlinType == null) {
            m1484a(28);
        }
        if (abstractC19193k == null) {
            m1484a(29);
        }
        AbstractC19129g declarationDescriptor = kotlinType.getConstructor().getDeclarationDescriptor();
        if (declarationDescriptor != null) {
            AbstractC19193k original = declarationDescriptor.getOriginal();
            return (original instanceof AbstractC19129g) && (abstractC19193k instanceof AbstractC19129g) && ((AbstractC19129g) abstractC19193k).getTypeConstructor().equals(((AbstractC19129g) original).getTypeConstructor());
        }
        return false;
    }

    /* renamed from: c */
    public static C18962c m1463c(AbstractC19193k abstractC19193k) {
        if (abstractC19193k == null) {
            m1484a(2);
        }
        C18961b m1451o = m1451o(abstractC19193k);
        return m1451o != null ? m1451o.m2743b() : m1450p(abstractC19193k);
    }

    /* renamed from: d */
    public static C18961b m1462d(AbstractC19193k abstractC19193k) {
        if (abstractC19193k == null) {
            m1484a(3);
        }
        C18961b m1451o = m1451o(abstractC19193k);
        C18961b m2730c = m1451o != null ? m1451o : m1450p(abstractC19193k).m2730c();
        if (m2730c == null) {
            m1484a(4);
        }
        return m2730c;
    }

    /* renamed from: e */
    public static boolean m1461e(AbstractC19193k abstractC19193k) {
        return abstractC19193k != null && (abstractC19193k.getContainingDeclaration() instanceof AbstractC19006ae);
    }

    /* renamed from: f */
    public static AbstractC18999ab m1460f(AbstractC19193k abstractC19193k) {
        if (abstractC19193k == null) {
            m1484a(19);
        }
        AbstractC18999ab m1449q = m1449q(abstractC19193k);
        if (f65978b || m1449q != null) {
            if (m1449q == null) {
                m1484a(20);
            }
            return m1449q;
        }
        throw new AssertionError("Descriptor without a containing module: ".concat(String.valueOf(abstractC19193k)));
    }

    /* renamed from: g */
    public static boolean m1459g(AbstractC19193k abstractC19193k) {
        return m1473a(abstractC19193k, EnumC19127e.OBJECT) && ((AbstractC19070d) abstractC19193k).isCompanionObject();
    }

    /* renamed from: h */
    public static boolean m1458h(AbstractC19193k abstractC19193k) {
        return (m1473a(abstractC19193k, EnumC19127e.CLASS) || m1473a(abstractC19193k, EnumC19127e.INTERFACE)) && ((AbstractC19070d) abstractC19193k).getModality() == EnumC19222y.SEALED;
    }

    /* renamed from: i */
    public static boolean m1457i(AbstractC19193k abstractC19193k) {
        if (abstractC19193k == null) {
            m1484a(34);
        }
        return m1473a(abstractC19193k, EnumC19127e.ENUM_ENTRY);
    }

    /* renamed from: j */
    public static boolean m1456j(AbstractC19193k abstractC19193k) {
        return m1473a(abstractC19193k, EnumC19127e.ENUM_CLASS);
    }

    /* renamed from: k */
    public static boolean m1455k(AbstractC19193k abstractC19193k) {
        return m1473a(abstractC19193k, EnumC19127e.ANNOTATION_CLASS);
    }

    /* renamed from: l */
    public static boolean m1454l(AbstractC19193k abstractC19193k) {
        return m1473a(abstractC19193k, EnumC19127e.INTERFACE);
    }

    /* renamed from: m */
    public static boolean m1453m(AbstractC19193k abstractC19193k) {
        return m1473a(abstractC19193k, EnumC19127e.CLASS) || m1473a(abstractC19193k, EnumC19127e.ENUM_CLASS);
    }

    /* renamed from: n */
    public static AbstractC19028au m1452n(AbstractC19193k abstractC19193k) {
        if (abstractC19193k == null) {
            m1484a(77);
        }
        AbstractC19017an abstractC19017an = abstractC19193k;
        if (abstractC19193k instanceof AbstractC19019ap) {
            abstractC19017an = ((AbstractC19019ap) abstractC19193k).mo2538b();
        }
        if (abstractC19017an instanceof AbstractC19196n) {
            AbstractC19028au mo1859a = ((AbstractC19196n) abstractC19017an).getSource().mo1859a();
            if (mo1859a == null) {
                m1484a(78);
            }
            return mo1859a;
        }
        AbstractC19028au abstractC19028au = AbstractC19028au.f64760a;
        if (abstractC19028au == null) {
            m1484a(79);
        }
        return abstractC19028au;
    }

    /* renamed from: o */
    private static C18961b m1451o(AbstractC19193k abstractC19193k) {
        if (abstractC19193k == null) {
            m1484a(5);
        }
        if ((abstractC19193k instanceof AbstractC18999ab) || ErrorUtils.isError(abstractC19193k)) {
            return C18961b.f64685a;
        }
        if (abstractC19193k instanceof AbstractC19013aj) {
            return ((AbstractC19013aj) abstractC19193k).mo2571a();
        }
        if (!(abstractC19193k instanceof AbstractC19006ae)) {
            return null;
        }
        return ((AbstractC19006ae) abstractC19193k).mo2542c();
    }

    /* renamed from: p */
    private static C18962c m1450p(AbstractC19193k abstractC19193k) {
        if (abstractC19193k == null) {
            m1484a(6);
        }
        AbstractC19193k containingDeclaration = abstractC19193k.getContainingDeclaration();
        if (f65978b || containingDeclaration != null) {
            return m1463c(containingDeclaration).m2733a(abstractC19193k.getName());
        }
        throw new AssertionError("Not package/module descriptor doesn't have containing declaration: ".concat(String.valueOf(abstractC19193k)));
    }

    /* renamed from: q */
    private static AbstractC18999ab m1449q(AbstractC19193k abstractC19193k) {
        AbstractC19193k abstractC19193k2 = abstractC19193k;
        if (abstractC19193k == null) {
            m1484a(21);
            abstractC19193k2 = abstractC19193k;
        }
        while (abstractC19193k2 != null) {
            if (abstractC19193k2 instanceof AbstractC18999ab) {
                return (AbstractC18999ab) abstractC19193k2;
            }
            if (abstractC19193k2 instanceof AbstractC19013aj) {
                return ((AbstractC19013aj) abstractC19193k2).mo2569c();
            }
            abstractC19193k2 = abstractC19193k2.getContainingDeclaration();
        }
        return null;
    }

    /* renamed from: r */
    private static boolean m1448r(AbstractC19193k abstractC19193k) {
        if (abstractC19193k == null) {
            m1484a(32);
        }
        return m1473a(abstractC19193k, EnumC19127e.CLASS) && abstractC19193k.getName().equals(C18968g.f64700a);
    }
}
