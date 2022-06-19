package kotlinx.serialization.p571a;

import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.p572b.C20350ao;
import kotlinx.serialization.p572b.C20359av;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��&\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0010&\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\u001a@\u0010\u0006\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\b\u0012\u0004\u0012\u0002H\t0\u00070\u0001\"\u0004\b��\u0010\b\"\u0004\b\u0001\u0010\t2\f\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\b0\u00012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u0002H\t0\u0001\u001a@\u0010\f\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\b\u0012\u0004\u0012\u0002H\t0\r0\u0001\"\u0004\b��\u0010\b\"\u0004\b\u0001\u0010\t2\f\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\b0\u00012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u0002H\t0\u0001\u001aZ\u0010\u000e\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u0002H\u0011\u0012\u0004\u0012\u0002H\u00120\u000f0\u0001\"\u0004\b��\u0010\u0010\"\u0004\b\u0001\u0010\u0011\"\u0004\b\u0002\u0010\u00122\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u0002H\u00100\u00012\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u0002H\u00110\u00012\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u0002H\u00120\u0001\"-\u0010��\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00020\u00018F¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006\u0016"}, m4298d2 = {"nullable", "Lkotlinx/serialization/KSerializer;", "T", "", "getNullable", "(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;", "MapEntrySerializer", "", "K", "V", "keySerializer", "valueSerializer", "PairSerializer", "Lkotlin/Pair;", "TripleSerializer", "Lkotlin/Triple;", "A", "B", "C", "aSerializer", "bSerializer", "cSerializer", "kotlinx-serialization-runtime"}, m4297k = 2, m4296mv = {1, 1, 16})
/* renamed from: kotlinx.serialization.a.c */
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/a/c.class */
public final class C20331c {
    /* renamed from: a */
    public static final <T> KSerializer<T> m745a(KSerializer<T> nullable) {
        C18524p.m3841c(nullable, "$this$nullable");
        return nullable.getDescriptor().mo660c() ? nullable : new C20359av(nullable);
    }

    /* renamed from: a */
    public static final <K, V> KSerializer<Map.Entry<K, V>> m744a(KSerializer<K> keySerializer, KSerializer<V> valueSerializer) {
        C18524p.m3841c(keySerializer, "keySerializer");
        C18524p.m3841c(valueSerializer, "valueSerializer");
        return new C20350ao(keySerializer, valueSerializer);
    }
}
