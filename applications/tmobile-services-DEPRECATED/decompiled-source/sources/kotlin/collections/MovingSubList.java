package kotlin.collections;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.List;
import java.util.RandomAccess;
import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\b\b��\u0018��*\u0006\b��\u0010\u0001 \u00012\u00020\u00022\u00020\u0003B\u0015\u0012\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028��0\u000f¢\u0006\u0004\b\u0015\u0010\u0016J\u0018\u0010\u0006\u001a\u00028��2\u0006\u0010\u0005\u001a\u00020\u0004H\u0096\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u001d\u0010\u000b\u001a\u00020\n2\u0006\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0004¢\u0006\u0004\b\u000b\u0010\fR\u0016\u0010\r\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0016\u0010\b\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010\u000eR\u001c\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028��0\u000f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0014\u001a\u00020\u00048V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u0017"}, d2 = {"Lkotlin/collections/MovingSubList;", "E", "Ljava/util/RandomAccess;", "Lkotlin/collections/AbstractList;", "", FirebaseAnalytics.Param.INDEX, "get", "(I)Ljava/lang/Object;", "fromIndex", "toIndex", "", "move", "(II)V", "_size", "I", "", "list", "Ljava/util/List;", "getSize", "()I", "size", "<init>", "(Ljava/util/List;)V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/collections/MovingSubList.class */
public final class MovingSubList<E> extends AbstractList<E> implements RandomAccess {

    /* renamed from: g */
    private int f20530g;

    /* renamed from: h */
    private int f20531h;

    /* renamed from: i */
    private final List<E> f20532i;

    @Override // kotlin.collections.AbstractCollection
    /* renamed from: c */
    public int mo121c() {
        return this.f20531h;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public E get(int i) {
        AbstractList.f20455f.m2373a(i, this.f20531h);
        return this.f20532i.get(this.f20530g + i);
    }
}
