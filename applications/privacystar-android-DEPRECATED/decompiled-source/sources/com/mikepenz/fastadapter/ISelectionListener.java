package com.mikepenz.fastadapter;

import com.mikepenz.fastadapter.IItem;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/mikepenz/fastadapter/ISelectionListener.class */
public interface ISelectionListener<Item extends IItem> {
    void onSelectionChanged(@Nullable Item item, boolean z);
}
