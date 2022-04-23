package kotlin.sequences;

import kotlin.jvm.internal.Lambda;
import p573f.p590w.p591b.AbstractC10031l;
/* loaded from: classes2-dex2jar.jar:kotlin/sequences/SequencesKt___SequencesKt$filterNotNull$1.class */
public final class SequencesKt___SequencesKt$filterNotNull$1 extends Lambda implements AbstractC10031l<T, Boolean> {
    public static final SequencesKt___SequencesKt$filterNotNull$1 INSTANCE = new SequencesKt___SequencesKt$filterNotNull$1();

    public SequencesKt___SequencesKt$filterNotNull$1() {
        super(1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v2 */
    @Override // p573f.p590w.p591b.AbstractC10031l
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Boolean invoke2(T t) {
        return t == 0 ? 1 : 0;
    }
}
