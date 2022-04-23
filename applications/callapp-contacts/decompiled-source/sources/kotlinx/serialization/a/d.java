package kotlinx.serialization.a;

import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.b.ag;
import kotlinx.serialization.b.ai;
import kotlinx.serialization.b.f;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n��\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0010\"\n\u0002\b\u0004\n\u0002\u0010$\n\u0002\b\u0006\u001a&\u0010\t\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00030\u00020\u0001\"\u0004\b��\u0010\u00032\f\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\u00030\u0001\u001a@\u0010\u000b\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\r\u0012\u0004\u0012\u0002H\u000e0\f0\u0001\"\u0004\b��\u0010\r\"\u0004\b\u0001\u0010\u000e2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u0002H\r0\u00012\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u0002H\u000e0\u0001\u001a&\u0010\u0011\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00030\u00070\u0001\"\u0004\b��\u0010\u00032\f\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\u00030\u0001\"-\u0010��\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00030\u00020\u0001\"\u0004\b��\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00030\u00018F¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005\"-\u0010\u0006\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00030\u00070\u0001\"\u0004\b��\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00030\u00018F¢\u0006\u0006\u001a\u0004\b\b\u0010\u0005¨\u0006\u0012"}, d2 = {"list", "Lkotlinx/serialization/KSerializer;", "", "T", "getList", "(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;", "set", "", "getSet", "ListSerializer", "elementSerializer", "MapSerializer", "", "K", "V", "keySerializer", "valueSerializer", "SetSerializer", "kotlinx-serialization-runtime"}, k = 2, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/a/d.class */
public final class d {
    public static final <T> KSerializer<List<T>> a(KSerializer<T> elementSerializer) {
        p.c(elementSerializer, "elementSerializer");
        return new f(elementSerializer);
    }

    public static final <K, V> KSerializer<Map<K, V>> a(KSerializer<K> keySerializer, KSerializer<V> valueSerializer) {
        p.c(keySerializer, "keySerializer");
        p.c(valueSerializer, "valueSerializer");
        return new ag(keySerializer, valueSerializer);
    }

    public static final <T> KSerializer<Set<T>> b(KSerializer<T> elementSerializer) {
        p.c(elementSerializer, "elementSerializer");
        return new ai(elementSerializer);
    }
}
