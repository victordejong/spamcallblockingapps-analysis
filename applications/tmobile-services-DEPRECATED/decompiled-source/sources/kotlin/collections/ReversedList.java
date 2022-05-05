package kotlin.collections;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.List;
import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\"\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0010!\n\u0002\b\b\b\u0002\u0018��*\u0004\b��\u0010\u00012\u00020\u0002B\u0015\u0012\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00028��0\u0010¢\u0006\u0004\b\u0016\u0010\u0017J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00028��H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u0018\u0010\u000b\u001a\u00028��2\u0006\u0010\u0004\u001a\u00020\u0003H\u0096\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\r\u001a\u00028��2\u0006\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\r\u0010\fJ \u0010\u000e\u001a\u00028��2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00028��H\u0096\u0002¢\u0006\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0011\u001a\b\u0012\u0004\u0012\u00028��0\u00108\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0015\u001a\u00020\u00038V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u0018"}, d2 = {"Lkotlin/collections/ReversedList;", "T", "Lkotlin/collections/AbstractMutableList;", "", FirebaseAnalytics.Param.INDEX, "element", "", "add", "(ILjava/lang/Object;)V", "clear", "()V", "get", "(I)Ljava/lang/Object;", "removeAt", "set", "(ILjava/lang/Object;)Ljava/lang/Object;", "", "delegate", "Ljava/util/List;", "getSize", "()I", "size", "<init>", "(Ljava/util/List;)V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/collections/ReversedList.class */
final class ReversedList<T> extends AbstractMutableList<T> {

    /* renamed from: f */
    private final List<T> f20535f;

    @Override // java.util.AbstractList, java.util.List
    public void add(int i, T t) {
        int A;
        List<T> list = this.f20535f;
        A = CollectionsKt__ReversedViewsKt.m2156A(this, i);
        list.add(A, t);
    }

    @Override // kotlin.collections.AbstractMutableList
    /* renamed from: c */
    public int mo2050c() {
        return this.f20535f.size();
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        this.f20535f.clear();
    }

    @Override // kotlin.collections.AbstractMutableList
    /* renamed from: e */
    public T mo2049e(int i) {
        int z;
        List<T> list = this.f20535f;
        z = CollectionsKt__ReversedViewsKt.m2153z(this, i);
        return list.remove(z);
    }

    @Override // java.util.AbstractList, java.util.List
    public T get(int i) {
        int z;
        List<T> list = this.f20535f;
        z = CollectionsKt__ReversedViewsKt.m2153z(this, i);
        return list.get(z);
    }

    @Override // java.util.AbstractList, java.util.List
    public T set(int i, T t) {
        int z;
        List<T> list = this.f20535f;
        z = CollectionsKt__ReversedViewsKt.m2153z(this, i);
        return list.set(z, t);
    }
}
