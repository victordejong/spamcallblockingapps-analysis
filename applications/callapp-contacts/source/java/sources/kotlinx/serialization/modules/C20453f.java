package kotlinx.serialization.modules;

import java.util.Map;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.AbstractC18551c;
import kotlinx.serialization.C20459q;
import kotlinx.serialization.KSerializer;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0007\b��\u0018��2\u00020\u0001Bu\u0012\u001a\u0010\u0002\u001a\u0016\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0004\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00050\u0003\u0012*\u0010\u0006\u001a&\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0004\u0012\u0018\u0012\u0016\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0004\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00050\u00030\u0003\u0012&\u0010\u0007\u001a\"\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0004\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\b\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00050\u00030\u0003¢\u0006\u0002\u0010\tJ\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0016J(\u0010\u000e\u001a\n\u0012\u0004\u0012\u0002H\u000f\u0018\u00010\u0005\"\b\b��\u0010\u000f*\u00020\u00102\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u0002H\u000f0\u0004H\u0016J7\u0010\u0012\u001a\f\u0012\u0006\b\u0001\u0012\u0002H\u000f\u0018\u00010\u0005\"\b\b��\u0010\u000f*\u00020\u00102\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u0002H\u000f0\u00042\u0006\u0010\u0014\u001a\u0002H\u000fH\u0016¢\u0006\u0002\u0010\u0015J2\u0010\u0012\u001a\f\u0012\u0006\b\u0001\u0012\u0002H\u000f\u0018\u00010\u0005\"\b\b��\u0010\u000f*\u00020\u00102\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u0002H\u000f0\u00042\u0006\u0010\u0016\u001a\u00020\bH\u0016R\"\u0010\u0002\u001a\u0016\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0004\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00050\u0003X\u0082\u0004¢\u0006\u0002\n��R.\u0010\u0007\u001a\"\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0004\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\b\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00050\u00030\u0003X\u0082\u0004¢\u0006\u0002\n��R2\u0010\u0006\u001a&\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0004\u0012\u0018\u0012\u0016\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0004\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00050\u00030\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0017"}, m4298d2 = {"Lkotlinx/serialization/modules/SerialModuleImpl;", "Lkotlinx/serialization/modules/SerialModule;", "class2Serializer", "", "Lkotlin/reflect/KClass;", "Lkotlinx/serialization/KSerializer;", "polyBase2Serializers", "polyBase2NamedSerializers", "", "(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V", "dumpTo", "", "collector", "Lkotlinx/serialization/modules/SerialModuleCollector;", "getContextual", "T", "", "kclass", "getPolymorphic", "baseClass", "value", "(Lkotlin/reflect/KClass;Ljava/lang/Object;)Lkotlinx/serialization/KSerializer;", "serializedClassName", "kotlinx-serialization-runtime"}, m4297k = 1, m4296mv = {1, 1, 16})
/* renamed from: kotlinx.serialization.modules.f */
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/modules/f.class */
public final class C20453f implements AbstractC20447b {

    /* renamed from: a */
    private final Map<AbstractC18551c<?>, KSerializer<?>> f66951a;

    /* renamed from: b */
    private final Map<AbstractC18551c<?>, Map<AbstractC18551c<?>, KSerializer<?>>> f66952b;

    /* renamed from: c */
    private final Map<AbstractC18551c<?>, Map<String, KSerializer<?>>> f66953c;

    /* JADX WARN: Multi-variable type inference failed */
    public C20453f(Map<AbstractC18551c<?>, ? extends KSerializer<?>> class2Serializer, Map<AbstractC18551c<?>, ? extends Map<AbstractC18551c<?>, ? extends KSerializer<?>>> polyBase2Serializers, Map<AbstractC18551c<?>, ? extends Map<String, ? extends KSerializer<?>>> polyBase2NamedSerializers) {
        C18524p.m3841c(class2Serializer, "class2Serializer");
        C18524p.m3841c(polyBase2Serializers, "polyBase2Serializers");
        C18524p.m3841c(polyBase2NamedSerializers, "polyBase2NamedSerializers");
        this.f66951a = class2Serializer;
        this.f66952b = polyBase2Serializers;
        this.f66953c = polyBase2NamedSerializers;
    }

