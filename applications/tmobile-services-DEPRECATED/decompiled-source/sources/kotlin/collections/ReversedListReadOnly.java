package kotlin.collections;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.List;
import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\b\b\u0012\u0018��*\u0006\b��\u0010\u0001 \u00012\u00020\u0002B\u0015\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028��0\u0007¢\u0006\u0004\b\r\u0010\u000eJ\u0018\u0010\u0005\u001a\u00028��2\u0006\u0010\u0004\u001a\u00020\u0003H\u0096\u0002¢\u0006\u0004\b\u0005\u0010\u0006R\u001c\u0010\b\u001a\b\u0012\u0004\u0012\u00028��0\u00078\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0016\u0010\f\u001a\u00020\u00038V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000b¨\u0006\u000f"}, d2 = {"Lkotlin/collections/ReversedListReadOnly;", "T", "Lkotlin/collections/AbstractList;", "", FirebaseAnalytics.Param.INDEX, "get", "(I)Ljava/lang/Object;", "", "delegate", "Ljava/util/List;", "getSize", "()I", "size", "<init>", "(Ljava/util/List;)V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/collections/ReversedListReadOnly.class */
class ReversedListReadOnly<T> extends AbstractList<T> {

    /* renamed from: g */
    private final List<T> f20536g;

    @Override // kotlin.collections.AbstractCollection
    /* renamed from: c */
    public int mo121c() {
        return this.f20536g.size();
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public T get(int i) {
        int z;
        List<T> list = this.f20536g;
        z = CollectionsKt__ReversedViewsKt.m2153z(this, i);
        return list.get(z);
    }
}
