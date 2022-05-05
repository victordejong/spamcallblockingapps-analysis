package com.mikepenz.fastadapter.listeners;

import android.support.p004v7.widget.RecyclerView;
import android.util.Log;
import com.mikepenz.fastadapter.C1476R;
import com.mikepenz.fastadapter.FastAdapter;
import com.mikepenz.fastadapter.IItem;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/mikepenz/fastadapter/listeners/OnBindViewHolderListenerImpl.class */
public class OnBindViewHolderListenerImpl implements OnBindViewHolderListener {
    @Override // com.mikepenz.fastadapter.listeners.OnBindViewHolderListener
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i, List<Object> list) {
        IItem item;
        Object tag = viewHolder.itemView.getTag(C1476R.C1479id.fastadapter_item_adapter);
        if ((tag instanceof FastAdapter) && (item = ((FastAdapter) tag).getItem(i)) != null) {
            item.bindView(viewHolder, list);
            if (viewHolder instanceof FastAdapter.ViewHolder) {
                ((FastAdapter.ViewHolder) viewHolder).bindView(item, list);
            }
            viewHolder.itemView.setTag(C1476R.C1479id.fastadapter_item, item);
        }
    }

    @Override // com.mikepenz.fastadapter.listeners.OnBindViewHolderListener
    public boolean onFailedToRecycleView(RecyclerView.ViewHolder viewHolder, int i) {
        IItem iItem = (IItem) viewHolder.itemView.getTag(C1476R.C1479id.fastadapter_item);
        if (iItem == null) {
            return false;
        }
        boolean failedToRecycle = iItem.failedToRecycle(viewHolder);
        boolean z = failedToRecycle;
        if (viewHolder instanceof FastAdapter.ViewHolder) {
            z = failedToRecycle || ((FastAdapter.ViewHolder) viewHolder).failedToRecycle(iItem);
        }
        return z;
    }

    @Override // com.mikepenz.fastadapter.listeners.OnBindViewHolderListener
    public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder, int i) {
        IItem holderAdapterItem = FastAdapter.getHolderAdapterItem(viewHolder, i);
        if (holderAdapterItem != null) {
            try {
                holderAdapterItem.attachToWindow(viewHolder);
                if (viewHolder instanceof FastAdapter.ViewHolder) {
                    ((FastAdapter.ViewHolder) viewHolder).attachToWindow(holderAdapterItem);
                }
            } catch (AbstractMethodError e) {
                Log.e("FastAdapter", e.toString());
            }
        }
    }

    @Override // com.mikepenz.fastadapter.listeners.OnBindViewHolderListener
    public void onViewDetachedFromWindow(RecyclerView.ViewHolder viewHolder, int i) {
        IItem holderAdapterItem = FastAdapter.getHolderAdapterItem(viewHolder, i);
        if (holderAdapterItem != null) {
            holderAdapterItem.detachFromWindow(viewHolder);
            if (viewHolder instanceof FastAdapter.ViewHolder) {
                ((FastAdapter.ViewHolder) viewHolder).detachFromWindow(holderAdapterItem);
            }
        }
    }

    @Override // com.mikepenz.fastadapter.listeners.OnBindViewHolderListener
    public void unBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        IItem iItem = (IItem) viewHolder.itemView.getTag(C1476R.C1479id.fastadapter_item);
        if (iItem != null) {
            iItem.unbindView(viewHolder);
            if (viewHolder instanceof FastAdapter.ViewHolder) {
                ((FastAdapter.ViewHolder) viewHolder).unbindView(iItem);
            }
            viewHolder.itemView.setTag(C1476R.C1479id.fastadapter_item, null);
            viewHolder.itemView.setTag(C1476R.C1479id.fastadapter_item_adapter, null);
            return;
        }
        Log.e("FastAdapter", "The bindView method of this item should set the `Tag` on its itemView (https://github.com/mikepenz/FastAdapter/blob/develop/library-core/src/main/java/com/mikepenz/fastadapter/items/AbstractItem.java#L189)");
    }
}
