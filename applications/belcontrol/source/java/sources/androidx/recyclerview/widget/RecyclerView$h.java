package androidx.recyclerview.widget;

import android.database.Observable;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$h.class */
public class RecyclerView$h extends Observable<RecyclerView$i> {
    /* renamed from: a */
    public boolean m6214a() {
        return !((Observable) this).mObservers.isEmpty();
    }

    /* renamed from: b */
    public void m6213b() {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            ((RecyclerView$i) ((Observable) this).mObservers.get(size)).onChanged();
        }
    }

    /* renamed from: c */
    public void m6212c(int i, int i2) {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            ((RecyclerView$i) ((Observable) this).mObservers.get(size)).onItemRangeMoved(i, i2, 1);
        }
    }

    /* renamed from: d */
    public void m6211d(int i, int i2) {
        m6210e(i, i2, null);
    }

    /* renamed from: e */
    public void m6210e(int i, int i2, Object obj) {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            ((RecyclerView$i) ((Observable) this).mObservers.get(size)).onItemRangeChanged(i, i2, obj);
        }
    }

    /* renamed from: f */
    public void m6209f(int i, int i2) {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            ((RecyclerView$i) ((Observable) this).mObservers.get(size)).onItemRangeInserted(i, i2);
        }
    }

    /* renamed from: g */
    public void m6208g(int i, int i2) {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            ((RecyclerView$i) ((Observable) this).mObservers.get(size)).onItemRangeRemoved(i, i2);
        }
    }
}
