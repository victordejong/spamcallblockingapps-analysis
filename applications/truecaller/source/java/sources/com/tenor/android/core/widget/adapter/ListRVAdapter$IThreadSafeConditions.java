package com.tenor.android.core.widget.adapter;

import java.util.Stack;
/* loaded from: classes3-dex2jar.jar:com/tenor/android/core/widget/adapter/ListRVAdapter$IThreadSafeConditions.class */
public interface ListRVAdapter$IThreadSafeConditions<T> {
    void onItemsRemoved(Stack<Integer> stack);

    boolean removeIf(T t);
}
