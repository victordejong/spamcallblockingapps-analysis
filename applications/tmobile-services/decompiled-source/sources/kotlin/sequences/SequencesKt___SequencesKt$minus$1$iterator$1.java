package kotlin.sequences;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref;
@Metadata(bv = {1, 0, 3}, d1 = {"��\n\n��\n\u0002\u0010\u000b\n\u0002\b\u0004\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u0002H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "", "T", "it", "invoke", "(Ljava/lang/Object;)Z"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/sequences/SequencesKt___SequencesKt$minus$1$iterator$1.class */
final class SequencesKt___SequencesKt$minus$1$iterator$1 extends Lambda implements Function1<T, Boolean> {

    /* renamed from: f */
    final /* synthetic */ SequencesKt___SequencesKt$minus$1 f20927f;

    /* renamed from: g */
    final /* synthetic */ Ref.BooleanRef f20928g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SequencesKt___SequencesKt$minus$1$iterator$1(SequencesKt___SequencesKt$minus$1 sequencesKt___SequencesKt$minus$1, Ref.BooleanRef booleanRef) {
        super(1);
        this.f20927f = sequencesKt___SequencesKt$minus$1;
        this.f20928g = booleanRef;
    }

    /* renamed from: b */
    public final boolean m1601b(T t) {
        boolean z = true;
        if (!this.f20928g.f20744f) {
            z = true;
            if (Intrinsics.m1834a(t, this.f20927f.f20926b)) {
                this.f20928g.f20744f = true;
                z = false;
            }
        }
        return z;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Boolean invoke(Object obj) {
        return Boolean.valueOf(m1601b(obj));
    }
}
