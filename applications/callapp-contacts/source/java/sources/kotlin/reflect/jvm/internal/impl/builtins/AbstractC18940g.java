package kotlin.reflect.jvm.internal.impl.builtins;

import com.mopub.mobileads.resource.DrawableConstants;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.builtins.BuiltInsLoader;
import kotlin.reflect.jvm.internal.impl.builtins.C18954j;
import kotlin.reflect.jvm.internal.impl.builtins.functions.C18932a;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18999ab;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19006ae;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19013aj;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19017an;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19018ao;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19019ap;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.descriptors.C19199q;
import kotlin.reflect.jvm.internal.impl.descriptors.C19216v;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.C19183t;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.descriptors.p548b.AbstractC19041a;
import kotlin.reflect.jvm.internal.impl.descriptors.p548b.AbstractC19043b;
import kotlin.reflect.jvm.internal.impl.descriptors.p548b.AbstractC19044c;
import kotlin.reflect.jvm.internal.impl.p537a.p538a.EnumC18698d;
import kotlin.reflect.jvm.internal.impl.p545c.C18960a;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.p545c.C18962c;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19294g;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19296i;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19302n;
import kotlin.reflect.jvm.internal.impl.resolve.C19807d;
import kotlin.reflect.jvm.internal.impl.resolve.p564b.C19756a;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlinx.serialization.json.internal.JsonReaderKt;
import okhttp3.internal.p578ws.WebSocketProtocol;
/* renamed from: kotlin.reflect.jvm.internal.impl.builtins.g */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/g.class */
public abstract class AbstractC18940g {

    /* renamed from: d */
    public static final C18966e f64540d = C18966e.m2715c("<built-ins module>");

    /* renamed from: e */
    static final /* synthetic */ boolean f64541e = true;

    /* renamed from: a */
    private final AbstractC19296i<C18945a> f64542a;

    /* renamed from: b */
    C19183t f64543b;

    /* renamed from: c */
    public final AbstractC19302n f64544c;

    /* renamed from: f */
    private final AbstractC19296i<Collection<AbstractC19013aj>> f64545f;

    /* renamed from: g */
    private final AbstractC19294g<C18966e, AbstractC19070d> f64546g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.builtins.g$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/g$a.class */
    public static final class C18945a {

        /* renamed from: a */
        public final Map<EnumC18946h, SimpleType> f64552a;

        /* renamed from: b */
        public final Map<KotlinType, SimpleType> f64553b;

        /* renamed from: c */
        public final Map<SimpleType, SimpleType> f64554c;

        private C18945a(Map<EnumC18946h, SimpleType> map, Map<KotlinType, SimpleType> map2, Map<SimpleType, SimpleType> map3) {
            if (map == null) {
                m2775a(0);
            }
            if (map2 == null) {
                m2775a(1);
            }
            if (map3 == null) {
                m2775a(2);
            }
            this.f64552a = map;
            this.f64553b = map2;
            this.f64554c = map3;
        }

        /* renamed from: a */
        private static /* synthetic */ void m2775a(int i) {
            Object[] objArr = new Object[3];
            if (i == 1) {
                objArr[0] = "primitiveKotlinTypeToKotlinArrayType";
            } else if (i != 2) {
                objArr[0] = "primitiveTypeToArrayKotlinType";
            } else {
                objArr[0] = "kotlinArrayTypeToPrimitiveKotlinType";
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns$Primitives";
            objArr[2] = "<init>";
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }
    }

    public AbstractC18940g(AbstractC19302n abstractC19302n) {
        if (abstractC19302n == null) {
            m2819b(0);
        }
        this.f64544c = abstractC19302n;
        this.f64545f = abstractC19302n.mo2313a(new Function0<Collection<AbstractC19013aj>>() { // from class: kotlin.reflect.jvm.internal.impl.builtins.g.1
            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ Collection<AbstractC19013aj> invoke() {
                return Arrays.asList(AbstractC18940g.this.f64543b.getPackage(C18954j.f64583m), AbstractC18940g.this.f64543b.getPackage(C18954j.f64585o), AbstractC18940g.this.f64543b.getPackage(C18954j.f64586p), AbstractC18940g.this.f64543b.getPackage(C18954j.f64584n));
            }
        });
        this.f64542a = abstractC19302n.mo2313a(new Function0<C18945a>() { // from class: kotlin.reflect.jvm.internal.impl.builtins.g.2
            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ C18945a invoke() {
                EnumC18946h[] values;
                EnumMap enumMap = new EnumMap(EnumC18946h.class);
                HashMap hashMap = new HashMap();
                HashMap hashMap2 = new HashMap();
                for (EnumC18946h enumC18946h : EnumC18946h.values()) {
                    SimpleType m2833a = AbstractC18940g.m2833a(AbstractC18940g.this, enumC18946h.getTypeName().m2721a());
                    SimpleType m2833a2 = AbstractC18940g.m2833a(AbstractC18940g.this, enumC18946h.getArrayTypeName().m2721a());
                    enumMap.put((EnumMap) enumC18946h, (EnumC18946h) m2833a2);
                    hashMap.put(m2833a, m2833a2);
                    hashMap2.put(m2833a2, m2833a);
                }
                return new C18945a(enumMap, hashMap, hashMap2);
            }
        });
        this.f64546g = abstractC19302n.mo2310a(new Function1<C18966e, AbstractC19070d>() { // from class: kotlin.reflect.jvm.internal.impl.builtins.g.3
            @Override // kotlin.jvm.functions.Function1
            public final /* synthetic */ AbstractC19070d invoke(C18966e c18966e) {
                C18966e c18966e2 = c18966e;
                AbstractC19834h mo2570b = AbstractC18940g.this.f64543b.getPackage(C18954j.f64583m).mo2570b();
                if (mo2570b == null) {
                    AbstractC18940g.m2819b(10);
                }
                AbstractC19129g contributedClassifier = mo2570b.getContributedClassifier(c18966e2, EnumC18698d.FROM_BUILTINS);
                if (contributedClassifier == null) {
                    throw new AssertionError("Built-in class " + C18954j.f64583m.m2744a(c18966e2) + " is not found");
                } else if (contributedClassifier instanceof AbstractC19070d) {
                    return (AbstractC19070d) contributedClassifier;
                } else {
                    throw new AssertionError("Must be a class descriptor " + c18966e2 + ", but was " + contributedClassifier);
                }
            }
        });
    }

