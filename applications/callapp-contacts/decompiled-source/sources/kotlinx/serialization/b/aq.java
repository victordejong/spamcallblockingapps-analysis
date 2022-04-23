package kotlinx.serialization.b;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.a.ai;
import kotlin.f.d;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlinx.serialization.CompositeEncoder;
import kotlinx.serialization.Encoder;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialDescriptor;
import kotlinx.serialization.a;
import kotlinx.serialization.j;
@Metadata(bv = {1, 0, 3}, d1 = {"��b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0010&\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0010��\n\u0002\b\u0004\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b7\u0018��*\u0004\b��\u0010\u0001*\u0004\b\u0001\u0010\u0002*\u0004\b\u0002\u0010\u0003*\u0014\b\u0003\u0010\u0004*\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u00052 \u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u0007\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u00040\u0006B#\b\u0002\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028��0\t\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00010\t¢\u0006\u0002\u0010\u000bJ-\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00028\u00032\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001cH\u0004¢\u0006\u0002\u0010\u001eJ-\u0010\u001f\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010 \u001a\u00020\u001c2\u0006\u0010\u001a\u001a\u00028\u00032\u0006\u0010!\u001a\u00020\"H\u0004¢\u0006\u0002\u0010#J\u001d\u0010$\u001a\u00020\u00172\u0006\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00028\u0002H\u0016¢\u0006\u0002\u0010(J)\u0010)\u001a\u00020\u0017*\u00028\u00032\u0006\u0010 \u001a\u00020\u001c2\u0006\u0010*\u001a\u00028��2\u0006\u0010'\u001a\u00028\u0001H&¢\u0006\u0002\u0010+R\u0012\u0010\f\u001a\u00020\rX¦\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fR\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00028��0\t8\u0006X\u0087\u0004¢\u0006\u0002\n��R#\u0010\u0010\u001a\u0012\u0012\u000e\u0012\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00120\t0\u0011¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b\u0013\u0010\u0014R\u0016\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00010\t8\u0006X\u0087\u0004¢\u0006\u0002\n��\u0082\u0001\u0002,-¨\u0006."}, d2 = {"Lkotlinx/serialization/internal/MapLikeSerializer;", "Key", "Value", "Collection", "Builder", "", "Lkotlinx/serialization/internal/AbstractCollectionSerializer;", "", "keySerializer", "Lkotlinx/serialization/KSerializer;", "valueSerializer", "(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V", "descriptor", "Lkotlinx/serialization/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/SerialDescriptor;", "typeParams", "", "", "getTypeParams", "()[Lkotlinx/serialization/KSerializer;", "[Lkotlinx/serialization/KSerializer;", "readAll", "", "decoder", "Lkotlinx/serialization/CompositeDecoder;", "builder", "startIndex", "", "size", "(Lkotlinx/serialization/CompositeDecoder;Ljava/util/Map;II)V", "readElement", "index", "checkIndex", "", "(Lkotlinx/serialization/CompositeDecoder;ILjava/util/Map;Z)V", "serialize", "encoder", "Lkotlinx/serialization/Encoder;", "value", "(Lkotlinx/serialization/Encoder;Ljava/lang/Object;)V", "insertKeyValuePair", "key", "(Ljava/util/Map;ILjava/lang/Object;Ljava/lang/Object;)V", "Lkotlinx/serialization/internal/LinkedHashMapSerializer;", "Lkotlinx/serialization/internal/HashMapSerializer;", "kotlinx-serialization-runtime"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/aq.class */
public abstract class aq<Key, Value, Collection, Builder extends Map<Key, Value>> extends a<Map.Entry<? extends Key, ? extends Value>, Collection, Builder> {

    /* renamed from: a  reason: collision with root package name */
    public final KSerializer<Key> f38900a;

    /* renamed from: b  reason: collision with root package name */
    public final KSerializer<Value> f38901b;

    /* renamed from: c  reason: collision with root package name */
    private final KSerializer<? extends Object>[] f38902c;

    /* JADX WARN: Multi-variable type inference failed */
    private aq(KSerializer<Key> kSerializer, KSerializer<Value> kSerializer2) {
        super(null);
        this.f38900a = kSerializer;
        this.f38901b = kSerializer2;
        this.f38902c = new KSerializer[]{kSerializer, kSerializer2};
    }

    public /* synthetic */ aq(KSerializer kSerializer, KSerializer kSerializer2, DefaultConstructorMarker defaultConstructorMarker) {
        this(kSerializer, kSerializer2);
    }

    private void a(a decoder, int i, Builder builder, boolean z) {
        int i2;
        p.c(decoder, "decoder");
        p.c(builder, "builder");
        Object decodeSerializableElement = decoder.decodeSerializableElement(getDescriptor(), i, this.f38900a);
        boolean z2 = true;
        if (z) {
            int decodeElementIndex = decoder.decodeElementIndex(getDescriptor());
            if (decodeElementIndex != i + 1) {
                z2 = false;
            }
            if (z2) {
                i2 = decodeElementIndex;
            } else {
                throw new IllegalArgumentException(("Value must follow key in a map, index for key: " + i + ", returned index for value: " + decodeElementIndex).toString());
            }
        } else {
            i2 = i + 1;
        }
        builder.put(decodeSerializableElement, (!builder.containsKey(decodeSerializableElement) || (this.f38901b.getDescriptor().b() instanceof j)) ? decoder.decodeSerializableElement(getDescriptor(), i2, this.f38901b) : decoder.updateSerializableElement(getDescriptor(), i2, this.f38901b, ai.a(builder, decodeSerializableElement)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.b.a
    public final /* bridge */ /* synthetic */ void a(a aVar, int i, Object obj, boolean z) {
        a(aVar, i, (int) ((Map) obj), z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.b.a
    public final /* synthetic */ void a(a decoder, Object obj, int i, int i2) {
        Map builder = (Map) obj;
        p.c(decoder, "decoder");
        p.c(builder, "builder");
        if (i2 >= 0) {
            kotlin.f.a a2 = d.a(d.b(0, i2 * 2), 2);
            int i3 = a2.f36664a;
            int i4 = a2.f36665b;
            int i5 = a2.f36666c;
            if (i5 >= 0) {
                if (i3 > i4) {
                    return;
                }
            } else if (i3 < i4) {
                return;
            }
            while (true) {
                a(decoder, i + i3, (int) builder, false);
                if (i3 != i4) {
                    i3 += i5;
                } else {
                    return;
                }
            }
        } else {
            throw new IllegalArgumentException("Size must be known in advance when using READ_ALL".toString());
        }
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.d, kotlinx.serialization.r
    public abstract SerialDescriptor getDescriptor();

    @Override // kotlinx.serialization.r
    public void serialize(Encoder encoder, Collection collection) {
        p.c(encoder, "encoder");
        int a2 = a(collection);
        SerialDescriptor descriptor = getDescriptor();
        KSerializer<? extends Object>[] kSerializerArr = this.f38902c;
        CompositeEncoder beginCollection = encoder.beginCollection(descriptor, a2, (KSerializer[]) Arrays.copyOf(kSerializerArr, kSerializerArr.length));
        Iterator<Map.Entry<? extends Key, ? extends Value>> b2 = b(collection);
        int i = 0;
        while (b2.hasNext()) {
            Map.Entry<? extends Key, ? extends Value> next = b2.next();
            Object key = next.getKey();
            Object value = next.getValue();
            int i2 = i + 1;
            beginCollection.encodeSerializableElement(getDescriptor(), i, this.f38900a, key);
            beginCollection.encodeSerializableElement(getDescriptor(), i2, this.f38901b, value);
            i = i2 + 1;
        }
        beginCollection.endStructure(getDescriptor());
    }
}
