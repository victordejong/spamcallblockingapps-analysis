package kotlin.a;

import com.mopub.common.AdType;
import java.util.List;
import kotlin.Metadata;
import kotlin.f.c;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\n\b\u0002\u0018��*\u0004\b��\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u0013\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028��0\u0004¢\u0006\u0002\u0010\u0005J\u001d\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00028��H\u0016¢\u0006\u0002\u0010\u000eJ\b\u0010\u000f\u001a\u00020\u000bH\u0016J\u0016\u0010\u0010\u001a\u00028��2\u0006\u0010\f\u001a\u00020\u0007H\u0096\u0002¢\u0006\u0002\u0010\u0011J\u0015\u0010\u0012\u001a\u00028��2\u0006\u0010\f\u001a\u00020\u0007H\u0016¢\u0006\u0002\u0010\u0011J\u001e\u0010\u0013\u001a\u00028��2\u0006\u0010\f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00028��H\u0096\u0002¢\u0006\u0002\u0010\u0014R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028��0\u0004X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0006\u001a\u00020\u00078VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\t¨\u0006\u0015"}, d2 = {"Lkotlin/collections/ReversedList;", "T", "Lkotlin/collections/AbstractMutableList;", "delegate", "", "(Ljava/util/List;)V", "size", "", "getSize", "()I", "add", "", "index", "element", "(ILjava/lang/Object;)V", AdType.CLEAR, "get", "(I)Ljava/lang/Object;", "removeAt", "set", "(ILjava/lang/Object;)Ljava/lang/Object;", "kotlin-stdlib"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/a/an.class */
public final class an<T> extends f<T> {

    /* renamed from: a  reason: collision with root package name */
    private final List<T> f36573a;

    public an(List<T> delegate) {
        p.d(delegate, "delegate");
        this.f36573a = delegate;
    }

    @Override // kotlin.a.f
    public final int a() {
        return this.f36573a.size();
    }

    @Override // kotlin.a.f
    public final T a(int i) {
        return this.f36573a.remove(v.a((List) this, i));
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, T t) {
        List<T> list = this.f36573a;
        int size = size();
        if (i < 0 || size < i) {
            throw new IndexOutOfBoundsException("Position index " + i + " must be in range [" + new c(0, size()) + "].");
        }
        list.add(size() - i, t);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        this.f36573a.clear();
    }

    @Override // java.util.AbstractList, java.util.List
    public final T get(int i) {
        return this.f36573a.get(v.a((List) this, i));
    }

    @Override // java.util.AbstractList, java.util.List
    public final T set(int i, T t) {
        return this.f36573a.set(v.a((List) this, i), t);
    }
}