    @Override // kotlinx.serialization.modules.AbstractC20447b
    /* renamed from: a */
    public final <T> KSerializer<T> mo671a(AbstractC18551c<T> kclass) {
        C18524p.m3841c(kclass, "kclass");
        KSerializer<?> kSerializer = this.f66951a.get(kclass);
        KSerializer<?> kSerializer2 = kSerializer;
        if (!(kSerializer instanceof KSerializer)) {
            kSerializer2 = null;
        }
        return (KSerializer<T>) kSerializer2;
    }

    @Override // kotlinx.serialization.modules.AbstractC20447b
    /* renamed from: a */
    public final <T> KSerializer<? extends T> mo670a(AbstractC18551c<T> baseClass, T value) {
        C18524p.m3841c(baseClass, "baseClass");
        C18524p.m3841c(value, "value");
        if (!C20459q.m655a((Object) value, (AbstractC18551c<?>) baseClass)) {
            return null;
        }
        Map<AbstractC18551c<?>, KSerializer<?>> map = this.f66952b.get(baseClass);
        KSerializer<? extends T> kSerializer = map != null ? map.get(C18496ac.m3882b(value.getClass())) : null;
        KSerializer<? extends T> kSerializer2 = kSerializer;
        if (!(kSerializer instanceof KSerializer)) {
            kSerializer2 = null;
        }
        if (kSerializer2 != null) {
            return kSerializer2;
        }
        KSerializer<? extends T> kSerializer3 = null;
        if (C18524p.m3850a(baseClass, C18496ac.m3882b(Object.class))) {
            kSerializer3 = StandardSubtypesOfAny.INSTANCE.getSubclassSerializer$kotlinx_serialization_runtime(value);
            if (!(kSerializer3 instanceof KSerializer)) {
                kSerializer3 = null;
            }
        }
        return kSerializer3;
    }

    @Override // kotlinx.serialization.modules.AbstractC20447b
    /* renamed from: a */
    public final <T> KSerializer<? extends T> mo669a(AbstractC18551c<T> baseClass, String serializedClassName) {
        C18524p.m3841c(baseClass, "baseClass");
        C18524p.m3841c(serializedClassName, "serializedClassName");
        KSerializer<? extends T> defaultDeserializer$kotlinx_serialization_runtime = C18524p.m3850a(baseClass, C18496ac.m3882b(Object.class)) ? StandardSubtypesOfAny.INSTANCE.getDefaultDeserializer$kotlinx_serialization_runtime(serializedClassName) : null;
        if (defaultDeserializer$kotlinx_serialization_runtime != null) {
            return defaultDeserializer$kotlinx_serialization_runtime;
        }
        Map<String, KSerializer<?>> map = this.f66953c.get(baseClass);
        KSerializer<? extends T> kSerializer = map != null ? map.get(serializedClassName) : null;
        if (!(kSerializer instanceof KSerializer)) {
            kSerializer = null;
        }
        return kSerializer;
    }

    @Override // kotlinx.serialization.modules.AbstractC20447b
    /* renamed from: a */
    public final void mo668a(AbstractC20450d collector) {
        C18524p.m3841c(collector, "collector");
        for (Map.Entry<AbstractC18551c<?>, KSerializer<?>> entry : this.f66951a.entrySet()) {
            AbstractC18551c<?> key = entry.getKey();
            KSerializer<?> value = entry.getValue();
            if (key == null) {
                throw new TypeCastException("null cannot be cast to non-null type kotlin.reflect.KClass<kotlin.Any>");
            }
            if (value == null) {
                throw new TypeCastException("null cannot be cast to non-null type kotlinx.serialization.KSerializer<T>");
            }
            collector.contextual(key, value);
        }
        for (Map.Entry<AbstractC18551c<?>, Map<AbstractC18551c<?>, KSerializer<?>>> entry2 : this.f66952b.entrySet()) {
            AbstractC18551c<?> key2 = entry2.getKey();
            for (Map.Entry<AbstractC18551c<?>, KSerializer<?>> entry3 : entry2.getValue().entrySet()) {
                AbstractC18551c<?> key3 = entry3.getKey();
                KSerializer<?> value2 = entry3.getValue();
                if (key2 == null) {
                    throw new TypeCastException("null cannot be cast to non-null type kotlin.reflect.KClass<kotlin.Any>");
                }
                if (key3 == null) {
                    throw new TypeCastException("null cannot be cast to non-null type kotlin.reflect.KClass<kotlin.Any>");
                }
                if (value2 == null) {
                    throw new TypeCastException("null cannot be cast to non-null type kotlinx.serialization.KSerializer<T>");
                }
                collector.polymorphic(key2, key3, value2);
            }
        }
    }
}
