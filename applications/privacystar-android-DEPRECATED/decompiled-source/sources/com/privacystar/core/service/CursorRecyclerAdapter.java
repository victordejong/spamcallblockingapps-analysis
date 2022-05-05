package com.privacystar.core.service;

import android.database.Cursor;
import android.support.p004v7.widget.RecyclerView;
import android.support.p004v7.widget.RecyclerView.ViewHolder;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/CursorRecyclerAdapter.class */
public abstract class CursorRecyclerAdapter<VH extends RecyclerView.ViewHolder> extends RecyclerView.Adapter<VH> {
    protected Cursor mCursor;
    protected boolean mDataValid;
    protected int mRowIDColumn;

    public CursorRecyclerAdapter(Cursor cursor) {
        init(cursor);
    }

    public void changeCursor(Cursor cursor) {
        Cursor swapCursor = swapCursor(cursor);
        if (swapCursor != null) {
            swapCursor.close();
        }
    }

    public CharSequence convertToString(Cursor cursor) {
        return cursor == null ? "" : cursor.toString();
    }

    public Cursor getCursor() {
        return this.mCursor;
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        if (!this.mDataValid || this.mCursor == null) {
            return 0;
        }
        return this.mCursor.getCount();
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        if (!hasStableIds() || !this.mDataValid || this.mCursor == null || !this.mCursor.moveToPosition(i)) {
            return -1L;
        }
        return this.mCursor.getLong(this.mRowIDColumn);
    }

    void init(Cursor cursor) {
        boolean z = cursor != null;
        this.mCursor = cursor;
        this.mDataValid = z;
        this.mRowIDColumn = z ? cursor.getColumnIndexOrThrow("_id") : -1;
        setHasStableIds(true);
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    public final void onBindViewHolder(VH vh, int i) {
        if (!this.mDataValid) {
            throw new IllegalStateException("this should only be called when the cursor is valid");
        } else if (!this.mCursor.moveToPosition(i)) {
            throw new IllegalStateException("couldn't move cursor to position " + i);
        } else {
            onBindViewHolder((CursorRecyclerAdapter<VH>) vh, this.mCursor);
        }
    }

    public abstract void onBindViewHolder(VH vh, Cursor cursor);

    public Cursor swapCursor(Cursor cursor) {
        if (cursor == this.mCursor) {
            return null;
        }
        Cursor cursor2 = this.mCursor;
        int itemCount = getItemCount();
        this.mCursor = cursor;
        if (cursor != null) {
            this.mRowIDColumn = cursor.getColumnIndexOrThrow("_id");
            this.mDataValid = true;
            notifyDataSetChanged();
        } else {
            this.mRowIDColumn = -1;
            this.mDataValid = false;
            notifyItemRangeRemoved(0, itemCount);
        }
        return cursor2;
    }
}
