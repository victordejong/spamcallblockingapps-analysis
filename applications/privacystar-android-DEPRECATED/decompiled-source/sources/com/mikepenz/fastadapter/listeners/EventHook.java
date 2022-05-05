package com.mikepenz.fastadapter.listeners;

import android.support.p004v7.widget.RecyclerView;
import android.view.View;
import com.mikepenz.fastadapter.IItem;
import java.util.List;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/mikepenz/fastadapter/listeners/EventHook.class */
public interface EventHook<Item extends IItem> {
    @Nullable
    View onBind(RecyclerView.ViewHolder viewHolder);

    @Nullable
    List<? extends View> onBindMany(RecyclerView.ViewHolder viewHolder);
}
