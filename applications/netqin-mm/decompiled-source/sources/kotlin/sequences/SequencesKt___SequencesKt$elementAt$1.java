package kotlin.sequences;

import kotlin.jvm.internal.Lambda;
import p573f.p590w.p591b.AbstractC10031l;
/* loaded from: classes2-dex2jar.jar:kotlin/sequences/SequencesKt___SequencesKt$elementAt$1.class */
public final class SequencesKt___SequencesKt$elementAt$1 extends Lambda implements AbstractC10031l {
    public final /* synthetic */ int $index;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SequencesKt___SequencesKt$elementAt$1(int i) {
        super(1);
        this.$index = i;
    }

    @Override // p573f.p590w.p591b.AbstractC10031l
    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
        return invoke(((Number) obj).intValue());
    }

    public final Void invoke(int i) {
        throw new IndexOutOfBoundsException("Sequence doesn't contain element at index " + this.$index + '.');
    }
}
