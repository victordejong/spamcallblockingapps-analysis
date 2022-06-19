package kotlinx.serialization.p571a;

import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.p572b.C20342ag;
import kotlinx.serialization.p572b.C20344ai;
import kotlinx.serialization.p572b.C20391f;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001e\n��\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0010\"\n\u0002\b\u0004\n\u0002\u0010$\n\u0002\b\u0006\u001a&\u0010\t\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00030\u00020\u0001\"\u0004\b��\u0010\u00032\f\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\u00030\u0001\u001a@\u0010\u000b\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\r\u0012\u0004\u0012\u0002H\u000e0\f0\u0001\"\u0004\b��\u0010\r\"\u0004\b\u0001\u0010\u000e2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u0002H\r0\u00012\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u0002H\u000e0\u0001\u001a&\u0010\u0011\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00030\u00070\u0001\"\u0004\b��\u0010\u00032\f\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\u00030\u0001\"-\u0010��\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00030\u00020\u0001\"\u0004\b��\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00030\u00018F¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005\"-\u0010\u0006\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00030\u00070\u0001\"\u0004\b��\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00030\u00018F¢\u0006\u0006\u001a\u0004\b\b\u0010\u0005¨\u0006\u0012"}, m4298d2 = {"list", "Lkotlinx/serialization/KSerializer;", "", "T", "getList", "(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;", "set", "", "getSet", "ListSerializer", "elementSerializer", "MapSerializer", "", "K", "V", "keySerializer", "valueSerializer", "SetSerializer", "kotlinx-serialization-runtime"}, m4297k = 2, m4296mv = {1, 1, 16})
/* renamed from: kotlinx.serialization.a.d */
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/a/d.class */
public final class C20332d {
    /* renamed from: a */
    public static final <T> KSerializer<List<T>> m743a(KSerializer<T> elementSerializer) {
        C18524p.m3841c(elementSerializer, "elementSerializer");
        return new C20391f(elementSerializer);
    }

    /* renamed from: a */
    public static final <K, V> KSerializer<Map<K, V>> m742a(KSerializer<K> keySerializer, KSerializer<V> valueSerializer) {
        C18524p.m3841c(keySerializer, "keySerializer");
        C18524p.m3841c(valueSerializer, "valueSerializer");
        return new C20342ag(keySerializer, valueSerializer);
    }

    /* renamed from: b */
    public static final <T> KSerializer<Set<T>> m741b(KSerializer<T> elementSerializer) {
        C18524p.m3841c(elementSerializer, "elementSerializer");
        return new C20344ai(elementSerializer);
    }
}
