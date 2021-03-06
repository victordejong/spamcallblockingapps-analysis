package kotlinx.serialization.p572b;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialDescriptor;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��D\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010(\n\u0002\u0010&\n\u0002\b\t\b\u0007\u0018��*\u0004\b��\u0010\u0001*\u0004\b\u0001\u0010\u00022B\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u0004\u0012 \u0012\u001e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u0005j\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u0002`\u00060\u0003B!\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028��0\b\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00010\b¢\u0006\u0002\u0010\nJ$\u0010\u000f\u001a\u001e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u0005j\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u0001`\u0006H\u0014J(\u0010\u0010\u001a\u00020\u0011*\u001e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u0005j\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u0001`\u0006H\u0014J0\u0010\u0012\u001a\u00020\u0013*\u001e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u0005j\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u0001`\u00062\u0006\u0010\u0014\u001a\u00020\u0011H\u0014J*\u0010\u0015\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u00170\u0016*\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u0004H\u0014J\u0018\u0010\u0018\u001a\u00020\u0011*\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u0004H\u0014JE\u0010\u0019\u001a\u00020\u0013*\u001e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u0005j\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u0001`\u00062\u0006\u0010\u001a\u001a\u00020\u00112\u0006\u0010\u001b\u001a\u00028��2\u0006\u0010\u001c\u001a\u00028\u0001H\u0016¢\u0006\u0002\u0010\u001dJ4\u0010\u001e\u001a\u001e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u0005j\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u0001`\u0006*\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u0004H\u0014J4\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u0004*\u001e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u0005j\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u0001`\u0006H\u0014R\u0014\u0010\u000b\u001a\u00020\fX\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\r\u0010\u000e¨\u0006 "}, m4298d2 = {"Lkotlinx/serialization/internal/LinkedHashMapSerializer;", "K", "V", "Lkotlinx/serialization/internal/MapLikeSerializer;", "", "Ljava/util/LinkedHashMap;", "Lkotlin/collections/LinkedHashMap;", "kSerializer", "Lkotlinx/serialization/KSerializer;", "vSerializer", "(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V", "descriptor", "Lkotlinx/serialization/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/SerialDescriptor;", "builder", "builderSize", "", "checkCapacity", "", "size", "collectionIterator", "", "", "collectionSize", "insertKeyValuePair", "index", "key", "value", "(Ljava/util/LinkedHashMap;ILjava/lang/Object;Ljava/lang/Object;)V", "toBuilder", "toResult", "kotlinx-serialization-runtime"}, m4297k = 1, m4296mv = {1, 1, 16})
/* renamed from: kotlinx.serialization.b.ag */
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/b/ag.class */
public final class C20342ag<K, V> extends AbstractC20354aq<K, V, Map<K, ? extends V>, LinkedHashMap<K, V>> {

    /* renamed from: c */
    private final SerialDescriptor f66814c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C20342ag(KSerializer<K> kSerializer, KSerializer<V> vSerializer) {
        super(kSerializer, vSerializer, null);
        C18524p.m3841c(kSerializer, "kSerializer");
        C18524p.m3841c(vSerializer, "vSerializer");
        this.f66814c = new C20341af(kSerializer.getDescriptor(), vSerializer.getDescriptor());
    }

    @Override // kotlinx.serialization.p572b.AbstractC20335a
    /* renamed from: a */
    public final /* synthetic */ int mo699a(Object obj) {
        Map collectionSize = (Map) obj;
        C18524p.m3841c(collectionSize, "$this$collectionSize");
        return collectionSize.size();
    }

    @Override // kotlinx.serialization.p572b.AbstractC20335a
    /* renamed from: a */
    public final /* synthetic */ Object mo700a() {
        return new LinkedHashMap();
    }

    @Override // kotlinx.serialization.p572b.AbstractC20335a
    /* renamed from: a */
    public final /* synthetic */ void mo698a(Object obj, int i) {
        LinkedHashMap checkCapacity = (LinkedHashMap) obj;
        C18524p.m3841c(checkCapacity, "$this$checkCapacity");
    }

    @Override // kotlinx.serialization.p572b.AbstractC20335a
    /* renamed from: b */
    public final /* synthetic */ Iterator mo697b(Object obj) {
        Map collectionIterator = (Map) obj;
        C18524p.m3841c(collectionIterator, "$this$collectionIterator");
        return collectionIterator.entrySet().iterator();
    }

    @Override // kotlinx.serialization.p572b.AbstractC20335a
    /* renamed from: c */
    public final /* synthetic */ int mo696c(Object obj) {
        LinkedHashMap builderSize = (LinkedHashMap) obj;
        C18524p.m3841c(builderSize, "$this$builderSize");
        return builderSize.size();
    }

    @Override // kotlinx.serialization.p572b.AbstractC20335a
    /* renamed from: d */
    public final /* synthetic */ Object mo695d(Object obj) {
        LinkedHashMap toResult = (LinkedHashMap) obj;
        C18524p.m3841c(toResult, "$this$toResult");
        return toResult;
    }

    @Override // kotlinx.serialization.p572b.AbstractC20335a
    /* renamed from: e */
    public final /* synthetic */ Object mo694e(Object obj) {
        Map toBuilder = (Map) obj;
        C18524p.m3841c(toBuilder, "$this$toBuilder");
        LinkedHashMap linkedHashMap = (LinkedHashMap) (!(toBuilder instanceof LinkedHashMap) ? null : toBuilder);
        LinkedHashMap linkedHashMap2 = linkedHashMap;
        if (linkedHashMap == null) {
            linkedHashMap2 = new LinkedHashMap(toBuilder);
        }
        return linkedHashMap2;
    }

    @Override // kotlinx.serialization.p572b.AbstractC20354aq, kotlinx.serialization.KSerializer, kotlinx.serialization.AbstractC20415d, kotlinx.serialization.AbstractC20460r
    public final SerialDescriptor getDescriptor() {
        return this.f66814c;
    }
}
