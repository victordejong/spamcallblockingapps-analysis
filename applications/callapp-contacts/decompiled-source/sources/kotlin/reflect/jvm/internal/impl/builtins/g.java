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
import kotlin.reflect.jvm.internal.impl.builtins.j;
import kotlin.reflect.jvm.internal.impl.c.b;
import kotlin.reflect.jvm.internal.impl.c.c;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.descriptors.ab;
import kotlin.reflect.jvm.internal.impl.descriptors.ae;
import kotlin.reflect.jvm.internal.impl.descriptors.aj;
import kotlin.reflect.jvm.internal.impl.descriptors.an;
import kotlin.reflect.jvm.internal.impl.descriptors.ao;
import kotlin.reflect.jvm.internal.impl.descriptors.ap;
import kotlin.reflect.jvm.internal.impl.descriptors.b.a;
import kotlin.reflect.jvm.internal.impl.descriptors.b.c;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.t;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.q;
import kotlin.reflect.jvm.internal.impl.descriptors.v;
import kotlin.reflect.jvm.internal.impl.f.i;
import kotlin.reflect.jvm.internal.impl.f.n;
import kotlin.reflect.jvm.internal.impl.resolve.e.h;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlinx.serialization.json.internal.JsonReaderKt;
import okhttp3.internal.ws.WebSocketProtocol;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/g.class */
public abstract class g {

    /* renamed from: d  reason: collision with root package name */
    public static final e f37296d = e.c("<built-ins module>");
    static final /* synthetic */ boolean e = true;

    /* renamed from: a  reason: collision with root package name */
    private final i<a> f37297a;

    /* renamed from: b  reason: collision with root package name */
    t f37298b;

    /* renamed from: c  reason: collision with root package name */
    public final n f37299c;
    private final i<Collection<aj>> f;
    private final kotlin.reflect.jvm.internal.impl.f.g<e, d> g;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/g$a.class */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final Map<h, SimpleType> f37305a;

        /* renamed from: b  reason: collision with root package name */
        public final Map<KotlinType, SimpleType> f37306b;

        /* renamed from: c  reason: collision with root package name */
        public final Map<SimpleType, SimpleType> f37307c;

        private a(Map<h, SimpleType> map, Map<KotlinType, SimpleType> map2, Map<SimpleType, SimpleType> map3) {
            if (map == null) {
                a(0);
            }
            if (map2 == null) {
                a(1);
            }
            if (map3 == null) {
                a(2);
            }
            this.f37305a = map;
            this.f37306b = map2;
            this.f37307c = map3;
        }

