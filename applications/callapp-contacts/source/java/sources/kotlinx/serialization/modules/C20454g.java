package kotlinx.serialization.modules;

import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.reflect.AbstractC18551c;
import kotlinx.serialization.KSerializer;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0010��\n\u0002\b\u0007\n\u0002\u0010\u0011\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0003\u0018��2\u00020\u0001B\u0007\b��¢\u0006\u0002\u0010\u0002J\r\u0010\n\u001a\u00020\u000bH��¢\u0006\u0002\b\fJ.\u0010\r\u001a\u00020\u000e\"\b\b��\u0010\u000f*\u00020\u00102\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u0002H\u000f0\u00052\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u0002H\u000f0\u0006H\u0016J\u000e\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u000bJT\u0010\u0015\u001a\u00020\u000e2\n\u0010\u0016\u001a\u0006\u0012\u0002\b\u00030\u00052\u001a\u0010\u0017\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030\u00050\u0018\"\u0006\u0012\u0002\b\u00030\u00052\u001f\b\u0002\u0010\u0019\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00100\u001b\u0012\u0004\u0012\u00020\u000e0\u001a¢\u0006\u0002\b\u001c¢\u0006\u0002\u0010\u001dJF\u0010\u0015\u001a\u00020\u000e\"\b\b��\u0010\u001e*\u00020\u0010\"\b\b\u0001\u0010\u001f*\u0002H\u001e2\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u0002H\u001e0\u00052\f\u0010 \u001a\b\u0012\u0004\u0012\u0002H\u001f0\u00052\f\u0010!\u001a\b\u0012\u0004\u0012\u0002H\u001f0\u0006H\u0016JQ\u0010\u0015\u001a\u00020\u000e\"\b\b��\u0010\u001e*\u00020\u00102\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u0002H\u001e0\u00052\u0010\b\u0002\u0010\"\u001a\n\u0012\u0004\u0012\u0002H\u001e\u0018\u00010\u00062\u001f\b\u0002\u0010\u0019\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u001e0\u001b\u0012\u0004\u0012\u00020\u000e0\u001a¢\u0006\u0002\b\u001cJH\u0010\u0015\u001a\u00020\u000e\"\n\b��\u0010\u001e\u0018\u0001*\u00020\u00102\u0010\b\u0002\u0010\"\u001a\n\u0012\u0004\u0012\u0002H\u001e\u0018\u00010\u00062\u001f\b\n\u0010\u0019\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u001e0\u001b\u0012\u0004\u0012\u00020\u000e0\u001a¢\u0006\u0002\b\u001cH\u0086\bJP\u0010#\u001a\u00020\u000e\"\b\b��\u0010\u001e*\u00020\u0010\"\b\b\u0001\u0010\u001f*\u0002H\u001e2\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u0002H\u001e0\u00052\f\u0010$\u001a\b\u0012\u0004\u0012\u0002H\u001f0\u00052\f\u0010%\u001a\b\u0012\u0004\u0012\u0002H\u001f0\u00062\b\b\u0002\u0010&\u001a\u00020'H\u0001J8\u0010(\u001a\u00020\u000e\"\b\b��\u0010\u000f*\u00020\u00102\f\u0010)\u001a\b\u0012\u0004\u0012\u0002H\u000f0\u00052\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u0002H\u000f0\u00062\b\b\u0002\u0010&\u001a\u00020'H\u0001R\"\u0010\u0003\u001a\u0016\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0005\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u0004X\u0082\u0004¢\u0006\u0002\n��R.\u0010\u0007\u001a\"\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0005\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\b\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u00040\u0004X\u0082\u0004¢\u0006\u0002\n��R2\u0010\t\u001a&\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0005\u0012\u0018\u0012\u0016\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0005\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u00040\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006*"}, m4298d2 = {"Lkotlinx/serialization/modules/SerializersModuleBuilder;", "Lkotlinx/serialization/modules/SerialModuleCollector;", "()V", "class2Serializer", "", "Lkotlin/reflect/KClass;", "Lkotlinx/serialization/KSerializer;", "polyBase2NamedSerializers", "", "polyBase2Serializers", JsonPOJOBuilder.DEFAULT_BUILD_METHOD, "Lkotlinx/serialization/modules/SerialModule;", "build$kotlinx_serialization_runtime", "contextual", "", "T", "", "kClass", "serializer", "include", "other", "polymorphic", "baseClass", "baseClasses", "", "buildAction", "Lkotlin/Function1;", "Lkotlinx/serialization/modules/PolymorphicModuleBuilder;", "Lkotlin/ExtensionFunctionType;", "(Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;)V", "Base", "Sub", "actualClass", "actualSerializer", "baseSerializer", "registerPolymorphicSerializer", "concreteClass", "concreteSerializer", "allowOverwrite", "", "registerSerializer", "forClass", "kotlinx-serialization-runtime"}, m4297k = 1, m4296mv = {1, 1, 16})
/* renamed from: kotlinx.serialization.modules.g */
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/modules/g.class */
public final class C20454g implements AbstractC20450d {

