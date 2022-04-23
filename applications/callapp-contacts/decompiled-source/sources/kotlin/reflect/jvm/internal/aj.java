package kotlin.reflect.jvm.internal;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.a.ai;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.m;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.y;
import kotlin.reflect.KCallable;
import kotlin.reflect.KType;
import kotlin.reflect.KVisibility;
import kotlin.reflect.jvm.internal.impl.b.a;
import kotlin.reflect.jvm.internal.impl.b.b.i;
import kotlin.reflect.jvm.internal.impl.builtins.a.c;
import kotlin.reflect.jvm.internal.impl.c.a;
import kotlin.reflect.jvm.internal.impl.c.b;
import kotlin.reflect.jvm.internal.impl.descriptors.ab;
import kotlin.reflect.jvm.internal.impl.descriptors.aq;
import kotlin.reflect.jvm.internal.impl.descriptors.at;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.descriptors.d.a.e;
import kotlin.reflect.jvm.internal.impl.descriptors.d.a.f;
import kotlin.reflect.jvm.internal.impl.descriptors.d.a.k;
import kotlin.reflect.jvm.internal.impl.descriptors.d.b.j;
import kotlin.reflect.jvm.internal.impl.descriptors.d.b.n;
import kotlin.reflect.jvm.internal.impl.descriptors.g;
import kotlin.reflect.jvm.internal.impl.descriptors.r;
import kotlin.reflect.jvm.internal.impl.descriptors.s;
import kotlin.reflect.jvm.internal.impl.load.kotlin.o;
import kotlin.reflect.jvm.internal.impl.load.kotlin.q;
import kotlin.reflect.jvm.internal.impl.resolve.constants.o;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.t;
@Metadata(bv = {1, 0, 3}, d1 = {"��À\u0001\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0010\u001b\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\u001a\u0012\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H��\u001an\u0010\u0011\u001a\u0004\u0018\u0001H\u0012\"\b\b��\u0010\u0013*\u00020\u0014\"\b\b\u0001\u0010\u0012*\u00020\u00062\n\u0010\u0015\u001a\u0006\u0012\u0002\b\u00030\u00162\u0006\u0010\u0017\u001a\u0002H\u00132\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u001d\u0010\u001e\u001a\u0019\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u0002H\u0013\u0012\u0004\u0012\u0002H\u00120\u001f¢\u0006\u0002\b!H��¢\u0006\u0002\u0010\"\u001a.\u0010#\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00162\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020'2\u0006\u0010)\u001a\u00020*H\u0002\u001a(\u0010#\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00162\u0006\u0010$\u001a\u00020%2\u0006\u0010+\u001a\u00020,2\b\b\u0002\u0010)\u001a\u00020*H\u0002\u001a%\u0010-\u001a\u0002H.\"\u0004\b��\u0010.2\f\u0010/\u001a\b\u0012\u0004\u0012\u0002H.00H\u0080\bø\u0001��¢\u0006\u0002\u00101\u001a\u0014\u00102\u001a\b\u0012\u0002\b\u0003\u0018\u000103*\u0004\u0018\u00010\u000eH��\u001a\u0010\u00104\u001a\u0004\u0018\u000105*\u0004\u0018\u00010\u000eH��\u001a\u0014\u00106\u001a\b\u0012\u0002\b\u0003\u0018\u000107*\u0004\u0018\u00010\u000eH��\u001a\u0012\u00108\u001a\b\u0012\u0004\u0012\u00020:09*\u00020;H��\u001a\u000e\u0010<\u001a\u0004\u0018\u00010:*\u00020=H\u0002\u001a\u0012\u0010>\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0016*\u00020?H��\u001a\u000e\u0010@\u001a\u0004\u0018\u00010A*\u00020BH��\u001a\u001a\u0010C\u001a\u0004\u0018\u00010\u000e*\u0006\u0012\u0002\b\u00030D2\u0006\u0010$\u001a\u00020%H\u0002\"\u0014\u0010��\u001a\u00020\u0001X\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\u0002\u0010\u0003\"\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u0005*\u00020\u00068@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\b\"\u0018\u0010\t\u001a\u00020\n*\u00020\u000b8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\f\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006E"}, d2 = {"JVM_STATIC", "Lkotlin/reflect/jvm/internal/impl/name/FqName;", "getJVM_STATIC", "()Lorg/jetbrains/kotlin/name/FqName;", "instanceReceiverParameter", "Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;", "Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;", "getInstanceReceiverParameter", "(Lorg/jetbrains/kotlin/descriptors/CallableDescriptor;)Lorg/jetbrains/kotlin/descriptors/ReceiverParameterDescriptor;", "isInlineClassType", "", "Lkotlin/reflect/KType;", "(Lkotlin/reflect/KType;)Z", "defaultPrimitiveValue", "", "type", "Ljava/lang/reflect/Type;", "deserializeToDescriptor", "D", "M", "Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;", "moduleAnchor", "Ljava/lang/Class;", "proto", "nameResolver", "Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;", "typeTable", "Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;", "metadataVersion", "Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;", "createDescriptor", "Lkotlin/Function2;", "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;", "Lkotlin/ExtensionFunctionType;", "(Ljava/lang/Class;Lorg/jetbrains/kotlin/protobuf/MessageLite;Lorg/jetbrains/kotlin/metadata/deserialization/NameResolver;Lorg/jetbrains/kotlin/metadata/deserialization/TypeTable;Lorg/jetbrains/kotlin/metadata/deserialization/BinaryVersion;Lkotlin/jvm/functions/Function2;)Lorg/jetbrains/kotlin/descriptors/CallableDescriptor;", "loadClass", "classLoader", "Ljava/lang/ClassLoader;", "packageName", "", "className", "arrayDimensions", "", "kotlinClassId", "Lkotlin/reflect/jvm/internal/impl/name/ClassId;", "reflectionCall", "R", "block", "Lkotlin/Function0;", "(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "asKCallableImpl", "Lkotlin/reflect/jvm/internal/KCallableImpl;", "asKFunctionImpl", "Lkotlin/reflect/jvm/internal/KFunctionImpl;", "asKPropertyImpl", "Lkotlin/reflect/jvm/internal/KPropertyImpl;", "computeAnnotations", "", "", "Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotated;", "toAnnotationInstance", "Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptor;", "toJavaClass", "Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;", "toKVisibility", "Lkotlin/reflect/KVisibility;", "Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;", "toRuntimeValue", "Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValue;", "kotlin-reflection"}, k = 2, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/aj.class */
public final class aj {

    /* renamed from: a  reason: collision with root package name */
    private static final b f36882a = new b("kotlin.jvm.JvmStatic");

    private static final Class<?> a(ClassLoader classLoader, String str, String str2, int i) {
        if (p.a((Object) str, (Object) "kotlin")) {
            switch (str2.hashCode()) {
                case -901856463:
                    if (str2.equals("BooleanArray")) {
                        return boolean[].class;
                    }
                    break;
                case -763279523:
                    if (str2.equals("ShortArray")) {
                        return short[].class;
                    }
                    break;
                case -755911549:
                    if (str2.equals("CharArray")) {
                        return char[].class;
                    }
                    break;
                case -74930671:
                    if (str2.equals("ByteArray")) {
                        return byte[].class;
                    }
                    break;
                case 22374632:
                    if (str2.equals("DoubleArray")) {
                        return double[].class;
                    }
                    break;
                case 63537721:
                    if (str2.equals("Array")) {
                        return Object[].class;
                    }
                    break;
                case 601811914:
                    if (str2.equals("IntArray")) {
                        return int[].class;
                    }
                    break;
                case 948852093:
                    if (str2.equals("FloatArray")) {
                        return float[].class;
                    }
                    break;
                case 2104330525:
                    if (str2.equals("LongArray")) {
                        return long[].class;
                    }
                    break;
            }
        }
        String str3 = str + '.' + kotlin.h.p.a(str2, '.', '$', false);
        String str4 = str3;
        if (i > 0) {
            str4 = kotlin.h.p.a((CharSequence) "[", i) + 'L' + str3 + ';';
        }
        return e.a(classLoader, str4);
    }

    private static final Class<?> a(ClassLoader classLoader, a aVar, int i) {
        c cVar = c.f37237a;
        kotlin.reflect.jvm.internal.impl.c.c b2 = aVar.f().b();
        p.b(b2, "kotlinClassId.asSingleFqName().toUnsafe()");
        a a2 = c.a(b2);
        if (a2 != null) {
            aVar = a2;
        }
        String a3 = aVar.a().a();
        p.b(a3, "javaClassId.packageFqName.asString()");
        String a4 = aVar.b().a();
        p.b(a4, "javaClassId.relativeClassName.asString()");
        return a(classLoader, a3, a4, i);
    }

    public static final Class<?> a(d toJavaClass) {
        p.d(toJavaClass, "$this$toJavaClass");
        at source = toJavaClass.getSource();
        p.b(source, "source");
        if (source instanceof q) {
            o oVar = ((q) source).f38091b;
            Objects.requireNonNull(oVar, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.runtime.components.ReflectKotlinClass");
            return ((f) oVar).f37437b;
        } else if (source instanceof k.a) {
            n nVar = ((k.a) source).f37447b;
            Objects.requireNonNull(nVar, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.runtime.structure.ReflectJavaClass");
            return ((j) nVar).f37467a;
        } else {
            a a2 = kotlin.reflect.jvm.internal.impl.resolve.b.a.a((g) toJavaClass);
            if (a2 == null) {
                return null;
            }
            return a(kotlin.reflect.jvm.internal.impl.descriptors.d.b.b.a(toJavaClass.getClass()), a2, 0);
        }
    }

    public static final Object a(Type type) {
        p.d(type, "type");
        if (!(type instanceof Class) || !((Class) type).isPrimitive()) {
            return null;
        }
        if (p.a(type, Boolean.TYPE)) {
            return Boolean.FALSE;
        }
        if (p.a(type, Character.TYPE)) {
            return (char) 0;
        }
        if (p.a(type, Byte.TYPE)) {
            return (byte) 0;
        }
        if (p.a(type, Short.TYPE)) {
            return (short) 0;
        }
        if (p.a(type, Integer.TYPE)) {
            return 0;
        }
        if (p.a(type, Float.TYPE)) {
            return Float.valueOf((float) BitmapDescriptorFactory.HUE_RED);
        }
        if (p.a(type, Long.TYPE)) {
            return 0L;
        }
        if (p.a(type, Double.TYPE)) {
            return Double.valueOf(0.0d);
        }
        if (p.a(type, Void.TYPE)) {
            throw new IllegalStateException("Parameter with void type is illegal");
        }
        throw new UnsupportedOperationException("Unknown primitive: ".concat(String.valueOf(type)));
    }

    private static final Object a(kotlin.reflect.jvm.internal.impl.resolve.constants.g<?> gVar, ClassLoader classLoader) {
        Object obj;
        if (gVar instanceof kotlin.reflect.jvm.internal.impl.resolve.constants.a) {
            return a(((kotlin.reflect.jvm.internal.impl.resolve.constants.a) gVar).a());
        }
        if (gVar instanceof kotlin.reflect.jvm.internal.impl.resolve.constants.b) {
            List<? extends kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>> a2 = ((kotlin.reflect.jvm.internal.impl.resolve.constants.b) gVar).a();
            ArrayList arrayList = new ArrayList(kotlin.a.n.a((Iterable) a2, 10));
            Iterator<T> it2 = a2.iterator();
            while (it2.hasNext()) {
                arrayList.add(a((kotlin.reflect.jvm.internal.impl.resolve.constants.g) it2.next(), classLoader));
            }
            obj = arrayList.toArray(new Object[0]);
            Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlin.Array<T>");
        } else if (gVar instanceof kotlin.reflect.jvm.internal.impl.resolve.constants.j) {
            kotlin.n<? extends a, ? extends kotlin.reflect.jvm.internal.impl.c.e> a3 = ((kotlin.reflect.jvm.internal.impl.resolve.constants.j) gVar).a();
            a aVar = (a) a3.f36810a;
            kotlin.reflect.jvm.internal.impl.c.e eVar = (kotlin.reflect.jvm.internal.impl.c.e) a3.f36811b;
            Class<?> a4 = a(classLoader, aVar, 0);
            if (a4 == null) {
                return null;
            }
            Objects.requireNonNull(a4, "null cannot be cast to non-null type java.lang.Class<out kotlin.Enum<*>>");
            return Enum.valueOf(a4, eVar.a());
        } else if (gVar instanceof kotlin.reflect.jvm.internal.impl.resolve.constants.o) {
            o.b a5 = ((kotlin.reflect.jvm.internal.impl.resolve.constants.o) gVar).a();
            if (a5 instanceof o.b.C0709b) {
                o.b.C0709b bVar = (o.b.C0709b) a5;
                return a(classLoader, bVar.f38261a.f38249a, bVar.f38261a.f38250b);
            } else if (a5 instanceof o.b.a) {
                g declarationDescriptor = ((o.b.a) a5).f38260a.getConstructor().getDeclarationDescriptor();
                g gVar2 = declarationDescriptor;
                if (!(declarationDescriptor instanceof d)) {
                    gVar2 = null;
                }
                d dVar = (d) gVar2;
                if (dVar != null) {
                    return a(dVar);
                }
                return null;
            } else {
                throw new NoWhenBranchMatchedException();
            }
        } else if ((gVar instanceof kotlin.reflect.jvm.internal.impl.resolve.constants.k) || (gVar instanceof kotlin.reflect.jvm.internal.impl.resolve.constants.q)) {
            return null;
        } else {
            obj = gVar.a();
        }
        return obj;
    }

    private static final Annotation a(kotlin.reflect.jvm.internal.impl.descriptors.a.c cVar) {
        d a2 = kotlin.reflect.jvm.internal.impl.resolve.b.a.a(cVar);
        Class<?> a3 = a2 != null ? a(a2) : null;
        Class<?> cls = a3;
        if (!(a3 instanceof Class)) {
            cls = null;
        }
        if (cls == null) {
            return null;
        }
        Set<Map.Entry<kotlin.reflect.jvm.internal.impl.c.e, kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>>> entrySet = cVar.c().entrySet();
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = entrySet.iterator();
        while (it2.hasNext()) {
            Map.Entry entry = (Map.Entry) it2.next();
            kotlin.reflect.jvm.internal.impl.c.e eVar = (kotlin.reflect.jvm.internal.impl.c.e) entry.getKey();
            kotlin.reflect.jvm.internal.impl.resolve.constants.g gVar = (kotlin.reflect.jvm.internal.impl.resolve.constants.g) entry.getValue();
            ClassLoader classLoader = cls.getClassLoader();
            p.b(classLoader, "annotationClass.classLoader");
            Object a4 = a(gVar, classLoader);
            kotlin.n a5 = a4 != null ? t.a(eVar.a(), a4) : null;
            if (a5 != null) {
                arrayList.add(a5);
            }
        }
        return (Annotation) kotlin.reflect.jvm.internal.a.b.a(cls, ai.a(arrayList));
    }

    public static final List<Annotation> a(kotlin.reflect.jvm.internal.impl.descriptors.a.a computeAnnotations) {
        p.d(computeAnnotations, "$this$computeAnnotations");
        kotlin.reflect.jvm.internal.impl.descriptors.a.g annotations = computeAnnotations.getAnnotations();
        ArrayList arrayList = new ArrayList();
        for (kotlin.reflect.jvm.internal.impl.descriptors.a.c cVar : annotations) {
            at d2 = cVar.d();
            Annotation annotation = null;
            if (d2 instanceof kotlin.reflect.jvm.internal.impl.descriptors.d.a.b) {
                annotation = ((kotlin.reflect.jvm.internal.impl.descriptors.d.a.b) d2).f37433b;
            } else if (d2 instanceof k.a) {
                n nVar = ((k.a) d2).f37447b;
                n nVar2 = nVar;
                if (!(nVar instanceof kotlin.reflect.jvm.internal.impl.descriptors.d.b.c)) {
                    nVar2 = null;
                }
                kotlin.reflect.jvm.internal.impl.descriptors.d.b.c cVar2 = (kotlin.reflect.jvm.internal.impl.descriptors.d.b.c) nVar2;
                if (cVar2 != null) {
                    annotation = cVar2.f37459a;
                }
            } else {
                annotation = a(cVar);
            }
            if (annotation != null) {
                arrayList.add(annotation);
            }
        }
        return arrayList;
    }

    public static final KVisibility a(s toKVisibility) {
        p.d(toKVisibility, "$this$toKVisibility");
        if (p.a(toKVisibility, r.e)) {
            return KVisibility.PUBLIC;
        }
        if (p.a(toKVisibility, r.f37592c)) {
            return KVisibility.PROTECTED;
        }
        if (p.a(toKVisibility, r.f37593d)) {
            return KVisibility.INTERNAL;
        }
        if (p.a(toKVisibility, r.f37590a) || p.a(toKVisibility, r.f37591b)) {
            return KVisibility.PRIVATE;
        }
        return null;
    }

    public static final b a() {
        return f36882a;
    }

    public static final <M extends kotlin.reflect.jvm.internal.impl.protobuf.p, D extends kotlin.reflect.jvm.internal.impl.descriptors.a> D a(Class<?> moduleAnchor, M proto, kotlin.reflect.jvm.internal.impl.b.b.c nameResolver, kotlin.reflect.jvm.internal.impl.b.b.g typeTable, kotlin.reflect.jvm.internal.impl.b.b.a metadataVersion, Function2<? super kotlin.reflect.jvm.internal.impl.serialization.deserialization.t, ? super M, ? extends D> createDescriptor) {
        List<a.r> typeParameters;
        p.d(moduleAnchor, "moduleAnchor");
        p.d(proto, "proto");
        p.d(nameResolver, "nameResolver");
        p.d(typeTable, "typeTable");
        p.d(metadataVersion, "metadataVersion");
        p.d(createDescriptor, "createDescriptor");
        kotlin.reflect.jvm.internal.impl.descriptors.d.a.j a2 = ac.a(moduleAnchor);
        if (proto instanceof a.h) {
            typeParameters = ((a.h) proto).g;
        } else if (proto instanceof a.m) {
            typeParameters = ((a.m) proto).g;
        } else {
            throw new IllegalStateException("Unsupported message: ".concat(String.valueOf(proto)).toString());
        }
        kotlin.reflect.jvm.internal.impl.serialization.deserialization.j jVar = a2.f37444b;
        ab abVar = a2.f37444b.f38442b;
        i.a aVar = i.f37162a;
        i iVar = i.f37163c;
        p.b(typeParameters, "typeParameters");
        return (D) ((kotlin.reflect.jvm.internal.impl.descriptors.a) createDescriptor.invoke(new kotlin.reflect.jvm.internal.impl.serialization.deserialization.t(new kotlin.reflect.jvm.internal.impl.serialization.deserialization.k(jVar, nameResolver, abVar, typeTable, iVar, metadataVersion, null, null, typeParameters)), proto));
    }

    public static final aq a(kotlin.reflect.jvm.internal.impl.descriptors.a instanceReceiverParameter) {
        p.d(instanceReceiverParameter, "$this$instanceReceiverParameter");
        if (instanceReceiverParameter.getDispatchReceiverParameter() == null) {
            return null;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.k containingDeclaration = instanceReceiverParameter.getContainingDeclaration();
        Objects.requireNonNull(containingDeclaration, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
        return ((d) containingDeclaration).getThisAsReceiverParameter();
    }

    public static final l a(Object obj) {
        boolean z = obj instanceof l;
        KCallable compute = null;
        l lVar = (l) (!z ? null : obj);
        l lVar2 = lVar;
        if (lVar == null) {
            Object obj2 = obj;
            if (!(obj instanceof m)) {
                obj2 = null;
            }
            m mVar = (m) obj2;
            compute = mVar != null ? mVar.compute() : null;
            if (!(compute instanceof l)) {
            }
            lVar2 = (l) compute;
        }
        return lVar2;
    }

    public static final boolean a(KType isInlineClassType) {
        KotlinType kotlinType;
        p.d(isInlineClassType, "$this$isInlineClassType");
        KType kType = isInlineClassType;
        if (!(isInlineClassType instanceof w)) {
            kType = null;
        }
        w wVar = (w) kType;
        return (wVar == null || (kotlinType = wVar.f38615b) == null || !kotlin.reflect.jvm.internal.impl.resolve.e.a(kotlinType)) ? false : true;
    }

    public static final u<?> b(Object obj) {
        boolean z = obj instanceof u;
        KCallable compute = null;
        u<?> uVar = (u) (!z ? null : obj);
        u<?> uVar2 = uVar;
        if (uVar == null) {
            Object obj2 = obj;
            if (!(obj instanceof y)) {
                obj2 = null;
            }
            y yVar = (y) obj2;
            compute = yVar != null ? yVar.compute() : null;
            if (!(compute instanceof u)) {
            }
            uVar2 = (u) compute;
        }
        return uVar2;
    }
}
