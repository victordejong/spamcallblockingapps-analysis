package com.mikepenz.fastadapter.select;

import android.os.Bundle;
import android.support.p001v4.util.ArraySet;
import android.view.MotionEvent;
import android.view.View;
import com.mikepenz.fastadapter.FastAdapter;
import com.mikepenz.fastadapter.IAdapterExtension;
import com.mikepenz.fastadapter.IItem;
import com.mikepenz.fastadapter.IItemAdapter;
import com.mikepenz.fastadapter.ISelectionListener;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/mikepenz/fastadapter/select/SelectExtension.class */
public class SelectExtension<Item extends IItem> implements IAdapterExtension<Item> {
    protected static final String BUNDLE_SELECTIONS = "bundle_selections";
    private FastAdapter<Item> mFastAdapter;
    private ISelectionListener<Item> mSelectionListener;
    private boolean mSelectWithItemUpdate = false;
    private boolean mMultiSelect = false;
    private boolean mSelectOnLongClick = false;
    private boolean mAllowDeselection = true;
    private boolean mSelectable = false;

    private void handleSelection(@Nullable View view, Item item, int i) {
        if (item.isSelectable()) {
            if (!item.isSelected() || this.mAllowDeselection) {
                boolean isSelected = item.isSelected();
                if (this.mSelectWithItemUpdate || view == null) {
                    if (!this.mMultiSelect) {
                        deselect();
                    }
                    if (isSelected) {
                        deselect(i);
                    } else {
                        select(i);
                    }
                } else {
                    if (!this.mMultiSelect) {
                        for (Integer num : getSelections()) {
                            int intValue = num.intValue();
                            if (intValue != i) {
                                deselect(intValue);
                            }
                        }
                    }
                    item.withSetSelected(!isSelected);
                    view.setSelected(!isSelected);
                    if (this.mSelectionListener != null) {
                        this.mSelectionListener.onSelectionChanged(item, !isSelected);
                    }
                }
            }
        }
    }

    public List<Item> deleteAllSelectedItems() {
        ArrayList arrayList = new ArrayList();
        for (int itemCount = this.mFastAdapter.getItemCount() - 1; itemCount >= 0; itemCount--) {
            FastAdapter.RelativeInfo<Item> relativeInfo = this.mFastAdapter.getRelativeInfo(itemCount);
            if (relativeInfo.item.isSelected() && relativeInfo.adapter != null && (relativeInfo.adapter instanceof IItemAdapter)) {
                ((IItemAdapter) relativeInfo.adapter).remove(itemCount);
            }
        }
        return arrayList;
    }

    public void deselect() {
        int itemCount = this.mFastAdapter.getItemCount();
        for (int i = 0; i < itemCount; i++) {
            deselect((SelectExtension<Item>) this.mFastAdapter.getItem(i));
        }
        this.mFastAdapter.notifyDataSetChanged();
    }

    public void deselect(int i) {
        deselect(i, null);
    }

    public void deselect(int i, @Nullable Iterator<Integer> it) {
        Item item = this.mFastAdapter.getItem(i);
        if (item != null) {
            item.withSetSelected(false);
        }
        if (it != null) {
            it.remove();
        }
        this.mFastAdapter.notifyItemChanged(i);
        if (this.mSelectionListener != null) {
            this.mSelectionListener.onSelectionChanged(item, false);
        }
    }

    public void deselect(Item item) {
        if (item.isSelected()) {
            item.withSetSelected(false);
            if (this.mSelectionListener != null) {
                this.mSelectionListener.onSelectionChanged(item, false);
            }
        }
    }

    public void deselect(Iterable<Integer> iterable) {
        Iterator<Integer> it = iterable.iterator();
        while (it.hasNext()) {
            deselect(it.next().intValue(), it);
        }
    }

    public Set<Item> getSelectedItems() {
        ArraySet arraySet = new ArraySet();
        int itemCount = this.mFastAdapter.getItemCount();
        for (int i = 0; i < itemCount; i++) {
            Item item = this.mFastAdapter.getItem(i);
            if (item.isSelected()) {
                arraySet.add(item);
            }
        }
        return arraySet;
    }

    public Set<Integer> getSelections() {
        ArraySet arraySet = new ArraySet();
        int itemCount = this.mFastAdapter.getItemCount();
        for (int i = 0; i < itemCount; i++) {
            if (this.mFastAdapter.getItem(i).isSelected()) {
                arraySet.add(Integer.valueOf(i));
            }
        }
        return arraySet;
    }

    @Override // com.mikepenz.fastadapter.IAdapterExtension
    public IAdapterExtension<Item> init(FastAdapter<Item> fastAdapter) {
        this.mFastAdapter = fastAdapter;
        return null;
    }

    public boolean isSelectable() {
        return this.mSelectable;
    }

    @Override // com.mikepenz.fastadapter.IAdapterExtension
    public void notifyAdapterDataSetChanged() {
    }

    @Override // com.mikepenz.fastadapter.IAdapterExtension
    public void notifyAdapterItemMoved(int i, int i2) {
    }

    @Override // com.mikepenz.fastadapter.IAdapterExtension
    public void notifyAdapterItemRangeChanged(int i, int i2, @Nullable Object obj) {
    }