        private static /* synthetic */ void a(int i) {
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

    public g(n nVar) {
        if (nVar == null) {
            b(0);
        }
        this.f37299c = nVar;
        this.f = nVar.a(new Function0<Collection<aj>>() { // from class: kotlin.reflect.jvm.internal.impl.builtins.g.1
            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ Collection<aj> invoke() {
                return Arrays.asList(g.this.f37298b.getPackage(j.m), g.this.f37298b.getPackage(j.o), g.this.f37298b.getPackage(j.p), g.this.f37298b.getPackage(j.n));
            }
        });
        this.f37297a = nVar.a(new Function0<a>() { // from class: kotlin.reflect.jvm.internal.impl.builtins.g.2
            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ a invoke() {
                h[] values;
                EnumMap enumMap = new EnumMap(h.class);
                HashMap hashMap = new HashMap();
                HashMap hashMap2 = new HashMap();
                for (h hVar : h.values()) {
                    SimpleType a2 = g.a(g.this, hVar.getTypeName().a());
                    SimpleType a3 = g.a(g.this, hVar.getArrayTypeName().a());
                    enumMap.put((EnumMap) hVar, (h) a3);
                    hashMap.put(a2, a3);
                    hashMap2.put(a3, a2);
                }
                return new a(enumMap, hashMap, hashMap2);
            }
        });
        this.g = nVar.a(new Function1<e, d>() { // from class: kotlin.reflect.jvm.internal.impl.builtins.g.3
            @Override // kotlin.jvm.functions.Function1
            public final /* synthetic */ d invoke(e eVar) {
                e eVar2 = eVar;
                h b2 = g.this.f37298b.getPackage(j.m).b();
                if (b2 == null) {
                    g.b(10);
                }
                kotlin.reflect.jvm.internal.impl.descriptors.g contributedClassifier = b2.getContributedClassifier(eVar2, kotlin.reflect.jvm.internal.impl.a.a.d.FROM_BUILTINS);
                if (contributedClassifier == null) {
                    throw new AssertionError("Built-in class " + j.m.a(eVar2) + " is not found");
                } else if (contributedClassifier instanceof d) {
                    return (d) contributedClassifier;
                } else {
                    throw new AssertionError("Must be a class descriptor " + eVar2 + ", but was " + contributedClassifier);
                }
            }
        });
    }

    static /* synthetic */ SimpleType a(g gVar, String str) {
        if (str == null) {
            b(45);
        }
        SimpleType defaultType = gVar.a(str).getDefaultType();
        if (defaultType == null) {
            b(46);
        }
        return defaultType;
    }

    public static boolean a(d dVar) {
        if (dVar == null) {
            b(88);
        }
        return a(dVar, j.a.i) || d((k) dVar) != null;
    }

    private static boolean a(kotlin.reflect.jvm.internal.impl.descriptors.g gVar, c cVar) {
        if (gVar == null) {
            b(102);
        }
        if (cVar == null) {
            b(103);
        }
        return gVar.getName().equals(cVar.e()) && cVar.equals(kotlin.reflect.jvm.internal.impl.resolve.d.c(gVar));
    }

    public static boolean a(k kVar) {
        if (kVar == null) {
            b(8);
        }
        return kotlin.reflect.jvm.internal.impl.resolve.d.a(kVar, kotlin.reflect.jvm.internal.impl.builtins.a.class, false) != null;
    }

    private static boolean a(KotlinType kotlinType, c cVar) {
        if (kotlinType == null) {
            b(96);
        }
        if (cVar == null) {
            b(97);
        }
        return a(kotlinType.getConstructor(), cVar);
    }

    public static boolean a(TypeConstructor typeConstructor, c cVar) {
        if (typeConstructor == null) {
            b(100);
        }
        if (cVar == null) {
            b(101);
        }
        kotlin.reflect.jvm.internal.impl.descriptors.g declarationDescriptor = typeConstructor.getDeclarationDescriptor();
        return (declarationDescriptor instanceof d) && a(declarationDescriptor, cVar);
    }

    public static /* synthetic */ void b(int i) {
        String str;
        int i2;
        Throwable th;
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
                th = new IllegalStateException(format);
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
                th = new IllegalArgumentException(format);
                break;
        }
        throw th;
    }

    public static boolean b(d dVar) {
        if (dVar == null) {
            b(95);
        }
        return c((k) dVar) != null;
    }

    public static boolean b(k kVar) {
        k kVar2 = kVar;
        if (kVar == null) {
            b(9);
            kVar2 = kVar;
        }
        while (kVar2 != null) {
            if (kVar2 instanceof ae) {
                return ((ae) kVar2).c().b(j.l);
            }
            kVar2 = kVar2.getContainingDeclaration();
        }
        return false;
    }

    public static boolean b(KotlinType kotlinType) {
        if (kotlinType == null) {
            b(87);
        }
        return a(kotlinType, j.a.i);
    }

    private static boolean b(KotlinType kotlinType, c cVar) {
        if (kotlinType == null) {
            b(104);
        }
        if (cVar == null) {
            b(105);
        }
        return !kotlinType.isMarkedNullable() && a(kotlinType, cVar);
    }

    public static h c(k kVar) {
        if (kVar == null) {
            b(75);
        }
        if (j.a.aB.contains(kVar.getName())) {
            return j.a.aD.get(kotlin.reflect.jvm.internal.impl.resolve.d.c(kVar));
        }
        return null;
    }

    public static boolean c(d dVar) {
        if (dVar == null) {
            b(106);
        }
        return a(dVar, j.a.f37321b) || a(dVar, j.a.f37322c);
    }

    public static boolean c(KotlinType kotlinType) {
        if (kotlinType == null) {
            b(90);
        }
        kotlin.reflect.jvm.internal.impl.descriptors.g declarationDescriptor = kotlinType.getConstructor().getDeclarationDescriptor();
        return (declarationDescriptor == null || d(declarationDescriptor) == null) ? false : true;
    }

