package kotlinx.serialization.p572b;

import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.AbstractC20327a;
import kotlinx.serialization.CompositeEncoder;
import kotlinx.serialization.Decoder;
import kotlinx.serialization.Encoder;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationException;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��0\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b7\u0018��*\u0004\b��\u0010\u0001*\u0004\b\u0001\u0010\u0002*\u0004\b\u0002\u0010\u00032\b\u0012\u0004\u0012\u0002H\u00030\u0004B#\b\u0002\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028��0\u0004\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004¢\u0006\u0002\u0010\u0007J\u0015\u0010\u0010\u001a\u00028\u00022\u0006\u0010\u0011\u001a\u00020\u0012H\u0016¢\u0006\u0002\u0010\u0013J\u001d\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u000e\u001a\u00028\u0002H\u0016¢\u0006\u0002\u0010\u0018J\u001d\u0010\u0019\u001a\u00028\u00022\u0006\u0010\u000b\u001a\u00028��2\u0006\u0010\u000e\u001a\u00028\u0001H&¢\u0006\u0002\u0010\u001aR\u001a\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028��0\u0004X\u0084\u0004¢\u0006\b\n��\u001a\u0004\b\b\u0010\tR\u001a\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004X\u0084\u0004¢\u0006\b\n��\u001a\u0004\b\n\u0010\tR\u0016\u0010\u000b\u001a\u00028��*\u00028\u0002X¦\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u0016\u0010\u000e\u001a\u00028\u0001*\u00028\u0002X¦\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\r\u0082\u0001\u0002\u001b\u001c¨\u0006\u001d"}, m4298d2 = {"Lkotlinx/serialization/internal/KeyValueSerializer;", "K", "V", "R", "Lkotlinx/serialization/KSerializer;", "keySerializer", "valueSerializer", "(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V", "getKeySerializer", "()Lkotlinx/serialization/KSerializer;", "getValueSerializer", "key", "getKey", "(Ljava/lang/Object;)Ljava/lang/Object;", "value", "getValue", "deserialize", "decoder", "Lkotlinx/serialization/Decoder;", "(Lkotlinx/serialization/Decoder;)Ljava/lang/Object;", "serialize", "", "encoder", "Lkotlinx/serialization/Encoder;", "(Lkotlinx/serialization/Encoder;Ljava/lang/Object;)V", "toResult", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "Lkotlinx/serialization/internal/MapEntrySerializer;", "Lkotlinx/serialization/internal/PairSerializer;", "kotlinx-serialization-runtime"}, m4297k = 1, m4296mv = {1, 1, 16})
/* renamed from: kotlinx.serialization.b.ae */
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/ae.class */
public abstract class AbstractC20340ae<K, V, R> implements KSerializer<R> {

    /* renamed from: a */
    private final KSerializer<K> f66812a;

    /* renamed from: b */
    private final KSerializer<V> f66813b;

    private AbstractC20340ae(KSerializer<K> kSerializer, KSerializer<V> kSerializer2) {
        this.f66812a = kSerializer;
        this.f66813b = kSerializer2;
    }

    public /* synthetic */ AbstractC20340ae(KSerializer kSerializer, KSerializer kSerializer2, DefaultConstructorMarker defaultConstructorMarker) {
        this(kSerializer, kSerializer2);
    }

    /* renamed from: a */
    public abstract K mo729a(R r);

    /* renamed from: a */
    public abstract R mo728a(K k, V v);

    /* renamed from: b */
    public abstract V mo727b(R r);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.AbstractC20415d
    public R deserialize(Decoder decoder) {
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        C18524p.m3841c(decoder, "decoder");
        AbstractC20327a beginStructure = decoder.beginStructure(getDescriptor(), this.f66812a, this.f66813b);
        if (beginStructure.decodeSequentially()) {
            return (R) mo728a(beginStructure.decodeSerializableElement(getDescriptor(), 0, this.f66812a), beginStructure.decodeSerializableElement(getDescriptor(), 1, this.f66813b));
        }
        obj = C20384bn.f66878a;
        Object obj5 = obj;
        obj2 = C20384bn.f66878a;
        Object obj6 = obj2;
        while (true) {
            int decodeElementIndex = beginStructure.decodeElementIndex(getDescriptor());
            if (decodeElementIndex == -1) {
                beginStructure.endStructure(getDescriptor());
                Object obj7 = obj5;
                obj3 = C20384bn.f66878a;
                if (obj7 == obj3) {
                    throw new SerializationException("Element 'key' is missing", null, 2, null);
                }
                Object obj8 = obj6;
                obj4 = C20384bn.f66878a;
                if (obj8 == obj4) {
                    throw new SerializationException("Element 'value' is missing", null, 2, null);
                }
                return (R) mo728a(obj5, obj6);
            } else if (decodeElementIndex == 0) {
                obj5 = beginStructure.decodeSerializableElement(getDescriptor(), 0, this.f66812a);
            } else if (decodeElementIndex != 1) {
                throw new SerializationException("Invalid index: ".concat(String.valueOf(decodeElementIndex)), null, 2, null);
            } else {
                obj6 = beginStructure.decodeSerializableElement(getDescriptor(), 1, this.f66813b);
            }
        }
    }

    @Override // kotlinx.serialization.AbstractC20415d
    public R patch(Decoder decoder, R r) {
        C18524p.m3841c(decoder, "decoder");
        return (R) KSerializer.C20326a.m746a(this, decoder);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.AbstractC20460r
    public void serialize(Encoder encoder, R r) {
        C18524p.m3841c(encoder, "encoder");
        CompositeEncoder beginStructure = encoder.beginStructure(getDescriptor(), this.f66812a, this.f66813b);
        beginStructure.encodeSerializableElement(getDescriptor(), 0, this.f66812a, mo729a(r));
        beginStructure.encodeSerializableElement(getDescriptor(), 1, this.f66813b, mo727b(r));
        beginStructure.endStructure(getDescriptor());
    }
}
