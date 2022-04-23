package p626l.p632u;

import androidx.exifinterface.media.ExifInterface;
import gogolook.callgogolook2.gson.UserProfile;
import java.util.Collection;
import java.util.Iterator;
import kotlin.Metadata;
import p626l.C14986p;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15144f;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.p644e0.AbstractC15141a;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��6\n\u0002\u0018\u0002\n��\n\u0002\u0010\u001e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010(\n��\n\u0002\u0010\u0011\n\u0002\u0010��\n\u0002\b\u0005\n\u0002\u0010\u000e\n��\b'\u0018��*\u0006\b��\u0010\u0001 \u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u0007\b\u0004¢\u0006\u0002\u0010\u0003J\u0016\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00028��H\u0096\u0002¢\u0006\u0002\u0010\u000bJ\u0016\u0010\f\u001a\u00020\t2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00028��0\u0002H\u0016J\b\u0010\u000e\u001a\u00020\tH\u0016J\u000f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028��0\u0010H¦\u0002J\u0015\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00130\u0012H\u0015¢\u0006\u0002\u0010\u0014J'\u0010\u0011\u001a\b\u0012\u0004\u0012\u0002H\u00150\u0012\"\u0004\b\u0001\u0010\u00152\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u0002H\u00150\u0012H\u0014¢\u0006\u0002\u0010\u0017J\b\u0010\u0018\u001a\u00020\u0019H\u0016R\u0012\u0010\u0004\u001a\u00020\u0005X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u001a"}, m815d2 = {"Lkotlin/collections/AbstractCollection;", ExifInterface.LONGITUDE_EAST, "", "()V", "size", "", "getSize", "()I", "contains", "", "element", "(Ljava/lang/Object;)Z", "containsAll", "elements", "isEmpty", "iterator", "", "toArray", "", "", "()[Ljava/lang/Object;", ExifInterface.GPS_DIRECTION_TRUE, "array", "([Ljava/lang/Object;)[Ljava/lang/Object;", "toString", "", "kotlin-stdlib"}, m814k = 1, m813mv = {1, 1, 16})
/* renamed from: l.u.a */
/* loaded from: classes3-dex2jar.jar:l/u/a.class */
public abstract class AbstractC14991a<E> implements Collection<E>, AbstractC15141a {

    /* renamed from: l.u.a$a */
    /* loaded from: classes3-dex2jar.jar:l/u/a$a.class */
    public static final class C14992a extends AbstractC15150l implements AbstractC15118l<E, CharSequence> {
        public C14992a() {
            super(1);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15118l
        public final CharSequence invoke(E e) {
            return e == AbstractC14991a.this ? "(this Collection)" : String.valueOf(e);
        }
    }

    @Override // java.util.Collection
    public boolean add(E e) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean addAll(Collection<? extends E> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* renamed from: b */
    public abstract int mo619b();

    @Override // java.util.Collection
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean contains(Object obj) {
        boolean z;
        if (!isEmpty()) {
            Iterator<E> it = iterator();
            while (true) {
                z = false;
                if (it.hasNext()) {
                    if (C15149k.m384a(it.next(), obj)) {
                        z = true;
                        break;
                    }
                } else {
                    break;
                }
            }
        } else {
            z = false;
        }
        return z;
    }

    @Override // java.util.Collection
    public boolean containsAll(Collection<? extends Object> collection) {
        boolean z;
        C15149k.m377b(collection, "elements");
        if (!collection.isEmpty()) {
            Iterator<T> it = collection.iterator();
            while (true) {
                z = true;
                if (it.hasNext()) {
                    if (!contains(it.next())) {
                        z = false;
                        break;
                    }
                } else {
                    break;
                }
            }
        } else {
            z = true;
        }
        return z;
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.Collection
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean removeAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean retainAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final /* bridge */ int size() {
        return mo619b();
    }

    @Override // java.util.Collection
    public Object[] toArray() {
        return C15144f.m392a(this);
    }

    @Override // java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        C15149k.m377b(tArr, "array");
        T[] tArr2 = (T[]) C15144f.m391a(this, tArr);
        if (tArr2 != null) {
            return tArr2;
        }
        throw new C14986p("null cannot be cast to non-null type kotlin.Array<T>");
    }

    public String toString() {
        return C15029u.m545a(this, UserProfile.CARD_CATE_SEPARATOR, "[", "]", 0, null, new C14992a(), 24, null);
    }
}