    @Override // com.mikepenz.fastadapter.IAdapterExtension
    public void notifyAdapterItemRangeInserted(int i, int i2) {
    }

    @Override // com.mikepenz.fastadapter.IAdapterExtension
    public void notifyAdapterItemRangeRemoved(int i, int i2) {
    }

    @Override // com.mikepenz.fastadapter.IAdapterExtension
    public boolean onClick(View view, int i, FastAdapter<Item> fastAdapter, Item item) {
        if (this.mSelectOnLongClick || !this.mSelectable) {
            return false;
        }
        handleSelection(view, item, i);
        return false;
    }

    @Override // com.mikepenz.fastadapter.IAdapterExtension
    public boolean onLongClick(View view, int i, FastAdapter<Item> fastAdapter, Item item) {
        if (!this.mSelectOnLongClick || !this.mSelectable) {
            return false;
        }
        handleSelection(view, item, i);
        return false;
    }

    @Override // com.mikepenz.fastadapter.IAdapterExtension
    public boolean onTouch(View view, MotionEvent motionEvent, int i, FastAdapter<Item> fastAdapter, Item item) {
        return false;
    }

    @Override // com.mikepenz.fastadapter.IAdapterExtension
    public void performFiltering(CharSequence charSequence) {
    }

    @Override // com.mikepenz.fastadapter.IAdapterExtension
    public void saveInstanceState(@Nullable Bundle bundle, String str) {
        if (bundle != null) {
            ArrayList<String> arrayList = new ArrayList<>();
            int itemCount = this.mFastAdapter.getItemCount();
            for (int i = 0; i < itemCount; i++) {
                Item item = this.mFastAdapter.getItem(i);
                if (item.isSelected()) {
                    arrayList.add(String.valueOf(item.getIdentifier()));
                }
            }
            bundle.putStringArrayList(BUNDLE_SELECTIONS + str, arrayList);
        }
    }

    public void select() {
        select(false);
    }

    public void select(int i) {
        select(i, false);
    }

    public void select(int i, boolean z) {
        select(i, z, false);
    }

    public void select(int i, boolean z, boolean z2) {
        Item item = this.mFastAdapter.getItem(i);
        if (item != null) {
            if (!z2 || item.isSelectable()) {
                item.withSetSelected(true);
                this.mFastAdapter.notifyItemChanged(i);
                if (this.mSelectionListener != null) {
                    this.mSelectionListener.onSelectionChanged(item, true);
                }
                if (this.mFastAdapter.getOnClickListener() != null && z) {
                    this.mFastAdapter.getOnClickListener().onClick(null, this.mFastAdapter.getAdapter(i), item, i);
                }
            }
        }
    }

    public void select(Item item, boolean z) {
        if (!z || item.isSelectable()) {
            item.withSetSelected(true);
            if (this.mSelectionListener != null) {
                this.mSelectionListener.onSelectionChanged(item, true);
            }
        }
    }

    public void select(Iterable<Integer> iterable) {
        for (Integer num : iterable) {
            select(num.intValue());
        }
    }

    public void select(boolean z) {
        int itemCount = this.mFastAdapter.getItemCount();
        for (int i = 0; i < itemCount; i++) {
            select((SelectExtension<Item>) this.mFastAdapter.getItem(i), z);
        }
        this.mFastAdapter.notifyDataSetChanged();
    }

    @Override // com.mikepenz.fastadapter.IAdapterExtension
    public void set(List<Item> list, boolean z) {
    }

    public void toggleSelection(int i) {
        if (this.mFastAdapter.getItem(i).isSelected()) {
            deselect(i);
        } else {
            select(i);
        }
    }

    public SelectExtension<Item> withAllowDeselection(boolean z) {
        this.mAllowDeselection = z;
        return this;
    }

    public SelectExtension<Item> withMultiSelect(boolean z) {
        this.mMultiSelect = z;
        return this;
    }

    @Override // com.mikepenz.fastadapter.IAdapterExtension
    public void withSavedInstanceState(@Nullable Bundle bundle, String str) {
        if (bundle != null) {
            ArrayList<String> stringArrayList = bundle.getStringArrayList(BUNDLE_SELECTIONS + str);
            int itemCount = this.mFastAdapter.getItemCount();
            for (int i = 0; i < itemCount; i++) {
                Item item = this.mFastAdapter.getItem(i);
                long identifier = item.getIdentifier();
                if (stringArrayList != null && stringArrayList.contains(String.valueOf(identifier))) {
                    select((SelectExtension<Item>) item, true);
                }
            }
            notifyAdapterDataSetChanged();
        }
    }

    public SelectExtension<Item> withSelectOnLongClick(boolean z) {
        this.mSelectOnLongClick = z;
        return this;
    }

    public SelectExtension<Item> withSelectWithItemUpdate(boolean z) {
        this.mSelectWithItemUpdate = z;
        return this;
    }

    public SelectExtension<Item> withSelectable(boolean z) {
        this.mSelectable = z;
        return this;
    }

    public SelectExtension<Item> withSelectionListener(ISelectionListener<Item> iSelectionListener) {
        this.mSelectionListener = iSelectionListener;
        return this;
    }
}
