package kotlin.collections;

import kotlin.jvm.internal.Lambda;
import p573f.p590w.p591b.AbstractC10031l;
/* loaded from: classes2-dex2jar.jar:kotlin/collections/AbstractCollection$toString$1.class */
public final class AbstractCollection$toString$1 extends Lambda implements AbstractC10031l<E, CharSequence> {
    public final /* synthetic */ AbstractCollection this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractCollection$toString$1(AbstractCollection abstractCollection) {
        super(1);
        this.this$0 = abstractCollection;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // p573f.p590w.p591b.AbstractC10031l
    public final CharSequence invoke(E e) {
        return e == this.this$0 ? "(this Collection)" : String.valueOf(e);
    }
}
