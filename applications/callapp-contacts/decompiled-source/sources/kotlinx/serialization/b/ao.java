package kotlinx.serialization.b;

import java.util.Map;
import kotlin.Metadata;
import kotlin.a.z;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.v;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialDescriptor;
import kotlinx.serialization.l;
import kotlinx.serialization.m;
import kotlinx.serialization.t;
@Metadata(bv = {1, 0, 3}, d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010&\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0007\u0018��*\u0004\b��\u0010\u0001*\u0004\b\u0001\u0010\u00022 \u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u00040\u0003:\u0001\u0014B!\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028��0\u0006\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00010\u0006¢\u0006\u0002\u0010\bJ)\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u00042\u0006\u0010\r\u001a\u00028��2\u0006\u0010\u0010\u001a\u00028\u0001H\u0016¢\u0006\u0002\u0010\u0013R\u0014\u0010\t\u001a\u00020\nX\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\fR$\u0010\r\u001a\u00028��*\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fR$\u0010\u0010\u001a\u00028\u0001*\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u000f¨\u0006\u0015"}, d2 = {"Lkotlinx/serialization/internal/MapEntrySerializer;", "K", "V", "Lkotlinx/serialization/internal/KeyValueSerializer;", "", "keySerializer", "Lkotlinx/serialization/KSerializer;", "valueSerializer", "(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V", "descriptor", "Lkotlinx/serialization/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/SerialDescriptor;", "key", "getKey", "(Ljava/util/Map$Entry;)Ljava/lang/Object;", "value", "getValue", "toResult", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;", "MapEntry", "kotlinx-serialization-runtime"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/ao.class */
public final class ao<K, V> extends ae<K, V, Map.Entry<? extends K, ? extends V>> {

    /* renamed from: a  reason: collision with root package name */
    private final SerialDescriptor f38891a;

    @Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010&\n\u0002\b\f\n\u0002\u0010\u000b\n��\n\u0002\u0010��\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n��\b\u0082\b\u0018��*\u0004\b\u0002\u0010\u0001*\u0004\b\u0003\u0010\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u0003B\u0015\u0012\u0006\u0010\u0004\u001a\u00028\u0002\u0012\u0006\u0010\u0005\u001a\u00028\u0003¢\u0006\u0002\u0010\u0006J\u000e\u0010\u000b\u001a\u00028\u0002HÆ\u0003¢\u0006\u0002\u0010\bJ\u000e\u0010\f\u001a\u00028\u0003HÆ\u0003¢\u0006\u0002\u0010\bJ.\u0010\r\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030��2\b\b\u0002\u0010\u0004\u001a\u00028\u00022\b\b\u0002\u0010\u0005\u001a\u00028\u0003HÆ\u0001¢\u0006\u0002\u0010\u000eJ\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001R\u0016\u0010\u0004\u001a\u00028\u0002X\u0096\u0004¢\u0006\n\n\u0002\u0010\t\u001a\u0004\b\u0007\u0010\bR\u0016\u0010\u0005\u001a\u00028\u0003X\u0096\u0004¢\u0006\n\n\u0002\u0010\t\u001a\u0004\b\n\u0010\b¨\u0006\u0017"}, d2 = {"Lkotlinx/serialization/internal/MapEntrySerializer$MapEntry;", "K", "V", "", "key", "value", "(Ljava/lang/Object;Ljava/lang/Object;)V", "getKey", "()Ljava/lang/Object;", "Ljava/lang/Object;", "getValue", "component1", "component2", "copy", "(Ljava/lang/Object;Ljava/lang/Object;)Lkotlinx/serialization/internal/MapEntrySerializer$MapEntry;", "equals", "", "other", "", "hashCode", "", "toString", "", "kotlinx-serialization-runtime"}, k = 1, mv = {1, 1, 16})
    /* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/ao$a.class */
    static final class a<K, V> implements Map.Entry<K, V>, kotlin.jvm.internal.a.a {

        /* renamed from: a  reason: collision with root package name */
        private final K f38892a;

        /* renamed from: b  reason: collision with root package name */
        private final V f38893b;

        public a(K k, V v) {
            this.f38892a = k;
            this.f38893b = v;
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return p.a(getKey(), aVar.getKey()) && p.a(getValue(), aVar.getValue());
        }

        @Override // java.util.Map.Entry
        public final K getKey() {
            return this.f38892a;
        }

        @Override // java.util.Map.Entry
        public final V getValue() {
            return this.f38893b;
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            K key = getKey();
            int i = 0;
            int hashCode = key != null ? key.hashCode() : 0;
            V value = getValue();
            if (value != null) {
                i = value.hashCode();
            }
            return (hashCode * 31) + i;
        }

        @Override // java.util.Map.Entry
        public final V setValue(V v) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        public final String toString() {
            return "MapEntry(key=" + getKey() + ", value=" + getValue() + ")";
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002\"\u0004\b\u0001\u0010\u0003*\u00020\u0004H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "K", "V", "Lkotlinx/serialization/SerialDescriptorBuilder;", "invoke"}, k = 3, mv = {1, 1, 16})
    /* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/ao$b.class */
    static final class b extends r implements Function1<l, v> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ KSerializer f38894a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ KSerializer f38895b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(KSerializer kSerializer, KSerializer kSerializer2) {
            super(1);
            this.f38894a = kSerializer;
            this.f38895b = kSerializer2;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ v invoke(l lVar) {
            l receiver = lVar;
            p.c(receiver, "$receiver");
            receiver.a("key", this.f38894a.getDescriptor(), z.f36608a, false);
            receiver.a("value", this.f38895b.getDescriptor(), z.f36608a, false);
            return v.f38654a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ao(KSerializer<K> keySerializer, KSerializer<V> valueSerializer) {
        super(keySerializer, valueSerializer, null);
        p.c(keySerializer, "keySerializer");
        p.c(valueSerializer, "valueSerializer");
        this.f38891a = m.a("kotlin.collections.Map.Entry", t.c.f39021a, new b(keySerializer, valueSerializer));
    }

    @Override // kotlinx.serialization.b.ae
    public final /* synthetic */ Object a(Object obj) {
        Map.Entry key = (Map.Entry) obj;
        p.c(key, "$this$key");
        return key.getKey();
    }

    @Override // kotlinx.serialization.b.ae
    public final /* synthetic */ Object a(Object obj, Object obj2) {
        return new a(obj, obj2);
    }

    @Override // kotlinx.serialization.b.ae
    public final /* synthetic */ Object b(Object obj) {
        Map.Entry value = (Map.Entry) obj;
        p.c(value, "$this$value");
        return value.getValue();
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.d, kotlinx.serialization.r
    public final SerialDescriptor getDescriptor() {
        return this.f38891a;
    }
}
