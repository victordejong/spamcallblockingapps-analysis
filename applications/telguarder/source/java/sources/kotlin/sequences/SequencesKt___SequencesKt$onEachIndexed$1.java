package kotlin.sequences;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\f\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\u0010��\u001a\u0002H\u0001\"\u0004\b��\u0010\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u0002H\u0001H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, m400d2 = {"<anonymous>", "T", FirebaseAnalytics.Param.INDEX, "", "element", "invoke", "(ILjava/lang/Object;)Ljava/lang/Object;"}, m399k = 3, m398mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:kotlin/sequences/SequencesKt___SequencesKt$onEachIndexed$1.class */
final class SequencesKt___SequencesKt$onEachIndexed$1 extends Lambda implements Function2<Integer, T, T> {
    final /* synthetic */ Function2 $action;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SequencesKt___SequencesKt$onEachIndexed$1(Function2 function2) {
        super(2);
        this.$action = function2;
    }

    public final T invoke(int i, T t) {
        this.$action.invoke(Integer.valueOf(i), t);
        return t;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Integer num, Object obj) {
        return invoke(num.intValue(), (int) obj);
    }
}
