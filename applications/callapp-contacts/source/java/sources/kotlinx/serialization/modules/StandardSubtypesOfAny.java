package kotlinx.serialization.modules;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.C20126t;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18498ae;
import kotlin.jvm.internal.C18500ag;
import kotlin.jvm.internal.C18509c;
import kotlin.jvm.internal.C18510d;
import kotlin.jvm.internal.C18513f;
import kotlin.jvm.internal.C18518j;
import kotlin.jvm.internal.C18519k;
import kotlin.jvm.internal.C18523o;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.LongCompanionObject;
import kotlin.p518a.C18247ai;
import kotlin.reflect.AbstractC18551c;
import kotlinx.serialization.C20422i;
import kotlinx.serialization.C20459q;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.p571a.C20331c;
import kotlinx.serialization.p571a.C20332d;
import kotlinx.serialization.p571a.C20333e;
import kotlinx.serialization.p572b.C20336aa;
import kotlinx.serialization.p572b.C20342ag;
import kotlinx.serialization.p572b.C20385bo;
import kotlinx.serialization.p572b.C20412y;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\bÀ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001b\u0010\t\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00062\u0006\u0010\n\u001a\u00020\u0005H��¢\u0006\u0002\b\u000bJ\u001b\u0010\f\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00062\u0006\u0010\r\u001a\u00020\u0001H��¢\u0006\u0002\b\u000eR\u001e\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u0004X\u0082\u0004¢\u0006\u0002\n��R\"\u0010\u0007\u001a\u0016\u0012\b\u0012\u0006\u0012\u0002\b\u00030\b\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u000f"}, m4298d2 = {"Lkotlinx/serialization/modules/StandardSubtypesOfAny;", "", "()V", "deserializingMap", "", "", "Lkotlinx/serialization/KSerializer;", "map", "Lkotlin/reflect/KClass;", "getDefaultDeserializer", "serializedClassName", "getDefaultDeserializer$kotlinx_serialization_runtime", "getSubclassSerializer", "objectToCheck", "getSubclassSerializer$kotlinx_serialization_runtime", "kotlinx-serialization-runtime"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/modules/StandardSubtypesOfAny.class */
public final class StandardSubtypesOfAny {
    public static final StandardSubtypesOfAny INSTANCE = new StandardSubtypesOfAny();
    private static final Map<String, KSerializer<?>> deserializingMap;
    private static final Map<AbstractC18551c<?>, KSerializer<?>> map;

    static {
        Map<AbstractC18551c<?>, KSerializer<?>> a = C18247ai.m4251a(C20126t.m1103a(C18496ac.m3882b(List.class), C20332d.m743a(C20331c.m745a(new C20422i(C18496ac.m3882b(Object.class))))), C20126t.m1103a(C18496ac.m3882b(LinkedHashSet.class), C20332d.m741b(C20331c.m745a(new C20422i(C18496ac.m3882b(Object.class))))), C20126t.m1103a(C18496ac.m3882b(HashSet.class), new C20336aa(C20331c.m745a(new C20422i(C18496ac.m3882b(Object.class))))), C20126t.m1103a(C18496ac.m3882b(Set.class), C20332d.m741b(C20331c.m745a(new C20422i(C18496ac.m3882b(Object.class))))), C20126t.m1103a(C18496ac.m3882b(LinkedHashMap.class), new C20342ag(C20331c.m745a(new C20422i(C18496ac.m3882b(Object.class))), C20331c.m745a(new C20422i(C18496ac.m3882b(Object.class))))), C20126t.m1103a(C18496ac.m3882b(HashMap.class), new C20412y(C20331c.m745a(new C20422i(C18496ac.m3882b(Object.class))), C20331c.m745a(new C20422i(C18496ac.m3882b(Object.class))))), C20126t.m1103a(C18496ac.m3882b(Map.class), new C20342ag(C20331c.m745a(new C20422i(C18496ac.m3882b(Object.class))), C20331c.m745a(new C20422i(C18496ac.m3882b(Object.class))))), C20126t.m1103a(C18496ac.m3882b(Map.Entry.class), C20331c.m744a(C20331c.m745a(new C20422i(C18496ac.m3882b(Object.class))), C20331c.m745a(new C20422i(C18496ac.m3882b(Object.class))))), C20126t.m1103a(C18496ac.m3882b(String.class), C20333e.m738a(C18500ag.f63594a)), C20126t.m1103a(C18496ac.m3882b(Character.TYPE), C20333e.m735a(C18513f.f63610a)), C20126t.m1103a(C18496ac.m3882b(Integer.TYPE), C20333e.m732a(C18523o.f63621a)), C20126t.m1103a(C18496ac.m3882b(Byte.TYPE), C20333e.m736a(C18510d.f63608a)), C20126t.m1103a(C18496ac.m3882b(Short.TYPE), C20333e.m739a(C18498ae.f63592a)), C20126t.m1103a(C18496ac.m3882b(Long.TYPE), C20333e.m740a(LongCompanionObject.f63582a)), C20126t.m1103a(C18496ac.m3882b(Double.TYPE), C20333e.m734a(C18518j.f63619a)), C20126t.m1103a(C18496ac.m3882b(Float.TYPE), C20333e.m733a(C18519k.f63620a)), C20126t.m1103a(C18496ac.m3882b(Boolean.TYPE), C20333e.m737a(C18509c.f63607a)), C20126t.m1103a(C18496ac.m3882b(C20128v.class), C20385bo.f66879a));
        map = a;
        LinkedHashMap linkedHashMap = new LinkedHashMap(C18247ai.m4260a(a.size()));
        Iterator<T> it2 = a.entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry entry = (Map.Entry) it2.next();
            linkedHashMap.put(((KSerializer) entry.getValue()).getDescriptor().mo665a(), entry.getValue());
        }
        deserializingMap = linkedHashMap;
    }

    private StandardSubtypesOfAny() {
    }

    public final KSerializer<?> getDefaultDeserializer$kotlinx_serialization_runtime(String serializedClassName) {
        C18524p.m3841c(serializedClassName, "serializedClassName");
        return deserializingMap.get(serializedClassName);
    }

    public final KSerializer<?> getSubclassSerializer$kotlinx_serialization_runtime(Object objectToCheck) {
        C18524p.m3841c(objectToCheck, "objectToCheck");
        for (Map.Entry<AbstractC18551c<?>, KSerializer<?>> entry : map.entrySet()) {
            AbstractC18551c<?> key = entry.getKey();
            KSerializer<?> value = entry.getValue();
            if (C20459q.m655a(objectToCheck, key)) {
                return value;
            }
        }
        return null;
    }
}
