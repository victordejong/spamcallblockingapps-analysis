package kotlin.sequences;

import kotlin.jvm.internal.Lambda;
import p573f.p590w.p591b.AbstractC10020a;
import p573f.p590w.p591b.AbstractC10031l;
import p573f.p590w.p592c.C10059q;
/* loaded from: classes2-dex2jar.jar:kotlin/sequences/SequencesKt__SequencesKt$generateSequence$1.class */
public final class SequencesKt__SequencesKt$generateSequence$1 extends Lambda implements AbstractC10031l<T, T> {
    public final /* synthetic */ AbstractC10020a $nextFunction;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SequencesKt__SequencesKt$generateSequence$1(AbstractC10020a aVar) {
        super(1);
        this.$nextFunction = aVar;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [T, java.lang.Object] */
    @Override // p573f.p590w.p591b.AbstractC10031l
    public final T invoke(T t) {
        C10059q.m1637b(t, "it");
        return this.$nextFunction.invoke();
    }
}
