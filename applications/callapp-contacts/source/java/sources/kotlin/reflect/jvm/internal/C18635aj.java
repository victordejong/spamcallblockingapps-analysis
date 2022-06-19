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
import kotlin.C18538n;
import kotlin.C20126t;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.AbstractC18533y;
import kotlin.jvm.internal.C18521m;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18247ai;
import kotlin.p518a.C18282n;
import kotlin.p532h.C18425p;
import kotlin.reflect.KType;
import kotlin.reflect.KVisibility;
import kotlin.reflect.jvm.internal.impl.builtins.p544a.C18894c;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18999ab;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19020aq;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19026at;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19213s;
import kotlin.reflect.jvm.internal.impl.descriptors.C19200r;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18975a;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18977c;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.descriptors.p550d.p551a.C19072b;
import kotlin.reflect.jvm.internal.impl.descriptors.p550d.p551a.C19075e;
import kotlin.reflect.jvm.internal.impl.descriptors.p550d.p551a.C19076f;
import kotlin.reflect.jvm.internal.impl.descriptors.p550d.p551a.C19081j;
import kotlin.reflect.jvm.internal.impl.descriptors.p550d.p551a.C19083k;
import kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b.AbstractC19112n;
import kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b.C19088b;
import kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b.C19091c;
import kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b.C19100j;
import kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19646o;
import kotlin.reflect.jvm.internal.impl.load.kotlin.C19653q;
import kotlin.reflect.jvm.internal.impl.p539b.C18702a;
import kotlin.reflect.jvm.internal.impl.p539b.p541b.AbstractC18806a;
import kotlin.reflect.jvm.internal.impl.p539b.p541b.AbstractC18813c;
import kotlin.reflect.jvm.internal.impl.p539b.p541b.C18818g;
import kotlin.reflect.jvm.internal.impl.p539b.p541b.C18824i;
import kotlin.reflect.jvm.internal.impl.p545c.C18960a;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.p545c.C18962c;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p;
import kotlin.reflect.jvm.internal.impl.resolve.C19810e;
import kotlin.reflect.jvm.internal.impl.resolve.constants.AbstractC19781g;
import kotlin.reflect.jvm.internal.impl.resolve.constants.AbstractC19787k;
import kotlin.reflect.jvm.internal.impl.resolve.constants.C19775a;
import kotlin.reflect.jvm.internal.impl.resolve.constants.C19776b;
import kotlin.reflect.jvm.internal.impl.resolve.constants.C19786j;
import kotlin.reflect.jvm.internal.impl.resolve.constants.C19793o;
import kotlin.reflect.jvm.internal.impl.resolve.constants.C19799q;
import kotlin.reflect.jvm.internal.impl.resolve.p564b.C19756a;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.C19948j;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.C19949k;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.C19963t;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.p535a.C18577b;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��À\u0001\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0010\u001b\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\u001a\u0012\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H��\u001an\u0010\u0011\u001a\u0004\u0018\u0001H\u0012\"\b\b��\u0010\u0013*\u00020\u0014\"\b\b\u0001\u0010\u0012*\u00020\u00062\n\u0010\u0015\u001a\u0006\u0012\u0002\b\u00030\u00162\u0006\u0010\u0017\u001a\u0002H\u00132\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u001d\u0010\u001e\u001a\u0019\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u0002H\u0013\u0012\u0004\u0012\u0002H\u00120\u001f¢\u0006\u0002\b!H��¢\u0006\u0002\u0010\"\u001a.\u0010#\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00162\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020'2\u0006\u0010)\u001a\u00020*H\u0002\u001a(\u0010#\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00162\u0006\u0010$\u001a\u00020%2\u0006\u0010+\u001a\u00020,2\b\b\u0002\u0010)\u001a\u00020*H\u0002\u001a%\u0010-\u001a\u0002H.\"\u0004\b��\u0010.2\f\u0010/\u001a\b\u0012\u0004\u0012\u0002H.00H\u0080\bø\u0001��¢\u0006\u0002\u00101\u001a\u0014\u00102\u001a\b\u0012\u0002\b\u0003\u0018\u000103*\u0004\u0018\u00010\u000eH��\u001a\u0010\u00104\u001a\u0004\u0018\u000105*\u0004\u0018\u00010\u000eH��\u001a\u0014\u00106\u001a\b\u0012\u0002\b\u0003\u0018\u000107*\u0004\u0018\u00010\u000eH��\u001a\u0012\u00108\u001a\b\u0012\u0004\u0012\u00020:09*\u00020;H��\u001a\u000e\u0010<\u001a\u0004\u0018\u00010:*\u00020=H\u0002\u001a\u0012\u0010>\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0016*\u00020?H��\u001a\u000e\u0010@\u001a\u0004\u0018\u00010A*\u00020BH��\u001a\u001a\u0010C\u001a\u0004\u0018\u00010\u000e*\u0006\u0012\u0002\b\u00030D2\u0006\u0010$\u001a\u00020%H\u0002\"\u0014\u0010��\u001a\u00020\u0001X\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\u0002\u0010\u0003\"\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u0005*\u00020\u00068@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\b\"\u0018\u0010\t\u001a\u00020\n*\u00020\u000b8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\f\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006E"}, m4298d2 = {"JVM_STATIC", "Lkotlin/reflect/jvm/internal/impl/name/FqName;", "getJVM_STATIC", "()Lorg/jetbrains/kotlin/name/FqName;", "instanceReceiverParameter", "Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;", "Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;", "getInstanceReceiverParameter", "(Lorg/jetbrains/kotlin/descriptors/CallableDescriptor;)Lorg/jetbrains/kotlin/descriptors/ReceiverParameterDescriptor;", "isInlineClassType", "", "Lkotlin/reflect/KType;", "(Lkotlin/reflect/KType;)Z", "defaultPrimitiveValue", "", "type", "Ljava/lang/reflect/Type;", "deserializeToDescriptor", "D", "M", "Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;", "moduleAnchor", "Ljava/lang/Class;", "proto", "nameResolver", "Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;", "typeTable", "Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;", "metadataVersion", "Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;", "createDescriptor", "Lkotlin/Function2;", "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;", "Lkotlin/ExtensionFunctionType;", "(Ljava/lang/Class;Lorg/jetbrains/kotlin/protobuf/MessageLite;Lorg/jetbrains/kotlin/metadata/deserialization/NameResolver;Lorg/jetbrains/kotlin/metadata/deserialization/TypeTable;Lorg/jetbrains/kotlin/metadata/deserialization/BinaryVersion;Lkotlin/jvm/functions/Function2;)Lorg/jetbrains/kotlin/descriptors/CallableDescriptor;", "loadClass", "classLoader", "Ljava/lang/ClassLoader;", "packageName", "", "className", "arrayDimensions", "", "kotlinClassId", "Lkotlin/reflect/jvm/internal/impl/name/ClassId;", "reflectionCall", "R", "block", "Lkotlin/Function0;", "(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "asKCallableImpl", "Lkotlin/reflect/jvm/internal/KCallableImpl;", "asKFunctionImpl", "Lkotlin/reflect/jvm/internal/KFunctionImpl;", "asKPropertyImpl", "Lkotlin/reflect/jvm/internal/KPropertyImpl;", "computeAnnotations", "", "", "Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotated;", "toAnnotationInstance", "Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptor;", "toJavaClass", "Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;", "toKVisibility", "Lkotlin/reflect/KVisibility;", "Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;", "toRuntimeValue", "Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValue;", "kotlin-reflection"}, m4297k = 2, m4296mv = {1, 4, 1})
/* renamed from: kotlin.reflect.jvm.internal.aj */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/aj.class */
public final class C18635aj {

    /* renamed from: a */
    private static final C18961b f63704a = new C18961b("kotlin.jvm.JvmStatic");

    /* renamed from: a */
    private static final Class<?> m3766a(ClassLoader classLoader, String str, String str2, int i) {
        if (C18524p.m3850a((Object) str, (Object) "kotlin")) {
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
        String str3 = str + '.' + C18425p.m3964a(str2, '.', '$', false);
        String str4 = str3;
        if (i > 0) {
            str4 = C18425p.m3965a((CharSequence) "[", i) + 'L' + str3 + ';';
        }
        return C19075e.m2668a(classLoader, str4);
    }

    /* renamed from: a */
    private static final Class<?> m3765a(ClassLoader classLoader, C18960a c18960a, int i) {
        C18894c c18894c = C18894c.f64450a;
        C18962c m2743b = c18960a.m2748f().m2743b();
        C18524p.m3843b(m2743b, "kotlinClassId.asSingleFqName().toUnsafe()");
        C18960a m2903a = C18894c.m2903a(m2743b);
        if (m2903a != null) {
            c18960a = m2903a;
        }
        String m2746a = c18960a.m2758a().m2746a();
        C18524p.m3843b(m2746a, "javaClassId.packageFqName.asString()");
        String m2746a2 = c18960a.m2752b().m2746a();
        C18524p.m3843b(m2746a2, "javaClassId.relativeClassName.asString()");
        return m3766a(classLoader, m2746a, m2746a2, i);
    }

    /* renamed from: a */
    public static final Class<?> m3758a(AbstractC19070d toJavaClass) {
        C18524p.m3840d(toJavaClass, "$this$toJavaClass");
        AbstractC19026at source = toJavaClass.getSource();
        C18524p.m3843b(source, "source");
        if (source instanceof C19653q) {
            AbstractC19646o abstractC19646o = ((C19653q) source).f65760b;
            Objects.requireNonNull(abstractC19646o, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.runtime.components.ReflectKotlinClass");
            return ((C19076f) abstractC19646o).f64795b;
        } else if (source instanceof C19083k.C19084a) {
            AbstractC19112n abstractC19112n = ((C19083k.C19084a) source).f64805b;
            Objects.requireNonNull(abstractC19112n, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.runtime.structure.ReflectJavaClass");
            return ((C19100j) abstractC19112n).f64826a;
        } else {
            C18960a m1532a = C19756a.m1532a((AbstractC19129g) toJavaClass);
            if (m1532a != null) {
                return m3765a(C19088b.m2659a(toJavaClass.getClass()), m1532a, 0);
            }
            return null;
        }
    }

    /* renamed from: a */
    public static final Object m3763a(Type type) {
        C18524p.m3840d(type, "type");
        if (!(type instanceof Class) || !((Class) type).isPrimitive()) {
            return null;
        }
        if (C18524p.m3850a(type, Boolean.TYPE)) {
            return Boolean.FALSE;
        }
        if (C18524p.m3850a(type, Character.TYPE)) {
            return (char) 0;
        }
        if (C18524p.m3850a(type, Byte.TYPE)) {
            return (byte) 0;
        }
        if (C18524p.m3850a(type, Short.TYPE)) {
            return (short) 0;
        }
        if (C18524p.m3850a(type, Integer.TYPE)) {
            return 0;
        }
        if (C18524p.m3850a(type, Float.TYPE)) {
            return Float.valueOf((float) BitmapDescriptorFactory.HUE_RED);
        }
        if (C18524p.m3850a(type, Long.TYPE)) {
            return 0L;
        }
        if (C18524p.m3850a(type, Double.TYPE)) {
            return Double.valueOf(0.0d);
        }
        if (!C18524p.m3850a(type, Void.TYPE)) {
            throw new UnsupportedOperationException("Unknown primitive: ".concat(String.valueOf(type)));
        }
        throw new IllegalStateException("Parameter with void type is illegal");
    }

    /* renamed from: a */
    private static final Object m3756a(AbstractC19781g<?> abstractC19781g, ClassLoader classLoader) {
        Object[] objArr;
        if (abstractC19781g instanceof C19775a) {
            return m3760a(((C19775a) abstractC19781g).mo1489a());
        }
        if (abstractC19781g instanceof C19776b) {
            List<? extends AbstractC19781g<?>> a = ((C19776b) abstractC19781g).mo1489a();
            ArrayList arrayList = new ArrayList(C18282n.m4163a((Iterable) a, 10));
            Iterator<T> it2 = a.iterator();
            while (it2.hasNext()) {
                arrayList.add(m3756a((AbstractC19781g) it2.next(), classLoader));
            }
            Object[] array = arrayList.toArray(new Object[0]);
            Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
            objArr = array;
        } else if (abstractC19781g instanceof C19786j) {
            C18538n<? extends C18960a, ? extends C18966e> a2 = ((C19786j) abstractC19781g).mo1489a();
            C18960a c18960a = (C18960a) a2.f63624a;
            C18966e c18966e = (C18966e) a2.f63625b;
            Class<?> m3765a = m3765a(classLoader, c18960a, 0);
            if (m3765a == null) {
                return null;
            }
            Objects.requireNonNull(m3765a, "null cannot be cast to non-null type java.lang.Class<out kotlin.Enum<*>>");
            return Enum.valueOf(m3765a, c18966e.m2721a());
        } else if (abstractC19781g instanceof C19793o) {
            C19793o.AbstractC19795b a3 = ((C19793o) abstractC19781g).mo1489a();
            if (a3 instanceof C19793o.AbstractC19795b.C19797b) {
                C19793o.AbstractC19795b.C19797b c19797b = (C19793o.AbstractC19795b.C19797b) a3;
                return m3765a(classLoader, c19797b.f65976a.f65964a, c19797b.f65976a.f65965b);
            } else if (!(a3 instanceof C19793o.AbstractC19795b.C19796a)) {
                throw new NoWhenBranchMatchedException();
            } else {
                AbstractC19129g declarationDescriptor = ((C19793o.AbstractC19795b.C19796a) a3).f65975a.getConstructor().getDeclarationDescriptor();
                AbstractC19129g abstractC19129g = declarationDescriptor;
                if (!(declarationDescriptor instanceof AbstractC19070d)) {
                    abstractC19129g = null;
                }
                AbstractC19070d abstractC19070d = (AbstractC19070d) abstractC19129g;
                if (abstractC19070d == null) {
                    return null;
                }
                return m3758a(abstractC19070d);
            }
        } else if ((abstractC19781g instanceof AbstractC19787k) || (abstractC19781g instanceof C19799q)) {
            return null;
        } else {
            objArr = abstractC19781g.mo1489a();
        }
        return objArr;
    }

    /* renamed from: a */
    private static final Annotation m3760a(AbstractC18977c abstractC18977c) {
        AbstractC19070d m1539a = C19756a.m1539a(abstractC18977c);
        Class<?> m3758a = m1539a != null ? m3758a(m1539a) : null;
        Class<?> cls = m3758a;
        if (!(m3758a instanceof Class)) {
            cls = null;
        }
        if (cls == null) {
            return null;
        }
        Set<Map.Entry<C18966e, AbstractC19781g<?>>> entrySet = abstractC18977c.mo2041c().entrySet();
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = entrySet.iterator();
        while (it2.hasNext()) {
            Map.Entry entry = (Map.Entry) it2.next();
            C18966e c18966e = (C18966e) entry.getKey();
            AbstractC19781g abstractC19781g = (AbstractC19781g) entry.getValue();
            ClassLoader classLoader = cls.getClassLoader();
            C18524p.m3843b(classLoader, "annotationClass.classLoader");
            Object m3756a = m3756a(abstractC19781g, classLoader);
            C18538n m1103a = m3756a != null ? C20126t.m1103a(c18966e.m2721a(), m3756a) : null;
            if (m1103a != null) {
                arrayList.add(m1103a);
            }
        }
        return (Annotation) C18577b.m3823a(cls, C18247ai.m4256a(arrayList));
    }

    /* renamed from: a */
    public static final List<Annotation> m3761a(AbstractC18975a computeAnnotations) {
        Annotation annotation;
        C18524p.m3840d(computeAnnotations, "$this$computeAnnotations");
        AbstractC18983g annotations = computeAnnotations.getAnnotations();
        ArrayList arrayList = new ArrayList();
        for (AbstractC18977c abstractC18977c : annotations) {
            AbstractC19026at mo2040d = abstractC18977c.mo2040d();
            if (mo2040d instanceof C19072b) {
                annotation = ((C19072b) mo2040d).f64791b;
            } else if (mo2040d instanceof C19083k.C19084a) {
                AbstractC19112n abstractC19112n = ((C19083k.C19084a) mo2040d).f64805b;
                AbstractC19112n abstractC19112n2 = abstractC19112n;
                if (!(abstractC19112n instanceof C19091c)) {
                    abstractC19112n2 = null;
                }
                C19091c c19091c = (C19091c) abstractC19112n2;
                annotation = null;
                if (c19091c != null) {
                    annotation = c19091c.f64817a;
                }
            } else {
                annotation = m3760a(abstractC18977c);
            }
            if (annotation != null) {
                arrayList.add(annotation);
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public static final KVisibility m3757a(AbstractC19213s toKVisibility) {
        C18524p.m3840d(toKVisibility, "$this$toKVisibility");
        if (C18524p.m3850a(toKVisibility, C19200r.f65006e)) {
            return KVisibility.PUBLIC;
        }
        if (C18524p.m3850a(toKVisibility, C19200r.f65004c)) {
            return KVisibility.PROTECTED;
        }
        if (C18524p.m3850a(toKVisibility, C19200r.f65005d)) {
            return KVisibility.INTERNAL;
        }
        if (!C18524p.m3850a(toKVisibility, C19200r.f65002a) && !C18524p.m3850a(toKVisibility, C19200r.f65003b)) {
            return null;
        }
        return KVisibility.PRIVATE;
    }

    /* renamed from: a */
    public static final C18961b m3768a() {
        return f63704a;
    }

    /* renamed from: a */
    public static final <M extends AbstractC19705p, D extends AbstractC18973a> D m3767a(Class<?> moduleAnchor, M proto, AbstractC18813c nameResolver, C18818g typeTable, AbstractC18806a metadataVersion, Function2<? super C19963t, ? super M, ? extends D> createDescriptor) {
        List<C18702a.C18779r> list;
        C18524p.m3840d(moduleAnchor, "moduleAnchor");
        C18524p.m3840d(proto, "proto");
        C18524p.m3840d(nameResolver, "nameResolver");
        C18524p.m3840d(typeTable, "typeTable");
        C18524p.m3840d(metadataVersion, "metadataVersion");
        C18524p.m3840d(createDescriptor, "createDescriptor");
        C19081j m3799a = C18621ac.m3799a(moduleAnchor);
        if (proto instanceof C18702a.C18741h) {
            list = ((C18702a.C18741h) proto).f63977g;
        } else if (!(proto instanceof C18702a.C18754m)) {
            throw new IllegalStateException("Unsupported message: ".concat(String.valueOf(proto)).toString());
        } else {
            list = ((C18702a.C18754m) proto).f64040g;
        }
        C19948j c19948j = m3799a.f64802b;
        AbstractC18999ab abstractC18999ab = m3799a.f64802b.f66250b;
        C18824i.C18825a c18825a = C18824i.f64325a;
        C18824i c18824i = C18824i.f64326c;
        List<C18702a.C18779r> typeParameters = list;
        C18524p.m3843b(typeParameters, "typeParameters");
        return createDescriptor.invoke(new C19963t(new C19949k(c19948j, nameResolver, abstractC18999ab, typeTable, c18824i, metadataVersion, null, null, list)), proto);
    }

    /* renamed from: a */
    public static final AbstractC19020aq m3759a(AbstractC18973a instanceReceiverParameter) {
        C18524p.m3840d(instanceReceiverParameter, "$this$instanceReceiverParameter");
        if (instanceReceiverParameter.getDispatchReceiverParameter() != null) {
            AbstractC19193k containingDeclaration = instanceReceiverParameter.getContainingDeclaration();
            Objects.requireNonNull(containingDeclaration, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
            return ((AbstractC19070d) containingDeclaration).getThisAsReceiverParameter();
        }
        return null;
    }

    /* renamed from: a */
    public static final C20042l m3764a(Object obj) {
        C20042l c20042l = (C20042l) (!(obj instanceof C20042l) ? null : obj);
        C20042l c20042l2 = c20042l;
        if (c20042l == null) {
            Object obj2 = obj;
            if (!(obj instanceof C18521m)) {
                obj2 = null;
            }
            C18521m c18521m = (C18521m) obj2;
            C20042l compute = c18521m != null ? c18521m.compute() : null;
            if (!(compute instanceof C20042l)) {
                compute = null;
            }
            c20042l2 = compute;
        }
        return c20042l2;
    }

    /* renamed from: a */
    public static final boolean m3762a(KType isInlineClassType) {
        KotlinType kotlinType;
        C18524p.m3840d(isInlineClassType, "$this$isInlineClassType");
        KType kType = isInlineClassType;
        if (!(isInlineClassType instanceof C20094w)) {
            kType = null;
        }
        C20094w c20094w = (C20094w) kType;
        return (c20094w == null || (kotlinType = c20094w.f66488b) == null || !C19810e.m1443a(kotlinType)) ? false : true;
    }

    /* renamed from: b */
    public static final AbstractC20079u<?> m3755b(Object obj) {
        AbstractC20079u<?> abstractC20079u = (AbstractC20079u) (!(obj instanceof AbstractC20079u) ? null : obj);
        AbstractC20079u<?> abstractC20079u2 = abstractC20079u;
        if (abstractC20079u == null) {
            Object obj2 = obj;
            if (!(obj instanceof AbstractC18533y)) {
                obj2 = null;
            }
            AbstractC18533y abstractC18533y = (AbstractC18533y) obj2;
            AbstractC20079u<?> compute = abstractC18533y != null ? abstractC18533y.compute() : null;
            if (!(compute instanceof AbstractC20079u)) {
                compute = null;
            }
            abstractC20079u2 = compute;
        }
        return abstractC20079u2;
    }
}
