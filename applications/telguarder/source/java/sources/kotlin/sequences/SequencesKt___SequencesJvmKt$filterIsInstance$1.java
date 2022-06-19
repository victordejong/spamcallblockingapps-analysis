package kotlin.sequences;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\u0010\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010��\n��\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\n¢\u0006\u0002\b\u0005"}, m400d2 = {"<anonymous>", "", "R", "it", "", "invoke"}, m399k = 3, m398mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:kotlin/sequences/SequencesKt___SequencesJvmKt$filterIsInstance$1.class */
final class SequencesKt___SequencesJvmKt$filterIsInstance$1 extends Lambda implements Function1<Object, Boolean> {
    final /* synthetic */ Class $klass;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SequencesKt___SequencesJvmKt$filterIsInstance$1(Class cls) {
        super(1);
        this.$klass = cls;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [boolean, java.lang.Boolean] */
    @Override // kotlin.jvm.functions.Function1
    /* renamed from: invoke */
    public final Boolean invoke2(Object obj) {
        return this.$klass.isInstance(obj);
    }
}
