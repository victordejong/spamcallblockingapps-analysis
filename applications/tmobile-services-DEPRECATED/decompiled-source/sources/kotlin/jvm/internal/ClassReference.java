package kotlin.jvm.internal;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.messaging.Constants;
import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.KotlinReflectionNotSupportedError;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function10;
import kotlin.jvm.functions.Function11;
import kotlin.jvm.functions.Function12;
import kotlin.jvm.functions.Function13;
import kotlin.jvm.functions.Function14;
import kotlin.jvm.functions.Function15;
import kotlin.jvm.functions.Function16;
import kotlin.jvm.functions.Function17;
import kotlin.jvm.functions.Function18;
import kotlin.jvm.functions.Function19;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function20;
import kotlin.jvm.functions.Function21;
import kotlin.jvm.functions.Function22;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.functions.Function6;
import kotlin.jvm.functions.Function7;
import kotlin.jvm.functions.Function8;
import kotlin.jvm.functions.Function9;
import kotlin.reflect.KClass;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0001\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u001b\n\u0002\b\u0003\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018�� R2\u00020\u00012\u00020\u0002:\u0001RB\u0013\u0012\n\u00100\u001a\u0006\u0012\u0002\b\u00030/¢\u0006\u0004\bP\u0010QJ\u001a\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0096\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\f\u0010\rJ\u0019\u0010\u000f\u001a\u00020\u00052\b\u0010\u000e\u001a\u0004\u0018\u00010\u0003H\u0017¢\u0006\u0004\b\u000f\u0010\u0007J\u000f\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0011\u0010\u0012R\u001c\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00140\u00138V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016R\"\u0010\u001c\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00190\u00188V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001bR\u001c\u0010\u001d\u001a\u00020\u00058V@\u0017X\u0097\u0004¢\u0006\f\u0012\u0004\b\u001f\u0010 \u001a\u0004\b\u001d\u0010\u001eR\u001c\u0010!\u001a\u00020\u00058V@\u0017X\u0097\u0004¢\u0006\f\u0012\u0004\b\"\u0010 \u001a\u0004\b!\u0010\u001eR\u001c\u0010#\u001a\u00020\u00058V@\u0017X\u0097\u0004¢\u0006\f\u0012\u0004\b$\u0010 \u001a\u0004\b#\u0010\u001eR\u001c\u0010%\u001a\u00020\u00058V@\u0017X\u0097\u0004¢\u0006\f\u0012\u0004\b&\u0010 \u001a\u0004\b%\u0010\u001eR\u001c\u0010'\u001a\u00020\u00058V@\u0017X\u0097\u0004¢\u0006\f\u0012\u0004\b(\u0010 \u001a\u0004\b'\u0010\u001eR\u001c\u0010)\u001a\u00020\u00058V@\u0017X\u0097\u0004¢\u0006\f\u0012\u0004\b*\u0010 \u001a\u0004\b)\u0010\u001eR\u001c\u0010+\u001a\u00020\u00058V@\u0017X\u0097\u0004¢\u0006\f\u0012\u0004\b,\u0010 \u001a\u0004\b+\u0010\u001eR\u001c\u0010-\u001a\u00020\u00058V@\u0017X\u0097\u0004¢\u0006\f\u0012\u0004\b.\u0010 \u001a\u0004\b-\u0010\u001eR \u00100\u001a\u0006\u0012\u0002\b\u00030/8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b0\u00101\u001a\u0004\b2\u00103R \u00106\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u0003040\u00188V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b5\u0010\u001bR \u00108\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00010\u00188V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b7\u0010\u001bR\u0018\u0010;\u001a\u0004\u0018\u00010\u00038V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b9\u0010:R\u0018\u0010=\u001a\u0004\u0018\u00010\u00108V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b<\u0010\u0012R*\u0010@\u001a\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00030\u00010\u00138V@\u0017X\u0097\u0004¢\u0006\f\u0012\u0004\b?\u0010 \u001a\u0004\b>\u0010\u0016R\u0018\u0010B\u001a\u0004\u0018\u00010\u00108V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\bA\u0010\u0012R\"\u0010F\u001a\b\u0012\u0004\u0012\u00020C0\u00138V@\u0017X\u0097\u0004¢\u0006\f\u0012\u0004\bE\u0010 \u001a\u0004\bD\u0010\u0016R\"\u0010J\u001a\b\u0012\u0004\u0012\u00020G0\u00138V@\u0017X\u0097\u0004¢\u0006\f\u0012\u0004\bI\u0010 \u001a\u0004\bH\u0010\u0016R\u001e\u0010O\u001a\u0004\u0018\u00010K8V@\u0017X\u0097\u0004¢\u0006\f\u0012\u0004\bN\u0010 \u001a\u0004\bL\u0010M¨\u0006S"}, d2 = {"Lkotlin/jvm/internal/ClassReference;", "Lkotlin/reflect/KClass;", "Lkotlin/jvm/internal/ClassBasedDeclarationContainer;", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "", Constants.IPC_BUNDLE_KEY_SEND_ERROR, "()Ljava/lang/Void;", "", "hashCode", "()I", FirebaseAnalytics.Param.VALUE, "isInstance", "", "toString", "()Ljava/lang/String;", "", "", "getAnnotations", "()Ljava/util/List;", "annotations", "", "Lkotlin/reflect/KFunction;", "getConstructors", "()Ljava/util/Collection;", "constructors", "isAbstract", "()Z", "isAbstract$annotations", "()V", "isCompanion", "isCompanion$annotations", "isData", "isData$annotations", "isFinal", "isFinal$annotations", "isFun", "isFun$annotations", "isInner", "isInner$annotations", "isOpen", "isOpen$annotations", "isSealed", "isSealed$annotations", "Ljava/lang/Class;", "jClass", "Ljava/lang/Class;", "getJClass", "()Ljava/lang/Class;", "Lkotlin/reflect/KCallable;", "getMembers", "members", "getNestedClasses", "nestedClasses", "getObjectInstance", "()Ljava/lang/Object;", "objectInstance", "getQualifiedName", "qualifiedName", "getSealedSubclasses", "getSealedSubclasses$annotations", "sealedSubclasses", "getSimpleName", "simpleName", "Lkotlin/reflect/KType;", "getSupertypes", "getSupertypes$annotations", "supertypes", "Lkotlin/reflect/KTypeParameter;", "getTypeParameters", "getTypeParameters$annotations", "typeParameters", "Lkotlin/reflect/KVisibility;", "getVisibility", "()Lkotlin/reflect/KVisibility;", "getVisibility$annotations", "visibility", "<init>", "(Ljava/lang/Class;)V", "Companion", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/jvm/internal/ClassReference.class */
public final class ClassReference implements KClass<Object>, ClassBasedDeclarationContainer {

    /* renamed from: g */
    private static final Map<Class<? extends Function<?>>, Integer> f20735g;

    /* renamed from: h */
    private static final HashMap<String, String> f20736h;

    /* renamed from: i */
    private static final HashMap<String, String> f20737i;

    /* renamed from: j */
    private static final HashMap<String, String> f20738j;
    @NotNull

    /* renamed from: f */
    private final Class<?> f20739f;

    @Metadata(bv = {1, 0, 3}, d1 = {"��<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u001b\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0001¢\u0006\u0004\b\u0004\u0010\u0005J\u001b\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0001¢\u0006\u0004\b\u0006\u0010\u0005J#\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u00072\n\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0001¢\u0006\u0004\b\n\u0010\u000bR.\u0010\u000f\u001a\u001a\u0012\u0010\u0012\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030\r0\u0001\u0012\u0004\u0012\u00020\u000e0\f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R2\u0010\u0013\u001a\u001e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0011j\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003`\u00128\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R2\u0010\u0015\u001a\u001e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0011j\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003`\u00128\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0014R2\u0010\u0016\u001a\u001e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0011j\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003`\u00128\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0014R\"\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0010¨\u0006\u001a"}, d2 = {"Lkotlin/jvm/internal/ClassReference$Companion;", "Ljava/lang/Class;", "jClass", "", "getClassQualifiedName", "(Ljava/lang/Class;)Ljava/lang/String;", "getClassSimpleName", "", FirebaseAnalytics.Param.VALUE, "", "isInstance", "(Ljava/lang/Object;Ljava/lang/Class;)Z", "", "Lkotlin/Function;", "", "FUNCTION_CLASSES", "Ljava/util/Map;", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "classFqNames", "Ljava/util/HashMap;", "primitiveFqNames", "primitiveWrapperFqNames", "simpleNames", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlin/jvm/internal/ClassReference$Companion.class */
    public static final class Companion {
        private Companion() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        List i;
        int p;
        Map<Class<? extends Function<?>>, Integer> l;
        int c;
        String A0;
        String A02;
        int i2 = 0;
        i = CollectionsKt__CollectionsKt.m2172i(Function0.class, Function1.class, Function2.class, Function3.class, Function4.class, Function5.class, Function6.class, Function7.class, Function8.class, Function9.class, Function10.class, Function11.class, Function12.class, Function13.class, Function14.class, Function15.class, Function16.class, Function17.class, Function18.class, Function19.class, Function20.class, Function21.class, Function22.class);
        p = CollectionsKt__IterablesKt.m2164p(i, 10);
        ArrayList arrayList = new ArrayList(p);
        for (Object obj : i) {
            if (i2 >= 0) {
                arrayList.add(TuplesKt.m2469a((Class) obj, Integer.valueOf(i2)));
                i2++;
            } else {
                CollectionsKt.m2188o();
                throw null;
            }
        }
        l = MapsKt__MapsKt.m2079l(arrayList);
        f20735g = l;
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("boolean", "kotlin.Boolean");
        hashMap.put("char", "kotlin.Char");
        hashMap.put("byte", "kotlin.Byte");
        hashMap.put("short", "kotlin.Short");
        hashMap.put("int", "kotlin.Int");
        hashMap.put("float", "kotlin.Float");
        hashMap.put("long", "kotlin.Long");
        hashMap.put("double", "kotlin.Double");
        f20736h = hashMap;
        HashMap<String, String> hashMap2 = new HashMap<>();
        hashMap2.put("java.lang.Boolean", "kotlin.Boolean");
        hashMap2.put("java.lang.Character", "kotlin.Char");
        hashMap2.put("java.lang.Byte", "kotlin.Byte");
        hashMap2.put("java.lang.Short", "kotlin.Short");
        hashMap2.put("java.lang.Integer", "kotlin.Int");
        hashMap2.put("java.lang.Float", "kotlin.Float");
        hashMap2.put("java.lang.Long", "kotlin.Long");
        hashMap2.put("java.lang.Double", "kotlin.Double");
        f20737i = hashMap2;
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
        hashMap3.putAll(f20736h);
        hashMap3.putAll(f20737i);
        Collection<String> values = f20736h.values();
        Intrinsics.m1831d(values, "primitiveFqNames.values");
        for (String kotlinName : values) {
            StringBuilder sb = new StringBuilder();
            sb.append("kotlin.jvm.internal.");
            Intrinsics.m1831d(kotlinName, "kotlinName");
            A02 = StringsKt__StringsKt.m1476A0(kotlinName, '.', null, 2, null);
            sb.append(A02);
            sb.append("CompanionObject");
            String sb2 = sb.toString();
            Pair a = TuplesKt.m2469a(sb2, kotlinName + ".Companion");
            hashMap3.put(a.m2484c(), a.m2483d());
        }
        for (Map.Entry<Class<? extends Function<?>>, Integer> entry : f20735g.entrySet()) {
            Class<? extends Function<?>> key = entry.getKey();
            int intValue = entry.getValue().intValue();
            String name = key.getName();
            hashMap3.put(name, "kotlin.Function" + intValue);
        }
        f20738j = hashMap3;
        c = MapsKt__MapsJVMKt.m2088c(hashMap3.size());
        LinkedHashMap linkedHashMap = new LinkedHashMap(c);
        for (Map.Entry entry2 : hashMap3.entrySet()) {
            Object key2 = entry2.getKey();
            A0 = StringsKt__StringsKt.m1476A0((String) entry2.getValue(), '.', null, 2, null);
            linkedHashMap.put(key2, A0);
        }
    }

    public ClassReference(@NotNull Class<?> jClass) {
        Intrinsics.m1830e(jClass, "jClass");
        this.f20739f = jClass;
    }

    /* renamed from: d */
    private final Void m1849d() {
        throw new KotlinReflectionNotSupportedError();
    }

    @Override // kotlin.jvm.internal.ClassBasedDeclarationContainer
    @NotNull
    /* renamed from: c */
    public Class<?> mo1811c() {
        return this.f20739f;
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof ClassReference) && Intrinsics.m1834a(JvmClassMappingKt.m1865b(this), JvmClassMappingKt.m1865b((KClass) obj));
    }

    @Override // kotlin.reflect.KAnnotatedElement
    @NotNull
    public List<Annotation> getAnnotations() {
        m1849d();
        throw null;
    }

    public int hashCode() {
        return JvmClassMappingKt.m1865b(this).hashCode();
    }

    @NotNull
    public String toString() {
        return mo1811c().toString() + " (Kotlin reflection is not available)";
    }
}
