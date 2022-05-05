package com.mikepenz.fastadapter;

import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.p004v7.widget.RecyclerView;
import android.util.Log;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.mikepenz.fastadapter.IItem;
import com.mikepenz.fastadapter.adapters.ItemAdapter;
import com.mikepenz.fastadapter.listeners.ClickEventHook;
import com.mikepenz.fastadapter.listeners.EventHook;
import com.mikepenz.fastadapter.listeners.LongClickEventHook;
import com.mikepenz.fastadapter.listeners.OnBindViewHolderListener;
import com.mikepenz.fastadapter.listeners.OnBindViewHolderListenerImpl;
import com.mikepenz.fastadapter.listeners.OnClickListener;
import com.mikepenz.fastadapter.listeners.OnCreateViewHolderListener;
import com.mikepenz.fastadapter.listeners.OnCreateViewHolderListenerImpl;
import com.mikepenz.fastadapter.listeners.OnLongClickListener;
import com.mikepenz.fastadapter.listeners.OnTouchListener;
import com.mikepenz.fastadapter.listeners.TouchEventHook;
import com.mikepenz.fastadapter.select.SelectExtension;
import com.mikepenz.fastadapter.utils.DefaultTypeInstanceCache;
import com.mikepenz.fastadapter.utils.EventHookUtil;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/mikepenz/fastadapter/FastAdapter.class */
public class FastAdapter<Item extends IItem> extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
    private static final String TAG = "FastAdapter";
    private List<EventHook<Item>> eventHooks;
    private OnClickListener<Item> mOnClickListener;
    private OnLongClickListener<Item> mOnLongClickListener;
    private OnClickListener<Item> mOnPreClickListener;
    private OnLongClickListener<Item> mOnPreLongClickListener;
    private OnTouchListener<Item> mOnTouchListener;
    private ITypeInstanceCache<Item> mTypeInstanceCache;
    private final ArrayList<IAdapter<Item>> mAdapters = new ArrayList<>();
    private final SparseArray<IAdapter<Item>> mAdapterSizes = new SparseArray<>();
    private int mGlobalSize = 0;
    private final Set<IAdapterExtension<Item>> mExtensions = new HashSet();
    private SelectExtension<Item> mSelectExtension = new SelectExtension<>();
    private boolean mLegacyBindViewMode = false;
    private boolean mAttachDefaultListeners = true;
    private boolean mVerbose = false;
    private OnCreateViewHolderListener mOnCreateViewHolderListener = new OnCreateViewHolderListenerImpl();
    private OnBindViewHolderListener mOnBindViewHolderListener = new OnBindViewHolderListenerImpl();
    private ClickEventHook<Item> fastAdapterViewClickListener = (ClickEventHook<Item>) new ClickEventHook<Item>() { // from class: com.mikepenz.fastadapter.FastAdapter.1
        @Override // com.mikepenz.fastadapter.listeners.ClickEventHook
        public void onClick(View view, int i, FastAdapter<Item> fastAdapter, Item item) {
            IAdapter<Item> adapter = fastAdapter.getAdapter(i);
            if (!(adapter == null || item == null || !item.isEnabled())) {
                boolean z = item instanceof IClickable;
                boolean z2 = false;
                if (z) {
                    IClickable iClickable = (IClickable) item;
                    z2 = false;
                    if (iClickable.getOnPreItemClickListener() != null) {
                        z2 = iClickable.getOnPreItemClickListener().onClick(view, adapter, item, i);
                    }
                }
                boolean z3 = z2;
                if (!z2) {
                    z3 = z2;
                    if (((FastAdapter) fastAdapter).mOnPreClickListener != null) {
                        z3 = ((FastAdapter) fastAdapter).mOnPreClickListener.onClick(view, adapter, item, i);
                    }
                }
                for (IAdapterExtension iAdapterExtension : ((FastAdapter) fastAdapter).mExtensions) {
                    if (z3) {
                        break;
                    }
                    z3 = iAdapterExtension.onClick(view, i, fastAdapter, item);
                }
                boolean z4 = z3;
                if (!z3) {
                    z4 = z3;
                    if (z) {
                        IClickable iClickable2 = (IClickable) item;
                        z4 = z3;
                        if (iClickable2.getOnItemClickListener() != null) {
                            z4 = iClickable2.getOnItemClickListener().onClick(view, adapter, item, i);
                        }
                    }
                }
                if (!(z4 || ((FastAdapter) fastAdapter).mOnClickListener == null)) {
                    ((FastAdapter) fastAdapter).mOnClickListener.onClick(view, adapter, item, i);
                }
            }
        }
    };
    private LongClickEventHook<Item> fastAdapterViewLongClickListener = (LongClickEventHook<Item>) new LongClickEventHook<Item>() { // from class: com.mikepenz.fastadapter.FastAdapter.2
        @Override // com.mikepenz.fastadapter.listeners.LongClickEventHook
        public boolean onLongClick(View view, int i, FastAdapter<Item> fastAdapter, Item item) {
            IAdapter<Item> adapter = fastAdapter.getAdapter(i);
            boolean z = false;
            boolean z2 = false;
            if (adapter != null) {
                z2 = false;
                if (item != null) {
                    z2 = false;
                    if (item.isEnabled()) {
                        if (((FastAdapter) fastAdapter).mOnPreLongClickListener != null) {
                            z = ((FastAdapter) fastAdapter).mOnPreLongClickListener.onLongClick(view, adapter, item, i);
                        }
                        for (IAdapterExtension iAdapterExtension : ((FastAdapter) fastAdapter).mExtensions) {
                            if (z) {
                                break;
                            }
                            z = iAdapterExtension.onLongClick(view, i, fastAdapter, item);
                        }
                        z2 = z;
                        if (!z) {
                            z2 = z;
                            if (((FastAdapter) fastAdapter).mOnLongClickListener != null) {
                                z2 = ((FastAdapter) fastAdapter).mOnLongClickListener.onLongClick(view, adapter, item, i);
                            }
                        }
                    }
                }
            }
            return z2;
        }
    };
    private TouchEventHook<Item> fastAdapterViewTouchListener = (TouchEventHook<Item>) new TouchEventHook<Item>() { // from class: com.mikepenz.fastadapter.FastAdapter.3
        @Override // com.mikepenz.fastadapter.listeners.TouchEventHook
        public boolean onTouch(View view, MotionEvent motionEvent, int i, FastAdapter<Item> fastAdapter, Item item) {
            IAdapter<Item> adapter;
            boolean z = false;
            for (IAdapterExtension iAdapterExtension : ((FastAdapter) fastAdapter).mExtensions) {
                if (z) {
                    break;
                }
                z = iAdapterExtension.onTouch(view, motionEvent, i, fastAdapter, item);
            }
            return (((FastAdapter) fastAdapter).mOnTouchListener == null || (adapter = fastAdapter.getAdapter(i)) == null) ? z : ((FastAdapter) fastAdapter).mOnTouchListener.onTouch(view, motionEvent, adapter, item, i);
        }
    };

    /* loaded from: classes-dex2jar.jar:com/mikepenz/fastadapter/FastAdapter$RelativeInfo.class */
    public static class RelativeInfo<Item extends IItem> {
        public IAdapter<Item> adapter = null;
        public Item item = null;
        public int position = -1;
    }

    /* loaded from: classes-dex2jar.jar:com/mikepenz/fastadapter/FastAdapter$ViewHolder.class */
    public static abstract class ViewHolder<Item extends IItem> extends RecyclerView.ViewHolder {
        public ViewHolder(View view) {
            super(view);
        }

        public void attachToWindow(Item item) {
        }

        public abstract void bindView(Item item, List<Object> list);

        public void detachFromWindow(Item item) {
        }

        public boolean failedToRecycle(Item item) {
            return false;
        }

        public abstract void unbindView(Item item);
    }

    public FastAdapter() {
        setHasStableIds(true);
    }

    private static int floorIndex(SparseArray<?> sparseArray, int i) {
        int indexOfKey = sparseArray.indexOfKey(i);
        int i2 = indexOfKey;
        if (indexOfKey < 0) {
            i2 = (indexOfKey ^ (-1)) - 1;
        }
        return i2;
    }

    public static <Item extends IItem> Item getHolderAdapterItem(@Nullable RecyclerView.ViewHolder viewHolder) {
        FastAdapter fastAdapter;
        int holderAdapterPosition;
        if (viewHolder == null) {
            return null;
        }
        Object tag = viewHolder.itemView.getTag(C1476R.C1479id.fastadapter_item_adapter);
        if (!(tag instanceof FastAdapter) || (holderAdapterPosition = (fastAdapter = (FastAdapter) tag).getHolderAdapterPosition(viewHolder)) == -1) {
            return null;
        }
        return (Item) fastAdapter.getItem(holderAdapterPosition);
    }

    public static <Item extends IItem> Item getHolderAdapterItem(@Nullable RecyclerView.ViewHolder viewHolder, int i) {
        if (viewHolder == null) {
            return null;
        }
        Object tag = viewHolder.itemView.getTag(C1476R.C1479id.fastadapter_item_adapter);
        if (tag instanceof FastAdapter) {
            return (Item) ((FastAdapter) tag).getItem(i);
        }
        return null;
    }

    public static <Item extends IItem, A extends IAdapter> FastAdapter<Item> with(A a) {
        FastAdapter<Item> fastAdapter = new FastAdapter<>();
        fastAdapter.addAdapter(0, a);
        return fastAdapter;
    }

    public static <Item extends IItem, A extends IAdapter> FastAdapter<Item> with(@Nullable Collection<A> collection) {
        return with(collection, null);
    }

    public static <Item extends IItem, A extends IAdapter> FastAdapter<Item> with(@Nullable Collection<A> collection, @Nullable Collection<IAdapterExtension<Item>> collection2) {
        FastAdapter<Item> fastAdapter = new FastAdapter<>();
        if (collection == null) {
            ((FastAdapter) fastAdapter).mAdapters.add(ItemAdapter.items());
        } else {
            for (A a : collection) {
                ((FastAdapter) fastAdapter).mAdapters.add(a);
            }
        }
        for (int i = 0; i < ((FastAdapter) fastAdapter).mAdapters.size(); i++) {
            ((FastAdapter) fastAdapter).mAdapters.get(i).withFastAdapter(fastAdapter).setOrder(i);
        }
        fastAdapter.cacheSizes();
        if (collection2 != null) {
            for (IAdapterExtension<Item> iAdapterExtension : collection2) {
                fastAdapter.addExtension(iAdapterExtension);
            }
        }
        return fastAdapter;
    }

    @Nullable
    public IAdapter<Item> adapter(int i) {
        if (this.mAdapters.size() <= i) {
            return null;
        }
        return this.mAdapters.get(i);
    }

    public <A extends IAdapter<Item>> FastAdapter<Item> addAdapter(int i, A a) {
        this.mAdapters.add(i, a);
        for (int i2 = 0; i2 < this.mAdapters.size(); i2++) {
            this.mAdapters.get(i2).withFastAdapter(this).setOrder(i2);
        }
        cacheSizes();
        return this;
    }

    public <E extends IAdapterExtension<Item>> FastAdapter<Item> addExtension(E e) {
        this.mExtensions.add(e);
        e.init(this);
        return this;
    }

    protected void cacheSizes() {
        this.mAdapterSizes.clear();
        Iterator<IAdapter<Item>> it = this.mAdapters.iterator();
        int i = 0;
        while (it.hasNext()) {
            IAdapter<Item> next = it.next();
            if (next.getAdapterItemCount() > 0) {
                this.mAdapterSizes.append(i, next);
                i += next.getAdapterItemCount();
            }
        }
        if (i == 0 && this.mAdapters.size() > 0) {
            this.mAdapterSizes.append(0, this.mAdapters.get(0));
        }
        this.mGlobalSize = i;
    }

    public void clearTypeInstance() {
        getTypeInstanceCache().clear();
    }

    public List<Item> deleteAllSelectedItems() {
        return this.mSelectExtension.deleteAllSelectedItems();
    }

    public void deselect() {
        this.mSelectExtension.deselect();
    }

    public void deselect(int i) {
        this.mSelectExtension.deselect(i, null);
    }

    public void deselect(int i, Iterator<Integer> it) {
        this.mSelectExtension.deselect(i, it);
    }

    public void deselect(Iterable<Integer> iterable) {
        this.mSelectExtension.deselect(iterable);
    }

    public FastAdapter<Item> enableVerboseLog() {
        this.mVerbose = true;
        return this;
    }

    @Nullable
    public IAdapter<Item> getAdapter(int i) {
        if (i < 0 || i >= this.mGlobalSize) {
            return null;
        }
        if (this.mVerbose) {
            Log.v(TAG, "getAdapter");
        }
        return this.mAdapterSizes.valueAt(floorIndex(this.mAdapterSizes, i));
    }

    public List<EventHook<Item>> getEventHooks() {
        return this.eventHooks;
    }

    public Set<IAdapterExtension<Item>> getExtensions() {
        return this.mExtensions;
    }

    public int getHolderAdapterPosition(@NonNull RecyclerView.ViewHolder viewHolder) {
        return viewHolder.getAdapterPosition();
    }

    public Item getItem(int i) {
        if (i < 0 || i >= this.mGlobalSize) {
            return null;
        }
        int floorIndex = floorIndex(this.mAdapterSizes, i);
        return this.mAdapterSizes.valueAt(floorIndex).getAdapterItem(i - this.mAdapterSizes.keyAt(floorIndex));
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.mGlobalSize;
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        return getItem(i).getIdentifier();
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        return getItem(i).getType();
    }

    public OnClickListener<Item> getOnClickListener() {
        return this.mOnClickListener;
    }

    public int getPosition(long j) {
        Iterator<IAdapter<Item>> it = this.mAdapters.iterator();
        int i = 0;
        while (it.hasNext()) {
            IAdapter<Item> next = it.next();
            if (next.getOrder() >= 0) {
                int adapterPosition = next.getAdapterPosition(j);
                if (adapterPosition != -1) {
                    return i + adapterPosition;
                }
                i = next.getAdapterItemCount();
            }
        }
        return -1;
    }

    public int getPosition(Item item) {
        if (item.getIdentifier() != -1) {
            return getPosition(item.getIdentifier());
        }
        Log.e(TAG, "You have to define an identifier for your item to retrieve the position via this method");
        return -1;
    }

    public int getPreItemCount(int i) {
        if (this.mGlobalSize == 0) {
            return 0;
        }
        return this.mAdapterSizes.keyAt(floorIndex(this.mAdapterSizes, i));
    }

    public int getPreItemCountByOrder(int i) {
        if (this.mGlobalSize == 0) {
            return 0;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < Math.min(i, this.mAdapters.size()); i3++) {
            i2 += this.mAdapters.get(i3).getAdapterItemCount();
        }
        return i2;
    }

    public RelativeInfo<Item> getRelativeInfo(int i) {
        if (i < 0) {
            return new RelativeInfo<>();
        }
        RelativeInfo<Item> relativeInfo = new RelativeInfo<>();
        int floorIndex = floorIndex(this.mAdapterSizes, i);
        if (floorIndex != -1) {
            relativeInfo.item = this.mAdapterSizes.valueAt(floorIndex).getAdapterItem(i - this.mAdapterSizes.keyAt(floorIndex));
            relativeInfo.adapter = this.mAdapterSizes.valueAt(floorIndex);
            relativeInfo.position = i;
        }
        return relativeInfo;
    }

    public SelectExtension<Item> getSelectExtension() {
        return this.mSelectExtension;
    }

    public Set<Item> getSelectedItems() {
        return this.mSelectExtension.getSelectedItems();
    }

    public Set<Integer> getSelections() {
        return this.mSelectExtension.getSelections();
    }

    public Item getTypeInstance(int i) {
        return getTypeInstanceCache().get(i);
    }

    public ITypeInstanceCache<Item> getTypeInstanceCache() {
        if (this.mTypeInstanceCache == null) {
            this.mTypeInstanceCache = new DefaultTypeInstanceCache();
        }
        return this.mTypeInstanceCache;
    }

    public ClickEventHook<Item> getViewClickListener() {
        return this.fastAdapterViewClickListener;
    }

    public LongClickEventHook<Item> getViewLongClickListener() {
        return this.fastAdapterViewLongClickListener;
    }

    public TouchEventHook<Item> getViewTouchListener() {
        return this.fastAdapterViewTouchListener;
    }

    public boolean isSelectable() {
        return this.mSelectExtension.isSelectable();
    }

    public void notifyAdapterDataSetChanged() {
        for (IAdapterExtension<Item> iAdapterExtension : this.mExtensions) {
            iAdapterExtension.notifyAdapterDataSetChanged();
        }
        cacheSizes();
        notifyDataSetChanged();
    }

    public void notifyAdapterItemChanged(int i) {
        notifyAdapterItemChanged(i, null);
    }

    public void notifyAdapterItemChanged(int i, @Nullable Object obj) {
        notifyAdapterItemRangeChanged(i, 1, obj);
    }

    public void notifyAdapterItemInserted(int i) {
        notifyAdapterItemRangeInserted(i, 1);
    }

    public void notifyAdapterItemMoved(int i, int i2) {
        for (IAdapterExtension<Item> iAdapterExtension : this.mExtensions) {
            iAdapterExtension.notifyAdapterItemMoved(i, i2);
        }
        notifyItemMoved(i, i2);
    }

    public void notifyAdapterItemRangeChanged(int i, int i2) {
        notifyAdapterItemRangeChanged(i, i2, null);
    }

    public void notifyAdapterItemRangeChanged(int i, int i2, @Nullable Object obj) {
        for (IAdapterExtension<Item> iAdapterExtension : this.mExtensions) {
            iAdapterExtension.notifyAdapterItemRangeChanged(i, i2, obj);
        }
        if (obj == null) {
            notifyItemRangeChanged(i, i2);
        } else {
            notifyItemRangeChanged(i, i2, obj);
        }
    }

    public void notifyAdapterItemRangeInserted(int i, int i2) {
        for (IAdapterExtension<Item> iAdapterExtension : this.mExtensions) {
            iAdapterExtension.notifyAdapterItemRangeInserted(i, i2);
        }
        cacheSizes();
        notifyItemRangeInserted(i, i2);
    }

    public void notifyAdapterItemRangeRemoved(int i, int i2) {
        for (IAdapterExtension<Item> iAdapterExtension : this.mExtensions) {
            iAdapterExtension.notifyAdapterItemRangeRemoved(i, i2);
        }
        cacheSizes();
        notifyItemRangeRemoved(i, i2);
    }

    public void notifyAdapterItemRemoved(int i) {
        notifyAdapterItemRangeRemoved(i, 1);
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        if (this.mVerbose) {
            Log.v(TAG, "onAttachedToRecyclerView");
        }
        super.onAttachedToRecyclerView(recyclerView);
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        if (this.mLegacyBindViewMode) {
            if (this.mVerbose) {
                Log.v(TAG, "onBindViewHolderLegacy: " + i + "/" + viewHolder.getItemViewType() + " isLegacy: true");
            }
            viewHolder.itemView.setTag(C1476R.C1479id.fastadapter_item_adapter, this);
            this.mOnBindViewHolderListener.onBindViewHolder(viewHolder, i, Collections.EMPTY_LIST);
        }
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i, List<Object> list) {
        if (!this.mLegacyBindViewMode) {
            if (this.mVerbose) {
                Log.v(TAG, "onBindViewHolder: " + i + "/" + viewHolder.getItemViewType() + " isLegacy: false");
            }
            viewHolder.itemView.setTag(C1476R.C1479id.fastadapter_item_adapter, this);
            this.mOnBindViewHolderListener.onBindViewHolder(viewHolder, i, list);
        }
        super.onBindViewHolder(viewHolder, i, list);
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (this.mVerbose) {
            Log.v(TAG, "onCreateViewHolder: " + i);
        }
        RecyclerView.ViewHolder onPreCreateViewHolder = this.mOnCreateViewHolderListener.onPreCreateViewHolder(this, viewGroup, i);
        onPreCreateViewHolder.itemView.setTag(C1476R.C1479id.fastadapter_item_adapter, this);
        if (this.mAttachDefaultListeners) {
            EventHookUtil.attachToView(this.fastAdapterViewClickListener, onPreCreateViewHolder, onPreCreateViewHolder.itemView);
            EventHookUtil.attachToView(this.fastAdapterViewLongClickListener, onPreCreateViewHolder, onPreCreateViewHolder.itemView);
            EventHookUtil.attachToView(this.fastAdapterViewTouchListener, onPreCreateViewHolder, onPreCreateViewHolder.itemView);
        }
        return this.mOnCreateViewHolderListener.onPostCreateViewHolder(this, onPreCreateViewHolder);
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        if (this.mVerbose) {
            Log.v(TAG, "onDetachedFromRecyclerView");
        }
        super.onDetachedFromRecyclerView(recyclerView);
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    public boolean onFailedToRecycleView(RecyclerView.ViewHolder viewHolder) {
        if (this.mVerbose) {
            Log.v(TAG, "onFailedToRecycleView: " + viewHolder.getItemViewType());
        }
        return this.mOnBindViewHolderListener.onFailedToRecycleView(viewHolder, viewHolder.getAdapterPosition()) || super.onFailedToRecycleView(viewHolder);
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
        if (this.mVerbose) {
            Log.v(TAG, "onViewAttachedToWindow: " + viewHolder.getItemViewType());
        }
        super.onViewAttachedToWindow(viewHolder);
        this.mOnBindViewHolderListener.onViewAttachedToWindow(viewHolder, viewHolder.getAdapterPosition());
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    public void onViewDetachedFromWindow(RecyclerView.ViewHolder viewHolder) {
        if (this.mVerbose) {
            Log.v(TAG, "onViewDetachedFromWindow: " + viewHolder.getItemViewType());
        }
        super.onViewDetachedFromWindow(viewHolder);
        this.mOnBindViewHolderListener.onViewDetachedFromWindow(viewHolder, viewHolder.getAdapterPosition());
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    public void onViewRecycled(RecyclerView.ViewHolder viewHolder) {
        if (this.mVerbose) {
            Log.v(TAG, "onViewRecycled: " + viewHolder.getItemViewType());
        }
        super.onViewRecycled(viewHolder);
        this.mOnBindViewHolderListener.unBindViewHolder(viewHolder, viewHolder.getAdapterPosition());
    }

    public void registerTypeInstance(Item item) {
        if (getTypeInstanceCache().register(item) && (item instanceof IHookable)) {
            withEventHooks(((IHookable) item).getEventHooks());
        }
    }

    public Bundle saveInstanceState(@Nullable Bundle bundle) {
        return saveInstanceState(bundle, "");
    }

    public Bundle saveInstanceState(@Nullable Bundle bundle, String str) {
        for (IAdapterExtension<Item> iAdapterExtension : this.mExtensions) {
            iAdapterExtension.saveInstanceState(bundle, str);
        }
        return bundle;
    }

    public void select() {
        this.mSelectExtension.select(false);
    }

    public void select(int i) {
        this.mSelectExtension.select(i, false, false);
    }

    public void select(int i, boolean z) {
        this.mSelectExtension.select(i, z, false);
    }

    public void select(int i, boolean z, boolean z2) {
        this.mSelectExtension.select(i, z, z2);
    }

    public void select(Iterable<Integer> iterable) {
        this.mSelectExtension.select(iterable);
    }

    public void select(boolean z) {
        this.mSelectExtension.select(z);
    }

    public void setTypeInstanceCache(ITypeInstanceCache<Item> iTypeInstanceCache) {
        this.mTypeInstanceCache = iTypeInstanceCache;
    }

    public void toggleSelection(int i) {
        this.mSelectExtension.toggleSelection(i);
    }

    public FastAdapter<Item> withAllowDeselection(boolean z) {
        this.mSelectExtension.withAllowDeselection(z);
        return this;
    }

    public FastAdapter<Item> withAttachDefaultListeners(boolean z) {
        this.mAttachDefaultListeners = z;
        return this;
    }

    public FastAdapter<Item> withEventHook(EventHook<Item> eventHook) {
        if (this.eventHooks == null) {
            this.eventHooks = new LinkedList();
        }
        this.eventHooks.add(eventHook);
        return this;
    }

    public FastAdapter<Item> withEventHooks(@Nullable Collection<? extends EventHook<Item>> collection) {
        if (collection == null) {
            return this;
        }
        if (this.eventHooks == null) {
            this.eventHooks = new LinkedList();
        }
        this.eventHooks.addAll(collection);
        return this;
    }

    @Deprecated
    public FastAdapter<Item> withItemEvent(EventHook<Item> eventHook) {
        return withEventHook(eventHook);
    }

    public FastAdapter<Item> withLegacyBindViewMode(boolean z) {
        this.mLegacyBindViewMode = z;
        return this;
    }

    public FastAdapter<Item> withMultiSelect(boolean z) {
        this.mSelectExtension.withMultiSelect(z);
        return this;
    }

    public FastAdapter<Item> withOnBindViewHolderListener(OnBindViewHolderListener onBindViewHolderListener) {
        this.mOnBindViewHolderListener = onBindViewHolderListener;
        return this;
    }

    public FastAdapter<Item> withOnClickListener(OnClickListener<Item> onClickListener) {
        this.mOnClickListener = onClickListener;
        return this;
    }

    public FastAdapter<Item> withOnCreateViewHolderListener(OnCreateViewHolderListener onCreateViewHolderListener) {
        this.mOnCreateViewHolderListener = onCreateViewHolderListener;
        return this;
    }

    public FastAdapter<Item> withOnLongClickListener(OnLongClickListener<Item> onLongClickListener) {
        this.mOnLongClickListener = onLongClickListener;
        return this;
    }

    public FastAdapter<Item> withOnPreClickListener(OnClickListener<Item> onClickListener) {
        this.mOnPreClickListener = onClickListener;
        return this;
    }

    public FastAdapter<Item> withOnPreLongClickListener(OnLongClickListener<Item> onLongClickListener) {
        this.mOnPreLongClickListener = onLongClickListener;
        return this;
    }

    public FastAdapter<Item> withOnTouchListener(OnTouchListener<Item> onTouchListener) {
        this.mOnTouchListener = onTouchListener;
        return this;
    }

    public FastAdapter<Item> withSavedInstanceState(Bundle bundle) {
        return withSavedInstanceState(bundle, "");
    }

    public FastAdapter<Item> withSavedInstanceState(@Nullable Bundle bundle, String str) {
        for (IAdapterExtension<Item> iAdapterExtension : this.mExtensions) {
            iAdapterExtension.withSavedInstanceState(bundle, str);
        }
        return this;
    }

    public FastAdapter<Item> withSelectOnLongClick(boolean z) {
        this.mSelectExtension.withSelectOnLongClick(z);
        return this;
    }

    public FastAdapter<Item> withSelectWithItemUpdate(boolean z) {
        this.mSelectExtension.withSelectWithItemUpdate(z);
        return this;
    }

    public FastAdapter<Item> withSelectable(boolean z) {
        if (z) {
            addExtension(this.mSelectExtension);
        } else {
            this.mExtensions.remove(this.mSelectExtension);
        }
        this.mSelectExtension.withSelectable(z);
        return this;
    }

    public FastAdapter<Item> withSelectionListener(ISelectionListener<Item> iSelectionListener) {
        this.mSelectExtension.withSelectionListener(iSelectionListener);
        return this;
    }
}
