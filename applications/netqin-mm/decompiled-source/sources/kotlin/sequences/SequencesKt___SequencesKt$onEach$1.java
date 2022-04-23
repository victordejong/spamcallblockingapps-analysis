package kotlin.sequences;

import kotlin.jvm.internal.Lambda;
import p573f.p590w.p591b.AbstractC10031l;
/* loaded from: classes2-dex2jar.jar:kotlin/sequences/SequencesKt___SequencesKt$onEach$1.class */
public final class SequencesKt___SequencesKt$onEach$1 extends Lambda implements AbstractC10031l<T, T> {
    public final /* synthetic */ AbstractC10031l $action;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SequencesKt___SequencesKt$onEach$1(AbstractC10031l lVar) {
        super(1);
        this.$action = lVar;
    }

    @Override // p573f.p590w.p591b.AbstractC10031l
    public final T invoke(T t) {
        this.$action.invoke(t);
        return t;
    }
}
