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

    /* renamed from: c  reason: collision with root package name */
    private boolean f11080c;

    /* renamed from: d  reason: collision with root package name */
    private DataSetObserver f11081d;
    private SparseIntArray e;
    private int f;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/BaseCallAppCursorAdapter$NotifyingDataSetObserver.class */
    class NotifyingDataSetObserver extends DataSetObserver {
        private NotifyingDataSetObserver() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            super.onChanged();
            BaseCallAppCursorAdapter.this.f11080c = true;
            BaseCallAppCursorAdapter.this.notifyDataSetChanged();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            super.onInvalidated();
            BaseCallAppCursorAdapter.this.f11080c = false;
            BaseCallAppCursorAdapter.this.notifyDataSetChanged();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public BaseCallAppCursorAdapter(Cursor cursor, StoreItemAssetManager storeItemAssetManager) {
        super(storeItemAssetManager);
        int i = -1;
        this.f = -1;
        this.f11080c = cursor != 0;
        this.e = new SparseIntArray();
        this.f11075a = cursor;
        this.f = this.f11080c ? ((Cursor) this.f11075a).getColumnIndex(getIndexColumnName()) : i;
        this.f11081d = new NotifyingDataSetObserver();
        if (this.f11075a != 0) {
            ((Cursor) this.f11075a).registerDataSetObserver(this.f11081d);
        }
    }

    protected abstract DataType a(int i);

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter
    public final boolean b() {
        return super.b() && !((Cursor) this.f11075a).isClosed() && getItemCount() > 0;
    }

    protected abstract String getIndexColumnName();

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter
    public DataType getItemAt(int i) {
        return a(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public int getItemCount() {
        if (!this.f11080c || this.f11075a == 0) {
            return 0;
        }
        return ((Cursor) this.f11075a).getCount();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public long getItemId(int i) {
        if (!this.f11080c || this.f11075a == 0 || !((Cursor) this.f11075a).moveToPosition(i)) {
            return 0L;
        }
        return ((Cursor) this.f11075a).getLong(this.f);
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter, androidx.recyclerview.widget.RecyclerView.a
    public int getItemViewType(int i) {
        if (this.e.get(i, -1) != -1) {
            return this.e.get(i);
        }
        int itemViewType = super.getItemViewType(i);
        this.e.append(i, itemViewType);
        return itemViewType;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setData(Cursor cursor) {
        Cursor cursor2;
        DataSetObserver dataSetObserver;
        if (Cursors.a(cursor, (Cursor) this.f11075a)) {
            cursor2 = null;
        } else {
            Cursor cursor3 = (Cursor) this.f11075a;
            if (!(cursor3 == null || (dataSetObserver = this.f11081d) == null)) {
                cursor3.unregisterDataSetObserver(dataSetObserver);
            }
            this.f11075a = cursor;
            if (this.f11075a != 0) {
                if (this.f11081d != null) {
                    ((Cursor) this.f11075a).registerDataSetObserver(this.f11081d);
                }
                this.f = ((Cursor) this.f11075a).getColumnIndexOrThrow(getIndexColumnName());
                this.f11080c = true;
                notifyDataSetChanged();
            } else {
                this.f = -1;
                this.f11080c = false;
                notifyDataSetChanged();
            }
            cursor2 = cursor3;
        }
        if (cursor2 != null) {
            cursor2.close();
        }
        this.e.clear();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public void setHasStableIds(boolean z) {
        super.setHasStableIds(true);
    }
}
