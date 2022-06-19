package kotlin.jvm.internal;

import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.AbstractC18342d;
import kotlin.C18538n;
import kotlin.C20126t;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.jvm.C18458a;
import kotlin.jvm.C18459b;
import kotlin.jvm.functions.AbstractC18460a;
import kotlin.jvm.functions.AbstractC18461b;
import kotlin.jvm.functions.AbstractC18462c;
import kotlin.jvm.functions.AbstractC18463d;
import kotlin.jvm.functions.AbstractC18464e;
import kotlin.jvm.functions.AbstractC18465f;
import kotlin.jvm.functions.AbstractC18466g;
import kotlin.jvm.functions.AbstractC18467h;
import kotlin.jvm.functions.AbstractC18468i;
import kotlin.jvm.functions.AbstractC18469j;
import kotlin.jvm.functions.AbstractC18470k;
import kotlin.jvm.functions.AbstractC18471l;
import kotlin.jvm.functions.AbstractC18472m;
import kotlin.jvm.functions.AbstractC18473n;
import kotlin.jvm.functions.AbstractC18474o;
import kotlin.jvm.functions.AbstractC18475p;
import kotlin.jvm.functions.AbstractC18476q;
import kotlin.jvm.functions.AbstractC18477r;
import kotlin.jvm.functions.AbstractC18478s;
import kotlin.jvm.functions.AbstractC18479t;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.p518a.C18247ai;
import kotlin.p518a.C18282n;
import kotlin.p532h.C18425p;
import kotlin.reflect.AbstractC18551c;
import kotlin.reflect.KType;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u001b\n\u0002\b\u0003\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0001\n��\n\u0002\u0010\b\n\u0002\b\u0005\u0018�� M2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001MB\u0011\u0012\n\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0005¢\u0006\u0002\u0010\u0006J\u0013\u0010D\u001a\u00020\u00122\b\u0010E\u001a\u0004\u0018\u00010\u0002H\u0096\u0002J\b\u0010F\u001a\u00020GH\u0002J\b\u0010H\u001a\u00020IH\u0016J\u0012\u0010J\u001a\u00020\u00122\b\u0010K\u001a\u0004\u0018\u00010\u0002H\u0017J\b\u0010L\u001a\u00020/H\u0016R\u001a\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR \u0010\f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u000e0\r8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u00128VX\u0097\u0004¢\u0006\f\u0012\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0011\u0010\u0015R\u001a\u0010\u0016\u001a\u00020\u00128VX\u0097\u0004¢\u0006\f\u0012\u0004\b\u0017\u0010\u0014\u001a\u0004\b\u0016\u0010\u0015R\u001a\u0010\u0018\u001a\u00020\u00128VX\u0097\u0004¢\u0006\f\u0012\u0004\b\u0019\u0010\u0014\u001a\u0004\b\u0018\u0010\u0015R\u001a\u0010\u001a\u001a\u00020\u00128VX\u0097\u0004¢\u0006\f\u0012\u0004\b\u001b\u0010\u0014\u001a\u0004\b\u001a\u0010\u0015R\u001a\u0010\u001c\u001a\u00020\u00128VX\u0097\u0004¢\u0006\f\u0012\u0004\b\u001d\u0010\u0014\u001a\u0004\b\u001c\u0010\u0015R\u001a\u0010\u001e\u001a\u00020\u00128VX\u0097\u0004¢\u0006\f\u0012\u0004\b\u001f\u0010\u0014\u001a\u0004\b\u001e\u0010\u0015R\u001a\u0010 \u001a\u00020\u00128VX\u0097\u0004¢\u0006\f\u0012\u0004\b!\u0010\u0014\u001a\u0004\b \u0010\u0015R\u001a\u0010\"\u001a\u00020\u00128VX\u0097\u0004¢\u0006\f\u0012\u0004\b#\u0010\u0014\u001a\u0004\b\"\u0010\u0015R\u0018\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0005X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b$\u0010%R\u001e\u0010&\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030'0\r8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b(\u0010\u0010R\u001e\u0010)\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00010\r8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b*\u0010\u0010R\u0016\u0010+\u001a\u0004\u0018\u00010\u00028VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b,\u0010-R\u0016\u0010.\u001a\u0004\u0018\u00010/8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b0\u00101R(\u00102\u001a\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00020\u00010\b8VX\u0097\u0004¢\u0006\f\u0012\u0004\b3\u0010\u0014\u001a\u0004\b4\u0010\u000bR\u0016\u00105\u001a\u0004\u0018\u00010/8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b6\u00101R \u00107\u001a\b\u0012\u0004\u0012\u0002080\b8VX\u0097\u0004¢\u0006\f\u0012\u0004\b9\u0010\u0014\u001a\u0004\b:\u0010\u000bR \u0010;\u001a\b\u0012\u0004\u0012\u00020<0\b8VX\u0097\u0004¢\u0006\f\u0012\u0004\b=\u0010\u0014\u001a\u0004\b>\u0010\u000bR\u001c\u0010?\u001a\u0004\u0018\u00010@8VX\u0097\u0004¢\u0006\f\u0012\u0004\bA\u0010\u0014\u001a\u0004\bB\u0010C¨\u0006N"}, m4298d2 = {"Lkotlin/jvm/internal/ClassReference;", "Lkotlin/reflect/KClass;", "", "Lkotlin/jvm/internal/ClassBasedDeclarationContainer;", "jClass", "Ljava/lang/Class;", "(Ljava/lang/Class;)V", "annotations", "", "", "getAnnotations", "()Ljava/util/List;", "constructors", "", "Lkotlin/reflect/KFunction;", "getConstructors", "()Ljava/util/Collection;", "isAbstract", "", "isAbstract$annotations", "()V", "()Z", "isCompanion", "isCompanion$annotations", "isData", "isData$annotations", "isFinal", "isFinal$annotations", "isFun", "isFun$annotations", "isInner", "isInner$annotations", "isOpen", "isOpen$annotations", "isSealed", "isSealed$annotations", "getJClass", "()Ljava/lang/Class;", "members", "Lkotlin/reflect/KCallable;", "getMembers", "nestedClasses", "getNestedClasses", "objectInstance", "getObjectInstance", "()Ljava/lang/Object;", "qualifiedName", "", "getQualifiedName", "()Ljava/lang/String;", "sealedSubclasses", "getSealedSubclasses$annotations", "getSealedSubclasses", "simpleName", "getSimpleName", "supertypes", "Lkotlin/reflect/KType;", "getSupertypes$annotations", "getSupertypes", "typeParameters", "Lkotlin/reflect/KTypeParameter;", "getTypeParameters$annotations", "getTypeParameters", "visibility", "Lkotlin/reflect/KVisibility;", "getVisibility$annotations", "getVisibility", "()Lkotlin/reflect/KVisibility;", "equals", "other", "error", "", "hashCode", "", "isInstance", "value", "toString", "Companion", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
/* renamed from: kotlin.jvm.internal.h */
/* loaded from: classes5-dex2jar.jar:kotlin/jvm/internal/h.class */
public final class C18515h implements AbstractC18514g, AbstractC18551c<Object> {

    /* renamed from: a */
    public static final C18516a f63611a = new C18516a(null);

    /* renamed from: c */
    private static final Map<Class<? extends AbstractC18342d<?>>, Integer> f63612c;

    /* renamed from: d */
    private static final HashMap<String, String> f63613d;

    /* renamed from: e */
    private static final HashMap<String, String> f63614e;

    /* renamed from: f */
    private static final HashMap<String, String> f63615f;

    /* renamed from: g */
    private static final Map<String, String> f63616g;

    /* renamed from: b */
    private final Class<?> f63617b;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0014\u0010\u000f\u001a\u0004\u0018\u00010\n2\n\u0010\u0010\u001a\u0006\u0012\u0002\b\u00030\u0005J\u0014\u0010\u0011\u001a\u0004\u0018\u00010\n2\n\u0010\u0010\u001a\u0006\u0012\u0002\b\u00030\u0005J\u001c\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u00012\n\u0010\u0010\u001a\u0006\u0012\u0002\b\u00030\u0005R&\u0010\u0003\u001a\u001a\u0012\u0010\u0012\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030\u00060\u0005\u0012\u0004\u0012\u00020\u00070\u0004X\u0082\u0004¢\u0006\u0002\n��R*\u0010\b\u001a\u001e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\tj\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n`\u000bX\u0082\u0004¢\u0006\u0002\n��R*\u0010\f\u001a\u001e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\tj\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n`\u000bX\u0082\u0004¢\u0006\u0002\n��R*\u0010\r\u001a\u001e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\tj\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n`\u000bX\u0082\u0004¢\u0006\u0002\n��R\u001a\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0015"}, m4298d2 = {"Lkotlin/jvm/internal/ClassReference$Companion;", "", "()V", "FUNCTION_CLASSES", "", "Ljava/lang/Class;", "Lkotlin/Function;", "", "classFqNames", "Ljava/util/HashMap;", "", "Lkotlin/collections/HashMap;", "primitiveFqNames", "primitiveWrapperFqNames", "simpleNames", "getClassQualifiedName", "jClass", "getClassSimpleName", "isInstance", "", "value", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.jvm.internal.h$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/jvm/internal/h$a.class */
    public static final class C18516a {
        private C18516a() {
        }

        public /* synthetic */ C18516a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        String c;
        String c2;
        int i = 0;
        List b = C18282n.m4167b((Object[]) new Class[]{Function0.class, Function1.class, Function2.class, AbstractC18473n.class, AbstractC18474o.class, AbstractC18475p.class, AbstractC18476q.class, AbstractC18477r.class, AbstractC18478s.class, AbstractC18479t.class, AbstractC18460a.class, AbstractC18461b.class, AbstractC18462c.class, AbstractC18463d.class, AbstractC18464e.class, AbstractC18465f.class, AbstractC18466g.class, AbstractC18467h.class, AbstractC18468i.class, AbstractC18469j.class, AbstractC18470k.class, AbstractC18471l.class, AbstractC18472m.class});
        ArrayList arrayList = new ArrayList(C18282n.m4163a((Iterable) b, 10));
        for (Object obj : b) {
            if (i < 0) {
                C18282n.m4175a();
            }
            arrayList.add(C20126t.m1103a((Class) obj, Integer.valueOf(i)));
            i++;
        }
        f63612c = C18247ai.m4256a(arrayList);
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("boolean", "kotlin.Boolean");
        hashMap.put("char", "kotlin.Char");
        hashMap.put("byte", "kotlin.Byte");
        hashMap.put("short", "kotlin.Short");
        hashMap.put("int", "kotlin.Int");
        hashMap.put("float", "kotlin.Float");
        hashMap.put("long", "kotlin.Long");
        hashMap.put("double", "kotlin.Double");
        f63613d = hashMap;
        HashMap<String, String> hashMap2 = new HashMap<>();
        hashMap2.put("java.lang.Boolean", "kotlin.Boolean");
        hashMap2.put("java.lang.Character", "kotlin.Char");
        hashMap2.put("java.lang.Byte", "kotlin.Byte");
        hashMap2.put("java.lang.Short", "kotlin.Short");
        hashMap2.put("java.lang.Integer", "kotlin.Int");
        hashMap2.put("java.lang.Float", "kotlin.Float");
        hashMap2.put("java.lang.Long", "kotlin.Long");
        hashMap2.put("java.lang.Double", "kotlin.Double");
        f63614e = hashMap2;
        HashMap<String, String> hashMap3 = new HashMap<>();
        hashMap3.put("java.lang.Object", "kotlin.Any");
        hashMap3.put("java.lang.String", "kotlin.String");
        hashMap3.put("java.lang.CharSequence", "kotlin.CharSequence");
        hashMap3.put("java.lang.Throwable", "kotlin.Throwable");
        hashMap3.put("java.lang.Cloneable", "kotlin.Cloneable");
        hashMap3.put("java.lang.Number", "kotlin.Number");
        hashMap3.put("java.lang.Comparable", "kotlin.Comparable");
        hashMap3.put("java.lang.Enum", "kotlin.Enum");
        hashMap3.put("java.lang.annotation.Annotation", "kotlin.Annotation");
        hashMap3.put("java.lang.Iterable", "kotlin.collections.Iterable");
        hashMap3.put("java.util.Iterator", "kotlin.collections.Iterator");
        hashMap3.put("java.util.Collection", "kotlin.collections.Collection");
        hashMap3.put("java.util.List", "kotlin.collections.List");
        hashMap3.put("java.util.Set", "kotlin.collections.Set");
        hashMap3.put("java.util.ListIterator", "kotlin.collections.ListIterator");
        hashMap3.put("java.util.Map", "kotlin.collections.Map");
        hashMap3.put("java.util.Map$Entry", "kotlin.collections.Map.Entry");
        hashMap3.put("kotlin.jvm.internal.StringCompanionObject", "kotlin.String.Companion");
        hashMap3.put("kotlin.jvm.internal.EnumCompanionObject", "kotlin.Enum.Companion");
        hashMap3.putAll(hashMap);
        hashMap3.putAll(hashMap2);
        Collection<String> values = hashMap.values();
        C18524p.m3843b(values, "primitiveFqNames.values");
        for (Object obj2 : values) {
            HashMap<String, String> hashMap4 = hashMap3;
            String kotlinName = (String) obj2;
            StringBuilder sb = new StringBuilder("kotlin.jvm.internal.");
            C18524p.m3843b(kotlinName, "kotlinName");
            c2 = C18425p.m3918c(kotlinName, '.', kotlinName);
            sb.append(c2);
            sb.append("CompanionObject");
            C18538n m1103a = C20126t.m1103a(sb.toString(), kotlinName + ".Companion");
            hashMap4.put(m1103a.f63624a, m1103a.f63625b);
        }
        for (Map.Entry<Class<? extends AbstractC18342d<?>>, Integer> entry : f63612c.entrySet()) {
            hashMap3.put(entry.getKey().getName(), "kotlin.Function".concat(String.valueOf(entry.getValue().intValue())));
        }
        f63615f = hashMap3;
        HashMap<String, String> hashMap5 = hashMap3;
        LinkedHashMap linkedHashMap = new LinkedHashMap(C18247ai.m4260a(hashMap5.size()));
        Iterator<T> it2 = hashMap5.entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry entry2 = (Map.Entry) it2.next();
            Object key = entry2.getKey();
            c = C18425p.m3918c((String) entry2.getValue(), '.', r2);
            linkedHashMap.put(key, c);
        }
        f63616g = linkedHashMap;
    }

    public C18515h(Class<?> jClass) {
        C18524p.m3840d(jClass, "jClass");
        this.f63617b = jClass;
    }

    /* renamed from: f */
    private static Void m3858f() {
        throw new C18459b();
    }

    @Override // kotlin.jvm.internal.AbstractC18514g
    /* renamed from: a */
    public final Class<?> mo1163a() {
        return this.f63617b;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x00af  */
    @Override // kotlin.reflect.AbstractC18551c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String an_() {
        /*
            Method dump skipped, instructions count: 320
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.jvm.internal.C18515h.an_():java.lang.String");
    }

    @Override // kotlin.reflect.AbstractC18551c
    /* renamed from: c */
    public final String mo3722c() {
        String str;
        Class<?> jClass = this.f63617b;
        C18524p.m3840d(jClass, "jClass");
        if (!jClass.isAnonymousClass() && !jClass.isLocalClass()) {
            if (jClass.isArray()) {
                Class<?> componentType = jClass.getComponentType();
                C18524p.m3843b(componentType, "componentType");
                String str2 = null;
                if (componentType.isPrimitive()) {
                    String str3 = f63615f.get(componentType.getName());
                    str2 = null;
                    if (str3 != null) {
                        str2 = str3 + "Array";
                    }
                }
                str = str2;
                if (str2 == null) {
                    return "kotlin.Array";
                }
            } else {
                String str4 = f63615f.get(jClass.getName());
                str = str4;
                if (str4 == null) {
                    str = jClass.getCanonicalName();
                }
            }
            return str;
        }
        return null;
    }

    @Override // kotlin.reflect.AbstractC18551c
    /* renamed from: d */
    public final List<KType> mo3721d() {
        m3858f();
        throw new KotlinNothingValueException();
    }

    @Override // kotlin.reflect.AbstractC18551c
    /* renamed from: e */
    public final boolean mo3720e() {
        m3858f();
        throw new KotlinNothingValueException();
    }

    public final boolean equals(Object obj) {
        return (obj instanceof C18515h) && C18524p.m3850a(C18458a.m3891c(this), C18458a.m3891c((AbstractC18551c) obj));
    }

    @Override // kotlin.reflect.AbstractC18550b
    public final List<Annotation> getAnnotations() {
        m3858f();
        throw new KotlinNothingValueException();
    }

    public final int hashCode() {
        return C18458a.m3891c(this).hashCode();
    }

    public final String toString() {
        return this.f63617b.toString() + " (Kotlin reflection is not available)";
    }
}
