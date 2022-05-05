package com.mikepenz.fastadapter.adapters;

import com.mikepenz.fastadapter.AbstractAdapter;
import com.mikepenz.fastadapter.IAdapterExtension;
import com.mikepenz.fastadapter.IAdapterNotifier;
import com.mikepenz.fastadapter.IIdDistributor;
import com.mikepenz.fastadapter.IInterceptor;
import com.mikepenz.fastadapter.IItem;
import com.mikepenz.fastadapter.IItemAdapter;
import com.mikepenz.fastadapter.IModelItem;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/mikepenz/fastadapter/adapters/ModelAdapter.class */
public class ModelAdapter<Model, Item extends IItem> extends AbstractAdapter<Item> implements IItemAdapter<Model, Item> {
    protected Comparator<Item> mComparator;
    private IIdDistributor<Item> mIdDistributor;
    private IInterceptor<Model, Item> mInterceptor;
    private IInterceptor<Item, Model> mReverseInterceptor;
    private List<Item> mItems = new ArrayList();
    private boolean mUseIdDistributor = true;
    private ItemFilter<Model, Item> mItemFilter = new ItemFilter<>(this);

    public ModelAdapter(IInterceptor<Model, Item> iInterceptor) {
        this.mInterceptor = iInterceptor;
    }

    public static <Model, Item extends IItem> ModelAdapter<Model, Item> models(IInterceptor<Model, Item> iInterceptor) {
        return new ModelAdapter<>(iInterceptor);
    }

    @Override // com.mikepenz.fastadapter.IItemAdapter
    public ModelAdapter<Model, Item> add(int i, List<Model> list) {
        return addInternal(i, (List) intercept((List) list));
    }

    @Override // com.mikepenz.fastadapter.IItemAdapter
    @SafeVarargs
    public final ModelAdapter<Model, Item> add(int i, Model... modelArr) {
        return add(i, (List) Arrays.asList(modelArr));
    }

    @Override // com.mikepenz.fastadapter.IItemAdapter
    public ModelAdapter<Model, Item> add(List<Model> list) {
        return addInternal((List) intercept((List) list));
    }

    @Override // com.mikepenz.fastadapter.IItemAdapter
    @SafeVarargs
    public final ModelAdapter<Model, Item> add(Model... modelArr) {
        return add((List) Arrays.asList(modelArr));
    }

    @Override // com.mikepenz.fastadapter.IItemAdapter
    public ModelAdapter<Model, Item> addInternal(int i, List<Item> list) {
        if (this.mUseIdDistributor) {
            getIdDistributor().checkIds(list);
        }
        if (list != null && list.size() > 0) {
            this.mItems.addAll(i - getFastAdapter().getPreItemCountByOrder(getOrder()), list);
            mapPossibleTypes(list);
            getFastAdapter().notifyAdapterItemRangeInserted(i, list.size());
        }
        return this;
    }

    @Override // com.mikepenz.fastadapter.IItemAdapter
    public ModelAdapter<Model, Item> addInternal(List<Item> list) {
        if (this.mUseIdDistributor) {
            getIdDistributor().checkIds(list);
        }
        int size = this.mItems.size();
        this.mItems.addAll(list);
        mapPossibleTypes(list);
        if (this.mComparator == null) {
            getFastAdapter().notifyAdapterItemRangeInserted(getFastAdapter().getPreItemCountByOrder(getOrder()) + size, list.size());
        } else {
            Collections.sort(this.mItems, this.mComparator);
            getFastAdapter().notifyAdapterDataSetChanged();
        }
        return this;
    }

    @Override // com.mikepenz.fastadapter.IItemAdapter
    public ModelAdapter<Model, Item> clear() {
        int size = this.mItems.size();
        this.mItems.clear();
        getFastAdapter().notifyAdapterItemRangeRemoved(getFastAdapter().getPreItemCountByOrder(getOrder()), size);
        return this;
    }

    public void filter(@Nullable CharSequence charSequence) {
        this.mItemFilter.filter(charSequence);
    }

    @Override // com.mikepenz.fastadapter.IAdapter
    public Item getAdapterItem(int i) {
        return this.mItems.get(i);
    }

    @Override // com.mikepenz.fastadapter.IAdapter
    public int getAdapterItemCount() {
        return this.mItems.size();
    }

