package com.mikepenz.fastadapter.listeners;

import android.support.p004v7.widget.RecyclerView;
import android.view.View;
import com.mikepenz.fastadapter.C1476R;
import com.mikepenz.fastadapter.FastAdapter;
import com.mikepenz.fastadapter.IItem;
import java.util.List;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/mikepenz/fastadapter/listeners/CustomEventHook.class */
public abstract class CustomEventHook<Item extends IItem> implements EventHook<Item> {
    public abstract void attachEvent(View view, RecyclerView.ViewHolder viewHolder);

    @Nullable
    public FastAdapter<Item> getFastAdapter(RecyclerView.ViewHolder viewHolder) {
        Object tag = viewHolder.itemView.getTag(C1476R.C1479id.fastadapter_item_adapter);
        if (tag instanceof FastAdapter) {
            return (FastAdapter) tag;
        }
        return null;
    }

    @Nullable
    public Item getItem(RecyclerView.ViewHolder viewHolder) {
        int holderAdapterPosition;
        FastAdapter<Item> fastAdapter = getFastAdapter(viewHolder);
        if (fastAdapter == null || (holderAdapterPosition = fastAdapter.getHolderAdapterPosition(viewHolder)) == -1) {
            return null;
        }
        return fastAdapter.getItem(holderAdapterPosition);
    }

    @Override // com.mikepenz.fastadapter.listeners.EventHook
    @Nullable
    public View onBind(RecyclerView.ViewHolder viewHolder) {
        return null;
    }

    @Override // com.mikepenz.fastadapter.listeners.EventHook
    @Nullable
    public List<View> onBindMany(RecyclerView.ViewHolder viewHolder) {
        return null;
    }
}
