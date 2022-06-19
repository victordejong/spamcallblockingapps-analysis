package kotlinx.serialization.p572b;

import java.util.Map;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.p534a.AbstractC18481a;
import kotlin.p518a.C18297z;
import kotlinx.serialization.AbstractC20462t;
import kotlinx.serialization.C20443l;
import kotlinx.serialization.C20444m;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialDescriptor;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010&\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0007\u0018��*\u0004\b��\u0010\u0001*\u0004\b\u0001\u0010\u00022 \u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u00040\u0003:\u0001\u0014B!\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028��0\u0006\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00010\u0006¢\u0006\u0002\u0010\bJ)\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u00042\u0006\u0010\r\u001a\u00028��2\u0006\u0010\u0010\u001a\u00028\u0001H\u0016¢\u0006\u0002\u0010\u0013R\u0014\u0010\t\u001a\u00020\nX\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\fR$\u0010\r\u001a\u00028��*\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fR$\u0010\u0010\u001a\u00028\u0001*\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u000f¨\u0006\u0015"}, m4298d2 = {"Lkotlinx/serialization/internal/MapEntrySerializer;", "K", "V", "Lkotlinx/serialization/internal/KeyValueSerializer;", "", "keySerializer", "Lkotlinx/serialization/KSerializer;", "valueSerializer", "(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V", "descriptor", "Lkotlinx/serialization/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/SerialDescriptor;", "key", "getKey", "(Ljava/util/Map$Entry;)Ljava/lang/Object;", "value", "getValue", "toResult", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;", "MapEntry", "kotlinx-serialization-runtime"}, m4297k = 1, m4296mv = {1, 1, 16})
/* renamed from: kotlinx.serialization.b.ao */
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/ao.class */
public final class C20350ao<K, V> extends AbstractC20340ae<K, V, Map.Entry<? extends K, ? extends V>> {

    /* renamed from: a */
    private final SerialDescriptor f66825a;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��(\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010&\n\u0002\b\f\n\u0002\u0010\u000b\n��\n\u0002\u0010��\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n��\b\u0082\b\u0018��*\u0004\b\u0002\u0010\u0001*\u0004\b\u0003\u0010\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u0003B\u0015\u0012\u0006\u0010\u0004\u001a\u00028\u0002\u0012\u0006\u0010\u0005\u001a\u00028\u0003¢\u0006\u0002\u0010\u0006J\u000e\u0010\u000b\u001a\u00028\u0002HÆ\u0003¢\u0006\u0002\u0010\bJ\u000e\u0010\f\u001a\u00028\u0003HÆ\u0003¢\u0006\u0002\u0010\bJ.\u0010\r\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030��2\b\b\u0002\u0010\u0004\u001a\u00028\u00022\b\b\u0002\u0010\u0005\u001a\u00028\u0003HÆ\u0001¢\u0006\u0002\u0010\u000eJ\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001R\u0016\u0010\u0004\u001a\u00028\u0002X\u0096\u0004¢\u0006\n\n\u0002\u0010\t\u001a\u0004\b\u0007\u0010\bR\u0016\u0010\u0005\u001a\u00028\u0003X\u0096\u0004¢\u0006\n\n\u0002\u0010\t\u001a\u0004\b\n\u0010\b¨\u0006\u0017"}, m4298d2 = {"Lkotlinx/serialization/internal/MapEntrySerializer$MapEntry;", "K", "V", "", "key", "value", "(Ljava/lang/Object;Ljava/lang/Object;)V", "getKey", "()Ljava/lang/Object;", "Ljava/lang/Object;", "getValue", "component1", "component2", "copy", "(Ljava/lang/Object;Ljava/lang/Object;)Lkotlinx/serialization/internal/MapEntrySerializer$MapEntry;", "equals", "", "other", "", "hashCode", "", "toString", "", "kotlinx-serialization-runtime"}, m4297k = 1, m4296mv = {1, 1, 16})
    /* renamed from: kotlinx.serialization.b.ao$a */
    /* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/ao$a.class */
    static final class C20351a<K, V> implements Map.Entry<K, V>, AbstractC18481a {

        /* renamed from: a */
        private final K f66826a;

        /* renamed from: b */
        private final V f66827b;

        public C20351a(K k, V v) {
            this.f66826a = k;
            this.f66827b = v;
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C20351a)) {
                    return false;
                }
                C20351a c20351a = (C20351a) obj;
                return C18524p.m3850a(getKey(), c20351a.getKey()) && C18524p.m3850a(getValue(), c20351a.getValue());
            }
            return true;
        }

        @Override // java.util.Map.Entry
        public final K getKey() {
            return this.f66826a;
        }

        @Override // java.util.Map.Entry
        public final V getValue() {
            return this.f66827b;
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

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0010\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002\"\u0004\b\u0001\u0010\u0003*\u00020\u0004H\n¢\u0006\u0002\b\u0005"}, m4298d2 = {"<anonymous>", "", "K", "V", "Lkotlinx/serialization/SerialDescriptorBuilder;", "invoke"}, m4297k = 3, m4296mv = {1, 1, 16})
    /* renamed from: kotlinx.serialization.b.ao$b */
    /* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/ao$b.class */
    public static final class C20352b extends AbstractC18526r implements Function1<C20443l, C20128v> {

        /* renamed from: a */
        final /* synthetic */ KSerializer f66828a;

        /* renamed from: b */
        final /* synthetic */ KSerializer f66829b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C20352b(KSerializer kSerializer, KSerializer kSerializer2) {
            super(1);
            this.f66828a = kSerializer;
            this.f66829b = kSerializer2;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ C20128v invoke(C20443l c20443l) {
            C20443l receiver = c20443l;
            C18524p.m3841c(receiver, "$receiver");
            receiver.m678a("key", this.f66828a.getDescriptor(), C18297z.f63400a, false);
            receiver.m678a("value", this.f66829b.getDescriptor(), C18297z.f63400a, false);
            return C20128v.f66529a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C20350ao(KSerializer<K> keySerializer, KSerializer<V> valueSerializer) {
        super(keySerializer, valueSerializer, null);
        C18524p.m3841c(keySerializer, "keySerializer");
        C18524p.m3841c(valueSerializer, "valueSerializer");
        this.f66825a = C20444m.m674a("kotlin.collections.Map.Entry", AbstractC20462t.C20465c.f66970a, new C20352b(keySerializer, valueSerializer));
    }

    @Override // kotlinx.serialization.p572b.AbstractC20340ae
    /* renamed from: a */
    public final /* synthetic */ Object mo729a(Object obj) {
        Map.Entry key = (Map.Entry) obj;
        C18524p.m3841c(key, "$this$key");
        return key.getKey();
    }

    @Override // kotlinx.serialization.p572b.AbstractC20340ae
    /* renamed from: a */
    public final /* synthetic */ Object mo728a(Object obj, Object obj2) {
        return new C20351a(obj, obj2);
    }

    @Override // kotlinx.serialization.p572b.AbstractC20340ae
    /* renamed from: b */
    public final /* synthetic */ Object mo727b(Object obj) {
        Map.Entry value = (Map.Entry) obj;
        C18524p.m3841c(value, "$this$value");
        return value.getValue();
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.AbstractC20415d, kotlinx.serialization.AbstractC20460r
    public final SerialDescriptor getDescriptor() {
        return this.f66825a;
    }
}
