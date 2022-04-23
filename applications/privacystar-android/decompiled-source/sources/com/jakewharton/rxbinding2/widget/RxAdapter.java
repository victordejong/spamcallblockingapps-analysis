package com.jakewharton.rxbinding2.widget;

import android.support.annotation.CheckResult;
import android.support.annotation.NonNull;
import android.widget.Adapter;
import com.jakewharton.rxbinding2.InitialValueObservable;
import com.jakewharton.rxbinding2.internal.Preconditions;
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/widget/RxAdapter.class */
public final class RxAdapter {
    private RxAdapter() {
        throw new AssertionError("No instances.");
    }

    @CheckResult
    @NonNull
    public static <T extends Adapter> InitialValueObservable<T> dataChanges(@NonNull T t) {
        Preconditions.checkNotNull(t, "adapter == null");
        return new AdapterDataChangeObservable(t);
    }
}
