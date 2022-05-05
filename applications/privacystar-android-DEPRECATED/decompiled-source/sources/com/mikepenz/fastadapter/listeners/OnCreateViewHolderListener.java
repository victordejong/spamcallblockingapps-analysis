package com.mikepenz.fastadapter.listeners;

import android.support.p004v7.widget.RecyclerView;
import android.view.ViewGroup;
import com.mikepenz.fastadapter.FastAdapter;
import com.mikepenz.fastadapter.IItem;
/* loaded from: classes-dex2jar.jar:com/mikepenz/fastadapter/listeners/OnCreateViewHolderListener.class */
public interface OnCreateViewHolderListener<Item extends IItem> {
    RecyclerView.ViewHolder onPostCreateViewHolder(FastAdapter<Item> fastAdapter, RecyclerView.ViewHolder viewHolder);

    RecyclerView.ViewHolder onPreCreateViewHolder(FastAdapter<Item> fastAdapter, ViewGroup viewGroup, int i);
}
