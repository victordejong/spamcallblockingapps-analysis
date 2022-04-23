package kotlin.sequences;

import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref$BooleanRef;
import p573f.p575b0.C9904i;
import p573f.p590w.p591b.AbstractC10031l;
import p573f.p590w.p592c.C10059q;
/* loaded from: classes2-dex2jar.jar:kotlin/sequences/SequencesKt___SequencesKt$minus$1$iterator$1.class */
public final class SequencesKt___SequencesKt$minus$1$iterator$1 extends Lambda implements AbstractC10031l<T, Boolean> {
    public final /* synthetic */ Ref$BooleanRef $removed;
    public final /* synthetic */ C9904i this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SequencesKt___SequencesKt$minus$1$iterator$1(C9904i iVar, Ref$BooleanRef ref$BooleanRef) {
        super(1);
        this.this$0 = iVar;
        this.$removed = ref$BooleanRef;
    }

    @Override // p573f.p590w.p591b.AbstractC10031l
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Boolean invoke2(T t) {
        Boolean bool = 1;
        if (!this.$removed.element) {
            bool = 1;
            if (C10059q.m1643a(t, this.this$0.f37107a)) {
                this.$removed.element = true;
                bool = null;
            }
        }
        return bool;
    }
}
