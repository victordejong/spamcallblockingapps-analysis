package com.callapp.contacts.activity.favorites;

import android.view.View;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.activity.base.BaseCallAppListAdapter;
import com.callapp.contacts.activity.base.BaseContactHolder;
import com.callapp.contacts.activity.favorites.DragItemAdapter.ViewHolder;
import com.callapp.contacts.manager.asset.managers.StoreItemAssetManager;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/favorites/DragItemAdapter.class */
public abstract class DragItemAdapter<Data extends BaseAdapterItemData, ViewHolder extends ViewHolder> extends BaseCallAppListAdapter<Data, ViewHolder> {

    /* renamed from: c  reason: collision with root package name */
    private DragStartCallback f12842c;

    /* renamed from: d  reason: collision with root package name */
    private long f12843d = -1;
    private long e = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/favorites/DragItemAdapter$DragStartCallback.class */
    public interface DragStartCallback {
        boolean a(View view, long j);
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/favorites/DragItemAdapter$ViewHolder.class */
    public static abstract class ViewHolder extends BaseContactHolder {
        public View u;
        public long v;
        private DragStartCallback w;

        public ViewHolder(final View view, int i, boolean z) {
            super(view);
            View findViewById = view.findViewById(i);
            this.u = findViewById;
            if (findViewById != null && z) {
                findViewById.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.callapp.contacts.activity.favorites.DragItemAdapter.ViewHolder.1
                    @Override // android.view.View.OnLongClickListener
                    public boolean onLongClick(View view2) {
                        if (ViewHolder.this.w == null) {
                            return false;
                        }
                        if (ViewHolder.this.w.a(view, ViewHolder.this.v)) {
                            return true;
                        }
                        if (view == ViewHolder.this.u) {
                        }
                        return false;
                    }
                });
            }
        }

        public void setDragStartCallback(DragStartCallback dragStartCallback) {
            this.w = dragStartCallback;
        }
    }

    public DragItemAdapter(List<Data> list, StoreItemAssetManager storeItemAssetManager) {
        super(list, storeItemAssetManager);
    }

    public final int a(long j) {
        int itemCount = getItemCount();
        for (int i = 0; i < itemCount; i++) {
            if (j == getItemId(i)) {
                return i;
            }
        }
        return -1;
    }

    public final void a(int i, int i2) {
        if (this.f11075a != 0 && ((List) this.f11075a).size() > i && ((List) this.f11075a).size() > i2) {
            Collections.swap((List) this.f11075a, i, i2);
            notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(ViewHolder viewHolder, Data data) {
        viewHolder.v = data.contactId;
        viewHolder.itemView.setVisibility(this.f12843d == data.contactId ? 4 : 0);
        viewHolder.setDragStartCallback(this.f12842c);
    }

    public long getDropTargetId() {
        return this.e;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public final long getItemId(int i) {
        return getUniqueItemId(i);
    }

    public abstract long getUniqueItemId(int i);

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setDragItemId(long j) {
        this.f12843d = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setDragStartedListener(DragStartCallback dragStartCallback) {
        this.f12842c = dragStartCallback;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setDropTargetId(long j) {
        this.e = j;
    }
}
