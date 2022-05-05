package androidx.collection;

import androidx.core.app.Person;
import kotlin.Metadata;
import p459j.p460a.p541n0.C13032a;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p642c.AbstractC15124r;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��#\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003*\u0001��\b\n\u0018��2\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u0001J\u0017\u0010\u0002\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u0003\u001a\u00028��H\u0014¢\u0006\u0002\u0010\u0004J/\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00028��2\u0006\u0010\t\u001a\u00028\u00012\b\u0010\n\u001a\u0004\u0018\u00018\u0001H\u0014¢\u0006\u0002\u0010\u000bJ\u001d\u0010\f\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00028��2\u0006\u0010\u000e\u001a\u00028\u0001H\u0014¢\u0006\u0002\u0010\u000f¨\u0006\u0010"}, m815d2 = {"androidx/collection/LruCacheKt$lruCache$4", "Landroidx/collection/LruCache;", "create", Person.KEY_KEY, "(Ljava/lang/Object;)Ljava/lang/Object;", "entryRemoved", "", "evicted", "", "oldValue", "newValue", "(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V", "sizeOf", "", C13032a.f29462d, "(Ljava/lang/Object;Ljava/lang/Object;)I", "collection-ktx"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes-dex2jar.jar:androidx/collection/LruCacheKt$lruCache$4.class */
public final class LruCacheKt$lruCache$4 extends LruCache<K, V> {
    public final /* synthetic */ AbstractC15118l $create;
    public final /* synthetic */ int $maxSize;
    public final /* synthetic */ AbstractC15124r $onEntryRemoved;
    public final /* synthetic */ AbstractC15122p $sizeOf;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LruCacheKt$lruCache$4(AbstractC15122p pVar, AbstractC15118l lVar, AbstractC15124r rVar, int i, int i2) {
        super(i2);
        this.$sizeOf = pVar;
        this.$create = lVar;
        this.$onEntryRemoved = rVar;
        this.$maxSize = i;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [V, java.lang.Object] */
    @Override // androidx.collection.LruCache
    public V create(K k) {
        C15149k.m377b(k, Person.KEY_KEY);
        return this.$create.invoke(k);
    }

    @Override // androidx.collection.LruCache
    public void entryRemoved(boolean z, K k, V v, V v2) {
        C15149k.m377b(k, Person.KEY_KEY);
        C15149k.m377b(v, "oldValue");
        this.$onEntryRemoved.invoke(Boolean.valueOf(z), k, v, v2);
    }

    @Override // androidx.collection.LruCache
    public int sizeOf(K k, V v) {
        C15149k.m377b(k, Person.KEY_KEY);
        C15149k.m377b(v, C13032a.f29462d);
        return ((Number) this.$sizeOf.invoke(k, v)).intValue();
    }
}
