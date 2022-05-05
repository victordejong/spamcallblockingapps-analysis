package com.mikepenz.fastadapter.utils;

import android.support.p004v7.widget.RecyclerView;
import android.view.MotionEvent;
import android.view.View;
import com.mikepenz.fastadapter.C1476R;
import com.mikepenz.fastadapter.FastAdapter;
import com.mikepenz.fastadapter.IItem;
import com.mikepenz.fastadapter.listeners.ClickEventHook;
import com.mikepenz.fastadapter.listeners.CustomEventHook;
import com.mikepenz.fastadapter.listeners.EventHook;
import com.mikepenz.fastadapter.listeners.LongClickEventHook;
import com.mikepenz.fastadapter.listeners.TouchEventHook;
import java.util.Arrays;
import java.util.List;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/mikepenz/fastadapter/utils/EventHookUtil.class */
public class EventHookUtil {
    public static <Item extends IItem> void attachToView(final EventHook<Item> eventHook, final RecyclerView.ViewHolder viewHolder, View view) {
        if (eventHook instanceof ClickEventHook) {
            view.setOnClickListener(new View.OnClickListener() { // from class: com.mikepenz.fastadapter.utils.EventHookUtil.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    FastAdapter fastAdapter;
                    int holderAdapterPosition;
                    IItem item;
                    Object tag = RecyclerView.ViewHolder.this.itemView.getTag(C1476R.C1479id.fastadapter_item_adapter);
                    if ((tag instanceof FastAdapter) && (holderAdapterPosition = (fastAdapter = (FastAdapter) tag).getHolderAdapterPosition(RecyclerView.ViewHolder.this)) != -1 && (item = fastAdapter.getItem(holderAdapterPosition)) != null) {
                        ((ClickEventHook) eventHook).onClick(view2, holderAdapterPosition, fastAdapter, item);
                    }
                }
            });
        } else if (eventHook instanceof LongClickEventHook) {
            view.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.mikepenz.fastadapter.utils.EventHookUtil.2
                @Override // android.view.View.OnLongClickListener
                public boolean onLongClick(View view2) {
                    FastAdapter fastAdapter;
                    int holderAdapterPosition;
                    IItem item;
                    Object tag = RecyclerView.ViewHolder.this.itemView.getTag(C1476R.C1479id.fastadapter_item_adapter);
                    if (!(tag instanceof FastAdapter) || (holderAdapterPosition = (fastAdapter = (FastAdapter) tag).getHolderAdapterPosition(RecyclerView.ViewHolder.this)) == -1 || (item = fastAdapter.getItem(holderAdapterPosition)) == null) {
                        return false;
                    }
                    return ((LongClickEventHook) eventHook).onLongClick(view2, holderAdapterPosition, fastAdapter, item);
                }
            });
        } else if (eventHook instanceof TouchEventHook) {
            view.setOnTouchListener(new View.OnTouchListener() { // from class: com.mikepenz.fastadapter.utils.EventHookUtil.3
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view2, MotionEvent motionEvent) {
                    FastAdapter fastAdapter;
                    int holderAdapterPosition;
                    IItem item;
                    Object tag = RecyclerView.ViewHolder.this.itemView.getTag(C1476R.C1479id.fastadapter_item_adapter);
                    if (!(tag instanceof FastAdapter) || (holderAdapterPosition = (fastAdapter = (FastAdapter) tag).getHolderAdapterPosition(RecyclerView.ViewHolder.this)) == -1 || (item = fastAdapter.getItem(holderAdapterPosition)) == null) {
                        return false;
                    }
                    return ((TouchEventHook) eventHook).onTouch(view2, motionEvent, holderAdapterPosition, fastAdapter, item);
                }
            });
        } else if (eventHook instanceof CustomEventHook) {
            ((CustomEventHook) eventHook).attachEvent(view, viewHolder);
        }
    }

    public static <Item extends IItem> void bind(RecyclerView.ViewHolder viewHolder, @Nullable List<EventHook<Item>> list) {
        if (list != null) {
            for (EventHook<Item> eventHook : list) {
                View onBind = eventHook.onBind(viewHolder);
                if (onBind != null) {
                    attachToView(eventHook, viewHolder, onBind);
                }
                List<? extends View> onBindMany = eventHook.onBindMany(viewHolder);
                if (onBindMany != null) {
                    for (View view : onBindMany) {
                        attachToView(eventHook, viewHolder, view);
                    }
                }
            }
        }
    }

    public static List<View> toList(View... viewArr) {
        return Arrays.asList(viewArr);
    }
}
