package kotlinx.serialization.p572b;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.AbstractC20327a;
import kotlinx.serialization.Decoder;
import kotlinx.serialization.KSerializer;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��T\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010(\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b7\u0018��*\u0004\b��\u0010\u0001*\u0004\b\u0001\u0010\u0002*\u0004\b\u0002\u0010\u00032\b\u0012\u0004\u0012\u0002H\u00020\u0004B\u0007\b\u0002¢\u0006\u0002\u0010\u0005J\r\u0010\n\u001a\u00028\u0002H$¢\u0006\u0002\u0010\u000bJ\u0015\u0010\f\u001a\u00028\u00012\u0006\u0010\r\u001a\u00020\u000eH\u0016¢\u0006\u0002\u0010\u000fJ\u001b\u0010\u0010\u001a\u00028\u00012\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00028\u0001¢\u0006\u0002\u0010\u0012J-\u0010\u0013\u001a\u00020\u00142\u0006\u0010\r\u001a\u00020\u00152\u0006\u0010\n\u001a\u00028\u00022\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0017H$¢\u0006\u0002\u0010\u0019J/\u0010\u001a\u001a\u00020\u00142\u0006\u0010\r\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u00172\u0006\u0010\n\u001a\u00028\u00022\b\b\u0002\u0010\u001c\u001a\u00020\u001dH$¢\u0006\u0002\u0010\u001eJ\u001d\u0010\u001f\u001a\u00020\u00172\u0006\u0010\r\u001a\u00020\u00152\u0006\u0010\n\u001a\u00028\u0002H\u0002¢\u0006\u0002\u0010 J\u001d\u0010!\u001a\u00020\u00142\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00028\u0001H&¢\u0006\u0002\u0010%J\u0011\u0010&\u001a\u00020\u0017*\u00028\u0002H$¢\u0006\u0002\u0010'J\u0019\u0010(\u001a\u00020\u0014*\u00028\u00022\u0006\u0010\u0018\u001a\u00020\u0017H$¢\u0006\u0002\u0010)J\u0017\u0010*\u001a\b\u0012\u0004\u0012\u00028��0+*\u00028\u0001H$¢\u0006\u0002\u0010,J\u0011\u0010-\u001a\u00020\u0017*\u00028\u0001H$¢\u0006\u0002\u0010'J\u0011\u0010.\u001a\u00028\u0002*\u00028\u0001H$¢\u0006\u0002\u0010/J\u0011\u00100\u001a\u00028\u0001*\u00028\u0002H$¢\u0006\u0002\u0010/R\u001c\u0010\u0006\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00040\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\t\u0082\u0001\u000212¨\u00063"}, m4298d2 = {"Lkotlinx/serialization/internal/AbstractCollectionSerializer;", "Element", "Collection", "Builder", "Lkotlinx/serialization/KSerializer;", "()V", "typeParams", "", "getTypeParams", "()[Lkotlinx/serialization/KSerializer;", "builder", "()Ljava/lang/Object;", "deserialize", "decoder", "Lkotlinx/serialization/Decoder;", "(Lkotlinx/serialization/Decoder;)Ljava/lang/Object;", "patch", "old", "(Lkotlinx/serialization/Decoder;Ljava/lang/Object;)Ljava/lang/Object;", "readAll", "", "Lkotlinx/serialization/CompositeDecoder;", "startIndex", "", "size", "(Lkotlinx/serialization/CompositeDecoder;Ljava/lang/Object;II)V", "readElement", "index", "checkIndex", "", "(Lkotlinx/serialization/CompositeDecoder;ILjava/lang/Object;Z)V", "readSize", "(Lkotlinx/serialization/CompositeDecoder;Ljava/lang/Object;)I", "serialize", "encoder", "Lkotlinx/serialization/Encoder;", "value", "(Lkotlinx/serialization/Encoder;Ljava/lang/Object;)V", "builderSize", "(Ljava/lang/Object;)I", "checkCapacity", "(Ljava/lang/Object;I)V", "collectionIterator", "", "(Ljava/lang/Object;)Ljava/util/Iterator;", "collectionSize", "toBuilder", "(Ljava/lang/Object;)Ljava/lang/Object;", "toResult", "Lkotlinx/serialization/internal/ListLikeSerializer;", "Lkotlinx/serialization/internal/MapLikeSerializer;", "kotlinx-serialization-runtime"}, m4297k = 1, m4296mv = {1, 1, 16})
/* renamed from: kotlinx.serialization.b.a */
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/a.class */
public abstract class AbstractC20335a<Element, Collection, Builder> implements KSerializer<Collection> {
    private AbstractC20335a() {
    }

    public /* synthetic */ AbstractC20335a(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* renamed from: a */
    public abstract int mo699a(Collection collection);

    /* renamed from: a */
    protected abstract Builder mo700a();

    /* renamed from: a */
    protected abstract void mo698a(Builder builder, int i);

    /* renamed from: a */
    protected abstract void mo703a(AbstractC20327a abstractC20327a, int i, Builder builder, boolean z);

    /* renamed from: a */
    protected abstract void mo725a(AbstractC20327a abstractC20327a, Builder builder, int i, int i2);

    /* renamed from: b */
    public abstract Iterator<Element> mo697b(Collection collection);

    /* renamed from: c */
    protected abstract int mo696c(Builder builder);

    /* renamed from: d */
    protected abstract Collection mo695d(Builder builder);

    @Override // kotlinx.serialization.AbstractC20415d
    public Collection deserialize(Decoder decoder) {
        C18524p.m3841c(decoder, "decoder");
        return patch(decoder, mo695d(mo700a()));
    }

    /* renamed from: e */
    protected abstract Builder mo694e(Collection collection);

    @Override // kotlinx.serialization.AbstractC20415d
    public final Collection patch(Decoder decoder, Collection collection) {
        C18524p.m3841c(decoder, "decoder");
        Builder mo694e = mo694e(collection);
        int mo696c = mo696c(mo694e);
        AbstractC20327a beginStructure = decoder.beginStructure(getDescriptor(), new KSerializer[0]);
        if (!beginStructure.decodeSequentially()) {
            while (true) {
                int decodeElementIndex = beginStructure.decodeElementIndex(getDescriptor());
                if (decodeElementIndex == -1) {
                    break;
                }
                mo703a(beginStructure, decodeElementIndex + mo696c, (int) mo694e, true);
            }
        } else {
            int decodeCollectionSize = beginStructure.decodeCollectionSize(getDescriptor());
            mo698a(mo694e, decodeCollectionSize);
            mo725a(beginStructure, (AbstractC20327a) mo694e, mo696c, decodeCollectionSize);
        }
        beginStructure.endStructure(getDescriptor());
        return mo695d(mo694e);
    }
}
