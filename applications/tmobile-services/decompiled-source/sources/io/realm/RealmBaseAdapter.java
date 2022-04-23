package io.realm;

import android.widget.BaseAdapter;
import androidx.annotation.Nullable;
import io.realm.RealmModel;
/* loaded from: classes2-dex2jar.jar:io/realm/RealmBaseAdapter.class */
public abstract class RealmBaseAdapter<T extends RealmModel> extends BaseAdapter {
    @Nullable

    /* renamed from: f */
    protected OrderedRealmCollection<T> f19874f;

    /* renamed from: io.realm.RealmBaseAdapter$1 */
    /* loaded from: classes2-dex2jar.jar:io/realm/RealmBaseAdapter$1.class */
    class C21481 implements RealmChangeListener<OrderedRealmCollection<T>> {

        /* renamed from: a */
        final /* synthetic */ RealmBaseAdapter f19875a;

        /* renamed from: b */
        public void mo2506a(OrderedRealmCollection<T> orderedRealmCollection) {
            this.f19875a.notifyDataSetChanged();
        }
    }

    /* renamed from: b */
    private boolean m3033b() {
        OrderedRealmCollection<T> orderedRealmCollection = this.f19874f;
        return orderedRealmCollection != null && orderedRealmCollection.isValid();
    }

    @Nullable
    /* renamed from: a */
    public T getItem(int i) {
        return m3033b() ? this.f19874f.get(i) : null;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return m3033b() ? this.f19874f.size() : 0;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }
}
