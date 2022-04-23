package kotlinx.serialization.modules;

import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.a.n;
import kotlin.jvm.internal.p;
import kotlin.reflect.c;
import kotlinx.serialization.KSerializer;
@Metadata(bv = {1, 0, 3}, d1 = {"��V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0010��\n\u0002\b\u0007\n\u0002\u0010\u0011\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0003\u0018��2\u00020\u0001B\u0007\b��¢\u0006\u0002\u0010\u0002J\r\u0010\n\u001a\u00020\u000bH��¢\u0006\u0002\b\fJ.\u0010\r\u001a\u00020\u000e\"\b\b��\u0010\u000f*\u00020\u00102\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u0002H\u000f0\u00052\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u0002H\u000f0\u0006H\u0016J\u000e\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u000bJT\u0010\u0015\u001a\u00020\u000e2\n\u0010\u0016\u001a\u0006\u0012\u0002\b\u00030\u00052\u001a\u0010\u0017\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030\u00050\u0018\"\u0006\u0012\u0002\b\u00030\u00052\u001f\b\u0002\u0010\u0019\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00100\u001b\u0012\u0004\u0012\u00020\u000e0\u001a¢\u0006\u0002\b\u001c¢\u0006\u0002\u0010\u001dJF\u0010\u0015\u001a\u00020\u000e\"\b\b��\u0010\u001e*\u00020\u0010\"\b\b\u0001\u0010\u001f*\u0002H\u001e2\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u0002H\u001e0\u00052\f\u0010 \u001a\b\u0012\u0004\u0012\u0002H\u001f0\u00052\f\u0010!\u001a\b\u0012\u0004\u0012\u0002H\u001f0\u0006H\u0016JQ\u0010\u0015\u001a\u00020\u000e\"\b\b��\u0010\u001e*\u00020\u00102\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u0002H\u001e0\u00052\u0010\b\u0002\u0010\"\u001a\n\u0012\u0004\u0012\u0002H\u001e\u0018\u00010\u00062\u001f\b\u0002\u0010\u0019\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u001e0\u001b\u0012\u0004\u0012\u00020\u000e0\u001a¢\u0006\u0002\b\u001cJH\u0010\u0015\u001a\u00020\u000e\"\n\b��\u0010\u001e\u0018\u0001*\u00020\u00102\u0010\b\u0002\u0010\"\u001a\n\u0012\u0004\u0012\u0002H\u001e\u0018\u00010\u00062\u001f\b\n\u0010\u0019\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u001e0\u001b\u0012\u0004\u0012\u00020\u000e0\u001a¢\u0006\u0002\b\u001cH\u0086\bJP\u0010#\u001a\u00020\u000e\"\b\b��\u0010\u001e*\u00020\u0010\"\b\b\u0001\u0010\u001f*\u0002H\u001e2\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u0002H\u001e0\u00052\f\u0010$\u001a\b\u0012\u0004\u0012\u0002H\u001f0\u00052\f\u0010%\u001a\b\u0012\u0004\u0012\u0002H\u001f0\u00062\b\b\u0002\u0010&\u001a\u00020'H\u0001J8\u0010(\u001a\u00020\u000e\"\b\b��\u0010\u000f*\u00020\u00102\f\u0010)\u001a\b\u0012\u0004\u0012\u0002H\u000f0\u00052\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u0002H\u000f0\u00062\b\b\u0002\u0010&\u001a\u00020'H\u0001R\"\u0010\u0003\u001a\u0016\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0005\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u0004X\u0082\u0004¢\u0006\u0002\n��R.\u0010\u0007\u001a\"\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0005\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\b\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u00040\u0004X\u0082\u0004¢\u0006\u0002\n��R2\u0010\t\u001a&\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0005\u0012\u0018\u0012\u0016\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0005\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u00040\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006*"}, d2 = {"Lkotlinx/serialization/modules/SerializersModuleBuilder;", "Lkotlinx/serialization/modules/SerialModuleCollector;", "()V", "class2Serializer", "", "Lkotlin/reflect/KClass;", "Lkotlinx/serialization/KSerializer;", "polyBase2NamedSerializers", "", "polyBase2Serializers", JsonPOJOBuilder.DEFAULT_BUILD_METHOD, "Lkotlinx/serialization/modules/SerialModule;", "build$kotlinx_serialization_runtime", "contextual", "", "T", "", "kClass", "serializer", "include", "other", "polymorphic", "baseClass", "baseClasses", "", "buildAction", "Lkotlin/Function1;", "Lkotlinx/serialization/modules/PolymorphicModuleBuilder;", "Lkotlin/ExtensionFunctionType;", "(Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;)V", "Base", "Sub", "actualClass", "actualSerializer", "baseSerializer", "registerPolymorphicSerializer", "concreteClass", "concreteSerializer", "allowOverwrite", "", "registerSerializer", "forClass", "kotlinx-serialization-runtime"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/modules/g.class */
public final class g implements d {

    /* renamed from: a  reason: collision with root package name */
    private final Map<c<?>, KSerializer<?>> f39011a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private final Map<c<?>, Map<c<?>, KSerializer<?>>> f39012b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    private final Map<c<?>, Map<String, KSerializer<?>>> f39013c = new HashMap();

    public final b a() {
        return new f(this.f39011a, this.f39012b, this.f39013c);
    }

    public final void a(b other) {
        p.c(other, "other");
        other.a(this);
    }

    @Override // kotlinx.serialization.modules.d
    public final <T> void contextual(c<T> forClass, KSerializer<T> serializer) {
        p.c(forClass, "kClass");
        p.c(serializer, "serializer");
        p.c(forClass, "forClass");
        p.c(serializer, "serializer");
        KSerializer<?> kSerializer = this.f39011a.get(forClass);
        if (kSerializer == null || !(!p.a(kSerializer, serializer))) {
            this.f39011a.put(forClass, serializer);
            return;
        }
        String a2 = serializer.getDescriptor().a();
        String a3 = kSerializer.getDescriptor().a();
        throw new SerializerAlreadyRegisteredException("Serializer for " + forClass + " already registered in this module: " + kSerializer + " (" + a3 + "), attempted to register " + serializer + " (" + a2 + ')');
    }

    @Override // kotlinx.serialization.modules.d
    public final <Base, Sub extends Base> void polymorphic(c<Base> baseClass, c<Sub> concreteClass, KSerializer<Sub> concreteSerializer) {
        Object obj;
        p.c(baseClass, "baseClass");
        p.c(concreteClass, "actualClass");
        p.c(concreteSerializer, "actualSerializer");
        p.c(baseClass, "baseClass");
        p.c(concreteClass, "concreteClass");
        p.c(concreteSerializer, "concreteSerializer");
        String a2 = concreteSerializer.getDescriptor().a();
        Map<c<?>, Map<c<?>, KSerializer<?>>> map = this.f39012b;
        Map<c<?>, KSerializer<?>> map2 = map.get(baseClass);
        Map<c<?>, KSerializer<?>> map3 = map2;
        if (map2 == null) {
            map3 = new HashMap<>();
            map.put(baseClass, map3);
        }
        Map<c<?>, KSerializer<?>> map4 = map3;
        KSerializer<?> kSerializer = map4.get(concreteClass);
        Map<c<?>, Map<String, KSerializer<?>>> map5 = this.f39013c;
        Map<String, KSerializer<?>> map6 = map5.get(baseClass);
        Map<String, KSerializer<?>> map7 = map6;
        if (map6 == null) {
            map7 = new HashMap<>();
            map5.put(baseClass, map7);
        }
        Map<String, KSerializer<?>> map8 = map7;
        if (kSerializer != null) {
            if (!(!p.a(kSerializer, concreteSerializer))) {
                map8.remove(kSerializer.getDescriptor().a());
            } else {
                throw new SerializerAlreadyRegisteredException(baseClass, concreteClass);
            }
        }
        KSerializer<?> kSerializer2 = map8.get(a2);
        if (kSerializer2 != null) {
            Map<c<?>, KSerializer<?>> map9 = this.f39012b.get(baseClass);
            if (map9 == null) {
                p.a();
            }
            Map<c<?>, KSerializer<?>> asSequence = map9;
            p.d(asSequence, "$this$asSequence");
            Iterator a3 = n.p(asSequence.entrySet()).a();
            while (true) {
                if (!a3.hasNext()) {
                    obj = null;
                    break;
                }
                obj = a3.next();
                if (((KSerializer) ((Map.Entry) obj).getValue()) == kSerializer2) {
                    break;
                }
            }
            throw new IllegalArgumentException("Multiple polymorphic serializers for base class '" + baseClass + "' have the same serial name '" + a2 + "': '" + concreteClass + "' and '" + ((Map.Entry) obj) + '\'');
        }
        map4.put(concreteClass, concreteSerializer);
        map8.put(a2, concreteSerializer);
    }
}
