package kotlinx.serialization.p572b;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialDescriptor;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��>\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010(\n\u0002\b\u0007\b\u0007\u0018��*\u0004\b��\u0010\u00012*\u0012\u0004\u0012\u0002H\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00010\u0003\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u0002H\u00010\u0004j\b\u0012\u0004\u0012\u0002H\u0001`\u00050\u0002B\u0013\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028��0\u0007¢\u0006\u0002\u0010\bJ\u0018\u0010\r\u001a\u0012\u0012\u0004\u0012\u00028��0\u0004j\b\u0012\u0004\u0012\u00028��`\u0005H\u0014J\u001c\u0010\u000e\u001a\u00020\u000f*\u0012\u0012\u0004\u0012\u00028��0\u0004j\b\u0012\u0004\u0012\u00028��`\u0005H\u0014J$\u0010\u0010\u001a\u00020\u0011*\u0012\u0012\u0004\u0012\u00028��0\u0004j\b\u0012\u0004\u0012\u00028��`\u00052\u0006\u0010\u0012\u001a\u00020\u000fH\u0014J\u0018\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028��0\u0014*\b\u0012\u0004\u0012\u00028��0\u0003H\u0014J\u0012\u0010\u0015\u001a\u00020\u000f*\b\u0012\u0004\u0012\u00028��0\u0003H\u0014J1\u0010\u0016\u001a\u00020\u0011*\u0012\u0012\u0004\u0012\u00028��0\u0004j\b\u0012\u0004\u0012\u00028��`\u00052\u0006\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0006\u001a\u00028��H\u0016¢\u0006\u0002\u0010\u0018J\"\u0010\u0019\u001a\u0012\u0012\u0004\u0012\u00028��0\u0004j\b\u0012\u0004\u0012\u00028��`\u0005*\b\u0012\u0004\u0012\u00028��0\u0003H\u0014J\"\u0010\u001a\u001a\b\u0012\u0004\u0012\u00028��0\u0003*\u0012\u0012\u0004\u0012\u00028��0\u0004j\b\u0012\u0004\u0012\u00028��`\u0005H\u0014R\u0014\u0010\t\u001a\u00020\nX\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\f¨\u0006\u001b"}, m4298d2 = {"Lkotlinx/serialization/internal/ArrayListSerializer;", "E", "Lkotlinx/serialization/internal/ListLikeSerializer;", "", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "element", "Lkotlinx/serialization/KSerializer;", "(Lkotlinx/serialization/KSerializer;)V", "descriptor", "Lkotlinx/serialization/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/SerialDescriptor;", "builder", "builderSize", "", "checkCapacity", "", "size", "collectionIterator", "", "collectionSize", "insert", "index", "(Ljava/util/ArrayList;ILjava/lang/Object;)V", "toBuilder", "toResult", "kotlinx-serialization-runtime"}, m4297k = 1, m4296mv = {1, 1, 16})
/* renamed from: kotlinx.serialization.b.f */
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/f.class */
public final class C20391f<E> extends AbstractC20346ak<E, List<? extends E>, ArrayList<E>> {

    /* renamed from: a */
    private final SerialDescriptor f66883a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C20391f(KSerializer<E> element) {
        super(element, null);
        C18524p.m3841c(element, "element");
        this.f66883a = new C20390e(element.getDescriptor());
    }

    @Override // kotlinx.serialization.p572b.AbstractC20335a
    /* renamed from: a */
    public final /* synthetic */ int mo699a(Object obj) {
        List collectionSize = (List) obj;
        C18524p.m3841c(collectionSize, "$this$collectionSize");
        return collectionSize.size();
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
        List collectionIterator = (List) obj;
        C18524p.m3841c(collectionIterator, "$this$collectionIterator");
        return collectionIterator.iterator();
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
        ArrayList toResult = (ArrayList) obj;
        C18524p.m3841c(toResult, "$this$toResult");
        return toResult;
    }

    @Override // kotlinx.serialization.p572b.AbstractC20335a
    /* renamed from: e */
    public final /* synthetic */ Object mo694e(Object obj) {
        List toBuilder = (List) obj;
        C18524p.m3841c(toBuilder, "$this$toBuilder");
        ArrayList arrayList = (ArrayList) (!(toBuilder instanceof ArrayList) ? null : toBuilder);
        ArrayList arrayList2 = arrayList;
        if (arrayList == null) {
            arrayList2 = new ArrayList(toBuilder);
        }
        return arrayList2;
    }

    @Override // kotlinx.serialization.p572b.AbstractC20346ak, kotlinx.serialization.KSerializer, kotlinx.serialization.AbstractC20415d, kotlinx.serialization.AbstractC20460r
    public final SerialDescriptor getDescriptor() {
        return this.f66883a;
    }
}