    @Override // com.mikepenz.fastadapter.IAdapter
    public List<Item> getAdapterItems() {
        return this.mItems;
    }

    @Override // com.mikepenz.fastadapter.IAdapter
    public int getAdapterPosition(long j) {
        int size = this.mItems.size();
        for (int i = 0; i < size; i++) {
            if (this.mItems.get(i).getIdentifier() == j) {
                return i;
            }
        }
        return -1;
    }

    @Override // com.mikepenz.fastadapter.IAdapter
    public int getAdapterPosition(Item item) {
        return getAdapterPosition(item.getIdentifier());
    }

    public Comparator<Item> getComparator() {
        return this.mComparator;
    }

    @Override // com.mikepenz.fastadapter.IAdapter
    public int getGlobalPosition(int i) {
        return i + getFastAdapter().getPreItemCountByOrder(getOrder());
    }

    public IIdDistributor<Item> getIdDistributor() {
        return this.mIdDistributor == null ? (IIdDistributor<Item>) IIdDistributor.DEFAULT : this.mIdDistributor;
    }

    public IInterceptor<Model, Item> getInterceptor() {
        return this.mInterceptor;
    }

    public ItemFilter<Model, Item> getItemFilter() {
        return this.mItemFilter;
    }

    public List<Model> getModels() {
        ArrayList arrayList = new ArrayList(this.mItems.size());
        for (Item item : this.mItems) {
            if (this.mReverseInterceptor != null) {
                arrayList.add(this.mReverseInterceptor.intercept(item));
            } else if (item instanceof IModelItem) {
                arrayList.add(((IModelItem) item).getModel());
            } else {
                throw new RuntimeException("to get the list of models, the item either needs to implement `IModelItem` or you have to provide a `reverseInterceptor`");
            }
        }
        return arrayList;
    }

    public IInterceptor<Item, Model> getReverseInterceptor() {
        return this.mReverseInterceptor;
    }

    @Nullable
    public Item intercept(Model model) {
        return this.mInterceptor.intercept(model);
    }

    public List<Item> intercept(List<Model> list) {
        ArrayList arrayList = new ArrayList(list.size());
        for (Model model : list) {
            Item intercept = intercept((ModelAdapter<Model, Item>) model);
            if (intercept != null) {
                arrayList.add(intercept);
            }
        }
        return arrayList;
    }

    public boolean isUseIdDistributor() {
        return this.mUseIdDistributor;
    }

    public ModelAdapter<Model, Item> move(int i, int i2) {
        int preItemCount = getFastAdapter().getPreItemCount(i);
        int i3 = i - preItemCount;
        Item item = this.mItems.get(i3);
        this.mItems.remove(i3);
        this.mItems.add(i2 - preItemCount, item);
        getFastAdapter().notifyAdapterItemMoved(i, i2);
        return this;
    }

    public void remapMappedTypes() {
        getFastAdapter().clearTypeInstance();
        mapPossibleTypes(this.mItems);
    }

    @Override // com.mikepenz.fastadapter.IItemAdapter
    public ModelAdapter<Model, Item> remove(int i) {
        this.mItems.remove(i - getFastAdapter().getPreItemCount(i));
        getFastAdapter().notifyAdapterItemRemoved(i);
        return this;
    }

    @Override // com.mikepenz.fastadapter.IItemAdapter
    public ModelAdapter<Model, Item> removeRange(int i, int i2) {
        int size = this.mItems.size();
        int preItemCount = getFastAdapter().getPreItemCount(i);
        int min = Math.min(i2, (size - i) + preItemCount);
        for (int i3 = 0; i3 < min; i3++) {
            this.mItems.remove(i - preItemCount);
        }
        getFastAdapter().notifyAdapterItemRangeRemoved(i, min);
        return this;
    }

    @Override // com.mikepenz.fastadapter.IItemAdapter
    public ModelAdapter<Model, Item> set(int i, Model model) {
        Item intercept = intercept((ModelAdapter<Model, Item>) model);
        return intercept == null ? this : setInternal(i, (int) intercept);
    }

    @Override // com.mikepenz.fastadapter.IItemAdapter
    public ModelAdapter<Model, Item> set(List<Model> list) {
        return set((List) list, true);
    }

    protected ModelAdapter<Model, Item> set(List<Model> list, boolean z) {
        return setInternal(intercept((List) list), z, null);
    }

