package com.jakewharton.rxbinding2.support.p006v4.widget;

import android.support.annotation.CheckResult;
import android.support.annotation.NonNull;
import android.support.p001v4.widget.NestedScrollView;
import com.jakewharton.rxbinding2.internal.Preconditions;
import com.jakewharton.rxbinding2.view.ViewScrollChangeEvent;
import io.reactivex.Observable;
/* renamed from: com.jakewharton.rxbinding2.support.v4.widget.RxNestedScrollView */
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/support/v4/widget/RxNestedScrollView.class */
public final class RxNestedScrollView {
    private RxNestedScrollView() {
        throw new AssertionError("No instances.");
    }

    @CheckResult
    @NonNull
    public static Observable<ViewScrollChangeEvent> scrollChangeEvents(@NonNull NestedScrollView nestedScrollView) {
        Preconditions.checkNotNull(nestedScrollView, "view == null");
        return new NestedScrollViewScrollChangeEventObservable(nestedScrollView);
    }
}
