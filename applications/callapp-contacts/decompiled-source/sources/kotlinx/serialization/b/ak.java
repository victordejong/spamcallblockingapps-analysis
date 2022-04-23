package kotlinx.serialization.b;

import java.util.Arrays;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlinx.serialization.CompositeEncoder;
import kotlinx.serialization.Encoder;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialDescriptor;
import kotlinx.serialization.a;
@Metadata(bv = {1, 0, 3}, d1 = {"��b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b7\u0018��*\u0004\b��\u0010\u0001*\u0004\b\u0001\u0010\u0002*\u0004\b\u0002\u0010\u00032\u0014\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0004B\u0015\b\u0002\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028��0\u0006¢\u0006\u0002\u0010\u0007J-\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00028\u00022\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0017H\u0004¢\u0006\u0002\u0010\u0019J-\u0010\u001a\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u0015\u001a\u00028\u00022\u0006\u0010\u001c\u001a\u00020\u001dH\u0014¢\u0006\u0002\u0010\u001eJ\u001d\u0010\u001f\u001a\u00020\u00122\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00028\u0001H\u0016¢\u0006\u0002\u0010#J!\u0010$\u001a\u00020\u0012*\u00028\u00022\u0006\u0010\u001b\u001a\u00020\u00172\u0006\u0010%\u001a\u00028��H&¢\u0006\u0002\u0010&R\u0012\u0010\b\u001a\u00020\tX¦\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028��0\u0006X\u0082\u0004¢\u0006\u0002\n��R\u001d\u0010\f\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\r¢\u0006\n\n\u0002\u0010\u0010\u001a\u0004\b\u000e\u0010\u000f\u0082\u0001\u0005'()*+¨\u0006,"}, d2 = {"Lkotlinx/serialization/internal/ListLikeSerializer;", "Element", "Collection", "Builder", "Lkotlinx/serialization/internal/AbstractCollectionSerializer;", "elementSerializer", "Lkotlinx/serialization/KSerializer;", "(Lkotlinx/serialization/KSerializer;)V", "descriptor", "Lkotlinx/serialization/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/SerialDescriptor;", "typeParams", "", "getTypeParams", "()[Lkotlinx/serialization/KSerializer;", "[Lkotlinx/serialization/KSerializer;", "readAll", "", "decoder", "Lkotlinx/serialization/CompositeDecoder;", "builder", "startIndex", "", "size", "(Lkotlinx/serialization/CompositeDecoder;Ljava/lang/Object;II)V", "readElement", "index", "checkIndex", "", "(Lkotlinx/serialization/CompositeDecoder;ILjava/lang/Object;Z)V", "serialize", "encoder", "Lkotlinx/serialization/Encoder;", "value", "(Lkotlinx/serialization/Encoder;Ljava/lang/Object;)V", "insert", "element", "(Ljava/lang/Object;ILjava/lang/Object;)V", "Lkotlinx/serialization/internal/PrimitiveArraySerializer;", "Lkotlinx/serialization/internal/ReferenceArraySerializer;", "Lkotlinx/serialization/internal/ArrayListSerializer;", "Lkotlinx/serialization/internal/LinkedHashSetSerializer;", "Lkotlinx/serialization/internal/HashSetSerializer;", "kotlinx-serialization-runtime"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/ak.class */
public abstract class ak<Element, Collection, Builder> extends a<Element, Collection, Builder> {

    /* renamed from: a  reason: collision with root package name */
    private final KSerializer<?>[] f38884a;

    /* renamed from: b  reason: collision with root package name */
    private final KSerializer<Element> f38885b;

    /* JADX WARN: Multi-variable type inference failed */
    private ak(KSerializer<Element> kSerializer) {
        super(null);
        this.f38885b = kSerializer;
        this.f38884a = new KSerializer[]{kSerializer};
    }

    public /* synthetic */ ak(KSerializer kSerializer, DefaultConstructorMarker defaultConstructorMarker) {
        this(kSerializer);
    }

    public abstract void a(Builder builder, int i, Element element);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.b.a
    protected void a(a decoder, int i, Builder builder, boolean z) {
        p.c(decoder, "decoder");
        a(builder, i, decoder.decodeSerializableElement(getDescriptor(), i, this.f38885b));
    }

    @Override // kotlinx.serialization.b.a
    protected final void a(a decoder, Builder builder, int i, int i2) {
        p.c(decoder, "decoder");
        if (i2 >= 0) {
            for (int i3 = 0; i3 < i2; i3++) {
                a(decoder, i + i3, (int) builder, false);
            }
            return;
        }
        throw new IllegalArgumentException("Size must be known in advance when using READ_ALL".toString());
    }

    public final KSerializer<?>[] c() {
        return this.f38884a;
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.d, kotlinx.serialization.r
    public abstract SerialDescriptor getDescriptor();

    @Override // kotlinx.serialization.r
    public void serialize(Encoder encoder, Collection collection) {
        p.c(encoder, "encoder");
        int a2 = a(collection);
        SerialDescriptor descriptor = getDescriptor();
        KSerializer<?>[] kSerializerArr = this.f38884a;
        CompositeEncoder beginCollection = encoder.beginCollection(descriptor, a2, (KSerializer[]) Arrays.copyOf(kSerializerArr, kSerializerArr.length));
        Iterator<Element> b2 = b(collection);
        for (int i = 0; i < a2; i++) {
            beginCollection.encodeSerializableElement(getDescriptor(), i, this.f38885b, b2.next());
        }
        beginCollection.endStructure(getDescriptor());
    }
}