    /* renamed from: a */
    static /* synthetic */ SimpleType m2833a(AbstractC18940g abstractC18940g, String str) {
        if (str == null) {
            m2819b(45);
        }
        SimpleType defaultType = abstractC18940g.m2835a(str).getDefaultType();
        if (defaultType == null) {
            m2819b(46);
        }
        return defaultType;
    }

    /* renamed from: a */
    public static boolean m2829a(AbstractC19070d abstractC19070d) {
        if (abstractC19070d == null) {
            m2819b(88);
        }
        return m2828a(abstractC19070d, C18954j.C18955a.f64654i) || m2806d((AbstractC19193k) abstractC19070d) != null;
    }

    /* renamed from: a */
    private static boolean m2828a(AbstractC19129g abstractC19129g, C18962c c18962c) {
        if (abstractC19129g == null) {
            m2819b(102);
        }
        if (c18962c == null) {
            m2819b(103);
        }
        return abstractC19129g.getName().equals(c18962c.m2727e()) && c18962c.equals(C19807d.m1463c(abstractC19129g));
    }

    /* renamed from: a */
    public static boolean m2827a(AbstractC19193k abstractC19193k) {
        if (abstractC19193k == null) {
            m2819b(8);
        }
        return C19807d.m1474a(abstractC19193k, AbstractC18889a.class, false) != null;
    }

    /* renamed from: a */
    private static boolean m2825a(KotlinType kotlinType, C18962c c18962c) {
        if (kotlinType == null) {
            m2819b(96);
        }
        if (c18962c == null) {
            m2819b(97);
        }
        return m2824a(kotlinType.getConstructor(), c18962c);
    }

    /* renamed from: a */
    public static boolean m2824a(TypeConstructor typeConstructor, C18962c c18962c) {
        if (typeConstructor == null) {
            m2819b(100);
        }
        if (c18962c == null) {
            m2819b(101);
        }
        AbstractC19129g declarationDescriptor = typeConstructor.getDeclarationDescriptor();
        return (declarationDescriptor instanceof AbstractC19070d) && m2828a(declarationDescriptor, c18962c);
    }

