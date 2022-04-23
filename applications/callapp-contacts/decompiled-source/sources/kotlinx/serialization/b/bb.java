package kotlinx.serialization.b;

import com.mopub.common.Constants;
import java.util.Arrays;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
import kotlinx.serialization.CompositeEncoder;
import kotlinx.serialization.Decoder;
import kotlinx.serialization.Encoder;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialDescriptor;
import kotlinx.serialization.b.az;
@Metadata(bv = {1, 0, 3}, d1 = {"��Z\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010(\n\u0002\b\u0007\b'\u0018��*\u0004\b��\u0010\u0001*\u0004\b\u0001\u0010\u0002*\u000e\b\u0002\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00020\u00042\u0014\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0005B\u0015\b��\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028��0\u0007¢\u0006\u0002\u0010\bJ\r\u0010\r\u001a\u00028\u0002H\u0004¢\u0006\u0002\u0010\u000eJ\u0013\u0010\u000f\u001a\u00028\u00012\u0006\u0010\u0010\u001a\u00020\u0011¢\u0006\u0002\u0010\u0012J\r\u0010\u0013\u001a\u00028\u0001H$¢\u0006\u0002\u0010\u0014J-\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0010\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\r\u001a\u00028\u00022\u0006\u0010\u001a\u001a\u00020\u001bH$¢\u0006\u0002\u0010\u001cJ\u001b\u0010\u001d\u001a\u00020\u00162\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00028\u0001¢\u0006\u0002\u0010!J%\u0010\"\u001a\u00020\u00162\u0006\u0010\u001e\u001a\u00020#2\u0006\u0010$\u001a\u00028\u00012\u0006\u0010%\u001a\u00020\u0019H$¢\u0006\u0002\u0010&J\u0011\u0010'\u001a\u00020\u0019*\u00028\u0002H\u0004¢\u0006\u0002\u0010(J\u0019\u0010)\u001a\u00020\u0016*\u00028\u00022\u0006\u0010%\u001a\u00020\u0019H\u0004¢\u0006\u0002\u0010*J\u0017\u0010+\u001a\b\u0012\u0004\u0012\u00028��0,*\u00028\u0001H\u0004¢\u0006\u0002\u0010-J\u001f\u0010.\u001a\u00020\u0016*\u00028\u00022\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010/\u001a\u00028��¢\u0006\u0002\u00100J\u0011\u00101\u001a\u00028\u0001*\u00028\u0002H\u0004¢\u0006\u0002\u00102R\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\f¨\u00063"}, d2 = {"Lkotlinx/serialization/internal/PrimitiveArraySerializer;", "Element", "Array", "Builder", "Lkotlinx/serialization/internal/PrimitiveArrayBuilder;", "Lkotlinx/serialization/internal/ListLikeSerializer;", "primitiveSerializer", "Lkotlinx/serialization/KSerializer;", "(Lkotlinx/serialization/KSerializer;)V", "descriptor", "Lkotlinx/serialization/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/SerialDescriptor;", "builder", "()Lkotlinx/serialization/internal/PrimitiveArrayBuilder;", "deserialize", "decoder", "Lkotlinx/serialization/Decoder;", "(Lkotlinx/serialization/Decoder;)Ljava/lang/Object;", "empty", "()Ljava/lang/Object;", "readElement", "", "Lkotlinx/serialization/CompositeDecoder;", "index", "", "checkIndex", "", "(Lkotlinx/serialization/CompositeDecoder;ILkotlinx/serialization/internal/PrimitiveArrayBuilder;Z)V", "serialize", "encoder", "Lkotlinx/serialization/Encoder;", "value", "(Lkotlinx/serialization/Encoder;Ljava/lang/Object;)V", "writeContent", "Lkotlinx/serialization/CompositeEncoder;", Constants.VAST_TRACKER_CONTENT, "size", "(Lkotlinx/serialization/CompositeEncoder;Ljava/lang/Object;I)V", "builderSize", "(Lkotlinx/serialization/internal/PrimitiveArrayBuilder;)I", "checkCapacity", "(Lkotlinx/serialization/internal/PrimitiveArrayBuilder;I)V", "collectionIterator", "", "(Ljava/lang/Object;)Ljava/util/Iterator;", "insert", "element", "(Lkotlinx/serialization/internal/PrimitiveArrayBuilder;ILjava/lang/Object;)V", "toResult", "(Lkotlinx/serialization/internal/PrimitiveArrayBuilder;)Ljava/lang/Object;", "kotlinx-serialization-runtime"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/bb.class */
public abstract class bb<Element, Array, Builder extends az<Array>> extends ak<Element, Array, Builder> {

    /* renamed from: a  reason: collision with root package name */
    private final SerialDescriptor f38915a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bb(KSerializer<Element> primitiveSerializer) {
        super(primitiveSerializer, null);
        p.c(primitiveSerializer, "primitiveSerializer");
        this.f38915a = new ba(primitiveSerializer.getDescriptor());
    }

    @Override // kotlinx.serialization.b.a
    public final /* synthetic */ Object a() {
        throw new IllegalStateException("Use empty().toBuilder() instead".toString());
    }

    @Override // kotlinx.serialization.b.a
    public final /* synthetic */ void a(Object obj, int i) {
        az checkCapacity = (az) obj;
        p.c(checkCapacity, "$this$checkCapacity");
        checkCapacity.a(i);
    }

    @Override // kotlinx.serialization.b.ak
    public final /* synthetic */ void a(Object obj, int i, Object obj2) {
        az insert = (az) obj;
        p.c(insert, "$this$insert");
        throw new IllegalStateException("This method lead to boxing and must not be used, use Builder.append instead".toString());
    }

    protected abstract void a(CompositeEncoder compositeEncoder, Array array, int i);

    protected abstract Array b();

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.b.a
    public final Iterator<Element> b(Array array) {
        throw new IllegalStateException("This method lead to boxing and must not be used, use writeContents instead".toString());
    }

    @Override // kotlinx.serialization.b.a
    public final /* synthetic */ int c(Object obj) {
        az builderSize = (az) obj;
        p.c(builderSize, "$this$builderSize");
        return builderSize.a();
    }

    @Override // kotlinx.serialization.b.a
    public final /* synthetic */ Object d(Object obj) {
        az toResult = (az) obj;
        p.c(toResult, "$this$toResult");
        return toResult.b();
    }

    @Override // kotlinx.serialization.b.a, kotlinx.serialization.d
    public final Array deserialize(Decoder decoder) {
        p.c(decoder, "decoder");
        return patch(decoder, b());
    }

    @Override // kotlinx.serialization.b.ak, kotlinx.serialization.KSerializer, kotlinx.serialization.d, kotlinx.serialization.r
    public final SerialDescriptor getDescriptor() {
        return this.f38915a;
    }

    @Override // kotlinx.serialization.b.ak, kotlinx.serialization.r
    public final void serialize(Encoder encoder, Array array) {
        p.c(encoder, "encoder");
        int a2 = a(array);
        SerialDescriptor serialDescriptor = this.f38915a;
        KSerializer<?>[] c2 = c();
        CompositeEncoder beginCollection = encoder.beginCollection(serialDescriptor, a2, (KSerializer[]) Arrays.copyOf(c2, c2.length));
        a(beginCollection, (CompositeEncoder) array, a2);
        beginCollection.endStructure(this.f38915a);
    }
}
