package com.mikepenz.fastadapter.items;

import android.content.Context;
import android.support.annotation.CallSuper;
import android.support.p004v7.widget.RecyclerView;
import android.support.p004v7.widget.RecyclerView.ViewHolder;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.mikepenz.fastadapter.IClickable;
import com.mikepenz.fastadapter.IItem;
import com.mikepenz.fastadapter.listeners.OnClickListener;
import java.util.Collections;
import java.util.List;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/mikepenz/fastadapter/items/AbstractItem.class */
public abstract class AbstractItem<Item extends IItem & IClickable, VH extends RecyclerView.ViewHolder> implements IItem<Item, VH>, IClickable<Item> {
    protected OnClickListener<Item> mOnItemClickListener;
    protected OnClickListener<Item> mOnItemPreClickListener;
    protected Object mTag;
    protected long mIdentifier = -1;
    protected boolean mEnabled = true;
    protected boolean mSelected = false;
    protected boolean mSelectable = true;

    @Override // com.mikepenz.fastadapter.IItem
    public void attachToWindow(VH vh) {
    }

    @Override // com.mikepenz.fastadapter.IItem
    @CallSuper
    public void bindView(VH vh, List<Object> list) {
        vh.itemView.setSelected(isSelected());
    }

    public View createView(Context context, @Nullable ViewGroup viewGroup) {
        return LayoutInflater.from(context).inflate(getLayoutRes(), viewGroup, false);
    }

    @Override // com.mikepenz.fastadapter.IItem
    public void detachFromWindow(VH vh) {
    }

    @Override // com.mikepenz.fastadapter.IItem
    public boolean equals(int i) {
        return ((long) i) == getIdentifier();
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        if (getIdentifier() != ((AbstractItem) obj).getIdentifier()) {
            z = false;
        }
        return z;
    }

    @Override // com.mikepenz.fastadapter.IItem
    public boolean failedToRecycle(VH vh) {
        return false;
    }

    @Override // com.mikepenz.fastadapter.IItem
    public View generateView(Context context) {
        VH viewHolder = getViewHolder(createView(context, null));
        bindView(viewHolder, Collections.EMPTY_LIST);
        return viewHolder.itemView;
    }

    @Override // com.mikepenz.fastadapter.IItem
    public View generateView(Context context, ViewGroup viewGroup) {
        VH viewHolder = getViewHolder(createView(context, viewGroup));
        bindView(viewHolder, Collections.EMPTY_LIST);
        return viewHolder.itemView;
    }

    @Override // com.mikepenz.fastadapter.IIdentifyable
    public long getIdentifier() {
        return this.mIdentifier;
    }

    @Override // com.mikepenz.fastadapter.IClickable
    public OnClickListener<Item> getOnItemClickListener() {
        return this.mOnItemClickListener;
    }

    @Override // com.mikepenz.fastadapter.IClickable
    public OnClickListener<Item> getOnPreItemClickListener() {
        return this.mOnItemPreClickListener;
    }

    @Override // com.mikepenz.fastadapter.IItem
    public Object getTag() {
        return this.mTag;
    }

    public abstract VH getViewHolder(View view);

    @Override // com.mikepenz.fastadapter.IItem
    public VH getViewHolder(ViewGroup viewGroup) {
        return getViewHolder(createView(viewGroup.getContext(), viewGroup));
    }

    public int hashCode() {
        return Long.valueOf(getIdentifier()).hashCode();
    }

    @Override // com.mikepenz.fastadapter.IItem
    public boolean isEnabled() {
        return this.mEnabled;
    }

    @Override // com.mikepenz.fastadapter.IItem
    public boolean isSelectable() {
        return this.mSelectable;
    }

    @Override // com.mikepenz.fastadapter.IItem
    public boolean isSelected() {
        return this.mSelected;
    }

    @Override // com.mikepenz.fastadapter.IItem
    public void unbindView(VH vh) {
    }

    @Override // com.mikepenz.fastadapter.IItem
    public Item withEnabled(boolean z) {
        this.mEnabled = z;
        return this;
    }

    @Override // com.mikepenz.fastadapter.IIdentifyable
    public Item withIdentifier(long j) {
        this.mIdentifier = j;
        return this;
    }

    @Override // com.mikepenz.fastadapter.IClickable
    public Item withOnItemClickListener(OnClickListener<Item> onClickListener) {
        this.mOnItemClickListener = onClickListener;
        return this;
    }

    @Override // com.mikepenz.fastadapter.IClickable
    public Item withOnItemPreClickListener(OnClickListener<Item> onClickListener) {
        this.mOnItemPreClickListener = onClickListener;
        return this;
    }

    @Override // com.mikepenz.fastadapter.IItem
    public Item withSelectable(boolean z) {
        this.mSelectable = z;
        return this;
    }

    @Override // com.mikepenz.fastadapter.IItem
    public Item withSetSelected(boolean z) {
        this.mSelected = z;
        return this;
    }

    @Override // com.mikepenz.fastadapter.IItem
    public Item withTag(Object obj) {
        this.mTag = obj;
        return this;
    }
}
