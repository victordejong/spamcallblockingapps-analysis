package kotlinx.serialization.p572b;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.C18458a;
import kotlin.jvm.internal.C18508b;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18273i;
import kotlin.reflect.AbstractC18551c;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialDescriptor;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��J\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010(\n\u0002\b\f\b\u0007\u0018��*\b\b��\u0010\u0001*\u00020\u0002*\n\b\u0001\u0010\u0003*\u0004\u0018\u0001H\u00012*\u0012\u0004\u0012\u0002H\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00030\u0005\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u0002H\u00030\u0006j\b\u0012\u0004\u0012\u0002H\u0003`\u00070\u0004B!\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028��0\t\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00010\u000b¢\u0006\u0002\u0010\fJ\u0018\u0010\u0011\u001a\u0012\u0012\u0004\u0012\u00028\u00010\u0006j\b\u0012\u0004\u0012\u00028\u0001`\u0007H\u0014J\u001c\u0010\u0012\u001a\u00020\u0013*\u0012\u0012\u0004\u0012\u00028\u00010\u0006j\b\u0012\u0004\u0012\u00028\u0001`\u0007H\u0014J$\u0010\u0014\u001a\u00020\u0015*\u0012\u0012\u0004\u0012\u00028\u00010\u0006j\b\u0012\u0004\u0012\u00028\u0001`\u00072\u0006\u0010\u0016\u001a\u00020\u0013H\u0014J\u001d\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00010\u0018*\b\u0012\u0004\u0012\u00028\u00010\u0005H\u0014¢\u0006\u0002\u0010\u0019J\u0017\u0010\u001a\u001a\u00020\u0013*\b\u0012\u0004\u0012\u00028\u00010\u0005H\u0014¢\u0006\u0002\u0010\u001bJ1\u0010\u001c\u001a\u00020\u0015*\u0012\u0012\u0004\u0012\u00028\u00010\u0006j\b\u0012\u0004\u0012\u00028\u0001`\u00072\u0006\u0010\u001d\u001a\u00020\u00132\u0006\u0010\u001e\u001a\u00028\u0001H\u0016¢\u0006\u0002\u0010\u001fJ'\u0010 \u001a\u0012\u0012\u0004\u0012\u00028\u00010\u0006j\b\u0012\u0004\u0012\u00028\u0001`\u0007*\b\u0012\u0004\u0012\u00028\u00010\u0005H\u0014¢\u0006\u0002\u0010!J'\u0010\"\u001a\b\u0012\u0004\u0012\u00028\u00010\u0005*\u0012\u0012\u0004\u0012\u00028\u00010\u0006j\b\u0012\u0004\u0012\u00028\u0001`\u0007H\u0014¢\u0006\u0002\u0010#R\u0014\u0010\r\u001a\u00020\u000eX\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u000f\u0010\u0010R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00028��0\tX\u0082\u0004¢\u0006\u0002\n��¨\u0006$"}, m4298d2 = {"Lkotlinx/serialization/internal/ReferenceArraySerializer;", "ElementKlass", "", "Element", "Lkotlinx/serialization/internal/ListLikeSerializer;", "", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "kClass", "Lkotlin/reflect/KClass;", "eSerializer", "Lkotlinx/serialization/KSerializer;", "(Lkotlin/reflect/KClass;Lkotlinx/serialization/KSerializer;)V", "descriptor", "Lkotlinx/serialization/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/SerialDescriptor;", "builder", "builderSize", "", "checkCapacity", "", "size", "collectionIterator", "", "([Ljava/lang/Object;)Ljava/util/Iterator;", "collectionSize", "([Ljava/lang/Object;)I", "insert", "index", "element", "(Ljava/util/ArrayList;ILjava/lang/Object;)V", "toBuilder", "([Ljava/lang/Object;)Ljava/util/ArrayList;", "toResult", "(Ljava/util/ArrayList;)[Ljava/lang/Object;", "kotlinx-serialization-runtime"}, m4297k = 1, m4296mv = {1, 1, 16})
/* renamed from: kotlinx.serialization.b.be */
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/be.class */
public final class C20371be<ElementKlass, Element extends ElementKlass> extends AbstractC20346ak<Element, Element[], ArrayList<Element>> {

    /* renamed from: a */
    private final SerialDescriptor f66857a;

    /* renamed from: b */
    private final AbstractC18551c<ElementKlass> f66858b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C20371be(AbstractC18551c<ElementKlass> kClass, KSerializer<Element> eSerializer) {
        super(eSerializer, null);
        C18524p.m3841c(kClass, "kClass");
        C18524p.m3841c(eSerializer, "eSerializer");
        this.f66858b = kClass;
        this.f66857a = new C20389d(eSerializer.getDescriptor());
    }

    @Override // kotlinx.serialization.p572b.AbstractC20335a
    /* renamed from: a */
    public final /* synthetic */ int mo699a(Object obj) {
        Object[] collectionSize = (Object[]) obj;
        C18524p.m3841c(collectionSize, "$this$collectionSize");
        return collectionSize.length;
    }

    @Override // kotlinx.serialization.p572b.AbstractC20335a
    /* renamed from: a */
    public final /* synthetic */ Object mo700a() {
        return new ArrayList();
    }

    @Override // kotlinx.serialization.p572b.AbstractC20335a
    /* renamed from: a */
    public final /* synthetic */ void mo698a(Object obj, int i) {
        ArrayList checkCapacity = (ArrayList) obj;
        C18524p.m3841c(checkCapacity, "$this$checkCapacity");
        checkCapacity.ensureCapacity(i);
    }

    @Override // kotlinx.serialization.p572b.AbstractC20346ak
    /* renamed from: a */
    public final /* synthetic */ void mo708a(Object obj, int i, Object obj2) {
        ArrayList insert = (ArrayList) obj;
        C18524p.m3841c(insert, "$this$insert");
        insert.add(i, obj2);
    }

    @Override // kotlinx.serialization.p572b.AbstractC20335a
    /* renamed from: b */
    public final /* synthetic */ Iterator mo697b(Object obj) {
        Object[] collectionIterator = (Object[]) obj;
        C18524p.m3841c(collectionIterator, "$this$collectionIterator");
        return C18508b.m3860a(collectionIterator);
    }

    @Override // kotlinx.serialization.p572b.AbstractC20335a
    /* renamed from: c */
    public final /* synthetic */ int mo696c(Object obj) {
        ArrayList builderSize = (ArrayList) obj;
        C18524p.m3841c(builderSize, "$this$builderSize");
        return builderSize.size();
    }

    @Override // kotlinx.serialization.p572b.AbstractC20335a
    /* renamed from: d */
    public final /* synthetic */ Object mo695d(Object obj) {
        ArrayList toNativeArrayImpl = (ArrayList) obj;
        C18524p.m3841c(toNativeArrayImpl, "$this$toResult");
        AbstractC18551c<ElementKlass> eClass = this.f66858b;
        C18524p.m3841c(toNativeArrayImpl, "$this$toNativeArrayImpl");
        C18524p.m3841c(eClass, "eClass");
        Object newInstance = Array.newInstance(C18458a.m3893a(eClass), toNativeArrayImpl.size());
        if (newInstance != null) {
            Object[] array = toNativeArrayImpl.toArray((Object[]) newInstance);
            C18524p.m3849a((Object) array, "toArray(java.lang.reflec….java, size) as Array<E>)");
            return array;
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<E>");
    }

    @Override // kotlinx.serialization.p572b.AbstractC20335a
    /* renamed from: e */
    public final /* synthetic */ Object mo694e(Object obj) {
        Object[] toBuilder = (Object[]) obj;
        C18524p.m3841c(toBuilder, "$this$toBuilder");
        return new ArrayList(C18273i.m4221a(toBuilder));
    }

    @Override // kotlinx.serialization.p572b.AbstractC20346ak, kotlinx.serialization.KSerializer, kotlinx.serialization.AbstractC20415d, kotlinx.serialization.AbstractC20460r
    public final SerialDescriptor getDescriptor() {
        return this.f66857a;
    }
}