    /* renamed from: a */
    private final Map<AbstractC18551c<?>, KSerializer<?>> f66954a = new HashMap();

    /* renamed from: b */
    private final Map<AbstractC18551c<?>, Map<AbstractC18551c<?>, KSerializer<?>>> f66955b = new HashMap();

    /* renamed from: c */
    private final Map<AbstractC18551c<?>, Map<String, KSerializer<?>>> f66956c = new HashMap();

    /* renamed from: a */
    public final AbstractC20447b m667a() {
        return new C20453f(this.f66954a, this.f66955b, this.f66956c);
    }

    /* renamed from: a */
    public final void m666a(AbstractC20447b other) {
        C18524p.m3841c(other, "other");
        other.mo668a(this);
    }

    @Override // kotlinx.serialization.modules.AbstractC20450d
    public final <T> void contextual(AbstractC18551c<T> forClass, KSerializer<T> serializer) {
        C18524p.m3841c(forClass, "kClass");
        C18524p.m3841c(serializer, "serializer");
        C18524p.m3841c(forClass, "forClass");
        C18524p.m3841c(serializer, "serializer");
        KSerializer<?> kSerializer = this.f66954a.get(forClass);
        if (kSerializer == null || !(!C18524p.m3850a(kSerializer, serializer))) {
            this.f66954a.put(forClass, serializer);
            return;
        }
        String mo665a = serializer.getDescriptor().mo665a();
        String mo665a2 = kSerializer.getDescriptor().mo665a();
        throw new SerializerAlreadyRegisteredException("Serializer for " + forClass + " already registered in this module: " + kSerializer + " (" + mo665a2 + "), attempted to register " + serializer + " (" + mo665a + ')');
    }

    @Override // kotlinx.serialization.modules.AbstractC20450d
    public final <Base, Sub extends Base> void polymorphic(AbstractC18551c<Base> baseClass, AbstractC18551c<Sub> concreteClass, KSerializer<Sub> concreteSerializer) {
        Object obj;
        C18524p.m3841c(baseClass, "baseClass");
        C18524p.m3841c(concreteClass, "actualClass");
        C18524p.m3841c(concreteSerializer, "actualSerializer");
        C18524p.m3841c(baseClass, "baseClass");
        C18524p.m3841c(concreteClass, "concreteClass");
        C18524p.m3841c(concreteSerializer, "concreteSerializer");
        String mo665a = concreteSerializer.getDescriptor().mo665a();
        Map<AbstractC18551c<?>, Map<AbstractC18551c<?>, KSerializer<?>>> map = this.f66955b;
        Map<AbstractC18551c<?>, KSerializer<?>> map2 = map.get(baseClass);
        HashMap hashMap = map2;
        if (map2 == null) {
            HashMap hashMap2 = new HashMap();
            map.put(baseClass, hashMap2);
            hashMap = hashMap2;
        }
        Map<AbstractC18551c<?>, KSerializer<?>> map3 = hashMap;
        KSerializer<?> kSerializer = map3.get(concreteClass);
        Map<AbstractC18551c<?>, Map<String, KSerializer<?>>> map4 = this.f66956c;
        Map<String, KSerializer<?>> map5 = map4.get(baseClass);
        HashMap hashMap3 = map5;
        if (map5 == null) {
            HashMap hashMap4 = new HashMap();
            map4.put(baseClass, hashMap4);
            hashMap3 = hashMap4;
        }
        Map<String, KSerializer<?>> map6 = hashMap3;
        if (kSerializer != null) {
            if (!C18524p.m3850a(kSerializer, concreteSerializer)) {
                throw new SerializerAlreadyRegisteredException(baseClass, concreteClass);
            }
            map6.remove(kSerializer.getDescriptor().mo665a());
        }
        KSerializer<?> kSerializer2 = map6.get(mo665a);
        if (kSerializer2 == null) {
            map3.put(concreteClass, concreteSerializer);
            map6.put(mo665a, concreteSerializer);
            return;
        }
        Map<AbstractC18551c<?>, KSerializer<?>> map7 = this.f66955b.get(baseClass);
        if (map7 == null) {
            C18524p.m3855a();
        }
        Map<AbstractC18551c<?>, KSerializer<?>> asSequence = map7;
        C18524p.m3840d(asSequence, "$this$asSequence");
        Iterator mo3908a = C18282n.m4106p(asSequence.entrySet()).mo3908a();
        while (true) {
            if (!mo3908a.hasNext()) {
                obj = null;
                break;
            }
            obj = mo3908a.next();
            if (((KSerializer) ((Map.Entry) obj).getValue()) == kSerializer2) {
                break;
            }
        }
        throw new IllegalArgumentException("Multiple polymorphic serializers for base class '" + baseClass + "' have the same serial name '" + mo665a + "': '" + concreteClass + "' and '" + ((Map.Entry) obj) + '\'');
    }
}
