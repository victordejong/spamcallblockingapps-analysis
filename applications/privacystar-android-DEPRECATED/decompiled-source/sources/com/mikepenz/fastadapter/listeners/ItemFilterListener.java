package com.mikepenz.fastadapter.listeners;

import com.mikepenz.fastadapter.IItem;
import java.util.List;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/mikepenz/fastadapter/listeners/ItemFilterListener.class */
public interface ItemFilterListener<Item extends IItem> {
    void itemsFiltered(@Nullable CharSequence charSequence, @Nullable List<Item> list);

    void onReset();
}