    private static boolean c(KotlinType kotlinType, c cVar) {
        if (kotlinType == null) {
            b(133);
        }
        if (cVar == null) {
            b(134);
        }
        return a(kotlinType, cVar) && !kotlinType.isMarkedNullable();
    }

    public static h d(k kVar) {
        if (kVar == null) {
            b(76);
        }
        if (j.a.aC.contains(kVar.getName())) {
            return j.a.aE.get(kotlin.reflect.jvm.internal.impl.resolve.d.c(kVar));
        }
        return null;
    }

    public static boolean d(d dVar) {
        if (dVar == null) {
            b(107);
        }
        return a(dVar, j.a.f37321b);
    }

    public static boolean d(KotlinType kotlinType) {
        if (kotlinType == null) {
            b(93);
        }
        if (kotlinType.isMarkedNullable()) {
            return false;
        }
        if (kotlinType == null) {
            b(94);
        }
        kotlin.reflect.jvm.internal.impl.descriptors.g declarationDescriptor = kotlinType.getConstructor().getDeclarationDescriptor();
        return (declarationDescriptor instanceof d) && b((d) declarationDescriptor);
    }

    public static boolean e(d dVar) {
        if (dVar == null) {
            b(155);
        }
        return a(dVar, j.a.ad);
    }

    public static boolean e(k kVar) {
        if (kVar == null) {
            b(158);
        }
        if (kVar.getOriginal().getAnnotations().b(j.a.y)) {
            return true;
        }
        if (!(kVar instanceof an)) {
            return false;
        }
        an anVar = (an) kVar;
        boolean at_ = anVar.at_();
        ao a2 = anVar.a();
        ap b2 = anVar.b();
        if (a2 == null || !e(a2)) {
            return false;
        }
        if (at_) {
            return b2 != null && e(b2);
        }
        return true;
    }

    public static boolean e(KotlinType kotlinType) {
        if (kotlinType == null) {
            b(109);
        }
        return c(kotlinType, j.a.j);
    }

    public static boolean f(KotlinType kotlinType) {
        if (kotlinType == null) {
            b(113);
        }
        return c(kotlinType, j.a.k);
    }

    public static boolean g(KotlinType kotlinType) {
        if (kotlinType == null) {
            b(115);
        }
        return c(kotlinType, j.a.n);
    }

    public static boolean h(KotlinType kotlinType) {
        if (kotlinType == null) {
            b(116);
        }
        return c(kotlinType, j.a.l);
    }

    public static boolean i(KotlinType kotlinType) {
        if (kotlinType == null) {
            b(117);
        }
        return c(kotlinType, j.a.o);
    }

    public static boolean j(KotlinType kotlinType) {
        if (kotlinType == null) {
            b(119);
        }
        return c(kotlinType, j.a.m);
    }

    public static boolean k(KotlinType kotlinType) {
        if (kotlinType == null) {
            b(120);
        }
        if (kotlinType == null) {
            b(121);
        }
        return a(kotlinType, j.a.p) && !kotlinType.isMarkedNullable();
    }

    public static boolean l(KotlinType kotlinType) {
        if (kotlinType == null) {
            b(122);
        }
        if (kotlinType == null) {
            b(132);
        }
        return a(kotlinType, j.a.q) && !kotlinType.isMarkedNullable();
    }

    public static boolean m(KotlinType kotlinType) {
        if (kotlinType == null) {
            b(131);
        }
        if (kotlinType == null) {
            b(127);
        }
        if (c(kotlinType, j.a.ax.b())) {
            return true;
        }
        if (kotlinType == null) {
            b(128);
        }
        if (c(kotlinType, j.a.ay.b())) {
            return true;
        }
        if (kotlinType == null) {
            b(129);
        }
        if (c(kotlinType, j.a.az.b())) {
            return true;
        }
        if (kotlinType == null) {
            b(130);
        }
        return c(kotlinType, j.a.aA.b());
    }

    public static boolean n(KotlinType kotlinType) {
        if (kotlinType == null) {
            b(135);
        }
        if (kotlinType == null) {
            b(137);
        }
        return a(kotlinType, j.a.f37322c) && !TypeUtils.isNullableType(kotlinType);
    }

