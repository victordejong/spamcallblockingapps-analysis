package kotlinx.serialization.modules;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.a.ai;
import kotlin.jvm.internal.LongCompanionObject;
import kotlin.jvm.internal.ac;
import kotlin.jvm.internal.ae;
import kotlin.jvm.internal.f;
import kotlin.jvm.internal.j;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.p;
import kotlin.reflect.c;
import kotlin.t;
import kotlin.v;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.a.d;
import kotlinx.serialization.a.e;
import kotlinx.serialization.b.aa;
import kotlinx.serialization.b.ag;
import kotlinx.serialization.b.bo;
import kotlinx.serialization.b.y;
import kotlinx.serialization.i;
import kotlinx.serialization.q;
@Metadata(bv = {1, 0, 3}, d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\bÀ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001b\u0010\t\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00062\u0006\u0010\n\u001a\u00020\u0005H��¢\u0006\u0002\b\u000bJ\u001b\u0010\f\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00062\u0006\u0010\r\u001a\u00020\u0001H��¢\u0006\u0002\b\u000eR\u001e\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u0004X\u0082\u0004¢\u0006\u0002\n��R\"\u0010\u0007\u001a\u0016\u0012\b\u0012\u0006\u0012\u0002\b\u00030\b\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u000f"}, d2 = {"Lkotlinx/serialization/modules/StandardSubtypesOfAny;", "", "()V", "deserializingMap", "", "", "Lkotlinx/serialization/KSerializer;", "map", "Lkotlin/reflect/KClass;", "getDefaultDeserializer", "serializedClassName", "getDefaultDeserializer$kotlinx_serialization_runtime", "getSubclassSerializer", "objectToCheck", "getSubclassSerializer$kotlinx_serialization_runtime", "kotlinx-serialization-runtime"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/modules/StandardSubtypesOfAny.class */
public final class StandardSubtypesOfAny {
    public static final StandardSubtypesOfAny INSTANCE = new StandardSubtypesOfAny();
    private static final Map<String, KSerializer<?>> deserializingMap;
    private static final Map<c<?>, KSerializer<?>> map;

    static {
        Map<c<?>, KSerializer<?>> a2 = ai.a(t.a(ac.b(List.class), d.a(kotlinx.serialization.a.c.a(new i(ac.b(Object.class))))), t.a(ac.b(LinkedHashSet.class), d.b(kotlinx.serialization.a.c.a(new i(ac.b(Object.class))))), t.a(ac.b(HashSet.class), new aa(kotlinx.serialization.a.c.a(new i(ac.b(Object.class))))), t.a(ac.b(Set.class), d.b(kotlinx.serialization.a.c.a(new i(ac.b(Object.class))))), t.a(ac.b(LinkedHashMap.class), new ag(kotlinx.serialization.a.c.a(new i(ac.b(Object.class))), kotlinx.serialization.a.c.a(new i(ac.b(Object.class))))), t.a(ac.b(HashMap.class), new y(kotlinx.serialization.a.c.a(new i(ac.b(Object.class))), kotlinx.serialization.a.c.a(new i(ac.b(Object.class))))), t.a(ac.b(Map.class), new ag(kotlinx.serialization.a.c.a(new i(ac.b(Object.class))), kotlinx.serialization.a.c.a(new i(ac.b(Object.class))))), t.a(ac.b(Map.Entry.class), kotlinx.serialization.a.c.a(kotlinx.serialization.a.c.a(new i(ac.b(Object.class))), kotlinx.serialization.a.c.a(new i(ac.b(Object.class))))), t.a(ac.b(String.class), e.a(kotlin.jvm.internal.ag.f36785a)), t.a(ac.b(Character.TYPE), e.a(f.f36799a)), t.a(ac.b(Integer.TYPE), e.a(o.f36807a)), t.a(ac.b(Byte.TYPE), e.a(kotlin.jvm.internal.d.f36797a)), t.a(ac.b(Short.TYPE), e.a(ae.f36783a)), t.a(ac.b(Long.TYPE), e.a(LongCompanionObject.f36773a)), t.a(ac.b(Double.TYPE), e.a(j.f36805a)), t.a(ac.b(Float.TYPE), e.a(k.f36806a)), t.a(ac.b(Boolean.TYPE), e.a(kotlin.jvm.internal.c.f36796a)), t.a(ac.b(v.class), bo.f38941a));
        map = a2;
        LinkedHashMap linkedHashMap = new LinkedHashMap(ai.a(a2.size()));
        Iterator<T> it2 = a2.entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry entry = (Map.Entry) it2.next();
            linkedHashMap.put(((KSerializer) entry.getValue()).getDescriptor().a(), entry.getValue());
        }
        deserializingMap = linkedHashMap;
    }

    private StandardSubtypesOfAny() {
    }

    public final KSerializer<?> getDefaultDeserializer$kotlinx_serialization_runtime(String serializedClassName) {
        p.c(serializedClassName, "serializedClassName");
        return deserializingMap.get(serializedClassName);
    }

    public final KSerializer<?> getSubclassSerializer$kotlinx_serialization_runtime(Object objectToCheck) {
        p.c(objectToCheck, "objectToCheck");
        for (Map.Entry<c<?>, KSerializer<?>> entry : map.entrySet()) {
            c<?> key = entry.getKey();
            KSerializer<?> value = entry.getValue();
            if (q.a(objectToCheck, key)) {
                return value;
            }
        }
        return null;
    }
}
