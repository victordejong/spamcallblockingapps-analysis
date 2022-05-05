package com.mikepenz.fastadapter;

import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/mikepenz/fastadapter/IInterceptor.class */
public interface IInterceptor<Element, Item> {
    public static final IInterceptor<IItem, IItem> DEFAULT = new IInterceptor<IItem, IItem>() { // from class: com.mikepenz.fastadapter.IInterceptor.1
        public IItem intercept(IItem iItem) {
            return iItem;
        }
    };

    @Nullable
    Item intercept(Element element);
}
