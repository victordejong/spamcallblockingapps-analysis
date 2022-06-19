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

    /* renamed from: c */
    private DragStartCallback f22956c;

    /* renamed from: d */
    private long f22957d = -1;

    /* renamed from: e */
    private long f22958e = -1;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/favorites/DragItemAdapter$DragStartCallback.class */
    public interface DragStartCallback {
        /* renamed from: a */
        boolean mo30278a(View view, long j);
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/favorites/DragItemAdapter$ViewHolder.class */
    public static abstract class ViewHolder extends BaseContactHolder {

        /* renamed from: u */
        public View f22959u;

        /* renamed from: v */
        public long f22960v;

        /* renamed from: w */
        private DragStartCallback f22961w;

        public ViewHolder(final View view, int i, boolean z) {
            super(view);
            View findViewById = view.findViewById(i);
            this.f22959u = findViewById;
            if (findViewById == null || !z) {
                return;
            }
            findViewById.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.callapp.contacts.activity.favorites.DragItemAdapter.ViewHolder.1
                @Override // android.view.View.OnLongClickListener
                public boolean onLongClick(View view2) {
                    if (ViewHolder.this.f22961w == null) {
                        return false;
                    }
                    if (ViewHolder.this.f22961w.mo30278a(view, ViewHolder.this.f22960v)) {
                        return true;
                    }
                    if (view == ViewHolder.this.f22959u) {
                    }
                    return false;
                }
            });
        }

        public void setDragStartCallback(DragStartCallback dragStartCallback) {
            this.f22961w = dragStartCallback;
        }
    }

    public DragItemAdapter(List<Data> list, StoreItemAssetManager storeItemAssetManager) {
        super(list, storeItemAssetManager);
    }

    /* renamed from: a */
    public final int m30307a(long j) {
        int itemCount = getItemCount();
        for (int i = 0; i < itemCount; i++) {
            if (j == getItemId(i)) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: a */
    public final void m30308a(int i, int i2) {
        if (this.f20245a == 0 || ((List) this.f20245a).size() <= i || ((List) this.f20245a).size() <= i2) {
            return;
        }
        Collections.swap((List) this.f20245a, i, i2);
        notifyDataSetChanged();
    }

    /* renamed from: a */
    public final void m30306a(ViewHolder viewHolder, Data data) {
        viewHolder.f22960v = data.contactId;
        viewHolder.itemView.setVisibility(this.f22957d == data.contactId ? 4 : 0);
        viewHolder.setDragStartCallback(this.f22956c);
    }

    public long getDropTargetId() {
        return this.f22958e;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public final long getItemId(int i) {
        return getUniqueItemId(i);
    }

    public abstract long getUniqueItemId(int i);

    public void setDragItemId(long j) {
        this.f22957d = j;
    }

    public void setDragStartedListener(DragStartCallback dragStartCallback) {
        this.f22956c = dragStartCallback;
    }

    public void setDropTargetId(long j) {
        this.f22958e = j;
    }
}
