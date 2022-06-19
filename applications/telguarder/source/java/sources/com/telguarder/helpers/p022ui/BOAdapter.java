package com.telguarder.helpers.p022ui;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CompoundButton;
import androidx.fragment.app.Fragment;
import com.telguarder.C2083R;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* renamed from: com.telguarder.helpers.ui.BOAdapter */
/* loaded from: classes2-dex2jar.jar:com/telguarder/helpers/ui/BOAdapter.class */
public abstract class BOAdapter<E> extends BaseAdapter {
    private Integer mCheckeableViewId;
    private Fragment mFragment;
    private GroupHeaderDisplayer<E> mHeaderDisplayer;
    private LayoutInflater mInflater;
    private int mItemLayoutResId;
    private List<E> mItems;
    private OnSelectionChangedListener<E> mOnSelectionChangedListener;
    private final Set<E> mSelectedItems = new HashSet();
    private SelectionMode mSelectionMode = SelectionMode.NONE;
    private boolean mUsed;

    /* renamed from: com.telguarder.helpers.ui.BOAdapter$GroupHeaderDisplayer */
    /* loaded from: classes2-dex2jar.jar:com/telguarder/helpers/ui/BOAdapter$GroupHeaderDisplayer.class */
    public interface GroupHeaderDisplayer<E> {
        void getHeaderDisplayed(View view, E e, int i);

        int getHeaderLayoutId();

        boolean isHeaderDisplayed(E e, int i);
    }

    /* renamed from: com.telguarder.helpers.ui.BOAdapter$HeaderViewHolder */
    /* loaded from: classes2-dex2jar.jar:com/telguarder/helpers/ui/BOAdapter$HeaderViewHolder.class */
    public static class HeaderViewHolder {
        public View header;
        public View item;
    }

    /* renamed from: com.telguarder.helpers.ui.BOAdapter$OnSelectionChangedListener */
    /* loaded from: classes2-dex2jar.jar:com/telguarder/helpers/ui/BOAdapter$OnSelectionChangedListener.class */
    public interface OnSelectionChangedListener<E> {
        void onSelectionChanged(Set<E> set, List<E> list);
    }

    /* renamed from: com.telguarder.helpers.ui.BOAdapter$SelectionMode */
    /* loaded from: classes2-dex2jar.jar:com/telguarder/helpers/ui/BOAdapter$SelectionMode.class */
    public enum SelectionMode {
        NONE,
        SINGLE,
        MULTIPLE
    }

    /* renamed from: com.telguarder.helpers.ui.BOAdapter$StickyGroupHeaderDisplayer */
    /* loaded from: classes2-dex2jar.jar:com/telguarder/helpers/ui/BOAdapter$StickyGroupHeaderDisplayer.class */
    public interface StickyGroupHeaderDisplayer<E> extends GroupHeaderDisplayer<E> {
        Object getHeaderId(E e, int i);
    }

    public BOAdapter(Context context, Fragment fragment, List<E> list, int i) {
        if (list != null) {
            this.mItems = list;
            this.mItemLayoutResId = i;
            this.mFragment = fragment;
            this.mInflater = (LayoutInflater) context.getSystemService("layout_inflater");
            return;
        }
        throw new RuntimeException("The list of items should not be null");
    }

    public void superNotifyDataSetChanged() {
        super.notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.mItems.size();
    }

    public GroupHeaderDisplayer<E> getHeaderDisplayer() {
        return this.mHeaderDisplayer;
    }

    @Override // android.widget.Adapter
    public E getItem(int i) {
        return this.mItems.get(i);
    }

    protected abstract void getItemDisplayed(View view, E e, int i);

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    public List<E> getItems() {
        return this.mItems;
    }

    public Set<E> getSelectedItems() {
        return this.mSelectedItems;
    }

