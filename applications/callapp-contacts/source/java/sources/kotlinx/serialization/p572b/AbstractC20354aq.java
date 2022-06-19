package kotlinx.serialization.p572b;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18247ai;
import kotlin.p530f.C18358a;
import kotlin.p530f.C18363d;
import kotlinx.serialization.AbstractC20327a;
import kotlinx.serialization.AbstractC20424j;
import kotlinx.serialization.CompositeEncoder;
import kotlinx.serialization.Encoder;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialDescriptor;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0010&\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0010��\n\u0002\b\u0004\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b7\u0018��*\u0004\b��\u0010\u0001*\u0004\b\u0001\u0010\u0002*\u0004\b\u0002\u0010\u0003*\u0014\b\u0003\u0010\u0004*\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u00052 \u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u0007\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u00040\u0006B#\b\u0002\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028��0\t\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00010\t¢\u0006\u0002\u0010\u000bJ-\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00028\u00032\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001cH\u0004¢\u0006\u0002\u0010\u001eJ-\u0010\u001f\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010 \u001a\u00020\u001c2\u0006\u0010\u001a\u001a\u00028\u00032\u0006\u0010!\u001a\u00020\"H\u0004¢\u0006\u0002\u0010#J\u001d\u0010$\u001a\u00020\u00172\u0006\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00028\u0002H\u0016¢\u0006\u0002\u0010(J)\u0010)\u001a\u00020\u0017*\u00028\u00032\u0006\u0010 \u001a\u00020\u001c2\u0006\u0010*\u001a\u00028��2\u0006\u0010'\u001a\u00028\u0001H&¢\u0006\u0002\u0010+R\u0012\u0010\f\u001a\u00020\rX¦\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fR\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00028��0\t8\u0006X\u0087\u0004¢\u0006\u0002\n��R#\u0010\u0010\u001a\u0012\u0012\u000e\u0012\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00120\t0\u0011¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b\u0013\u0010\u0014R\u0016\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00010\t8\u0006X\u0087\u0004¢\u0006\u0002\n��\u0082\u0001\u0002,-¨\u0006."}, m4298d2 = {"Lkotlinx/serialization/internal/MapLikeSerializer;", "Key", "Value", "Collection", "Builder", "", "Lkotlinx/serialization/internal/AbstractCollectionSerializer;", "", "keySerializer", "Lkotlinx/serialization/KSerializer;", "valueSerializer", "(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V", "descriptor", "Lkotlinx/serialization/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/SerialDescriptor;", "typeParams", "", "", "getTypeParams", "()[Lkotlinx/serialization/KSerializer;", "[Lkotlinx/serialization/KSerializer;", "readAll", "", "decoder", "Lkotlinx/serialization/CompositeDecoder;", "builder", "startIndex", "", "size", "(Lkotlinx/serialization/CompositeDecoder;Ljava/util/Map;II)V", "readElement", "index", "checkIndex", "", "(Lkotlinx/serialization/CompositeDecoder;ILjava/util/Map;Z)V", "serialize", "encoder", "Lkotlinx/serialization/Encoder;", "value", "(Lkotlinx/serialization/Encoder;Ljava/lang/Object;)V", "insertKeyValuePair", "key", "(Ljava/util/Map;ILjava/lang/Object;Ljava/lang/Object;)V", "Lkotlinx/serialization/internal/LinkedHashMapSerializer;", "Lkotlinx/serialization/internal/HashMapSerializer;", "kotlinx-serialization-runtime"}, m4297k = 1, m4296mv = {1, 1, 16})
/* renamed from: kotlinx.serialization.b.aq */
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/aq.class */
public abstract class AbstractC20354aq<Key, Value, Collection, Builder extends Map<Key, Value>> extends AbstractC20335a<Map.Entry<? extends Key, ? extends Value>, Collection, Builder> {

    /* renamed from: a */
    public final KSerializer<Key> f66834a;

    /* renamed from: b */
    public final KSerializer<Value> f66835b;

    /* renamed from: c */
    private final KSerializer<? extends Object>[] f66836c;

