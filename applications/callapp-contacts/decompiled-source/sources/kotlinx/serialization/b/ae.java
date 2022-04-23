package kotlinx.serialization.b;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlinx.serialization.CompositeEncoder;
import kotlinx.serialization.Decoder;
import kotlinx.serialization.Encoder;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.a;
@Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b7\u0018��*\u0004\b��\u0010\u0001*\u0004\b\u0001\u0010\u0002*\u0004\b\u0002\u0010\u00032\b\u0012\u0004\u0012\u0002H\u00030\u0004B#\b\u0002\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028��0\u0004\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004¢\u0006\u0002\u0010\u0007J\u0015\u0010\u0010\u001a\u00028\u00022\u0006\u0010\u0011\u001a\u00020\u0012H\u0016¢\u0006\u0002\u0010\u0013J\u001d\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u000e\u001a\u00028\u0002H\u0016¢\u0006\u0002\u0010\u0018J\u001d\u0010\u0019\u001a\u00028\u00022\u0006\u0010\u000b\u001a\u00028��2\u0006\u0010\u000e\u001a\u00028\u0001H&¢\u0006\u0002\u0010\u001aR\u001a\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028��0\u0004X\u0084\u0004¢\u0006\b\n��\u001a\u0004\b\b\u0010\tR\u001a\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004X\u0084\u0004¢\u0006\b\n��\u001a\u0004\b\n\u0010\tR\u0016\u0010\u000b\u001a\u00028��*\u00028\u0002X¦\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u0016\u0010\u000e\u001a\u00028\u0001*\u00028\u0002X¦\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\r\u0082\u0001\u0002\u001b\u001c¨\u0006\u001d"}, d2 = {"Lkotlinx/serialization/internal/KeyValueSerializer;", "K", "V", "R", "Lkotlinx/serialization/KSerializer;", "keySerializer", "valueSerializer", "(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V", "getKeySerializer", "()Lkotlinx/serialization/KSerializer;", "getValueSerializer", "key", "getKey", "(Ljava/lang/Object;)Ljava/lang/Object;", "value", "getValue", "deserialize", "decoder", "Lkotlinx/serialization/Decoder;", "(Lkotlinx/serialization/Decoder;)Ljava/lang/Object;", "serialize", "", "encoder", "Lkotlinx/serialization/Encoder;", "(Lkotlinx/serialization/Encoder;Ljava/lang/Object;)V", "toResult", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "Lkotlinx/serialization/internal/MapEntrySerializer;", "Lkotlinx/serialization/internal/PairSerializer;", "kotlinx-serialization-runtime"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/ae.class */
public abstract class ae<K, V, R> implements KSerializer<R> {

    /* renamed from: a  reason: collision with root package name */
    private final KSerializer<K> f38878a;

    /* renamed from: b  reason: collision with root package name */
    private final KSerializer<V> f38879b;

    private ae(KSerializer<K> kSerializer, KSerializer<V> kSerializer2) {
        this.f38878a = kSerializer;
        this.f38879b = kSerializer2;
    }

    public /* synthetic */ ae(KSerializer kSerializer, KSerializer kSerializer2, DefaultConstructorMarker defaultConstructorMarker) {
        this(kSerializer, kSerializer2);
    }

    public abstract K a(R r);

    public abstract R a(K k, V v);

    public abstract V b(R r);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.d
    public R deserialize(Decoder decoder) {
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        p.c(decoder, "decoder");
        a beginStructure = decoder.beginStructure(getDescriptor(), this.f38878a, this.f38879b);
        if (beginStructure.decodeSequentially()) {
            return (R) a(beginStructure.decodeSerializableElement(getDescriptor(), 0, this.f38878a), beginStructure.decodeSerializableElement(getDescriptor(), 1, this.f38879b));
        }
        obj = bn.f38940a;
        obj2 = bn.f38940a;
        while (true) {
            int decodeElementIndex = beginStructure.decodeElementIndex(getDescriptor());
            if (decodeElementIndex == -1) {
                beginStructure.endStructure(getDescriptor());
                obj3 = bn.f38940a;
                if (obj != obj3) {
                    obj4 = bn.f38940a;
                    if (obj2 != obj4) {
                        return (R) a(obj, obj2);
                    }
                    throw new SerializationException("Element 'value' is missing", null, 2, null);
                }
                throw new SerializationException("Element 'key' is missing", null, 2, null);
            } else if (decodeElementIndex == 0) {
                obj = beginStructure.decodeSerializableElement(getDescriptor(), 0, this.f38878a);
            } else if (decodeElementIndex == 1) {
                obj2 = beginStructure.decodeSerializableElement(getDescriptor(), 1, this.f38879b);
            } else {
                throw new SerializationException("Invalid index: ".concat(String.valueOf(decodeElementIndex)), null, 2, null);
            }
        }
    }

    @Override // kotlinx.serialization.d
    public R patch(Decoder decoder, R r) {
        p.c(decoder, "decoder");
        return (R) KSerializer.a.a(this, decoder);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.r
    public void serialize(Encoder encoder, R r) {
        p.c(encoder, "encoder");
        CompositeEncoder beginStructure = encoder.beginStructure(getDescriptor(), this.f38878a, this.f38879b);
        beginStructure.encodeSerializableElement(getDescriptor(), 0, this.f38878a, a(r));
        beginStructure.encodeSerializableElement(getDescriptor(), 1, this.f38879b, b(r));
        beginStructure.endStructure(getDescriptor());
    }
}