    public ModelAdapter<Model, Item> set(List<Model> list, boolean z, @Nullable IAdapterNotifier iAdapterNotifier) {
        return setInternal(intercept((List) list), z, iAdapterNotifier);
    }

    @Override // com.mikepenz.fastadapter.IItemAdapter
    public ModelAdapter<Model, Item> setInternal(int i, Item item) {
        if (this.mUseIdDistributor) {
            getIdDistributor().checkId(item);
        }
        this.mItems.set(i - getFastAdapter().getPreItemCount(i), item);
        this.mFastAdapter.registerTypeInstance(item);
        getFastAdapter().notifyAdapterItemChanged(i);
        return this;
    }

    public ModelAdapter<Model, Item> setInternal(List<Item> list, boolean z, IAdapterNotifier iAdapterNotifier) {
        if (this.mUseIdDistributor) {
            getIdDistributor().checkIds(list);
        }
        if (z && getItemFilter().getConstraint() != null) {
            getItemFilter().performFiltering(null);
        }
        for (IAdapterExtension<Item> iAdapterExtension : getFastAdapter().getExtensions()) {
            iAdapterExtension.set(list, z);
        }
        int size = list.size();
        int size2 = this.mItems.size();
        int preItemCountByOrder = getFastAdapter().getPreItemCountByOrder(getOrder());
        if (list != this.mItems) {
            if (!this.mItems.isEmpty()) {
                this.mItems.clear();
            }
            this.mItems.addAll(list);
        }
        mapPossibleTypes(list);
        if (this.mComparator != null) {
            Collections.sort(this.mItems, this.mComparator);
        }
        IAdapterNotifier iAdapterNotifier2 = iAdapterNotifier;
        if (iAdapterNotifier == null) {
            iAdapterNotifier2 = IAdapterNotifier.DEFAULT;
        }
        iAdapterNotifier2.notify(getFastAdapter(), size, size2, preItemCountByOrder);
        return this;
    }

    @Override // com.mikepenz.fastadapter.IItemAdapter
    public ModelAdapter<Model, Item> setNewList(List<Model> list) {
        return setNewList(list, false);
    }

    public ModelAdapter<Model, Item> setNewList(List<Model> list, boolean z) {
        CharSequence charSequence;
        List<Item> intercept = intercept((List) list);
        if (this.mUseIdDistributor) {
            getIdDistributor().checkIds(intercept);
        }
        if (getItemFilter().getConstraint() != null) {
            charSequence = getItemFilter().getConstraint();
            getItemFilter().performFiltering(null);
        } else {
            charSequence = null;
        }
        this.mItems = new ArrayList(intercept);
        mapPossibleTypes(this.mItems);
        if (this.mComparator != null) {
            Collections.sort(this.mItems, this.mComparator);
        }
        if (charSequence == null || !z) {
            getFastAdapter().notifyAdapterDataSetChanged();
        } else {
            getItemFilter().publishResults(charSequence, getItemFilter().performFiltering(charSequence));
        }
        return this;
    }

    public ModelAdapter<Model, Item> withComparator(Comparator<Item> comparator) {
        return withComparator(comparator, true);
    }

    public ModelAdapter<Model, Item> withComparator(Comparator<Item> comparator, boolean z) {
        this.mComparator = comparator;
        if (!(this.mItems == null || this.mComparator == null || !z)) {
            Collections.sort(this.mItems, this.mComparator);
            getFastAdapter().notifyAdapterDataSetChanged();
        }
        return this;
    }

    public ModelAdapter<Model, Item> withIdDistributor(IIdDistributor<Item> iIdDistributor) {
        this.mIdDistributor = iIdDistributor;
        return this;
    }

    public ModelAdapter<Model, Item> withInterceptor(IInterceptor<Model, Item> iInterceptor) {
        this.mInterceptor = iInterceptor;
        return this;
    }

    public ModelAdapter<Model, Item> withItemFilter(ItemFilter<Model, Item> itemFilter) {
        this.mItemFilter = itemFilter;
        return this;
    }

    public ModelAdapter<Model, Item> withReverseInterceptor(IInterceptor<Item, Model> iInterceptor) {
        this.mReverseInterceptor = iInterceptor;
        return this;
    }

    public ModelAdapter<Model, Item> withUseIdDistributor(boolean z) {
        this.mUseIdDistributor = z;
        return this;
    }
}
