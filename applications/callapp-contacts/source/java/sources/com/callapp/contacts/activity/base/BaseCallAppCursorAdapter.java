package com.callapp.contacts.activity.base;

import android.database.Cursor;
import android.database.DataSetObserver;
import android.util.SparseIntArray;
import com.callapp.contacts.activity.base.BaseCallAppViewHolder;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.callapp.contacts.manager.asset.managers.StoreItemAssetManager;
import com.callapp.contacts.util.cursor.Cursors;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/BaseCallAppCursorAdapter.class */
public abstract class BaseCallAppCursorAdapter<DataType extends BaseViewTypeData, ViewHolder extends BaseCallAppViewHolder> extends BaseCallAppAdapter<Cursor, DataType, ViewHolder> {

    /* renamed from: c */
    private boolean f20250c;

    /* renamed from: d */
    private DataSetObserver f20251d;

    /* renamed from: e */
    private SparseIntArray f20252e;

    /* renamed from: f */
    private int f20253f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/BaseCallAppCursorAdapter$NotifyingDataSetObserver.class */
    public class NotifyingDataSetObserver extends DataSetObserver {
        private NotifyingDataSetObserver() {
            BaseCallAppCursorAdapter.this = r4;
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            super.onChanged();
            BaseCallAppCursorAdapter.this.f20250c = true;
            BaseCallAppCursorAdapter.this.notifyDataSetChanged();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            super.onInvalidated();
            BaseCallAppCursorAdapter.this.f20250c = false;
            BaseCallAppCursorAdapter.this.notifyDataSetChanged();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public BaseCallAppCursorAdapter(Cursor cursor, StoreItemAssetManager storeItemAssetManager) {
        super(storeItemAssetManager);
        int i = -1;
        this.f20253f = -1;
        this.f20250c = cursor != 0;
        this.f20252e = new SparseIntArray();
        this.f20245a = cursor;
        this.f20253f = this.f20250c ? ((Cursor) this.f20245a).getColumnIndex(getIndexColumnName()) : i;
        this.f20251d = new NotifyingDataSetObserver();
        if (this.f20245a != 0) {
            ((Cursor) this.f20245a).registerDataSetObserver(this.f20251d);
        }
    }

    /* renamed from: a */
    protected abstract DataType mo30688a(int i);

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter
    /* renamed from: b */
    public final boolean mo31506b() {
        return super.mo31506b() && !((Cursor) this.f20245a).isClosed() && getItemCount() > 0;
    }

    protected abstract String getIndexColumnName();

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter
    public DataType getItemAt(int i) {
        return mo30688a(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public int getItemCount() {
        if (!this.f20250c || this.f20245a == 0) {
            return 0;
        }
        return ((Cursor) this.f20245a).getCount();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public long getItemId(int i) {
        if (!this.f20250c || this.f20245a == 0 || !((Cursor) this.f20245a).moveToPosition(i)) {
            return 0L;
        }
        return ((Cursor) this.f20245a).getLong(this.f20253f);
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter, androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public int getItemViewType(int i) {
        if (this.f20252e.get(i, -1) != -1) {
            return this.f20252e.get(i);
        }
        int itemViewType = super.getItemViewType(i);
        this.f20252e.append(i, itemViewType);
        return itemViewType;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setData(Cursor cursor) {
        Cursor cursor2;
        DataSetObserver dataSetObserver;
        if (Cursors.m27139a(cursor, (Cursor) this.f20245a)) {
            cursor2 = null;
        } else {
            Cursor cursor3 = (Cursor) this.f20245a;
            if (cursor3 != null && (dataSetObserver = this.f20251d) != null) {
                cursor3.unregisterDataSetObserver(dataSetObserver);
            }
            this.f20245a = cursor;
            if (this.f20245a != 0) {
                if (this.f20251d != null) {
                    ((Cursor) this.f20245a).registerDataSetObserver(this.f20251d);
                }
                this.f20253f = ((Cursor) this.f20245a).getColumnIndexOrThrow(getIndexColumnName());
                this.f20250c = true;
                notifyDataSetChanged();
            } else {
                this.f20253f = -1;
                this.f20250c = false;
                notifyDataSetChanged();
            }
            cursor2 = cursor3;
        }
        if (cursor2 != null) {
            cursor2.close();
        }
        this.f20252e.clear();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public void setHasStableIds(boolean z) {
        super.setHasStableIds(true);
    }
}
