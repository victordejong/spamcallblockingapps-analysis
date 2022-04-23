package kotlin.sequences;

import kotlin.jvm.internal.Lambda;
import p573f.p590w.p591b.AbstractC10020a;
/* loaded from: classes2-dex2jar.jar:kotlin/sequences/SequencesKt__SequencesKt$generateSequence$2.class */
public final class SequencesKt__SequencesKt$generateSequence$2 extends Lambda implements AbstractC10020a<T> {
    public final /* synthetic */ Object $seed;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SequencesKt__SequencesKt$generateSequence$2(Object obj) {
        super(0);
        this.$seed = obj;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [T, java.lang.Object] */
    @Override // p573f.p590w.p591b.AbstractC10020a
    public final T invoke() {
        return this.$seed;
    }
}
