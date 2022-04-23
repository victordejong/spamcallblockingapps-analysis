package com.mikepenz.fastadapter.listeners;

import android.support.p004v7.widget.RecyclerView;
import android.view.MotionEvent;
import android.view.View;
import com.mikepenz.fastadapter.FastAdapter;
import com.mikepenz.fastadapter.IItem;
import java.util.List;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/mikepenz/fastadapter/listeners/TouchEventHook.class */
public abstract class TouchEventHook<Item extends IItem> implements EventHook<Item> {
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

    public abstract boolean onTouch(View view, MotionEvent motionEvent, int i, FastAdapter<Item> fastAdapter, Item item);
}