    public static boolean o(KotlinType kotlinType) {
        if (kotlinType == null) {
            b(138);
        }
        return a(kotlinType, j.a.f37321b);
    }

    public static boolean p(KotlinType kotlinType) {
        if (kotlinType == null) {
            b(139);
        }
        return o(kotlinType) && kotlinType.isMarkedNullable();
    }

    public static boolean q(KotlinType kotlinType) {
        if (kotlinType == null) {
            b((int) TwitterAuthConfig.DEFAULT_AUTH_REQUEST_CODE);
        }
        return p(kotlinType);
    }

    public static boolean r(KotlinType kotlinType) {
        if (kotlinType == null) {
            b(141);
        }
        return b(kotlinType, j.a.f);
    }

    public static boolean s(KotlinType kotlinType) {
        return kotlinType != null && b(kotlinType, j.a.h);
    }

    public final d a(int i) {
        d a2 = a(j.f37319d.a(e.a(j.c(i))));
        if (a2 == null) {
            b(17);
        }
        return a2;
    }

    public final d a(String str) {
        if (str == null) {
            b(13);
        }
        d invoke = this.g.invoke(e.a(str));
        if (invoke == null) {
            b(14);
        }
        return invoke;
    }

    public final d a(b bVar) {
        if (bVar == null) {
            b(11);
        }
        d a2 = q.a(this.f37298b, bVar, kotlin.reflect.jvm.internal.impl.a.a.d.FROM_BUILTINS);
        if (e || a2 != null) {
            if (a2 == null) {
                b(12);
            }
            return a2;
        }
        throw new AssertionError("Can't find built-in class ".concat(String.valueOf(bVar)));
    }

    public final KotlinType a(KotlinType kotlinType) {
        kotlin.reflect.jvm.internal.impl.c.a a2;
        d b2;
        if (kotlinType == null) {
            b(66);
        }
        if (!b(kotlinType)) {
            KotlinType makeNotNullable = TypeUtils.makeNotNullable(kotlinType);
            SimpleType simpleType = this.f37297a.invoke().f37307c.get(makeNotNullable);
            if (simpleType != null) {
                if (simpleType == null) {
                    b(68);
                }
                return simpleType;
            }
            ab a3 = kotlin.reflect.jvm.internal.impl.resolve.d.a(makeNotNullable);
            if (a3 != null) {
                if (makeNotNullable == null) {
                    b(70);
                }
                if (a3 == null) {
                    b(71);
                }
                kotlin.reflect.jvm.internal.impl.descriptors.g declarationDescriptor = makeNotNullable.getConstructor().getDeclarationDescriptor();
                SimpleType simpleType2 = null;
                if (declarationDescriptor != null) {
                    n nVar = n.f37326a;
                    if (n.a(declarationDescriptor.getName()) && (a2 = kotlin.reflect.jvm.internal.impl.resolve.b.a.a(declarationDescriptor)) != null) {
                        n nVar2 = n.f37326a;
                        kotlin.reflect.jvm.internal.impl.c.a a4 = n.a(a2);
                        if (!(a4 == null || (b2 = v.b(a3, a4)) == null)) {
                            simpleType2 = b2.getDefaultType();
                        }
                    }
                }
                if (simpleType2 != null) {
                    if (simpleType2 == null) {
                        b(69);
                    }
                    return simpleType2;
                }
            }
            throw new IllegalStateException("not array: ".concat(String.valueOf(kotlinType)));
        } else if (kotlinType.getArguments().size() == 1) {
            KotlinType type = kotlinType.getArguments().get(0).getType();
            if (type == null) {
                b(67);
            }
            return type;
        } else {
            throw new IllegalStateException();
        }
    }

    public final SimpleType a(h hVar) {
        if (hVar == null) {
            b(52);
        }
        if (hVar == null) {
            b(15);
        }
        SimpleType defaultType = a(hVar.getTypeName().a()).getDefaultType();
        if (defaultType == null) {
            b(53);
        }
        return defaultType;
    }

