package com.jakewharton.rxbinding2.view;

import android.support.annotation.CheckResult;
import android.support.annotation.NonNull;
import android.view.View;
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/view/ViewScrollChangeEvent.class */
public abstract class ViewScrollChangeEvent {
    @CheckResult
    @NonNull
    public static ViewScrollChangeEvent create(@NonNull View view, int i, int i2, int i3, int i4) {
        return new AutoValue_ViewScrollChangeEvent(view, i, i2, i3, i4);
    }

    public abstract int oldScrollX();

    public abstract int oldScrollY();

    public abstract int scrollX();

    public abstract int scrollY();

    @NonNull
    public abstract View view();
}
