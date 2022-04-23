package com.mikepenz.fastadapter;

import com.mikepenz.fastadapter.IItem;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/mikepenz/fastadapter/AbstractAdapter.class */
public abstract class AbstractAdapter<Item extends IItem> implements IAdapter<Item> {
    protected FastAdapter<Item> mFastAdapter;
    protected int mOrder = -1;

    @Override // com.mikepenz.fastadapter.IAdapter
    public FastAdapter<Item> getFastAdapter() {
        return this.mFastAdapter;
    }

    @Override // com.mikepenz.fastadapter.IAdapter
    public int getOrder() {
        return this.mOrder;
    }

    public void mapPossibleTypes(@Nullable Iterable<Item> iterable) {
        if (iterable != null) {
            for (Item item : iterable) {
                this.mFastAdapter.registerTypeInstance(item);
            }
        }
    }

    @Override // com.mikepenz.fastadapter.IAdapter
    public void setOrder(int i) {
        this.mOrder = i;
    }

    @Override // com.mikepenz.fastadapter.IAdapter
    public AbstractAdapter<Item> withFastAdapter(FastAdapter<Item> fastAdapter) {
        this.mFastAdapter = fastAdapter;
        return this;
    }
}