    /* renamed from: b */
    public static /* synthetic */ void m2819b(int i) {
        String str;
        int i2;
        IllegalArgumentException illegalArgumentException;
        switch (i) {
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 10:
            case 12:
            case 14:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 46:
            case 47:
            case 48:
            case 49:
            case 50:
            case 51:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 67:
            case 68:
            case 69:
            case 73:
            case 80:
            case 83:
            case 85:
            case 86:
                str = "@NotNull method %s.%s must not return null";
                break;
            case 8:
            case 9:
            case 11:
            case 13:
            case 15:
            case 16:
            case 45:
            case 52:
            case 66:
            case 70:
            case 71:
            case 72:
            case 74:
            case 75:
            case 76:
            case 77:
            case 78:
            case 79:
            case 81:
            case 82:
            case 84:
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i) {
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 10:
            case 12:
            case 14:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 46:
            case 47:
            case 48:
            case 49:
            case 50:
            case 51:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 67:
            case 68:
            case 69:
            case 73:
            case 80:
            case 83:
            case 85:
            case 86:
                i2 = 2;
                break;
            case 8:
            case 9:
            case 11:
            case 13:
            case 15:
            case 16:
            case 45:
            case 52:
            case 66:
            case 70:
            case 71:
            case 72:
            case 74:
            case 75:
            case 76:
            case 77:
            case 78:
            case 79:
            case 81:
            case 82:
            case 84:
            default:
                i2 = 3;
                break;
        }
        Object[] objArr = new Object[i2];
        switch (i) {
            case 1:
            case 71:
                objArr[0] = "module";
                break;
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 10:
            case 12:
            case 14:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 46:
            case 47:
            case 48:
            case 49:
            case 50:
            case 51:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 67:
            case 68:
            case 69:
            case 73:
            case 80:
            case 83:
            case 85:
            case 86:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns";
                break;
            case 8:
            case 9:
            case 75:
            case 76:
            case 88:
            case 95:
            case 102:
            case 106:
            case 107:
            case 144:
            case 145:
            case 147:
            case 155:
            case 156:
            case 157:
                objArr[0] = "descriptor";
                break;
            case 11:
            case 97:
            case 99:
            case 101:
            case 103:
            case 105:
            case 134:
                objArr[0] = "fqName";
                break;
            case 13:
                objArr[0] = "simpleName";
                break;
            case 15:
            case 16:
            case 52:
            case 87:
            case 89:
            case 90:
            case 91:
            case 92:
            case 93:
            case 94:
            case 96:
            case 98:
            case 104:
            case 108:
            case 109:
            case 110:
            case 112:
            case 113:
            case 114:
            case 115:
            case 116:
            case 117:
            case 118:
            case 119:
            case 120:
            case 121:
            case 122:
            case 123:
            case 124:
            case JsonReaderKt.END_OBJ /* 125 */:
            case WebSocketProtocol.PAYLOAD_SHORT /* 126 */:
            case 127:
            case 128:
            case 129:
            case 130:
            case 131:
            case 132:
            case 133:
            case 135:
            case 136:
            case 137:
            case 138:
            case 139:
            case TwitterAuthConfig.DEFAULT_AUTH_REQUEST_CODE /* 140 */:
            case 141:
            case 142:
            case 143:
            case 146:
            case 148:
            case 149:
            case DrawableConstants.CtaButton.WIDTH_DIPS /* 150 */:
            case 151:
            case 152:
            case 153:
            case 154:
            case 159:
                objArr[0] = "type";
                break;
            case 45:
                objArr[0] = "classSimpleName";
                break;
            case 66:
                objArr[0] = "arrayType";
                break;
            case 70:
                objArr[0] = "notNullArrayType";
                break;
            case 72:
                objArr[0] = "primitiveType";
                break;
            case 74:
                objArr[0] = "kotlinType";
                break;
            case 77:
            case 81:
                objArr[0] = "projectionType";
                break;
            case 78:
            case 82:
            case 84:
                objArr[0] = "argument";
                break;
            case 79:
                objArr[0] = "annotations";
                break;
            case 100:
                objArr[0] = "typeConstructor";
                break;
            case 111:
                objArr[0] = "classDescriptor";
                break;
            case 158:
                objArr[0] = "declarationDescriptor";
                break;
            default:
                objArr[0] = "storageManager";
                break;
        }
        switch (i) {
            case 2:
                objArr[1] = "getAdditionalClassPartsProvider";
                break;
            case 3:
                objArr[1] = "getPlatformDependentDeclarationFilter";
                break;
            case 4:
                objArr[1] = "getClassDescriptorFactories";
                break;
            case 5:
                objArr[1] = "getStorageManager";
                break;
            case 6:
                objArr[1] = "getBuiltInsModule";
                break;
            case 7:
                objArr[1] = "getBuiltInPackagesImportedByDefault";
                break;
            case 8:
            case 9:
            case 11:
            case 13:
            case 15:
            case 16:
            case 45:
            case 52:
            case 66:
            case 70:
            case 71:
            case 72:
            case 74:
            case 75:
            case 76:
            case 77:
            case 78:
            case 79:
            case 81:
            case 82:
            case 84:
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns";
                break;
            case 10:
                objArr[1] = "getBuiltInsPackageScope";
                break;
            case 12:
                objArr[1] = "getBuiltInClassByFqName";
                break;
            case 14:
                objArr[1] = "getBuiltInClassByName";
                break;
            case 17:
                objArr[1] = "getSuspendFunction";
                break;
            case 18:
                objArr[1] = "getKFunction";
                break;
            case 19:
                objArr[1] = "getKSuspendFunction";
                break;
            case 20:
                objArr[1] = "getKClass";
                break;
            case 21:
                objArr[1] = "getKCallable";
                break;
            case 22:
                objArr[1] = "getKProperty";
                break;
            case 23:
                objArr[1] = "getKProperty0";
                break;
            case 24:
                objArr[1] = "getKProperty1";
                break;
            case 25:
                objArr[1] = "getKProperty2";
                break;
            case 26:
                objArr[1] = "getKMutableProperty0";
                break;
            case 27:
                objArr[1] = "getKMutableProperty1";
                break;
            case 28:
                objArr[1] = "getKMutableProperty2";
                break;
            case 29:
                objArr[1] = "getIterator";
                break;
            case 30:
                objArr[1] = "getIterable";
                break;
            case 31:
                objArr[1] = "getMutableIterable";
                break;
            case 32:
                objArr[1] = "getMutableIterator";
                break;
            case 33:
                objArr[1] = "getCollection";
                break;
            case 34:
                objArr[1] = "getMutableCollection";
                break;
            case 35:
                objArr[1] = "getList";
                break;
            case 36:
                objArr[1] = "getMutableList";
                break;
            case 37:
                objArr[1] = "getSet";
                break;
            case 38:
                objArr[1] = "getMutableSet";
                break;
            case 39:
                objArr[1] = "getMap";
                break;
            case 40:
                objArr[1] = "getMutableMap";
                break;
            case 41:
                objArr[1] = "getMapEntry";
                break;
            case 42:
                objArr[1] = "getMutableMapEntry";
                break;
            case 43:
                objArr[1] = "getListIterator";
                break;
            case 44:
                objArr[1] = "getMutableListIterator";
                break;
            case 46:
                objArr[1] = "getBuiltInTypeByClassName";
                break;
            case 47:
                objArr[1] = "getNothingType";
                break;
            case 48:
                objArr[1] = "getNullableNothingType";
                break;
            case 49:
                objArr[1] = "getAnyType";
                break;
            case 50:
                objArr[1] = "getNullableAnyType";
                break;
            case 51:
                objArr[1] = "getDefaultBound";
                break;
            case 53:
                objArr[1] = "getPrimitiveKotlinType";
                break;
            case 54:
                objArr[1] = "getNumberType";
                break;
            case 55:
                objArr[1] = "getByteType";
                break;
            case 56:
                objArr[1] = "getShortType";
                break;
            case 57:
                objArr[1] = "getIntType";
                break;
            case 58:
                objArr[1] = "getLongType";
                break;
            case 59:
                objArr[1] = "getFloatType";
                break;
            case 60:
                objArr[1] = "getDoubleType";
                break;
            case 61:
                objArr[1] = "getCharType";
                break;
            case 62:
                objArr[1] = "getBooleanType";
                break;
            case 63:
                objArr[1] = "getUnitType";
                break;
            case 64:
                objArr[1] = "getStringType";
                break;
            case 65:
                objArr[1] = "getIterableType";
                break;
            case 67:
            case 68:
            case 69:
                objArr[1] = "getArrayElementType";
                break;
            case 73:
                objArr[1] = "getPrimitiveArrayKotlinType";
                break;
            case 80:
            case 83:
                objArr[1] = "getArrayType";
                break;
            case 85:
                objArr[1] = "getEnumType";
                break;
            case 86:
                objArr[1] = "getAnnotationType";
                break;
        }
        switch (i) {
            case 1:
                objArr[2] = "setBuiltInsModule";
                break;
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 10:
            case 12:
            case 14:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 46:
            case 47:
            case 48:
            case 49:
            case 50:
            case 51:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 67:
            case 68:
            case 69:
            case 73:
            case 80:
            case 83:
            case 85:
            case 86:
                break;
            case 8:
                objArr[2] = "isBuiltIn";
                break;
            case 9:
                objArr[2] = "isUnderKotlinPackage";
                break;
            case 11:
                objArr[2] = "getBuiltInClassByFqName";
                break;
            case 13:
                objArr[2] = "getBuiltInClassByName";
                break;
            case 15:
                objArr[2] = "getPrimitiveClassDescriptor";
                break;
            case 16:
                objArr[2] = "getPrimitiveArrayClassDescriptor";
                break;
            case 45:
                objArr[2] = "getBuiltInTypeByClassName";
                break;
            case 52:
                objArr[2] = "getPrimitiveKotlinType";
                break;
            case 66:
                objArr[2] = "getArrayElementType";
                break;
            case 70:
            case 71:
                objArr[2] = "getElementTypeForUnsignedArray";
                break;
            case 72:
                objArr[2] = "getPrimitiveArrayKotlinType";
                break;
            case 74:
                objArr[2] = "getPrimitiveArrayKotlinTypeByPrimitiveKotlinType";
                break;
            case 75:
            case 92:
                objArr[2] = "getPrimitiveType";
                break;
            case 76:
                objArr[2] = "getPrimitiveArrayType";
                break;
            case 77:
            case 78:
            case 79:
            case 81:
            case 82:
                objArr[2] = "getArrayType";
                break;
            case 84:
                objArr[2] = "getEnumType";
                break;
            case 87:
                objArr[2] = "isArray";
                break;
            case 88:
            case 89:
                objArr[2] = "isArrayOrPrimitiveArray";
                break;
            case 90:
                objArr[2] = "isPrimitiveArray";
                break;
            case 91:
                objArr[2] = "getPrimitiveArrayElementType";
                break;
            case 93:
                objArr[2] = "isPrimitiveType";
                break;
            case 94:
                objArr[2] = "isPrimitiveTypeOrNullablePrimitiveType";
                break;
            case 95:
                objArr[2] = "isPrimitiveClass";
                break;
            case 96:
            case 97:
            case 98:
            case 99:
                objArr[2] = "isConstructedFromGivenClass";
                break;
            case 100:
            case 101:
                objArr[2] = "isTypeConstructorForGivenClass";
                break;
            case 102:
            case 103:
                objArr[2] = "classFqNameEquals";
                break;
            case 104:
            case 105:
                objArr[2] = "isNotNullConstructedFromGivenClass";
                break;
            case 106:
                objArr[2] = "isSpecialClassWithNoSupertypes";
                break;
            case 107:
            case 108:
                objArr[2] = "isAny";
                break;
            case 109:
            case 111:
                objArr[2] = "isBoolean";
                break;
            case 110:
                objArr[2] = "isBooleanOrNullableBoolean";
                break;
            case 112:
                objArr[2] = "isNumber";
                break;
            case 113:
                objArr[2] = "isChar";
                break;
            case 114:
                objArr[2] = "isCharOrNullableChar";
                break;
            case 115:
                objArr[2] = "isInt";
                break;
            case 116:
                objArr[2] = "isByte";
                break;
            case 117:
                objArr[2] = "isLong";
                break;
            case 118:
                objArr[2] = "isLongOrNullableLong";
                break;
            case 119:
                objArr[2] = "isShort";
                break;
            case 120:
                objArr[2] = "isFloat";
                break;
            case 121:
                objArr[2] = "isFloatOrNullableFloat";
                break;
            case 122:
                objArr[2] = "isDouble";
                break;
            case 123:
                objArr[2] = "isUByte";
                break;
            case 124:
                objArr[2] = "isUShort";
                break;
            case JsonReaderKt.END_OBJ /* 125 */:
                objArr[2] = "isUInt";
                break;
            case WebSocketProtocol.PAYLOAD_SHORT /* 126 */:
                objArr[2] = "isULong";
                break;
            case 127:
                objArr[2] = "isUByteArray";
                break;
            case 128:
                objArr[2] = "isUShortArray";
                break;
            case 129:
                objArr[2] = "isUIntArray";
                break;
            case 130:
                objArr[2] = "isULongArray";
                break;
            case 131:
                objArr[2] = "isUnsignedArrayType";
                break;
            case 132:
                objArr[2] = "isDoubleOrNullableDouble";
                break;
            case 133:
            case 134:
                objArr[2] = "isConstructedFromGivenClassAndNotNullable";
                break;
            case 135:
                objArr[2] = "isNothing";
                break;
            case 136:
                objArr[2] = "isNullableNothing";
                break;
            case 137:
                objArr[2] = "isNothingOrNullableNothing";
                break;
            case 138:
                objArr[2] = "isAnyOrNullableAny";
                break;
            case 139:
                objArr[2] = "isNullableAny";
                break;
            case TwitterAuthConfig.DEFAULT_AUTH_REQUEST_CODE /* 140 */:
                objArr[2] = "isDefaultBound";
                break;
            case 141:
                objArr[2] = "isUnit";
                break;
            case 142:
                objArr[2] = "isUnitOrNullableUnit";
                break;
            case 143:
                objArr[2] = "isBooleanOrSubtype";
                break;
            case 144:
                objArr[2] = "isMemberOfAny";
                break;
            case 145:
            case 146:
                objArr[2] = "isEnum";
                break;
            case 147:
            case 148:
                objArr[2] = "isComparable";
                break;
            case 149:
                objArr[2] = "isCollectionOrNullableCollection";
                break;
            case DrawableConstants.CtaButton.WIDTH_DIPS /* 150 */:
                objArr[2] = "isListOrNullableList";
                break;
            case 151:
                objArr[2] = "isSetOrNullableSet";
                break;
            case 152:
                objArr[2] = "isMapOrNullableMap";
                break;
            case 153:
                objArr[2] = "isIterableOrNullableIterable";
                break;
            case 154:
                objArr[2] = "isThrowableOrNullableThrowable";
                break;
            case 155:
                objArr[2] = "isKClass";
                break;
            case 156:
                objArr[2] = "isNonPrimitiveArray";
                break;
            case 157:
                objArr[2] = "isCloneable";
                break;
            case 158:
                objArr[2] = "isDeprecated";
                break;
            case 159:
                objArr[2] = "isNotNullOrNullableFunctionSupertype";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String format = String.format(str, objArr);
        switch (i) {
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 10:
            case 12:
            case 14:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 46:
            case 47:
            case 48:
            case 49:
            case 50:
            case 51:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 67:
            case 68:
            case 69:
            case 73:
            case 80:
            case 83:
            case 85:
            case 86:
                illegalArgumentException = new IllegalStateException(format);
                break;
            case 8:
            case 9:
            case 11:
            case 13:
            case 15:
            case 16:
            case 45:
            case 52:
            case 66:
            case 70:
            case 71:
            case 72:
            case 74:
            case 75:
            case 76:
            case 77:
            case 78:
            case 79:
            case 81:
            case 82:
            case 84:
            default:
                illegalArgumentException = new IllegalArgumentException(format);
                break;
        }
        throw illegalArgumentException;
    }

    /* renamed from: b */
    public static boolean m2817b(AbstractC19070d abstractC19070d) {
        if (abstractC19070d == null) {
            m2819b(95);
        }
        return m2811c((AbstractC19193k) abstractC19070d) != null;
    }

    /* renamed from: b */
    public static boolean m2816b(AbstractC19193k abstractC19193k) {
        AbstractC19193k abstractC19193k2 = abstractC19193k;
        if (abstractC19193k == null) {
            m2819b(9);
            abstractC19193k2 = abstractC19193k;
        }
        while (abstractC19193k2 != null) {
            if (abstractC19193k2 instanceof AbstractC19006ae) {
                return ((AbstractC19006ae) abstractC19193k2).mo2542c().m2742b(C18954j.f64582l);
            }
            abstractC19193k2 = abstractC19193k2.getContainingDeclaration();
        }
        return false;
    }

    /* renamed from: b */
    public static boolean m2815b(KotlinType kotlinType) {
        if (kotlinType == null) {
            m2819b(87);
        }
        return m2825a(kotlinType, C18954j.C18955a.f64654i);
    }

    /* renamed from: b */
    private static boolean m2814b(KotlinType kotlinType, C18962c c18962c) {
        if (kotlinType == null) {
            m2819b(104);
        }
        if (c18962c == null) {
            m2819b(105);
        }
        return !kotlinType.isMarkedNullable() && m2825a(kotlinType, c18962c);
    }

    /* renamed from: c */
    public static EnumC18946h m2811c(AbstractC19193k abstractC19193k) {
        if (abstractC19193k == null) {
            m2819b(75);
        }
        if (C18954j.C18955a.f64617aB.contains(abstractC19193k.getName())) {
            return C18954j.C18955a.f64619aD.get(C19807d.m1463c(abstractC19193k));
        }
        return null;
    }

    /* renamed from: c */
    public static boolean m2812c(AbstractC19070d abstractC19070d) {
        if (abstractC19070d == null) {
            m2819b(106);
        }
        return m2828a(abstractC19070d, C18954j.C18955a.f64647b) || m2828a(abstractC19070d, C18954j.C18955a.f64648c);
    }

    /* renamed from: c */
    public static boolean m2810c(KotlinType kotlinType) {
        if (kotlinType == null) {
            m2819b(90);
        }
        AbstractC19129g declarationDescriptor = kotlinType.getConstructor().getDeclarationDescriptor();
        return (declarationDescriptor == null || m2806d(declarationDescriptor) == null) ? false : true;
    }

    /* renamed from: c */
    private static boolean m2809c(KotlinType kotlinType, C18962c c18962c) {
        if (kotlinType == null) {
            m2819b(133);
        }
        if (c18962c == null) {
            m2819b(134);
        }
        return m2825a(kotlinType, c18962c) && !kotlinType.isMarkedNullable();
    }

    /* renamed from: d */
    public static EnumC18946h m2806d(AbstractC19193k abstractC19193k) {
        if (abstractC19193k == null) {
            m2819b(76);
        }
        if (C18954j.C18955a.f64618aC.contains(abstractC19193k.getName())) {
            return C18954j.C18955a.f64620aE.get(C19807d.m1463c(abstractC19193k));
        }
        return null;
    }

    /* renamed from: d */
    public static boolean m2807d(AbstractC19070d abstractC19070d) {
        if (abstractC19070d == null) {
            m2819b(107);
        }
        return m2828a(abstractC19070d, C18954j.C18955a.f64647b);
    }

    /* renamed from: d */
    public static boolean m2805d(KotlinType kotlinType) {
        if (kotlinType == null) {
            m2819b(93);
        }
        if (!kotlinType.isMarkedNullable()) {
            if (kotlinType == null) {
                m2819b(94);
            }
            AbstractC19129g declarationDescriptor = kotlinType.getConstructor().getDeclarationDescriptor();
            return (declarationDescriptor instanceof AbstractC19070d) && m2817b((AbstractC19070d) declarationDescriptor);
        }
        return false;
    }

    /* renamed from: e */
    public static boolean m2803e(AbstractC19070d abstractC19070d) {
        if (abstractC19070d == null) {
            m2819b(155);
        }
        return m2828a(abstractC19070d, C18954j.C18955a.f64624ad);
    }

    /* renamed from: e */
    public static boolean m2802e(AbstractC19193k abstractC19193k) {
        if (abstractC19193k == null) {
            m2819b(158);
        }
        if (abstractC19193k.getOriginal().getAnnotations().mo1338b(C18954j.C18955a.f64670y)) {
            return true;
        }
        if (!(abstractC19193k instanceof AbstractC19017an)) {
            return false;
        }
        AbstractC19017an abstractC19017an = (AbstractC19017an) abstractC19193k;
        boolean at_ = abstractC19017an.at_();
        AbstractC19018ao mo2635a = abstractC19017an.mo2635a();
        AbstractC19019ap mo2623b = abstractC19017an.mo2623b();
        if (mo2635a == null || !m2802e(mo2635a)) {
            return false;
        }
        if (!at_) {
            return true;
        }
        return mo2623b != null && m2802e(mo2623b);
    }

    /* renamed from: e */
    public static boolean m2801e(KotlinType kotlinType) {
        if (kotlinType == null) {
            m2819b(109);
        }
        return m2809c(kotlinType, C18954j.C18955a.f64655j);
    }

    /* renamed from: f */
    public static boolean m2799f(KotlinType kotlinType) {
        if (kotlinType == null) {
            m2819b(113);
        }
        return m2809c(kotlinType, C18954j.C18955a.f64656k);
    }

    /* renamed from: g */
    public static boolean m2797g(KotlinType kotlinType) {
        if (kotlinType == null) {
            m2819b(115);
        }
        return m2809c(kotlinType, C18954j.C18955a.f64659n);
    }

    /* renamed from: h */
    public static boolean m2795h(KotlinType kotlinType) {
        if (kotlinType == null) {
            m2819b(116);
        }
        return m2809c(kotlinType, C18954j.C18955a.f64657l);
    }

    /* renamed from: i */
    public static boolean m2793i(KotlinType kotlinType) {
        if (kotlinType == null) {
            m2819b(117);
        }
        return m2809c(kotlinType, C18954j.C18955a.f64660o);
    }

    /* renamed from: j */
    public static boolean m2791j(KotlinType kotlinType) {
        if (kotlinType == null) {
            m2819b(119);
        }
        return m2809c(kotlinType, C18954j.C18955a.f64658m);
    }

    /* renamed from: k */
    public static boolean m2789k(KotlinType kotlinType) {
        if (kotlinType == null) {
            m2819b(120);
        }
        if (kotlinType == null) {
            m2819b(121);
        }
        return m2825a(kotlinType, C18954j.C18955a.f64661p) && !kotlinType.isMarkedNullable();
    }

    /* renamed from: l */
    public static boolean m2787l(KotlinType kotlinType) {
        if (kotlinType == null) {
            m2819b(122);
        }
        if (kotlinType == null) {
            m2819b(132);
        }
        return m2825a(kotlinType, C18954j.C18955a.f64662q) && !kotlinType.isMarkedNullable();
    }

    /* renamed from: m */
    public static boolean m2785m(KotlinType kotlinType) {
        if (kotlinType == null) {
            m2819b(131);
        }
        if (kotlinType == null) {
            m2819b(127);
        }
        if (!m2809c(kotlinType, C18954j.C18955a.f64644ax.m2743b())) {
            if (kotlinType == null) {
                m2819b(128);
            }
            if (m2809c(kotlinType, C18954j.C18955a.f64645ay.m2743b())) {
                return true;
            }
            if (kotlinType == null) {
                m2819b(129);
            }
            if (m2809c(kotlinType, C18954j.C18955a.f64646az.m2743b())) {
                return true;
            }
            if (kotlinType == null) {
                m2819b(130);
            }
            return m2809c(kotlinType, C18954j.C18955a.f64616aA.m2743b());
        }
        return true;
    }

    /* renamed from: n */
    public static boolean m2783n(KotlinType kotlinType) {
        if (kotlinType == null) {
            m2819b(135);
        }
        if (kotlinType == null) {
            m2819b(137);
        }
        return m2825a(kotlinType, C18954j.C18955a.f64648c) && !TypeUtils.isNullableType(kotlinType);
    }

    /* renamed from: o */
    public static boolean m2781o(KotlinType kotlinType) {
        if (kotlinType == null) {
            m2819b(138);
        }
        return m2825a(kotlinType, C18954j.C18955a.f64647b);
    }

    /* renamed from: p */
    public static boolean m2779p(KotlinType kotlinType) {
        if (kotlinType == null) {
            m2819b(139);
        }
        return m2781o(kotlinType) && kotlinType.isMarkedNullable();
    }

    /* renamed from: q */
    public static boolean m2778q(KotlinType kotlinType) {
        if (kotlinType == null) {
            m2819b((int) TwitterAuthConfig.DEFAULT_AUTH_REQUEST_CODE);
        }
        return m2779p(kotlinType);
    }

    /* renamed from: r */
    public static boolean m2777r(KotlinType kotlinType) {
        if (kotlinType == null) {
            m2819b(141);
        }
        return m2814b(kotlinType, C18954j.C18955a.f64651f);
    }

    /* renamed from: s */
    public static boolean m2776s(KotlinType kotlinType) {
        return kotlinType != null && m2814b(kotlinType, C18954j.C18955a.f64653h);
    }

    /* renamed from: a */
    public final AbstractC19070d m2836a(int i) {
        AbstractC19070d m2830a = m2830a(C18954j.f64574d.m2744a(C18966e.m2719a(C18954j.m2770c(i))));
        if (m2830a == null) {
            m2819b(17);
        }
        return m2830a;
    }

    /* renamed from: a */
    public final AbstractC19070d m2835a(String str) {
        if (str == null) {
            m2819b(13);
        }
        AbstractC19070d invoke = this.f64546g.invoke(C18966e.m2719a(str));
        if (invoke == null) {
            m2819b(14);
        }
        return invoke;
    }

    /* renamed from: a */
    public final AbstractC19070d m2830a(C18961b c18961b) {
        if (c18961b == null) {
            m2819b(11);
        }
        AbstractC19070d m2523a = C19199q.m2523a(this.f64543b, c18961b, EnumC18698d.FROM_BUILTINS);
        if (f64541e || m2523a != null) {
            if (m2523a == null) {
                m2819b(12);
            }
            return m2523a;
        }
        throw new AssertionError("Can't find built-in class ".concat(String.valueOf(c18961b)));
    }

    /* renamed from: a */
    public final KotlinType m2826a(KotlinType kotlinType) {
        C18960a m1532a;
        AbstractC19070d m2497b;
        if (kotlinType == null) {
            m2819b(66);
        }
        if (m2815b(kotlinType)) {
            if (kotlinType.getArguments().size() != 1) {
                throw new IllegalStateException();
            }
            KotlinType type = kotlinType.getArguments().get(0).getType();
            if (type == null) {
                m2819b(67);
            }
            return type;
        }
        KotlinType makeNotNullable = TypeUtils.makeNotNullable(kotlinType);
        SimpleType simpleType = this.f64542a.invoke().f64554c.get(makeNotNullable);
        if (simpleType != null) {
            if (simpleType == null) {
                m2819b(68);
            }
            return simpleType;
        }
        AbstractC18999ab m1470a = C19807d.m1470a(makeNotNullable);
        if (m1470a != null) {
            if (makeNotNullable == null) {
                m2819b(70);
            }
            if (m1470a == null) {
                m2819b(71);
            }
            AbstractC19129g declarationDescriptor = makeNotNullable.getConstructor().getDeclarationDescriptor();
            SimpleType simpleType2 = null;
            if (declarationDescriptor != null) {
                C18959n c18959n = C18959n.f64674a;
                if (C18959n.m2760a(declarationDescriptor.getName()) && (m1532a = C19756a.m1532a(declarationDescriptor)) != null) {
                    C18959n c18959n2 = C18959n.f64674a;
                    C18960a m2761a = C18959n.m2761a(m1532a);
                    if (m2761a != null && (m2497b = C19216v.m2497b(m1470a, m2761a)) != null) {
                        simpleType2 = m2497b.getDefaultType();
                    }
                }
            }
            if (simpleType2 != null) {
                if (simpleType2 == null) {
                    m2819b(69);
                }
                return simpleType2;
            }
        }
        throw new IllegalStateException("not array: ".concat(String.valueOf(kotlinType)));
    }

    /* renamed from: a */
    public final SimpleType m2831a(EnumC18946h enumC18946h) {
        if (enumC18946h == null) {
            m2819b(52);
        }
        if (enumC18946h == null) {
            m2819b(15);
        }
        SimpleType defaultType = m2835a(enumC18946h.getTypeName().m2721a()).getDefaultType();
        if (defaultType == null) {
            m2819b(53);
        }
        return defaultType;
    }

    /* renamed from: a */
    public final SimpleType m2823a(Variance variance, KotlinType kotlinType) {
        if (variance == null) {
            m2819b(81);
        }
        if (kotlinType == null) {
            m2819b(82);
        }
        AbstractC18983g.C18984a c18984a = AbstractC18983g.f64717a;
        SimpleType m2822a = m2822a(variance, kotlinType, AbstractC18983g.C18984a.m2705a());
        if (m2822a == null) {
            m2819b(83);
        }
        return m2822a;
    }

    /* renamed from: a */
    public final SimpleType m2822a(Variance variance, KotlinType kotlinType, AbstractC18983g abstractC18983g) {
        if (variance == null) {
            m2819b(77);
        }
        if (kotlinType == null) {
            m2819b(78);
        }
        if (abstractC18983g == null) {
            m2819b(79);
        }
        SimpleType simpleNotNullType = KotlinTypeFactory.simpleNotNullType(abstractC18983g, m2835a("Array"), Collections.singletonList(new TypeProjectionImpl(variance, kotlinType)));
        if (simpleNotNullType == null) {
            m2819b(80);
        }
        return simpleNotNullType;
    }

    /* renamed from: a */
    public final void m2821a(boolean z) {
        C19183t c19183t = new C19183t(f64540d, this.f64544c, this, null);
        this.f64543b = c19183t;
        BuiltInsLoader.C18887a c18887a = BuiltInsLoader.f64442a;
        c19183t.m2556a(BuiltInsLoader.C18887a.m2913a().createPackageFragmentProvider(this.f64544c, this.f64543b, mo2808d(), mo2813c(), mo2820b(), z));
        C19183t c19183t2 = this.f64543b;
        c19183t2.m2554a(c19183t2);
    }

    /* renamed from: b */
    protected AbstractC19041a mo2820b() {
        AbstractC19041a.C19042a c19042a = AbstractC19041a.C19042a.f64765a;
        if (c19042a == null) {
            m2819b(2);
        }
        return c19042a;
    }

    /* renamed from: b */
    public final SimpleType m2818b(EnumC18946h enumC18946h) {
        if (enumC18946h == null) {
            m2819b(72);
        }
        SimpleType simpleType = this.f64542a.invoke().f64552a.get(enumC18946h);
        if (simpleType == null) {
            m2819b(73);
        }
        return simpleType;
    }

    /* renamed from: c */
    protected AbstractC19044c mo2813c() {
        AbstractC19044c.C19046b c19046b = AbstractC19044c.C19046b.f64767a;
        if (c19046b == null) {
            m2819b(3);
        }
        return c19046b;
    }

    /* renamed from: d */
    public Iterable<AbstractC19043b> mo2808d() {
        List singletonList = Collections.singletonList(new C18932a(this.f64544c, this.f64543b));
        if (singletonList == null) {
            m2819b(4);
        }
        return singletonList;
    }

    /* renamed from: e */
    public final C19183t m2804e() {
        C19183t c19183t = this.f64543b;
        if (c19183t == null) {
            m2819b(6);
        }
        return c19183t;
    }

    /* renamed from: f */
    public final SimpleType m2800f() {
        SimpleType defaultType = m2835a("Nothing").getDefaultType();
        if (defaultType == null) {
            m2819b(47);
        }
        return defaultType;
    }

    /* renamed from: g */
    public final SimpleType m2798g() {
        SimpleType defaultType = m2835a("Any").getDefaultType();
        if (defaultType == null) {
            m2819b(49);
        }
        return defaultType;
    }

    /* renamed from: h */
    public final SimpleType m2796h() {
        SimpleType makeNullableAsSpecified = m2798g().makeNullableAsSpecified(true);
        if (makeNullableAsSpecified == null) {
            m2819b(50);
        }
        return makeNullableAsSpecified;
    }

    /* renamed from: i */
    public final SimpleType m2794i() {
        SimpleType m2796h = m2796h();
        if (m2796h == null) {
            m2819b(51);
        }
        return m2796h;
    }

    /* renamed from: j */
    public final SimpleType m2792j() {
        SimpleType m2831a = m2831a(EnumC18946h.BYTE);
        if (m2831a == null) {
            m2819b(55);
        }
        return m2831a;
    }

    /* renamed from: k */
    public final SimpleType m2790k() {
        SimpleType m2831a = m2831a(EnumC18946h.SHORT);
        if (m2831a == null) {
            m2819b(56);
        }
        return m2831a;
    }

    /* renamed from: l */
    public final SimpleType m2788l() {
        SimpleType m2831a = m2831a(EnumC18946h.INT);
        if (m2831a == null) {
            m2819b(57);
        }
        return m2831a;
    }

    /* renamed from: m */
    public final SimpleType m2786m() {
        SimpleType m2831a = m2831a(EnumC18946h.LONG);
        if (m2831a == null) {
            m2819b(58);
        }
        return m2831a;
    }

    /* renamed from: n */
    public final SimpleType m2784n() {
        SimpleType m2831a = m2831a(EnumC18946h.BOOLEAN);
        if (m2831a == null) {
            m2819b(62);
        }
        return m2831a;
    }

    /* renamed from: o */
    public final SimpleType m2782o() {
        SimpleType defaultType = m2835a("Unit").getDefaultType();
        if (defaultType == null) {
            m2819b(63);
        }
        return defaultType;
    }

    /* renamed from: p */
    public final SimpleType m2780p() {
        SimpleType defaultType = m2835a("String").getDefaultType();
        if (defaultType == null) {
            m2819b(64);
        }
        return defaultType;
    }
}
