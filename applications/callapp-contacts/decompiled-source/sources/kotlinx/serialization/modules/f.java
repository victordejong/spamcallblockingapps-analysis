package kotlinx.serialization.modules;

import java.util.Map;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.internal.ac;
import kotlin.jvm.internal.p;
import kotlin.reflect.c;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.q;
@Metadata(bv = {1, 0, 3}, d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0007\b��\u0018��2\u00020\u0001Bu\u0012\u001a\u0010\u0002\u001a\u0016\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0004\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00050\u0003\u0012*\u0010\u0006\u001a&\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0004\u0012\u0018\u0012\u0016\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0004\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00050\u00030\u0003\u0012&\u0010\u0007\u001a\"\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0004\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\b\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00050\u00030\u0003¢\u0006\u0002\u0010\tJ\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0016J(\u0010\u000e\u001a\n\u0012\u0004\u0012\u0002H\u000f\u0018\u00010\u0005\"\b\b��\u0010\u000f*\u00020\u00102\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u0002H\u000f0\u0004H\u0016J7\u0010\u0012\u001a\f\u0012\u0006\b\u0001\u0012\u0002H\u000f\u0018\u00010\u0005\"\b\b��\u0010\u000f*\u00020\u00102\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u0002H\u000f0\u00042\u0006\u0010\u0014\u001a\u0002H\u000fH\u0016¢\u0006\u0002\u0010\u0015J2\u0010\u0012\u001a\f\u0012\u0006\b\u0001\u0012\u0002H\u000f\u0018\u00010\u0005\"\b\b��\u0010\u000f*\u00020\u00102\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u0002H\u000f0\u00042\u0006\u0010\u0016\u001a\u00020\bH\u0016R\"\u0010\u0002\u001a\u0016\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0004\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00050\u0003X\u0082\u0004¢\u0006\u0002\n��R.\u0010\u0007\u001a\"\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0004\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\b\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00050\u00030\u0003X\u0082\u0004¢\u0006\u0002\n��R2\u0010\u0006\u001a&\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0004\u0012\u0018\u0012\u0016\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0004\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00050\u00030\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0017"}, d2 = {"Lkotlinx/serialization/modules/SerialModuleImpl;", "Lkotlinx/serialization/modules/SerialModule;", "class2Serializer", "", "Lkotlin/reflect/KClass;", "Lkotlinx/serialization/KSerializer;", "polyBase2Serializers", "polyBase2NamedSerializers", "", "(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V", "dumpTo", "", "collector", "Lkotlinx/serialization/modules/SerialModuleCollector;", "getContextual", "T", "", "kclass", "getPolymorphic", "baseClass", "value", "(Lkotlin/reflect/KClass;Ljava/lang/Object;)Lkotlinx/serialization/KSerializer;", "serializedClassName", "kotlinx-serialization-runtime"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/modules/f.class */
public final class f implements b {

    /* renamed from: a  reason: collision with root package name */
    private final Map<c<?>, KSerializer<?>> f39008a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<c<?>, Map<c<?>, KSerializer<?>>> f39009b;

    /* renamed from: c  reason: collision with root package name */
    private final Map<c<?>, Map<String, KSerializer<?>>> f39010c;

    /* JADX WARN: Multi-variable type inference failed */
    public f(Map<c<?>, ? extends KSerializer<?>> class2Serializer, Map<c<?>, ? extends Map<c<?>, ? extends KSerializer<?>>> polyBase2Serializers, Map<c<?>, ? extends Map<String, ? extends KSerializer<?>>> polyBase2NamedSerializers) {
        p.c(class2Serializer, "class2Serializer");
        p.c(polyBase2Serializers, "polyBase2Serializers");
        p.c(polyBase2NamedSerializers, "polyBase2NamedSerializers");
        this.f39008a = class2Serializer;
        this.f39009b = polyBase2Serializers;
        this.f39010c = polyBase2NamedSerializers;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3 */
    @Override // kotlinx.serialization.modules.b
    public final <T> KSerializer<T> a(c<T> kclass) {
        p.c(kclass, "kclass");
        KSerializer<?> kSerializer = this.f39008a.get(kclass);
        KSerializer<?> kSerializer2 = kSerializer;
        if (!(kSerializer instanceof KSerializer)) {
            kSerializer2 = 0;
        }
        return (KSerializer) kSerializer2;
    }

    @Override // kotlinx.serialization.modules.b
    public final <T> KSerializer<? extends T> a(c<T> baseClass, T value) {
        p.c(baseClass, "baseClass");
        p.c(value, "value");
        if (!q.a((Object) value, (c<?>) baseClass)) {
            return null;
        }
        Map<c<?>, KSerializer<?>> map = this.f39009b.get(baseClass);
        KSerializer<?> kSerializer = map != null ? map.get(ac.b(value.getClass())) : null;
        KSerializer<? extends T> kSerializer2 = (KSerializer<? extends T>) kSerializer;
        if (!(kSerializer instanceof KSerializer)) {
            kSerializer2 = null;
        }
        if (kSerializer2 != null) {
            return kSerializer2;
        }
        KSerializer<? extends T> kSerializer3 = null;
        if (p.a(baseClass, ac.b(Object.class))) {
            kSerializer3 = (KSerializer<? extends T>) StandardSubtypesOfAny.INSTANCE.getSubclassSerializer$kotlinx_serialization_runtime(value);
            if (!(kSerializer3 instanceof KSerializer)) {
                kSerializer3 = null;
            }
        }
        return kSerializer3;
    }

    @Override // kotlinx.serialization.modules.b
    public final <T> KSerializer<? extends T> a(c<T> baseClass, String serializedClassName) {
        p.c(baseClass, "baseClass");
        p.c(serializedClassName, "serializedClassName");
        boolean a2 = p.a(baseClass, ac.b(Object.class));
        KSerializer<? extends T> kSerializer = null;
        KSerializer<? extends T> kSerializer2 = a2 ? (KSerializer<? extends T>) StandardSubtypesOfAny.INSTANCE.getDefaultDeserializer$kotlinx_serialization_runtime(serializedClassName) : null;
        if (kSerializer2 != null) {
            return kSerializer2;
        }
        Map<String, KSerializer<?>> map = this.f39010c.get(baseClass);
        kSerializer = map != null ? (KSerializer<? extends T>) map.get(serializedClassName) : null;
        if (!(kSerializer instanceof KSerializer)) {
        }
        return kSerializer;
    }

    @Override // kotlinx.serialization.modules.b
    public final void a(d collector) {
        p.c(collector, "collector");
        for (Map.Entry<c<?>, KSerializer<?>> entry : this.f39008a.entrySet()) {
            c<?> key = entry.getKey();
            KSerializer<?> value = entry.getValue();
            if (key == null) {
                throw new TypeCastException("null cannot be cast to non-null type kotlin.reflect.KClass<kotlin.Any>");
            } else if (value != null) {
                collector.contextual(key, value);
            } else {
                throw new TypeCastException("null cannot be cast to non-null type kotlinx.serialization.KSerializer<T>");
            }
        }
        for (Map.Entry<c<?>, Map<c<?>, KSerializer<?>>> entry2 : this.f39009b.entrySet()) {
            c<?> key2 = entry2.getKey();
            for (Map.Entry<c<?>, KSerializer<?>> entry3 : entry2.getValue().entrySet()) {
                c<?> key3 = entry3.getKey();
                KSerializer<?> value2 = entry3.getValue();
                if (key2 == null) {
                    throw new TypeCastException("null cannot be cast to non-null type kotlin.reflect.KClass<kotlin.Any>");
                } else if (key3 == null) {
                    throw new TypeCastException("null cannot be cast to non-null type kotlin.reflect.KClass<kotlin.Any>");
                } else if (value2 != null) {
                    collector.polymorphic(key2, key3, value2);
                } else {
                    throw new TypeCastException("null cannot be cast to non-null type kotlinx.serialization.KSerializer<T>");
                }
            }
        }
    }
}
