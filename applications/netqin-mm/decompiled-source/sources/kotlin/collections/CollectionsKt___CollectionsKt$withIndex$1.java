package kotlin.collections;

import java.util.Iterator;
import kotlin.jvm.internal.Lambda;
import p573f.p590w.p591b.AbstractC10020a;
/* loaded from: classes2-dex2jar.jar:kotlin/collections/CollectionsKt___CollectionsKt$withIndex$1.class */
public final class CollectionsKt___CollectionsKt$withIndex$1 extends Lambda implements AbstractC10020a<Iterator<? extends T>> {
    public final /* synthetic */ Iterable $this_withIndex;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CollectionsKt___CollectionsKt$withIndex$1(Iterable iterable) {
        super(0);
        this.$this_withIndex = iterable;
    }

    @Override // p573f.p590w.p591b.AbstractC10020a
    public final Iterator<T> invoke() {
        return this.$this_withIndex.iterator();
    }
}
