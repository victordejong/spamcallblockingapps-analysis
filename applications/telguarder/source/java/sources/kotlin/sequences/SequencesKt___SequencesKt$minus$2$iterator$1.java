package kotlin.sequences;

import java.util.HashSet;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\n\n��\n\u0002\u0010\u000b\n\u0002\b\u0004\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u0002H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, m400d2 = {"<anonymous>", "", "T", "it", "invoke", "(Ljava/lang/Object;)Z"}, m399k = 3, m398mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:kotlin/sequences/SequencesKt___SequencesKt$minus$2$iterator$1.class */
final class SequencesKt___SequencesKt$minus$2$iterator$1 extends Lambda implements Function1<T, Boolean> {
    final /* synthetic */ HashSet $other;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SequencesKt___SequencesKt$minus$2$iterator$1(HashSet hashSet) {
        super(1);
        this.$other = hashSet;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [boolean, java.lang.Boolean] */
    @Override // kotlin.jvm.functions.Function1
    /* renamed from: invoke */
    public final Boolean invoke2(T t) {
        return this.$other.contains(t);
    }
}
