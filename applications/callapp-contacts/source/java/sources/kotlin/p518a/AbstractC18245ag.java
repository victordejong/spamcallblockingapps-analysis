package kotlin.p518a;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.p534a.AbstractC18481a;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\u0010\b\n\u0002\b\u0005\b&\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u0002H\u0086\u0002¢\u0006\u0002\u0010\u0005J\b\u0010\u0006\u001a\u00020\u0002H&¨\u0006\u0007"}, m4298d2 = {"Lkotlin/collections/IntIterator;", "", "", "()V", "next", "()Ljava/lang/Integer;", "nextInt", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
/* renamed from: kotlin.a.ag */
/* loaded from: classes5-dex2jar.jar:kotlin/a/ag.class */
public abstract class AbstractC18245ag implements Iterator<Integer>, AbstractC18481a {
    /* renamed from: a */
    public abstract int mo4059a();

    @Override // java.util.Iterator
    public /* synthetic */ Integer next() {
        return Integer.valueOf(mo4059a());
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
