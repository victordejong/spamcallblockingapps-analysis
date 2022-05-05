package com.mikepenz.fastadapter.adapters;

import com.mikepenz.fastadapter.IInterceptor;
import com.mikepenz.fastadapter.IItem;
/* loaded from: classes-dex2jar.jar:com/mikepenz/fastadapter/adapters/ItemAdapter.class */
public class ItemAdapter<Item extends IItem> extends ModelAdapter<Item, Item> {
    public ItemAdapter() {
        super(IInterceptor.DEFAULT);
    }

    public static <Item extends IItem> ItemAdapter<Item> items() {
        return new ItemAdapter<>();
    }
}
