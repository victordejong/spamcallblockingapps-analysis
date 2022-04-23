package kotlin.sequences;

import java.util.HashSet;
import kotlin.jvm.internal.Lambda;
import p573f.p590w.p591b.AbstractC10031l;
/* loaded from: classes2-dex2jar.jar:kotlin/sequences/SequencesKt___SequencesKt$minus$4$iterator$1.class */
public final class SequencesKt___SequencesKt$minus$4$iterator$1 extends Lambda implements AbstractC10031l<T, Boolean> {
    public final /* synthetic */ HashSet $other;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SequencesKt___SequencesKt$minus$4$iterator$1(HashSet hashSet) {
        super(1);
        this.$other = hashSet;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [boolean, java.lang.Boolean] */
    @Override // p573f.p590w.p591b.AbstractC10031l
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Boolean invoke2(T t) {
        return this.$other.contains(t);
    }
}