    public final SimpleType a(Variance variance, KotlinType kotlinType) {
        if (variance == null) {
            b(81);
        }
        if (kotlinType == null) {
            b(82);
        }
        g.a aVar = kotlin.reflect.jvm.internal.impl.descriptors.a.g.f37361a;
        SimpleType a2 = a(variance, kotlinType, g.a.a());
        if (a2 == null) {
            b(83);
        }
        return a2;
    }

    public final SimpleType a(Variance variance, KotlinType kotlinType, kotlin.reflect.jvm.internal.impl.descriptors.a.g gVar) {
        if (variance == null) {
            b(77);
        }
        if (kotlinType == null) {
            b(78);
        }
        if (gVar == null) {
            b(79);
        }
        SimpleType simpleNotNullType = KotlinTypeFactory.simpleNotNullType(gVar, a("Array"), Collections.singletonList(new TypeProjectionImpl(variance, kotlinType)));
        if (simpleNotNullType == null) {
            b(80);
        }
        return simpleNotNullType;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(boolean z) {
        t tVar = new t(f37296d, this.f37299c, this, null);
        this.f37298b = tVar;
        BuiltInsLoader.a aVar = BuiltInsLoader.f37230a;
        tVar.a(BuiltInsLoader.a.a().createPackageFragmentProvider(this.f37299c, this.f37298b, d(), c(), b(), z));
        t tVar2 = this.f37298b;
        tVar2.a(tVar2);
    }

    protected kotlin.reflect.jvm.internal.impl.descriptors.b.a b() {
        a.C0670a aVar = a.C0670a.f37407a;
        if (aVar == null) {
            b(2);
        }
        return aVar;
    }

    public final SimpleType b(h hVar) {
        if (hVar == null) {
            b(72);
        }
        SimpleType simpleType = this.f37297a.invoke().f37305a.get(hVar);
        if (simpleType == null) {
            b(73);
        }
        return simpleType;
    }

    protected kotlin.reflect.jvm.internal.impl.descriptors.b.c c() {
        c.b bVar = c.b.f37409a;
        if (bVar == null) {
            b(3);
        }
        return bVar;
    }

    public Iterable<kotlin.reflect.jvm.internal.impl.descriptors.b.b> d() {
        List singletonList = Collections.singletonList(new kotlin.reflect.jvm.internal.impl.builtins.functions.a(this.f37299c, this.f37298b));
        if (singletonList == null) {
            b(4);
        }
        return singletonList;
    }

    public final t e() {
        t tVar = this.f37298b;
        if (tVar == null) {
            b(6);
        }
        return tVar;
    }

    public final SimpleType f() {
        SimpleType defaultType = a("Nothing").getDefaultType();
        if (defaultType == null) {
            b(47);
        }
        return defaultType;
    }

    public final SimpleType g() {
        SimpleType defaultType = a("Any").getDefaultType();
        if (defaultType == null) {
            b(49);
        }
        return defaultType;
    }

    public final SimpleType h() {
        SimpleType makeNullableAsSpecified = g().makeNullableAsSpecified(true);
        if (makeNullableAsSpecified == null) {
            b(50);
        }
        return makeNullableAsSpecified;
    }

    public final SimpleType i() {
        SimpleType h = h();
        if (h == null) {
            b(51);
        }
        return h;
    }

    public final SimpleType j() {
        SimpleType a2 = a(h.BYTE);
        if (a2 == null) {
            b(55);
        }
        return a2;
    }

    public final SimpleType k() {
        SimpleType a2 = a(h.SHORT);
        if (a2 == null) {
            b(56);
        }
        return a2;
    }

    public final SimpleType l() {
        SimpleType a2 = a(h.INT);
        if (a2 == null) {
            b(57);
        }
        return a2;
    }

    public final SimpleType m() {
        SimpleType a2 = a(h.LONG);
        if (a2 == null) {
            b(58);
        }
        return a2;
    }

    public final SimpleType n() {
        SimpleType a2 = a(h.BOOLEAN);
        if (a2 == null) {
            b(62);
        }
        return a2;
    }

    public final SimpleType o() {
        SimpleType defaultType = a("Unit").getDefaultType();
        if (defaultType == null) {
            b(63);
        }
        return defaultType;
    }

    public final SimpleType p() {
        SimpleType defaultType = a("String").getDefaultType();
        if (defaultType == null) {
            b(64);
        }
        return defaultType;
    }
}
