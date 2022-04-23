package kotlin.collections;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import kotlin.Metadata;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import okhttp3.HttpUrl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0002\b\u0003\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010(\n\u0002\b\u0003\n\u0002\u0010*\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0007\bÀ\u0002\u0018��2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\t\b\u0002¢\u0006\u0004\b3\u00104J\u0018\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0096\u0002¢\u0006\u0004\b\b\u0010\tJ\u001d\u0010\f\u001a\u00020\u00072\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00050\nH\u0016¢\u0006\u0004\b\f\u0010\rJ\u001a\u0010\u0010\u001a\u00020\u00072\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0096\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0018\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u0012H\u0096\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u0016\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00050\u001cH\u0096\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010\u001f\u001a\u00020\u00122\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001f\u0010\u0019J\u0015\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00050 H\u0016¢\u0006\u0004\b!\u0010\"J\u001d\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00050 2\u0006\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b!\u0010#J\u000f\u0010$\u001a\u00020\u000eH\u0002¢\u0006\u0004\b$\u0010%J%\u0010)\u001a\b\u0012\u0004\u0012\u00020\u00050(2\u0006\u0010&\u001a\u00020\u00122\u0006\u0010'\u001a\u00020\u0012H\u0016¢\u0006\u0004\b)\u0010*J\u000f\u0010,\u001a\u00020+H\u0016¢\u0006\u0004\b,\u0010-R\u0016\u0010/\u001a\u00020.8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b/\u00100R\u0016\u00102\u001a\u00020\u00128V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b1\u0010\u0017¨\u00065"}, d2 = {"Lkotlin/collections/EmptyList;", "Ljava/util/List;", "Ljava/io/Serializable;", "Ljava/util/RandomAccess;", "Lkotlin/jvm/internal/markers/KMappedMarker;", "", "element", "", "contains", "(Ljava/lang/Void;)Z", "", "elements", "containsAll", "(Ljava/util/Collection;)Z", "", "other", "equals", "(Ljava/lang/Object;)Z", "", FirebaseAnalytics.Param.INDEX, "get", "(I)Ljava/lang/Void;", "hashCode", "()I", "indexOf", "(Ljava/lang/Void;)I", "isEmpty", "()Z", "", "iterator", "()Ljava/util/Iterator;", "lastIndexOf", "", "listIterator", "()Ljava/util/ListIterator;", "(I)Ljava/util/ListIterator;", "readResolve", "()Ljava/lang/Object;", "fromIndex", "toIndex", "", "subList", "(II)Ljava/util/List;", "", "toString", "()Ljava/lang/String;", "", "serialVersionUID", "J", "getSize", "size", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/collections/EmptyList.class */
public final class EmptyList implements List, Serializable, RandomAccess, KMappedMarker {

    /* renamed from: f */
    public static final EmptyList f20520f = new EmptyList();
    private static final long serialVersionUID = -7390468764508069838L;

    private EmptyList() {
    }

    private final Object readResolve() {
        return f20520f;
    }

    @Override // java.util.List
    public /* synthetic */ void add(int i, Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public /* synthetic */ boolean add(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public boolean addAll(int i, Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public boolean addAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* renamed from: c */
    public boolean m2124c(@NotNull Void element) {
        Intrinsics.m1830e(element, "element");
        return false;
    }

    @Override // java.util.List, java.util.Collection
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof Void) {
            return m2124c((Void) obj);
        }
        return false;
    }

    @Override // java.util.List, java.util.Collection
    public boolean containsAll(@NotNull Collection elements) {
        Intrinsics.m1830e(elements, "elements");
        return elements.isEmpty();
    }

    @NotNull
    /* renamed from: e */
    public Void m2123e(int i) {
        throw new IndexOutOfBoundsException("Empty list doesn't contain element at index " + i + '.');
    }

    @Override // java.util.List, java.util.Collection
    public boolean equals(@Nullable Object obj) {
        return (obj instanceof List) && ((List) obj).isEmpty();
    }

    /* renamed from: f */
    public int m2122f() {
        return 0;
    }

    /* renamed from: g */
    public int m2121g(@NotNull Void element) {
        Intrinsics.m1830e(element, "element");
        return -1;
    }

    @Override // java.util.List
    public /* bridge */ /* synthetic */ Object get(int i) {
        m2123e(i);
        throw null;
    }

    /* renamed from: h */
    public int m2120h(@NotNull Void element) {
        Intrinsics.m1830e(element, "element");
        return -1;
    }

    @Override // java.util.List, java.util.Collection
    public int hashCode() {
        return 1;
    }

    @Override // java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof Void) {
            return m2121g((Void) obj);
        }
        return -1;
    }

    @Override // java.util.List, java.util.Collection
    public boolean isEmpty() {
        return true;
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    @NotNull
    public Iterator iterator() {
        return EmptyIterator.f20519f;
    }

    @Override // java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof Void) {
            return m2120h((Void) obj);
        }
        return -1;
    }

    @Override // java.util.List
    @NotNull
    public ListIterator listIterator() {
        return EmptyIterator.f20519f;
    }

    @Override // java.util.List
    @NotNull
    public ListIterator listIterator(int i) {
        if (i == 0) {
            return EmptyIterator.f20519f;
        }
        throw new IndexOutOfBoundsException("Index: " + i);
    }

    @Override // java.util.List
    public /* synthetic */ Object remove(int i) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public boolean removeAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public boolean retainAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public /* synthetic */ Object set(int i, Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public final /* bridge */ int size() {
        return m2122f();
    }

    @Override // java.util.List
    @NotNull
    public List subList(int i, int i2) {
        if (i == 0 && i2 == 0) {
            return this;
        }
        throw new IndexOutOfBoundsException("fromIndex: " + i + ", toIndex: " + i2);
    }

    @Override // java.util.List, java.util.Collection
    public Object[] toArray() {
        return CollectionToArray.m1848a(this);
    }

    @Override // java.util.List, java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        return (T[]) CollectionToArray.m1847b(this, tArr);
    }

    @NotNull
    public String toString() {
        return HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
    }
}
