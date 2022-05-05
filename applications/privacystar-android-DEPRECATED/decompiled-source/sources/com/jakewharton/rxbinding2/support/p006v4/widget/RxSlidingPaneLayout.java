package com.jakewharton.rxbinding2.support.p006v4.widget;

import android.support.annotation.CheckResult;
import android.support.annotation.NonNull;
import android.support.p001v4.widget.SlidingPaneLayout;
import com.jakewharton.rxbinding2.InitialValueObservable;
import com.jakewharton.rxbinding2.internal.Preconditions;
import io.reactivex.Observable;
import io.reactivex.functions.Consumer;
/* renamed from: com.jakewharton.rxbinding2.support.v4.widget.RxSlidingPaneLayout */
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/support/v4/widget/RxSlidingPaneLayout.class */
public final class RxSlidingPaneLayout {
    private RxSlidingPaneLayout() {
        throw new AssertionError("No instances.");
    }

    @CheckResult
    @NonNull
    public static Consumer<? super Boolean> open(@NonNull final SlidingPaneLayout slidingPaneLayout) {
        Preconditions.checkNotNull(slidingPaneLayout, "view == null");
        return new Consumer<Boolean>() { // from class: com.jakewharton.rxbinding2.support.v4.widget.RxSlidingPaneLayout.1
            public void accept(Boolean bool) {
                if (bool.booleanValue()) {
                    SlidingPaneLayout.this.openPane();
                } else {
                    SlidingPaneLayout.this.closePane();
                }
            }
        };
    }

    @CheckResult
    @NonNull
    public static InitialValueObservable<Boolean> panelOpens(@NonNull SlidingPaneLayout slidingPaneLayout) {
        Preconditions.checkNotNull(slidingPaneLayout, "view == null");
        return new SlidingPaneLayoutPaneOpenedObservable(slidingPaneLayout);
    }

    @CheckResult
    @NonNull
    public static Observable<Float> panelSlides(@NonNull SlidingPaneLayout slidingPaneLayout) {
        Preconditions.checkNotNull(slidingPaneLayout, "view == null");
        return new SlidingPaneLayoutSlideObservable(slidingPaneLayout);
    }
}