    /* JADX WARN: Multi-variable type inference failed */
    private AbstractC20354aq(KSerializer<Key> kSerializer, KSerializer<Value> kSerializer2) {
        super(null);
        this.f66834a = kSerializer;
        this.f66835b = kSerializer2;
        this.f66836c = new KSerializer[]{kSerializer, kSerializer2};
    }

    public /* synthetic */ AbstractC20354aq(KSerializer kSerializer, KSerializer kSerializer2, DefaultConstructorMarker defaultConstructorMarker) {
        this(kSerializer, kSerializer2);
    }

    /* renamed from: a */
    private void m726a(AbstractC20327a decoder, int i, Builder builder, boolean z) {
        int i2;
        C18524p.m3841c(decoder, "decoder");
        C18524p.m3841c(builder, "builder");
        Object decodeSerializableElement = decoder.decodeSerializableElement(getDescriptor(), i, this.f66834a);
        boolean z2 = true;
        if (z) {
            int decodeElementIndex = decoder.decodeElementIndex(getDescriptor());
            if (decodeElementIndex != i + 1) {
                z2 = false;
            }
            if (!z2) {
                throw new IllegalArgumentException(("Value must follow key in a map, index for key: " + i + ", returned index for value: " + decodeElementIndex).toString());
            }
            i2 = decodeElementIndex;
        } else {
            i2 = i + 1;
        }
        builder.put(decodeSerializableElement, (!builder.containsKey(decodeSerializableElement) || (this.f66835b.getDescriptor().mo662b() instanceof AbstractC20424j)) ? decoder.decodeSerializableElement(getDescriptor(), i2, this.f66835b) : decoder.updateSerializableElement(getDescriptor(), i2, this.f66835b, C18247ai.m4253a(builder, decodeSerializableElement)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.p572b.AbstractC20335a
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo703a(AbstractC20327a abstractC20327a, int i, Object obj, boolean z) {
        m726a(abstractC20327a, i, (int) ((Map) obj), z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.p572b.AbstractC20335a
    /* renamed from: a */
    public final /* synthetic */ void mo725a(AbstractC20327a decoder, Object obj, int i, int i2) {
        Map builder = (Map) obj;
        C18524p.m3841c(decoder, "decoder");
        C18524p.m3841c(builder, "builder");
        if (i2 >= 0) {
            C18358a a = C18363d.m4053a(C18363d.m4052b(0, i2 * 2), 2);
            int i3 = a.f63459a;
            int i4 = a.f63460b;
            int i5 = a.f63461c;
            if (i5 >= 0) {
                if (i3 > i4) {
                    return;
                }
            } else if (i3 < i4) {
                return;
            }
            while (true) {
                m726a(decoder, i + i3, (int) builder, false);
                if (i3 == i4) {
                    return;
                }
                i3 += i5;
            }
        } else {
            throw new IllegalArgumentException("Size must be known in advance when using READ_ALL".toString());
        }
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.AbstractC20415d, kotlinx.serialization.AbstractC20460r
    public abstract SerialDescriptor getDescriptor();

    @Override // kotlinx.serialization.AbstractC20460r
    public void serialize(Encoder encoder, Collection collection) {
        C18524p.m3841c(encoder, "encoder");
        int a = mo699a(collection);
        SerialDescriptor descriptor = getDescriptor();
        KSerializer<? extends Object>[] kSerializerArr = this.f66836c;
        CompositeEncoder beginCollection = encoder.beginCollection(descriptor, a, (KSerializer[]) Arrays.copyOf(kSerializerArr, kSerializerArr.length));
        Iterator<Map.Entry<? extends Key, ? extends Value>> b = mo697b(collection);
        int i = 0;
        while (true) {
            int i2 = i;
            if (!b.hasNext()) {
                beginCollection.endStructure(getDescriptor());
                return;
            }
            Map.Entry<? extends Key, ? extends Value> next = b.next();
            Key key = next.getKey();
            Value value = next.getValue();
            int i3 = i2 + 1;
            beginCollection.encodeSerializableElement(getDescriptor(), i2, this.f66834a, key);
            beginCollection.encodeSerializableElement(getDescriptor(), i3, this.f66835b, value);
            i = i3 + 1;
        }
    }
}
