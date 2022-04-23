package kotlin.text;

import kotlin.jvm.internal.Lambda;
import p573f.p576c0.C9913e;
import p573f.p590w.p591b.AbstractC10031l;
/* loaded from: classes2-dex2jar.jar:kotlin/text/MatcherMatchResult$groups$1$iterator$1.class */
public final class MatcherMatchResult$groups$1$iterator$1 extends Lambda implements AbstractC10031l<Integer, C9913e> {
    public final /* synthetic */ MatcherMatchResult$groups$1 this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MatcherMatchResult$groups$1$iterator$1(MatcherMatchResult$groups$1 matcherMatchResult$groups$1) {
        super(1);
        this.this$0 = matcherMatchResult$groups$1;
    }

    public final C9913e invoke(int i) {
        return this.this$0.get(i);
    }

    @Override // p573f.p590w.p591b.AbstractC10031l
    public /* bridge */ /* synthetic */ C9913e invoke(Integer num) {
        return invoke(num.intValue());
    }
}
