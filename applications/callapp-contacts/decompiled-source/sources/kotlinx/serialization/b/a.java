package kotlinx.serialization.b;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlinx.serialization.Decoder;
import kotlinx.serialization.KSerializer;
@Metadata(bv = {1, 0, 3}, d1 = {"��T\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010(\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b7\u0018��*\u0004\b��\u0010\u0001*\u0004\b\u0001\u0010\u0002*\u0004\b\u0002\u0010\u00032\b\u0012\u0004\u0012\u0002H\u00020\u0004B\u0007\b\u0002¢\u0006\u0002\u0010\u0005J\r\u0010\n\u001a\u00028\u0002H$¢\u0006\u0002\u0010\u000bJ\u0015\u0010\f\u001a\u00028\u00012\u0006\u0010\r\u001a\u00020\u000eH\u0016¢\u0006\u0002\u0010\u000fJ\u001b\u0010\u0010\u001a\u00028\u00012\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00028\u0001¢\u0006\u0002\u0010\u0012J-\u0010\u0013\u001a\u00020\u00142\u0006\u0010\r\u001a\u00020\u00152\u0006\u0010\n\u001a\u00028\u00022\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0017H$¢\u0006\u0002\u0010\u0019J/\u0010\u001a\u001a\u00020\u00142\u0006\u0010\r\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u00172\u0006\u0010\n\u001a\u00028\u00022\b\b\u0002\u0010\u001c\u001a\u00020\u001dH$¢\u0006\u0002\u0010\u001eJ\u001d\u0010\u001f\u001a\u00020\u00172\u0006\u0010\r\u001a\u00020\u00152\u0006\u0010\n\u001a\u00028\u0002H\u0002¢\u0006\u0002\u0010 J\u001d\u0010!\u001a\u00020\u00142\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00028\u0001H&¢\u0006\u0002\u0010%J\u0011\u0010&\u001a\u00020\u0017*\u00028\u0002H$¢\u0006\u0002\u0010'J\u0019\u0010(\u001a\u00020\u0014*\u00028\u00022\u0006\u0010\u0018\u001a\u00020\u0017H$¢\u0006\u0002\u0010)J\u0017\u0010*\u001a\b\u0012\u0004\u0012\u00028��0+*\u00028\u0001H$¢\u0006\u0002\u0010,J\u0011\u0010-\u001a\u00020\u0017*\u00028\u0001H$¢\u0006\u0002\u0010'J\u0011\u0010.\u001a\u00028\u0002*\u00028\u0001H$¢\u0006\u0002\u0010/J\u0011\u00100\u001a\u00028\u0001*\u00028\u0002H$¢\u0006\u0002\u0010/R\u001c\u0010\u0006\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00040\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\t\u0082\u0001\u000212¨\u00063"}, d2 = {"Lkotlinx/serialization/internal/AbstractCollectionSerializer;", "Element", "Collection", "Builder", "Lkotlinx/serialization/KSerializer;", "()V", "typeParams", "", "getTypeParams", "()[Lkotlinx/serialization/KSerializer;", "builder", "()Ljava/lang/Object;", "deserialize", "decoder", "Lkotlinx/serialization/Decoder;", "(Lkotlinx/serialization/Decoder;)Ljava/lang/Object;", "patch", "old", "(Lkotlinx/serialization/Decoder;Ljava/lang/Object;)Ljava/lang/Object;", "readAll", "", "Lkotlinx/serialization/CompositeDecoder;", "startIndex", "", "size", "(Lkotlinx/serialization/CompositeDecoder;Ljava/lang/Object;II)V", "readElement", "index", "checkIndex", "", "(Lkotlinx/serialization/CompositeDecoder;ILjava/lang/Object;Z)V", "readSize", "(Lkotlinx/serialization/CompositeDecoder;Ljava/lang/Object;)I", "serialize", "encoder", "Lkotlinx/serialization/Encoder;", "value", "(Lkotlinx/serialization/Encoder;Ljava/lang/Object;)V", "builderSize", "(Ljava/lang/Object;)I", "checkCapacity", "(Ljava/lang/Object;I)V", "collectionIterator", "", "(Ljava/lang/Object;)Ljava/util/Iterator;", "collectionSize", "toBuilder", "(Ljava/lang/Object;)Ljava/lang/Object;", "toResult", "Lkotlinx/serialization/internal/ListLikeSerializer;", "Lkotlinx/serialization/internal/MapLikeSerializer;", "kotlinx-serialization-runtime"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/a.class */
public abstract class a<Element, Collection, Builder> implements KSerializer<Collection> {
    private a() {
    }

    public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract int a(Collection collection);

    protected abstract Builder a();

    protected abstract void a(Builder builder, int i);

    protected abstract void a(kotlinx.serialization.a aVar, int i, Builder builder, boolean z);

    protected abstract void a(kotlinx.serialization.a aVar, Builder builder, int i, int i2);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract Iterator<Element> b(Collection collection);

    protected abstract int c(Builder builder);

    protected abstract Collection d(Builder builder);

    @Override // kotlinx.serialization.d
    public Collection deserialize(Decoder decoder) {
        p.c(decoder, "decoder");
        return patch(decoder, d(a()));
    }

    protected abstract Builder e(Collection collection);

    @Override // kotlinx.serialization.d
    public final Collection patch(Decoder decoder, Collection collection) {
        p.c(decoder, "decoder");
        Builder e = e(collection);
        int c2 = c(e);
        kotlinx.serialization.a beginStructure = decoder.beginStructure(getDescriptor(), new KSerializer[0]);
        if (!beginStructure.decodeSequentially()) {
            while (true) {
                int decodeElementIndex = beginStructure.decodeElementIndex(getDescriptor());
                if (decodeElementIndex == -1) {
                    break;
                }
                a(beginStructure, decodeElementIndex + c2, (int) e, true);
            }
        } else {
            int decodeCollectionSize = beginStructure.decodeCollectionSize(getDescriptor());
            a(e, decodeCollectionSize);
            a(beginStructure, (kotlinx.serialization.a) e, c2, decodeCollectionSize);
        }
        beginStructure.endStructure(getDescriptor());
        return d(e);
    }
}
