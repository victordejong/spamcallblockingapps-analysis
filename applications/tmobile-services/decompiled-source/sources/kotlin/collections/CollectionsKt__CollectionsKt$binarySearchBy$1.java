package kotlin.collections;

import kotlin.Metadata;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000f\n\u0002\b\u0003\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002\"\u000e\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00030\u00042\u0006\u0010\u0005\u001a\u0002H\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"<anonymous>", "", "T", "K", "", "it", "invoke", "(Ljava/lang/Object;)I"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/collections/CollectionsKt__CollectionsKt$binarySearchBy$1.class */
public final class CollectionsKt__CollectionsKt$binarySearchBy$1 extends Lambda implements Function1<T, Integer> {

    /* renamed from: f */
    final /* synthetic */ Function1 f20512f;

    /* renamed from: g */
    final /* synthetic */ Comparable f20513g;

    /* renamed from: b */
    public final int m2165b(T t) {
        int b;
        b = ComparisonsKt__ComparisonsKt.m1949b((Comparable) this.f20512f.invoke(t), this.f20513g);
        return b;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Integer invoke(Object obj) {
        return Integer.valueOf(m2165b(obj));
    }
}
