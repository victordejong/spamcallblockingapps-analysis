package com.jakewharton.rxbinding2.widget;

import android.support.annotation.CheckResult;
import android.support.annotation.NonNull;
import android.view.View;
import android.widget.AdapterView;
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/widget/AdapterViewItemClickEvent.class */
public abstract class AdapterViewItemClickEvent {
    @CheckResult
    @NonNull
    public static AdapterViewItemClickEvent create(@NonNull AdapterView<?> adapterView, @NonNull View view, int i, long j) {
        return new AutoValue_AdapterViewItemClickEvent(adapterView, view, i, j);
    }

    @NonNull
    public abstract View clickedView();

    /* renamed from: id */
    public abstract long mo322id();

    public abstract int position();

    @NonNull
    public abstract AdapterView<?> view();
}
