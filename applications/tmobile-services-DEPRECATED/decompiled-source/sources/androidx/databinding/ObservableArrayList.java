package androidx.databinding;

import androidx.databinding.ObservableList;
import java.util.ArrayList;
import java.util.Collection;
/* loaded from: classes-dex2jar.jar:androidx/databinding/ObservableArrayList.class */
public class ObservableArrayList<T> extends ArrayList<T> implements ObservableList<T> {

    /* renamed from: f */
    private transient ListChangeRegistry f3528f = new ListChangeRegistry();

    /* renamed from: c */
    private void m18661c(int i, int i2) {
        ListChangeRegistry listChangeRegistry = this.f3528f;
        if (listChangeRegistry != null) {
            listChangeRegistry.m18668q(this, i, i2);
        }
    }

    /* renamed from: d */
    private void m18660d(int i, int i2) {
        ListChangeRegistry listChangeRegistry = this.f3528f;
        if (listChangeRegistry != null) {
            listChangeRegistry.m18667r(this, i, i2);
        }
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public void add(int i, T t) {
        super.add(i, t);
        m18661c(i, 1);
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(T t) {
        super.add(t);
        m18661c(size() - 1, 1);
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public boolean addAll(int i, Collection<? extends T> collection) {
        boolean addAll = super.addAll(i, collection);
        if (addAll) {
            m18661c(i, collection.size());
        }
        return addAll;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends T> collection) {
        int size = size();
        boolean addAll = super.addAll(collection);
        if (addAll) {
            m18661c(size, size() - size);
        }
        return addAll;
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        int size = size();
        super.clear();
        if (size != 0) {
            m18660d(0, size);
        }
    }

    @Override // androidx.databinding.ObservableList
    /* renamed from: i */
    public void mo18642i(ObservableList.OnListChangedCallback onListChangedCallback) {
        ListChangeRegistry listChangeRegistry = this.f3528f;
        if (listChangeRegistry != null) {
            listChangeRegistry.m18683j(onListChangedCallback);
        }
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public T remove(int i) {
        T t = (T) super.remove(i);
        m18660d(i, 1);
        return t;
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        int indexOf = indexOf(obj);
        if (indexOf < 0) {
            return false;
        }
        remove(indexOf);
        return true;
    }

    @Override // java.util.ArrayList, java.util.AbstractList
    protected void removeRange(int i, int i2) {
        super.removeRange(i, i2);
        m18660d(i, i2 - i);
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public T set(int i, T t) {
        T t2 = (T) super.set(i, t);
        ListChangeRegistry listChangeRegistry = this.f3528f;
        if (listChangeRegistry != null) {
            listChangeRegistry.m18669p(this, i, 1);
        }
        return t2;
    }
}
