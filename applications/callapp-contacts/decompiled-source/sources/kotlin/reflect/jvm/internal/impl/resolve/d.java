package kotlin.reflect.jvm.internal.impl.resolve;

import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.reflect.jvm.internal.impl.builtins.n;
import kotlin.reflect.jvm.internal.impl.c.b;
import kotlin.reflect.jvm.internal.impl.c.c;
import kotlin.reflect.jvm.internal.impl.descriptors.a;
import kotlin.reflect.jvm.internal.impl.descriptors.ab;
import kotlin.reflect.jvm.internal.impl.descriptors.ae;
import kotlin.reflect.jvm.internal.impl.descriptors.aj;
import kotlin.reflect.jvm.internal.impl.descriptors.an;
import kotlin.reflect.jvm.internal.impl.descriptors.ap;
import kotlin.reflect.jvm.internal.impl.descriptors.aq;
import kotlin.reflect.jvm.internal.impl.descriptors.au;
import kotlin.reflect.jvm.internal.impl.descriptors.b;
import kotlin.reflect.jvm.internal.impl.descriptors.bc;
import kotlin.reflect.jvm.internal.impl.descriptors.e;
import kotlin.reflect.jvm.internal.impl.descriptors.g;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.o;
import kotlin.reflect.jvm.internal.impl.descriptors.r;
import kotlin.reflect.jvm.internal.impl.descriptors.s;
import kotlin.reflect.jvm.internal.impl.descriptors.y;
import kotlin.reflect.jvm.internal.impl.types.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeChecker;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/d.class */
public class d {

    /* renamed from: a  reason: collision with root package name */
    public static final b f38262a = new b("kotlin.jvm.JvmName");

    /* renamed from: b  reason: collision with root package name */
    static final /* synthetic */ boolean f38263b = true;

    private d() {
    }

