package kotlinx.serialization.b;

import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialDescriptor;
@Metadata(bv = {1, 0, 3}, d1 = {"��>\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010(\n\u0002\b\b\b\u0007\u0018��*\u0004\b��\u0010\u00012*\u0012\u0004\u0012\u0002H\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00010\u0003\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u0002H\u00010\u0004j\b\u0012\u0004\u0012\u0002H\u0001`\u00050\u0002B\u0013\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028��0\u0007¢\u0006\u0002\u0010\bJ\u0018\u0010\r\u001a\u0012\u0012\u0004\u0012\u00028��0\u0004j\b\u0012\u0004\u0012\u00028��`\u0005H\u0014J\u001c\u0010\u000e\u001a\u00020\u000f*\u0012\u0012\u0004\u0012\u00028��0\u0004j\b\u0012\u0004\u0012\u00028��`\u0005H\u0014J$\u0010\u0010\u001a\u00020\u0011*\u0012\u0012\u0004\u0012\u00028��0\u0004j\b\u0012\u0004\u0012\u00028��`\u00052\u0006\u0010\u0012\u001a\u00020\u000fH\u0014J\u0018\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028��0\u0014*\b\u0012\u0004\u0012\u00028��0\u0003H\u0014J\u0012\u0010\u0015\u001a\u00020\u000f*\b\u0012\u0004\u0012\u00028��0\u0003H\u0014J1\u0010\u0016\u001a\u00020\u0011*\u0012\u0012\u0004\u0012\u00028��0\u0004j\b\u0012\u0004\u0012\u00028��`\u00052\u0006\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00028��H\u0016¢\u0006\u0002\u0010\u0019J\"\u0010\u001a\u001a\u0012\u0012\u0004\u0012\u00028��0\u0004j\b\u0012\u0004\u0012\u00028��`\u0005*\b\u0012\u0004\u0012\u00028��0\u0003H\u0014J\"\u0010\u001b\u001a\b\u0012\u0004\u0012\u00028��0\u0003*\u0012\u0012\u0004\u0012\u00028��0\u0004j\b\u0012\u0004\u0012\u00028��`\u0005H\u0014R\u0014\u0010\t\u001a\u00020\nX\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\f¨\u0006\u001c"}, d2 = {"Lkotlinx/serialization/internal/LinkedHashSetSerializer;", "E", "Lkotlinx/serialization/internal/ListLikeSerializer;", "", "Ljava/util/LinkedHashSet;", "Lkotlin/collections/LinkedHashSet;", "eSerializer", "Lkotlinx/serialization/KSerializer;", "(Lkotlinx/serialization/KSerializer;)V", "descriptor", "Lkotlinx/serialization/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/SerialDescriptor;", "builder", "builderSize", "", "checkCapacity", "", "size", "collectionIterator", "", "collectionSize", "insert", "index", "element", "(Ljava/util/LinkedHashSet;ILjava/lang/Object;)V", "toBuilder", "toResult", "kotlinx-serialization-runtime"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/ai.class */
public final class ai<E> extends ak<E, Set<? extends E>, LinkedHashSet<E>> {

    /* renamed from: a  reason: collision with root package name */
    private final SerialDescriptor f38881a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ai(KSerializer<E> eSerializer) {
        super(eSerializer, null);
        p.c(eSerializer, "eSerializer");
        this.f38881a = new ah(eSerializer.getDescriptor());
    }

    @Override // kotlinx.serialization.b.a
    public final /* synthetic */ int a(Object obj) {
        Set collectionSize = (Set) obj;
        p.c(collectionSize, "$this$collectionSize");
        return collectionSize.size();
    }

    @Override // kotlinx.serialization.b.a
    public final /* synthetic */ Object a() {
        return new LinkedHashSet();
    }

    @Override // kotlinx.serialization.b.a
    public final /* synthetic */ void a(Object obj, int i) {
        LinkedHashSet checkCapacity = (LinkedHashSet) obj;
        p.c(checkCapacity, "$this$checkCapacity");
    }

    @Override // kotlinx.serialization.b.ak
    public final /* synthetic */ void a(Object obj, int i, Object obj2) {
        LinkedHashSet insert = (LinkedHashSet) obj;
        p.c(insert, "$this$insert");
        insert.add(obj2);
    }

    @Override // kotlinx.serialization.b.a
    public final /* synthetic */ Iterator b(Object obj) {
        Set collectionIterator = (Set) obj;
        p.c(collectionIterator, "$this$collectionIterator");
        return collectionIterator.iterator();
    }

    @Override // kotlinx.serialization.b.a
    public final /* synthetic */ int c(Object obj) {
        LinkedHashSet builderSize = (LinkedHashSet) obj;
        p.c(builderSize, "$this$builderSize");
        return builderSize.size();
    }

    @Override // kotlinx.serialization.b.a
    public final /* synthetic */ Object d(Object obj) {
        LinkedHashSet toResult = (LinkedHashSet) obj;
        p.c(toResult, "$this$toResult");
        return toResult;
    }

    @Override // kotlinx.serialization.b.a
    public final /* synthetic */ Object e(Object obj) {
        Set toBuilder = (Set) obj;
        p.c(toBuilder, "$this$toBuilder");
        LinkedHashSet linkedHashSet = (LinkedHashSet) (!(toBuilder instanceof LinkedHashSet) ? null : toBuilder);
        LinkedHashSet linkedHashSet2 = linkedHashSet;
        if (linkedHashSet == null) {
            linkedHashSet2 = new LinkedHashSet(toBuilder);
        }
        return linkedHashSet2;
    }

    @Override // kotlinx.serialization.b.ak, kotlinx.serialization.KSerializer, kotlinx.serialization.d, kotlinx.serialization.r
    public final SerialDescriptor getDescriptor() {
        return this.f38881a;
    }
}
