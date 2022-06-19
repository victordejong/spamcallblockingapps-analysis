package kotlinx.serialization.p572b;

import com.mopub.common.Constants;
import java.util.Arrays;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlinx.serialization.CompositeEncoder;
import kotlinx.serialization.Decoder;
import kotlinx.serialization.Encoder;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialDescriptor;
import kotlinx.serialization.p572b.AbstractC20365az;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��Z\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010(\n\u0002\b\u0007\b'\u0018��*\u0004\b��\u0010\u0001*\u0004\b\u0001\u0010\u0002*\u000e\b\u0002\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00020\u00042\u0014\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0005B\u0015\b��\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028��0\u0007¢\u0006\u0002\u0010\bJ\r\u0010\r\u001a\u00028\u0002H\u0004¢\u0006\u0002\u0010\u000eJ\u0013\u0010\u000f\u001a\u00028\u00012\u0006\u0010\u0010\u001a\u00020\u0011¢\u0006\u0002\u0010\u0012J\r\u0010\u0013\u001a\u00028\u0001H$¢\u0006\u0002\u0010\u0014J-\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0010\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\r\u001a\u00028\u00022\u0006\u0010\u001a\u001a\u00020\u001bH$¢\u0006\u0002\u0010\u001cJ\u001b\u0010\u001d\u001a\u00020\u00162\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00028\u0001¢\u0006\u0002\u0010!J%\u0010\"\u001a\u00020\u00162\u0006\u0010\u001e\u001a\u00020#2\u0006\u0010$\u001a\u00028\u00012\u0006\u0010%\u001a\u00020\u0019H$¢\u0006\u0002\u0010&J\u0011\u0010'\u001a\u00020\u0019*\u00028\u0002H\u0004¢\u0006\u0002\u0010(J\u0019\u0010)\u001a\u00020\u0016*\u00028\u00022\u0006\u0010%\u001a\u00020\u0019H\u0004¢\u0006\u0002\u0010*J\u0017\u0010+\u001a\b\u0012\u0004\u0012\u00028��0,*\u00028\u0001H\u0004¢\u0006\u0002\u0010-J\u001f\u0010.\u001a\u00020\u0016*\u00028\u00022\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010/\u001a\u00028��¢\u0006\u0002\u00100J\u0011\u00101\u001a\u00028\u0001*\u00028\u0002H\u0004¢\u0006\u0002\u00102R\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\f¨\u00063"}, m4298d2 = {"Lkotlinx/serialization/internal/PrimitiveArraySerializer;", "Element", "Array", "Builder", "Lkotlinx/serialization/internal/PrimitiveArrayBuilder;", "Lkotlinx/serialization/internal/ListLikeSerializer;", "primitiveSerializer", "Lkotlinx/serialization/KSerializer;", "(Lkotlinx/serialization/KSerializer;)V", "descriptor", "Lkotlinx/serialization/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/SerialDescriptor;", "builder", "()Lkotlinx/serialization/internal/PrimitiveArrayBuilder;", "deserialize", "decoder", "Lkotlinx/serialization/Decoder;", "(Lkotlinx/serialization/Decoder;)Ljava/lang/Object;", "empty", "()Ljava/lang/Object;", "readElement", "", "Lkotlinx/serialization/CompositeDecoder;", "index", "", "checkIndex", "", "(Lkotlinx/serialization/CompositeDecoder;ILkotlinx/serialization/internal/PrimitiveArrayBuilder;Z)V", "serialize", "encoder", "Lkotlinx/serialization/Encoder;", "value", "(Lkotlinx/serialization/Encoder;Ljava/lang/Object;)V", "writeContent", "Lkotlinx/serialization/CompositeEncoder;", Constants.VAST_TRACKER_CONTENT, "size", "(Lkotlinx/serialization/CompositeEncoder;Ljava/lang/Object;I)V", "builderSize", "(Lkotlinx/serialization/internal/PrimitiveArrayBuilder;)I", "checkCapacity", "(Lkotlinx/serialization/internal/PrimitiveArrayBuilder;I)V", "collectionIterator", "", "(Ljava/lang/Object;)Ljava/util/Iterator;", "insert", "element", "(Lkotlinx/serialization/internal/PrimitiveArrayBuilder;ILjava/lang/Object;)V", "toResult", "(Lkotlinx/serialization/internal/PrimitiveArrayBuilder;)Ljava/lang/Object;", "kotlinx-serialization-runtime"}, m4297k = 1, m4296mv = {1, 1, 16})
/* renamed from: kotlinx.serialization.b.bb */
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/bb.class */
public abstract class AbstractC20368bb<Element, Array, Builder extends AbstractC20365az<Array>> extends AbstractC20346ak<Element, Array, Builder> {

    /* renamed from: a */
    private final SerialDescriptor f66853a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractC20368bb(KSerializer<Element> primitiveSerializer) {
        super(primitiveSerializer, null);
        C18524p.m3841c(primitiveSerializer, "primitiveSerializer");
        this.f66853a = new C20367ba(primitiveSerializer.getDescriptor());
    }

    @Override // kotlinx.serialization.p572b.AbstractC20335a
    /* renamed from: a */
    public final /* synthetic */ Object mo700a() {
        throw new IllegalStateException("Use empty().toBuilder() instead".toString());
    }

    @Override // kotlinx.serialization.p572b.AbstractC20335a
    /* renamed from: a */
    public final /* synthetic */ void mo698a(Object obj, int i) {
        AbstractC20365az checkCapacity = (AbstractC20365az) obj;
        C18524p.m3841c(checkCapacity, "$this$checkCapacity");
        checkCapacity.mo706a(i);
    }

    @Override // kotlinx.serialization.p572b.AbstractC20346ak
    /* renamed from: a */
    public final /* synthetic */ void mo708a(Object obj, int i, Object obj2) {
        AbstractC20365az insert = (AbstractC20365az) obj;
        C18524p.m3841c(insert, "$this$insert");
        throw new IllegalStateException("This method lead to boxing and must not be used, use Builder.append instead".toString());
    }

    /* renamed from: a */
    protected abstract void mo704a(CompositeEncoder compositeEncoder, Array array, int i);

    /* renamed from: b */
    protected abstract Array mo702b();

    @Override // kotlinx.serialization.p572b.AbstractC20335a
    /* renamed from: b */
    public final Iterator<Element> mo697b(Array array) {
        throw new IllegalStateException("This method lead to boxing and must not be used, use writeContents instead".toString());
    }

    @Override // kotlinx.serialization.p572b.AbstractC20335a
    /* renamed from: c */
    public final /* synthetic */ int mo696c(Object obj) {
        AbstractC20365az builderSize = (AbstractC20365az) obj;
        C18524p.m3841c(builderSize, "$this$builderSize");
        return builderSize.mo707a();
    }

    @Override // kotlinx.serialization.p572b.AbstractC20335a
    /* renamed from: d */
    public final /* synthetic */ Object mo695d(Object obj) {
        AbstractC20365az toResult = (AbstractC20365az) obj;
        C18524p.m3841c(toResult, "$this$toResult");
        return toResult.mo705b();
    }

    @Override // kotlinx.serialization.p572b.AbstractC20335a, kotlinx.serialization.AbstractC20415d
    public final Array deserialize(Decoder decoder) {
        C18524p.m3841c(decoder, "decoder");
        return patch(decoder, mo702b());
    }

    @Override // kotlinx.serialization.p572b.AbstractC20346ak, kotlinx.serialization.KSerializer, kotlinx.serialization.AbstractC20415d, kotlinx.serialization.AbstractC20460r
    public final SerialDescriptor getDescriptor() {
        return this.f66853a;
    }

    @Override // kotlinx.serialization.p572b.AbstractC20346ak, kotlinx.serialization.AbstractC20460r
    public final void serialize(Encoder encoder, Array array) {
        C18524p.m3841c(encoder, "encoder");
        int a = mo699a(array);
        SerialDescriptor serialDescriptor = this.f66853a;
        KSerializer<?>[] c = m730c();
        CompositeEncoder beginCollection = encoder.beginCollection(serialDescriptor, a, (KSerializer[]) Arrays.copyOf(c, c.length));
        mo704a(beginCollection, (CompositeEncoder) array, a);
        beginCollection.endStructure(this.f66853a);
    }
}
