package com.jakewharton.rxbinding2.support.p006v4.view;

import android.support.annotation.CheckResult;
import android.support.annotation.NonNull;
import android.support.p001v4.view.ViewPager;
import com.jakewharton.rxbinding2.InitialValueObservable;
import com.jakewharton.rxbinding2.internal.Preconditions;
import io.reactivex.Observable;
import io.reactivex.functions.Consumer;
/* renamed from: com.jakewharton.rxbinding2.support.v4.view.RxViewPager */
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/support/v4/view/RxViewPager.class */
public final class RxViewPager {
    private RxViewPager() {
        throw new AssertionError("No instances.");
    }

    @CheckResult
    @NonNull
    public static Consumer<? super Integer> currentItem(@NonNull final ViewPager viewPager) {
        Preconditions.checkNotNull(viewPager, "view == null");
        return new Consumer<Integer>() { // from class: com.jakewharton.rxbinding2.support.v4.view.RxViewPager.1
            public void accept(Integer num) {
                ViewPager.this.setCurrentItem(num.intValue());
            }
        };
    }

    @CheckResult
    @NonNull
    public static Observable<Integer> pageScrollStateChanges(@NonNull ViewPager viewPager) {
        Preconditions.checkNotNull(viewPager, "view == null");
        return new ViewPagerPageScrollStateChangedObservable(viewPager);
    }

    @CheckResult
    @NonNull
    public static InitialValueObservable<Integer> pageSelections(@NonNull ViewPager viewPager) {
        Preconditions.checkNotNull(viewPager, "view == null");
        return new ViewPagerPageSelectedObservable(viewPager);
    }
}
