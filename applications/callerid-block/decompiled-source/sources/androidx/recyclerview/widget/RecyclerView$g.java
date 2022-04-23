package androidx.recyclerview.widget;

import android.database.Observable;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$g.class */
class RecyclerView$g extends Observable<RecyclerView$h> {
    /* renamed from: a */
    public boolean m12775a() {
        return !((Observable) this).mObservers.isEmpty();
    }

    /* renamed from: b */
    public void m12774b() {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            ((RecyclerView$h) ((Observable) this).mObservers.get(size)).m12773a();
        }
    }
}
