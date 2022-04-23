package com.mikepenz.fastadapter.utils;

import android.util.SparseArray;
import com.mikepenz.fastadapter.IItem;
import com.mikepenz.fastadapter.ITypeInstanceCache;
/* loaded from: classes-dex2jar.jar:com/mikepenz/fastadapter/utils/DefaultTypeInstanceCache.class */
public class DefaultTypeInstanceCache<Item extends IItem> implements ITypeInstanceCache<Item> {
    private final SparseArray<Item> mTypeInstances = new SparseArray<>();

    @Override // com.mikepenz.fastadapter.ITypeInstanceCache
    public void clear() {
        this.mTypeInstances.clear();
    }

    @Override // com.mikepenz.fastadapter.ITypeInstanceCache
    public Item get(int i) {
        return this.mTypeInstances.get(i);
    }

    @Override // com.mikepenz.fastadapter.ITypeInstanceCache
    public boolean register(Item item) {
        if (this.mTypeInstances.indexOfKey(item.getType()) >= 0) {
            return false;
        }
        this.mTypeInstances.put(item.getType(), item);
        return true;
    }
}
