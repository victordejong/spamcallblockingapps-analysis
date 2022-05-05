package kotlin.sequences;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;
@Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\u0010��\u001a\u0002H\u0001\"\u0004\b��\u0010\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u0002H\u0001H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"<anonymous>", "T", FirebaseAnalytics.Param.INDEX, "", "element", "invoke", "(ILjava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/sequences/SequencesKt___SequencesKt$onEachIndexed$1.class */
final class SequencesKt___SequencesKt$onEachIndexed$1 extends Lambda implements Function2<Integer, T, T> {

    /* renamed from: f */
    final /* synthetic */ Function2 f20939f;

    /* renamed from: b */
    public final T m1597b(int i, T t) {
        this.f20939f.mo422o(Integer.valueOf(i), t);
        return t;
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: o */
    public /* bridge */ /* synthetic */ Object mo422o(Integer num, Object obj) {
        m1597b(num.intValue(), obj);
        return obj;
    }
}
