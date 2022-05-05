package com.mikepenz.fastadapter.listeners;

import android.support.p004v7.widget.RecyclerView;
import android.view.ViewGroup;
import com.mikepenz.fastadapter.FastAdapter;
import com.mikepenz.fastadapter.IItem;
import com.mikepenz.fastadapter.utils.EventHookUtil;
/* loaded from: classes-dex2jar.jar:com/mikepenz/fastadapter/listeners/OnCreateViewHolderListenerImpl.class */
public class OnCreateViewHolderListenerImpl<Item extends IItem> implements OnCreateViewHolderListener<Item> {
    @Override // com.mikepenz.fastadapter.listeners.OnCreateViewHolderListener
    public RecyclerView.ViewHolder onPostCreateViewHolder(FastAdapter<Item> fastAdapter, RecyclerView.ViewHolder viewHolder) {
        EventHookUtil.bind(viewHolder, fastAdapter.getEventHooks());
        return viewHolder;
    }

    @Override // com.mikepenz.fastadapter.listeners.OnCreateViewHolderListener
    public RecyclerView.ViewHolder onPreCreateViewHolder(FastAdapter<Item> fastAdapter, ViewGroup viewGroup, int i) {
        return fastAdapter.getTypeInstance(i).getViewHolder(viewGroup);
    }
}