    public static <D extends a> Set<D> a(D d2) {
        if (d2 == null) {
            a(66);
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        a(d2.getOriginal(), linkedHashSet);
        return linkedHashSet;
    }

    public static ab a(KotlinType kotlinType) {
        if (kotlinType == null) {
            a(18);
        }
        g declarationDescriptor = kotlinType.getConstructor().getDeclarationDescriptor();
        if (declarationDescriptor == null) {
            return null;
        }
        return q(declarationDescriptor);
    }

    public static aq a(k kVar) {
        if (kVar == null) {
            a(0);
        }
        if (kVar instanceof kotlin.reflect.jvm.internal.impl.descriptors.d) {
            return ((kotlin.reflect.jvm.internal.impl.descriptors.d) kVar).getThisAsReceiverParameter();
        }
        return null;
    }

    public static <D extends kotlin.reflect.jvm.internal.impl.descriptors.b> D a(D d2) {
        D d3 = d2;
        if (d2 == null) {
            a(57);
            d3 = d2;
        }
        while (d3.getKind() == b.a.FAKE_OVERRIDE) {
            Collection<? extends kotlin.reflect.jvm.internal.impl.descriptors.b> overriddenDescriptors = d3.getOverriddenDescriptors();
            if (!overriddenDescriptors.isEmpty()) {
                d3 = (D) ((kotlin.reflect.jvm.internal.impl.descriptors.b) overriddenDescriptors.iterator().next());
            } else {
                throw new IllegalStateException("Fake override should have at least one overridden descriptor: ".concat(String.valueOf(d3)));
            }
        }
        if (d3 == null) {
            a(58);
        }
        return d3;
    }

    public static kotlin.reflect.jvm.internal.impl.descriptors.d a(kotlin.reflect.jvm.internal.impl.descriptors.d dVar) {
        if (dVar == null) {
            a(42);
        }
        for (KotlinType kotlinType : dVar.getTypeConstructor().mo7371getSupertypes()) {
            kotlin.reflect.jvm.internal.impl.descriptors.d b2 = b(kotlinType);
            if (b2.getKind() != e.INTERFACE) {
                return b2;
            }
        }
        return null;
    }

    private static kotlin.reflect.jvm.internal.impl.descriptors.d a(TypeConstructor typeConstructor) {
        if (typeConstructor == null) {
            a(44);
        }
        g declarationDescriptor = typeConstructor.getDeclarationDescriptor();
        if (f38263b || (declarationDescriptor instanceof kotlin.reflect.jvm.internal.impl.descriptors.d)) {
            kotlin.reflect.jvm.internal.impl.descriptors.d dVar = (kotlin.reflect.jvm.internal.impl.descriptors.d) declarationDescriptor;
            if (dVar == null) {
                a(45);
            }
            return dVar;
        }
        throw new AssertionError("Classifier descriptor of a type should be of type ClassDescriptor: ".concat(String.valueOf(typeConstructor)));
    }

    public static <D extends k> D a(k kVar, Class<D> cls) {
        return (D) a(kVar, cls, true);
    }

    public static <D extends k> D a(k kVar, Class<D> cls, boolean z) {
        if (cls == null) {
            a(17);
        }
        if (kVar == null) {
            return null;
        }
        k kVar2 = kVar;
        if (z) {
            kVar2 = (D) kVar.getContainingDeclaration();
        }
        while (kVar2 != null) {
            if (cls.isInstance(kVar2)) {
                return (D) kVar2;
            }
            kVar2 = (D) kVar2.getContainingDeclaration();
        }
        return null;
    }

    public static <D extends o> D a(D d2) {
        if (d2 == null) {
            a(59);
        }
        if (d2 instanceof kotlin.reflect.jvm.internal.impl.descriptors.b) {
            return a((kotlin.reflect.jvm.internal.impl.descriptors.b) d2);
        }
        if (d2 == null) {
            a(60);
        }
        return d2;
    }

    public static s a(kotlin.reflect.jvm.internal.impl.descriptors.d dVar, boolean z) {
        if (dVar == null) {
            a(46);
        }
        e kind = dVar.getKind();
        if (kind == e.ENUM_CLASS || kind.isSingleton()) {
            s sVar = r.f37590a;
            if (sVar == null) {
                a(47);
            }
            return sVar;
        } else if (h(dVar)) {
            if (z) {
                s sVar2 = r.f37593d;
                if (sVar2 == null) {
                    a(48);
                }
                return sVar2;
            }
            s sVar3 = r.f37590a;
            if (sVar3 == null) {
                a(49);
            }
            return sVar3;
        } else if (r(dVar)) {
            s sVar4 = r.k;
            if (sVar4 == null) {
                a(50);
            }
            return sVar4;
        } else if (f38263b || kind == e.CLASS || kind == e.INTERFACE || kind == e.ANNOTATION_CLASS) {
            s sVar5 = r.e;
            if (sVar5 == null) {
                a(51);
            }
            return sVar5;
        } else {
            throw new AssertionError();
        }
    }

    private static /* synthetic */ void a(int i) {
        String str;
        int i2;
        Throwable th;
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
                th = new IllegalStateException(format);
                break;
            default:
                th = new IllegalArgumentException(format);
                break;
        }
        throw th;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static <D extends a> void a(D d2, Set<D> set) {
        if (d2 == null) {
            a(68);
        }
        if (set == 0) {
            a(69);
        }
        if (!set.contains(d2)) {
            for (a aVar : d2.getOriginal().getOverriddenDescriptors()) {
                a original = aVar.getOriginal();
                a(original, set);
                set.add(original);
            }
        }
    }

    public static boolean a(bc bcVar, KotlinType kotlinType) {
        if (bcVar == null) {
            a(61);
        }
        if (kotlinType == null) {
            a(62);
        }
        if (bcVar.at_() || KotlinTypeKt.isError(kotlinType)) {
            return false;
        }
        if (TypeUtils.acceptsNullable(kotlinType)) {
            return true;
        }
        kotlin.reflect.jvm.internal.impl.builtins.g d2 = kotlin.reflect.jvm.internal.impl.resolve.b.a.d(bcVar);
        if (kotlin.reflect.jvm.internal.impl.builtins.g.d(kotlinType) || KotlinTypeChecker.DEFAULT.equalTypes(d2.p(), kotlinType) || KotlinTypeChecker.DEFAULT.equalTypes(d2.a("Number").getDefaultType(), kotlinType) || KotlinTypeChecker.DEFAULT.equalTypes(d2.g(), kotlinType)) {
            return true;
        }
        n nVar = n.f37326a;
        return n.a(kotlinType);
    }

    public static boolean a(kotlin.reflect.jvm.internal.impl.descriptors.d dVar, kotlin.reflect.jvm.internal.impl.descriptors.d dVar2) {
        if (dVar == null) {
            a(24);
        }
        if (dVar2 == null) {
            a(25);
        }
        for (KotlinType kotlinType : dVar.getTypeConstructor().mo7371getSupertypes()) {
            if (b(kotlinType, dVar2.getOriginal())) {
                return true;
            }
        }
        return false;
    }

    private static boolean a(k kVar, e eVar) {
        if (eVar == null) {
            a(35);
        }
        return (kVar instanceof kotlin.reflect.jvm.internal.impl.descriptors.d) && ((kotlin.reflect.jvm.internal.impl.descriptors.d) kVar).getKind() == eVar;
    }

    public static boolean a(k kVar, k kVar2) {
        if (kVar == null) {
            a(14);
        }
        if (kVar2 == null) {
            a(15);
        }
        return f(kVar).equals(f(kVar2));
    }

    public static boolean a(KotlinType kotlinType, k kVar) {
        if (kotlinType == null) {
            a(30);
        }
        if (kVar == null) {
            a(31);
        }
        if (b(kotlinType, kVar)) {
            return true;
        }
        for (KotlinType kotlinType2 : kotlinType.getConstructor().mo7371getSupertypes()) {
            if (a(kotlinType2, kVar)) {
                return true;
            }
        }
        return false;
    }

    public static kotlin.reflect.jvm.internal.impl.descriptors.d b(KotlinType kotlinType) {
        if (kotlinType == null) {
            a(43);
        }
        return a(kotlinType.getConstructor());
    }

    public static boolean b(kotlin.reflect.jvm.internal.impl.descriptors.d dVar, kotlin.reflect.jvm.internal.impl.descriptors.d dVar2) {
        if (dVar == null) {
            a(26);
        }
        if (dVar2 == null) {
            a(27);
        }
        return a(dVar.getDefaultType(), dVar2.getOriginal());
    }

    public static boolean b(k kVar) {
        k kVar2 = kVar;
        if (kVar == null) {
            a(1);
            kVar2 = kVar;
        }
        while (kVar2 != null) {
            if (r(kVar2)) {
                return true;
            }
            boolean z = false;
            if (kVar2 instanceof o) {
                z = false;
                if (((o) kVar2).getVisibility() == r.f) {
                    z = true;
                }
            }
            if (z) {
                return true;
            }
            kVar2 = kVar2.getContainingDeclaration();
        }
        return false;
    }

    private static boolean b(KotlinType kotlinType, k kVar) {
        if (kotlinType == null) {
            a(28);
        }
        if (kVar == null) {
            a(29);
        }
        g declarationDescriptor = kotlinType.getConstructor().getDeclarationDescriptor();
        if (declarationDescriptor == null) {
            return false;
        }
        k original = declarationDescriptor.getOriginal();
        return (original instanceof g) && (kVar instanceof g) && ((g) kVar).getTypeConstructor().equals(((g) original).getTypeConstructor());
    }

    public static c c(k kVar) {
        if (kVar == null) {
            a(2);
        }
        kotlin.reflect.jvm.internal.impl.c.b o = o(kVar);
        return o != null ? o.b() : p(kVar);
    }

    public static kotlin.reflect.jvm.internal.impl.c.b d(k kVar) {
        if (kVar == null) {
            a(3);
        }
        kotlin.reflect.jvm.internal.impl.c.b o = o(kVar);
        kotlin.reflect.jvm.internal.impl.c.b c2 = o != null ? o : p(kVar).c();
        if (c2 == null) {
            a(4);
        }
        return c2;
    }

    public static boolean e(k kVar) {
        return kVar != null && (kVar.getContainingDeclaration() instanceof ae);
    }

    public static ab f(k kVar) {
        if (kVar == null) {
            a(19);
        }
        ab q = q(kVar);
        if (f38263b || q != null) {
            if (q == null) {
                a(20);
            }
            return q;
        }
        throw new AssertionError("Descriptor without a containing module: ".concat(String.valueOf(kVar)));
    }

    public static boolean g(k kVar) {
        return a(kVar, e.OBJECT) && ((kotlin.reflect.jvm.internal.impl.descriptors.d) kVar).isCompanionObject();
    }

    public static boolean h(k kVar) {
        return (a(kVar, e.CLASS) || a(kVar, e.INTERFACE)) && ((kotlin.reflect.jvm.internal.impl.descriptors.d) kVar).getModality() == y.SEALED;
    }

    public static boolean i(k kVar) {
        if (kVar == null) {
            a(34);
        }
        return a(kVar, e.ENUM_ENTRY);
    }

    public static boolean j(k kVar) {
        return a(kVar, e.ENUM_CLASS);
    }

    public static boolean k(k kVar) {
        return a(kVar, e.ANNOTATION_CLASS);
    }

    public static boolean l(k kVar) {
        return a(kVar, e.INTERFACE);
    }

    public static boolean m(k kVar) {
        return a(kVar, e.CLASS) || a(kVar, e.ENUM_CLASS);
    }

    public static au n(k kVar) {
        if (kVar == null) {
            a(77);
        }
        an anVar = kVar;
        if (kVar instanceof ap) {
            anVar = ((ap) kVar).b();
        }
        if (anVar instanceof kotlin.reflect.jvm.internal.impl.descriptors.n) {
            au a2 = ((kotlin.reflect.jvm.internal.impl.descriptors.n) anVar).getSource().a();
            if (a2 == null) {
                a(78);
            }
            return a2;
        }
        au auVar = au.f37402a;
        if (auVar == null) {
            a(79);
        }
        return auVar;
    }

    private static kotlin.reflect.jvm.internal.impl.c.b o(k kVar) {
        if (kVar == null) {
            a(5);
        }
        if ((kVar instanceof ab) || ErrorUtils.isError(kVar)) {
            return kotlin.reflect.jvm.internal.impl.c.b.f37334a;
        }
        if (kVar instanceof aj) {
            return ((aj) kVar).a();
        }
        if (kVar instanceof ae) {
            return ((ae) kVar).c();
        }
        return null;
    }

    private static c p(k kVar) {
        if (kVar == null) {
            a(6);
        }
        k containingDeclaration = kVar.getContainingDeclaration();
        if (f38263b || containingDeclaration != null) {
            return c(containingDeclaration).a(kVar.getName());
        }
        throw new AssertionError("Not package/module descriptor doesn't have containing declaration: ".concat(String.valueOf(kVar)));
    }

    private static ab q(k kVar) {
        k kVar2 = kVar;
        if (kVar == null) {
            a(21);
            kVar2 = kVar;
        }
        while (kVar2 != null) {
            if (kVar2 instanceof ab) {
                return (ab) kVar2;
            }
            if (kVar2 instanceof aj) {
                return ((aj) kVar2).c();
            }
            kVar2 = kVar2.getContainingDeclaration();
        }
        return null;
    }

    private static boolean r(k kVar) {
        if (kVar == null) {
            a(32);
        }
        return a(kVar, e.CLASS) && kVar.getName().equals(kotlin.reflect.jvm.internal.impl.c.g.f37346a);
    }
}
