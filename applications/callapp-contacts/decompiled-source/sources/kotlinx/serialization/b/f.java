package kotlinx.serialization.b;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialDescriptor;
@Metadata(bv = {1, 0, 3}, d1 = {"��>\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010(\n\u0002\b\u0007\b\u0007\u0018��*\u0004\b��\u0010\u00012*\u0012\u0004\u0012\u0002H\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00010\u0003\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u0002H\u00010\u0004j\b\u0012\u0004\u0012\u0002H\u0001`\u00050\u0002B\u0013\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028��0\u0007¢\u0006\u0002\u0010\bJ\u0018\u0010\r\u001a\u0012\u0012\u0004\u0012\u00028��0\u0004j\b\u0012\u0004\u0012\u00028��`\u0005H\u0014J\u001c\u0010\u000e\u001a\u00020\u000f*\u0012\u0012\u0004\u0012\u00028��0\u0004j\b\u0012\u0004\u0012\u00028��`\u0005H\u0014J$\u0010\u0010\u001a\u00020\u0011*\u0012\u0012\u0004\u0012\u00028��0\u0004j\b\u0012\u0004\u0012\u00028��`\u00052\u0006\u0010\u0012\u001a\u00020\u000fH\u0014J\u0018\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028��0\u0014*\b\u0012\u0004\u0012\u00028��0\u0003H\u0014J\u0012\u0010\u0015\u001a\u00020\u000f*\b\u0012\u0004\u0012\u00028��0\u0003H\u0014J1\u0010\u0016\u001a\u00020\u0011*\u0012\u0012\u0004\u0012\u00028��0\u0004j\b\u0012\u0004\u0012\u00028��`\u00052\u0006\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0006\u001a\u00028��H\u0016¢\u0006\u0002\u0010\u0018J\"\u0010\u0019\u001a\u0012\u0012\u0004\u0012\u00028��0\u0004j\b\u0012\u0004\u0012\u00028��`\u0005*\b\u0012\u0004\u0012\u00028��0\u0003H\u0014J\"\u0010\u001a\u001a\b\u0012\u0004\u0012\u00028��0\u0003*\u0012\u0012\u0004\u0012\u00028��0\u0004j\b\u0012\u0004\u0012\u00028��`\u0005H\u0014R\u0014\u0010\t\u001a\u00020\nX\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\f¨\u0006\u001b"}, d2 = {"Lkotlinx/serialization/internal/ArrayListSerializer;", "E", "Lkotlinx/serialization/internal/ListLikeSerializer;", "", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "element", "Lkotlinx/serialization/KSerializer;", "(Lkotlinx/serialization/KSerializer;)V", "descriptor", "Lkotlinx/serialization/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/SerialDescriptor;", "builder", "builderSize", "", "checkCapacity", "", "size", "collectionIterator", "", "collectionSize", "insert", "index", "(Ljava/util/ArrayList;ILjava/lang/Object;)V", "toBuilder", "toResult", "kotlinx-serialization-runtime"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/f.class */
public final class f<E> extends ak<E, List<? extends E>, ArrayList<E>> {

    /* renamed from: a  reason: collision with root package name */
    private final SerialDescriptor f38945a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(KSerializer<E> element) {
        super(element, null);
        p.c(element, "element");
        this.f38945a = new e(element.getDescriptor());
    }

    @Override // kotlinx.serialization.b.a
    public final /* synthetic */ int a(Object obj) {
        List collectionSize = (List) obj;
        p.c(collectionSize, "$this$collectionSize");
        return collectionSize.size();
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
        List collectionIterator = (List) obj;
        p.c(collectionIterator, "$this$collectionIterator");
        return collectionIterator.iterator();
    }

    @Override // kotlinx.serialization.b.a
    public final /* synthetic */ int c(Object obj) {
        ArrayList builderSize = (ArrayList) obj;
        p.c(builderSize, "$this$builderSize");
        return builderSize.size();
    }

    @Override // kotlinx.serialization.b.a
    public final /* synthetic */ Object d(Object obj) {
        ArrayList toResult = (ArrayList) obj;
        p.c(toResult, "$this$toResult");
        return toResult;
    }

    @Override // kotlinx.serialization.b.a
    public final /* synthetic */ Object e(Object obj) {
        List toBuilder = (List) obj;
        p.c(toBuilder, "$this$toBuilder");
        ArrayList arrayList = (ArrayList) (!(toBuilder instanceof ArrayList) ? null : toBuilder);
        ArrayList arrayList2 = arrayList;
        if (arrayList == null) {
            arrayList2 = new ArrayList(toBuilder);
        }
        return arrayList2;
    }

    @Override // kotlinx.serialization.b.ak, kotlinx.serialization.KSerializer, kotlinx.serialization.d, kotlinx.serialization.r
    public final SerialDescriptor getDescriptor() {
        return this.f38945a;
    }
}
