package kotlin.text;

import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\b\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u0004\u0018\u00010\u0001H\n¢\u0006\u0002\b\u0002"}, m400d2 = {"<anonymous>", "Lkotlin/text/MatchResult;", "invoke"}, m399k = 3, m398mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:kotlin/text/Regex$findAll$1.class */
public final class Regex$findAll$1 extends Lambda implements Function0<MatchResult> {
    final /* synthetic */ CharSequence $input;
    final /* synthetic */ int $startIndex;
    final /* synthetic */ Regex this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Regex$findAll$1(Regex regex, CharSequence charSequence, int i) {
        super(0);
        this.this$0 = regex;
        this.$input = charSequence;
        this.$startIndex = i;
    }

    @Override // kotlin.jvm.functions.Function0
    public final MatchResult invoke() {
        return this.this$0.find(this.$input, this.$startIndex);
    }
}
