package kotlinx.serialization.b;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.a.i;
import kotlin.jvm.a;
import kotlin.jvm.internal.b;
import kotlin.jvm.internal.p;
import kotlin.reflect.c;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialDescriptor;
@Metadata(bv = {1, 0, 3}, d1 = {"��J\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010(\n\u0002\b\f\b\u0007\u0018��*\b\b��\u0010\u0001*\u00020\u0002*\n\b\u0001\u0010\u0003*\u0004\u0018\u0001H\u00012*\u0012\u0004\u0012\u0002H\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00030\u0005\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u0002H\u00030\u0006j\b\u0012\u0004\u0012\u0002H\u0003`\u00070\u0004B!\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028��0\t\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00010\u000b¢\u0006\u0002\u0010\fJ\u0018\u0010\u0011\u001a\u0012\u0012\u0004\u0012\u00028\u00010\u0006j\b\u0012\u0004\u0012\u00028\u0001`\u0007H\u0014J\u001c\u0010\u0012\u001a\u00020\u0013*\u0012\u0012\u0004\u0012\u00028\u00010\u0006j\b\u0012\u0004\u0012\u00028\u0001`\u0007H\u0014J$\u0010\u0014\u001a\u00020\u0015*\u0012\u0012\u0004\u0012\u00028\u00010\u0006j\b\u0012\u0004\u0012\u00028\u0001`\u00072\u0006\u0010\u0016\u001a\u00020\u0013H\u0014J\u001d\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00010\u0018*\b\u0012\u0004\u0012\u00028\u00010\u0005H\u0014¢\u0006\u0002\u0010\u0019J\u0017\u0010\u001a\u001a\u00020\u0013*\b\u0012\u0004\u0012\u00028\u00010\u0005H\u0014¢\u0006\u0002\u0010\u001bJ1\u0010\u001c\u001a\u00020\u0015*\u0012\u0012\u0004\u0012\u00028\u00010\u0006j\b\u0012\u0004\u0012\u00028\u0001`\u00072\u0006\u0010\u001d\u001a\u00020\u00132\u0006\u0010\u001e\u001a\u00028\u0001H\u0016¢\u0006\u0002\u0010\u001fJ'\u0010 \u001a\u0012\u0012\u0004\u0012\u00028\u00010\u0006j\b\u0012\u0004\u0012\u00028\u0001`\u0007*\b\u0012\u0004\u0012\u00028\u00010\u0005H\u0014¢\u0006\u0002\u0010!J'\u0010\"\u001a\b\u0012\u0004\u0012\u00028\u00010\u0005*\u0012\u0012\u0004\u0012\u00028\u00010\u0006j\b\u0012\u0004\u0012\u00028\u0001`\u0007H\u0014¢\u0006\u0002\u0010#R\u0014\u0010\r\u001a\u00020\u000eX\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u000f\u0010\u0010R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00028��0\tX\u0082\u0004¢\u0006\u0002\n��¨\u0006$"}, d2 = {"Lkotlinx/serialization/internal/ReferenceArraySerializer;", "ElementKlass", "", "Element", "Lkotlinx/serialization/internal/ListLikeSerializer;", "", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "kClass", "Lkotlin/reflect/KClass;", "eSerializer", "Lkotlinx/serialization/KSerializer;", "(Lkotlin/reflect/KClass;Lkotlinx/serialization/KSerializer;)V", "descriptor", "Lkotlinx/serialization/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/SerialDescriptor;", "builder", "builderSize", "", "checkCapacity", "", "size", "collectionIterator", "", "([Ljava/lang/Object;)Ljava/util/Iterator;", "collectionSize", "([Ljava/lang/Object;)I", "insert", "index", "element", "(Ljava/util/ArrayList;ILjava/lang/Object;)V", "toBuilder", "([Ljava/lang/Object;)Ljava/util/ArrayList;", "toResult", "(Ljava/util/ArrayList;)[Ljava/lang/Object;", "kotlinx-serialization-runtime"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/be.class */
public final class be<ElementKlass, Element extends ElementKlass> extends ak<Element, Element[], ArrayList<Element>> {

    /* renamed from: a  reason: collision with root package name */
    private final SerialDescriptor f38919a;

    /* renamed from: b  reason: collision with root package name */
    private final c<ElementKlass> f38920b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public be(c<ElementKlass> kClass, KSerializer<Element> eSerializer) {
        super(eSerializer, null);
        p.c(kClass, "kClass");
        p.c(eSerializer, "eSerializer");
        this.f38920b = kClass;
        this.f38919a = new d(eSerializer.getDescriptor());
    }

    @Override // kotlinx.serialization.b.a
    public final /* synthetic */ int a(Object obj) {
        Object[] collectionSize = (Object[]) obj;
        p.c(collectionSize, "$this$collectionSize");
        return collectionSize.length;
    }

    @Override // kotlinx.serialization.b.a
    public final /* synthetic */ Object a() {
        return new ArrayList();
    }

    @Override // kotlinx.serialization.b.a
    public final /* synthetic */ void a(Object obj, int i) {
        ArrayList checkCapacity = (ArrayList) obj;
        p.c(checkCapacity, "$this$checkCapacity");
        checkCapacity.ensureCapacity(i);
    }

    @Override // kotlinx.serialization.b.ak
    public final /* synthetic */ void a(Object obj, int i, Object obj2) {
        ArrayList insert = (ArrayList) obj;
        p.c(insert, "$this$insert");
        insert.add(i, obj2);
    }

    @Override // kotlinx.serialization.b.a
    public final /* synthetic */ Iterator b(Object obj) {
        Object[] collectionIterator = (Object[]) obj;
        p.c(collectionIterator, "$this$collectionIterator");
        return b.a(collectionIterator);
    }

    @Override // kotlinx.serialization.b.a
    public final /* synthetic */ int c(Object obj) {
        ArrayList builderSize = (ArrayList) obj;
        p.c(builderSize, "$this$builderSize");
        return builderSize.size();
    }

    @Override // kotlinx.serialization.b.a
    public final /* synthetic */ Object d(Object obj) {
        ArrayList toNativeArrayImpl = (ArrayList) obj;
        p.c(toNativeArrayImpl, "$this$toResult");
        c<ElementKlass> eClass = this.f38920b;
        p.c(toNativeArrayImpl, "$this$toNativeArrayImpl");
        p.c(eClass, "eClass");
        Object newInstance = Array.newInstance(a.a(eClass), toNativeArrayImpl.size());
        if (newInstance != null) {
            Object[] array = toNativeArrayImpl.toArray((Object[]) newInstance);
            p.a((Object) array, "toArray(java.lang.reflec….java, size) as Array<E>)");
            return array;
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<E>");
    }

    @Override // kotlinx.serialization.b.a
    public final /* synthetic */ Object e(Object obj) {
        Object[] toBuilder = (Object[]) obj;
        p.c(toBuilder, "$this$toBuilder");
        return new ArrayList(i.a(toBuilder));
    }

    @Override // kotlinx.serialization.b.ak, kotlinx.serialization.KSerializer, kotlinx.serialization.d, kotlinx.serialization.r
    public final SerialDescriptor getDescriptor() {
        return this.f38919a;
    }
}
