package kotlinx.serialization.b;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialDescriptor;
@Metadata(bv = {1, 0, 3}, d1 = {"��D\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010(\n\u0002\u0010&\n\u0002\b\t\b\u0007\u0018��*\u0004\b��\u0010\u0001*\u0004\b\u0001\u0010\u00022B\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u0004\u0012 \u0012\u001e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u0005j\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u0002`\u00060\u0003B!\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028��0\b\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00010\b¢\u0006\u0002\u0010\nJ$\u0010\u000f\u001a\u001e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u0005j\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u0001`\u0006H\u0014J(\u0010\u0010\u001a\u00020\u0011*\u001e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u0005j\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u0001`\u0006H\u0014J0\u0010\u0012\u001a\u00020\u0013*\u001e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u0005j\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u0001`\u00062\u0006\u0010\u0014\u001a\u00020\u0011H\u0014J*\u0010\u0015\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u00170\u0016*\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u0004H\u0014J\u0018\u0010\u0018\u001a\u00020\u0011*\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u0004H\u0014JE\u0010\u0019\u001a\u00020\u0013*\u001e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u0005j\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u0001`\u00062\u0006\u0010\u001a\u001a\u00020\u00112\u0006\u0010\u001b\u001a\u00028��2\u0006\u0010\u001c\u001a\u00028\u0001H\u0016¢\u0006\u0002\u0010\u001dJ4\u0010\u001e\u001a\u001e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u0005j\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u0001`\u0006*\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u0004H\u0014J4\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u0004*\u001e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u0005j\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u0001`\u0006H\u0014R\u0014\u0010\u000b\u001a\u00020\fX\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\r\u0010\u000e¨\u0006 "}, d2 = {"Lkotlinx/serialization/internal/HashMapSerializer;", "K", "V", "Lkotlinx/serialization/internal/MapLikeSerializer;", "", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "kSerializer", "Lkotlinx/serialization/KSerializer;", "vSerializer", "(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V", "descriptor", "Lkotlinx/serialization/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/SerialDescriptor;", "builder", "builderSize", "", "checkCapacity", "", "size", "collectionIterator", "", "", "collectionSize", "insertKeyValuePair", "index", "key", "value", "(Ljava/util/HashMap;ILjava/lang/Object;Ljava/lang/Object;)V", "toBuilder", "toResult", "kotlinx-serialization-runtime"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/y.class */
public final class y<K, V> extends aq<K, V, Map<K, ? extends V>, HashMap<K, V>> {

    /* renamed from: c  reason: collision with root package name */
    private final SerialDescriptor f38976c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y(KSerializer<K> kSerializer, KSerializer<V> vSerializer) {
        super(kSerializer, vSerializer, null);
        p.c(kSerializer, "kSerializer");
        p.c(vSerializer, "vSerializer");
        this.f38976c = new x(kSerializer.getDescriptor(), vSerializer.getDescriptor());
    }

    @Override // kotlinx.serialization.b.a
    public final /* synthetic */ int a(Object obj) {
        Map collectionSize = (Map) obj;
        p.c(collectionSize, "$this$collectionSize");
        return collectionSize.size();
    }

    @Override // kotlinx.serialization.b.a
    public final /* synthetic */ Object a() {
        return new HashMap();
    }

    @Override // kotlinx.serialization.b.a
    public final /* synthetic */ void a(Object obj, int i) {
        HashMap checkCapacity = (HashMap) obj;
        p.c(checkCapacity, "$this$checkCapacity");
    }

    @Override // kotlinx.serialization.b.a
    public final /* synthetic */ Iterator b(Object obj) {
        Map collectionIterator = (Map) obj;
        p.c(collectionIterator, "$this$collectionIterator");
        return collectionIterator.entrySet().iterator();
    }

    @Override // kotlinx.serialization.b.a
    public final /* synthetic */ int c(Object obj) {
        HashMap builderSize = (HashMap) obj;
        p.c(builderSize, "$this$builderSize");
        return builderSize.size();
    }

    @Override // kotlinx.serialization.b.a
    public final /* synthetic */ Object d(Object obj) {
        HashMap toResult = (HashMap) obj;
        p.c(toResult, "$this$toResult");
        return toResult;
    }

    @Override // kotlinx.serialization.b.a
    public final /* synthetic */ Object e(Object obj) {
        Map toBuilder = (Map) obj;
        p.c(toBuilder, "$this$toBuilder");
        HashMap hashMap = (HashMap) (!(toBuilder instanceof HashMap) ? null : toBuilder);
        HashMap hashMap2 = hashMap;
        if (hashMap == null) {
            hashMap2 = new HashMap(toBuilder);
        }
        return hashMap2;
    }

    @Override // kotlinx.serialization.b.aq, kotlinx.serialization.KSerializer, kotlinx.serialization.d, kotlinx.serialization.r
    public final SerialDescriptor getDescriptor() {
        return this.f38976c;
    }
}