    @Override // android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        HeaderViewHolder headerViewHolder;
        Fragment fragment = this.mFragment;
        if (fragment != null && (!fragment.isAdded() || this.mFragment.isRemoving() || this.mFragment.isDetached())) {
            return view != null ? view : this.mInflater.inflate(this.mItemLayoutResId, viewGroup, false);
        }
        this.mUsed = true;
        final E item = getItem(i);
        if (this.mHeaderDisplayer == null) {
            View view2 = view;
            if (view == null) {
                view2 = this.mInflater.inflate(this.mItemLayoutResId, viewGroup, false);
            }
            getItemDisplayed(view2, this.mItems.get(i), i);
            view = view2;
            if (view2.getTag() == null) {
                view2.setTag(new HeaderViewHolder());
                view = view2;
            }
        } else {
            if (view == null) {
                headerViewHolder = new HeaderViewHolder();
                view = this.mInflater.inflate(C2083R.layout.boadapter_list_item_with_header, (ViewGroup) null, false);
                headerViewHolder.header = this.mInflater.inflate(this.mHeaderDisplayer.getHeaderLayoutId(), (ViewGroup) null, false);
                ((ViewGroup) view.findViewById(C2083R.C2086id.boadapter_list_item_header)).addView(headerViewHolder.header);
                View inflate = this.mInflater.inflate(this.mItemLayoutResId, (ViewGroup) null, false);
                getItemDisplayed(inflate, item, i);
                headerViewHolder.item = inflate;
                ((ViewGroup) view.findViewById(C2083R.C2086id.boadapter_list_item_content)).addView(headerViewHolder.item);
                view.setTag(headerViewHolder);
            } else {
                headerViewHolder = (HeaderViewHolder) view.getTag();
                getItemDisplayed(headerViewHolder.item, item, i);
            }
            if (this.mHeaderDisplayer.isHeaderDisplayed(item, i)) {
                headerViewHolder.header.setVisibility(0);
                this.mHeaderDisplayer.getHeaderDisplayed(headerViewHolder.header, item, i);
            } else {
                headerViewHolder.header.setVisibility(8);
            }
        }
        Integer num = this.mCheckeableViewId;
        CompoundButton compoundButton = null;
        if (num != null) {
            compoundButton = (CompoundButton) view.findViewById(num.intValue());
            compoundButton.setFocusable(false);
            compoundButton.setOnCheckedChangeListener(null);
            compoundButton.setChecked(this.mSelectedItems.contains(item));
        }
        if (this.mSelectionMode != SelectionMode.NONE) {
            if (this.mCheckeableViewId != null) {
                compoundButton.setEnabled(true);
                compoundButton.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.telguarder.helpers.ui.BOAdapter.1
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // android.widget.CompoundButton.OnCheckedChangeListener
                    public void onCheckedChanged(CompoundButton compoundButton2, boolean z) {
                        if (BOAdapter.this.mSelectionMode.equals(SelectionMode.SINGLE)) {
                            BOAdapter.this.mSelectedItems.clear();
                        }
                        if (z) {
                            BOAdapter.this.mSelectedItems.add(item);
                        } else {
                            BOAdapter.this.mSelectedItems.remove(item);
                        }
                        BOAdapter.this.superNotifyDataSetChanged();
                        if (BOAdapter.this.mOnSelectionChangedListener != null) {
                            BOAdapter.this.mOnSelectionChangedListener.onSelectionChanged(BOAdapter.this.mSelectedItems, BOAdapter.this.getItems());
                        }
                    }
                });
            }
        } else if (this.mCheckeableViewId != null) {
            compoundButton.setEnabled(false);
        }
        return view;
    }

    public boolean isSelected(int i) {
        return this.mSelectedItems.contains(getItem(i));
    }

    public boolean isSelected(E e) {
        return this.mSelectedItems.contains(e);
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        this.mSelectedItems.clear();
        OnSelectionChangedListener<E> onSelectionChangedListener = this.mOnSelectionChangedListener;
        if (onSelectionChangedListener != null) {
            onSelectionChangedListener.onSelectionChanged(this.mSelectedItems, getItems());
        }
        super.notifyDataSetChanged();
    }

    public void selectAll() {
        this.mSelectedItems.addAll(getItems());
        super.notifyDataSetChanged();
        OnSelectionChangedListener<E> onSelectionChangedListener = this.mOnSelectionChangedListener;
        if (onSelectionChangedListener != null) {
            onSelectionChangedListener.onSelectionChanged(this.mSelectedItems, getItems());
        }
    }

    public void selectNone() {
        this.mSelectedItems.clear();
        super.notifyDataSetChanged();
        OnSelectionChangedListener<E> onSelectionChangedListener = this.mOnSelectionChangedListener;
        if (onSelectionChangedListener != null) {
            onSelectionChangedListener.onSelectionChanged(this.mSelectedItems, getItems());
        }
    }

    public void setGroupHeaderDisplayer(GroupHeaderDisplayer<E> groupHeaderDisplayer) {
        this.mHeaderDisplayer = groupHeaderDisplayer;
        if (this.mUsed) {
            super.notifyDataSetChanged();
        }
    }

    public void setOnSelectionChangedListener(OnSelectionChangedListener<E> onSelectionChangedListener) {
        this.mOnSelectionChangedListener = onSelectionChangedListener;
    }

    public void setSelected(int i, boolean z) {
        if (z) {
            this.mSelectedItems.add(getItem(i));
        } else {
            this.mSelectedItems.remove(getItem(i));
        }
        super.notifyDataSetChanged();
        OnSelectionChangedListener<E> onSelectionChangedListener = this.mOnSelectionChangedListener;
        if (onSelectionChangedListener != null) {
            onSelectionChangedListener.onSelectionChanged(this.mSelectedItems, getItems());
        }
    }

    public void setSelected(E e, boolean z) {
        if (z) {
            this.mSelectedItems.add(e);
        } else {
            this.mSelectedItems.remove(e);
        }
        super.notifyDataSetChanged();
        OnSelectionChangedListener<E> onSelectionChangedListener = this.mOnSelectionChangedListener;
        if (onSelectionChangedListener != null) {
            onSelectionChangedListener.onSelectionChanged(this.mSelectedItems, getItems());
        }
    }

    public void setSelected(Collection<E> collection, boolean z) {
        if (z) {
            this.mSelectedItems.addAll(collection);
        } else {
            this.mSelectedItems.removeAll(collection);
        }
        super.notifyDataSetChanged();
        OnSelectionChangedListener<E> onSelectionChangedListener = this.mOnSelectionChangedListener;
        if (onSelectionChangedListener != null) {
            onSelectionChangedListener.onSelectionChanged(this.mSelectedItems, getItems());
        }
    }

    public void setSelectionIndicator(Integer num) {
        this.mCheckeableViewId = num;
        if (this.mUsed) {
            super.notifyDataSetChanged();
        }
    }

    public void setSelectionMode(SelectionMode selectionMode) {
        this.mSelectionMode = selectionMode;
        if (this.mUsed) {
            super.notifyDataSetChanged();
        }
    }
}
