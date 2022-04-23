package com.jakewharton.rxbinding2.widget;

import android.support.annotation.CheckResult;
import android.support.annotation.NonNull;
import android.support.annotation.RequiresApi;
import android.view.MenuItem;
import android.widget.Toolbar;
import com.jakewharton.rxbinding2.internal.Preconditions;
import io.reactivex.Observable;
import io.reactivex.functions.Consumer;
@RequiresApi(21)
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/widget/RxToolbar.class */
public final class RxToolbar {
    private RxToolbar() {
        throw new AssertionError("No instances.");
    }

    @CheckResult
    @NonNull
    public static Observable<MenuItem> itemClicks(@NonNull Toolbar toolbar) {
        Preconditions.checkNotNull(toolbar, "view == null");
        return new ToolbarItemClickObservable(toolbar);
    }

    @CheckResult
    @NonNull
    public static Observable<Object> navigationClicks(@NonNull Toolbar toolbar) {
        Preconditions.checkNotNull(toolbar, "view == null");
        return new ToolbarNavigationClickObservable(toolbar);
    }

    @CheckResult
    @NonNull
    public static Consumer<? super CharSequence> subtitle(@NonNull final Toolbar toolbar) {
        Preconditions.checkNotNull(toolbar, "view == null");
        return new Consumer<CharSequence>() { // from class: com.jakewharton.rxbinding2.widget.RxToolbar.3
            public void accept(CharSequence charSequence) {
                toolbar.setSubtitle(charSequence);
            }
        };
    }

    @CheckResult
    @NonNull
    public static Consumer<? super Integer> subtitleRes(@NonNull final Toolbar toolbar) {
        Preconditions.checkNotNull(toolbar, "view == null");
        return new Consumer<Integer>() { // from class: com.jakewharton.rxbinding2.widget.RxToolbar.4
            public void accept(Integer num) {
                toolbar.setSubtitle(num.intValue());
            }
        };
    }

    @CheckResult
    @NonNull
    public static Consumer<? super CharSequence> title(@NonNull final Toolbar toolbar) {
        Preconditions.checkNotNull(toolbar, "view == null");
        return new Consumer<CharSequence>() { // from class: com.jakewharton.rxbinding2.widget.RxToolbar.1
            public void accept(CharSequence charSequence) {
                toolbar.setTitle(charSequence);
            }
        };
    }

    @CheckResult
    @NonNull
    public static Consumer<? super Integer> titleRes(@NonNull final Toolbar toolbar) {
        Preconditions.checkNotNull(toolbar, "view == null");
        return new Consumer<Integer>() { // from class: com.jakewharton.rxbinding2.widget.RxToolbar.2
            public void accept(Integer num) {
                toolbar.setTitle(num.intValue());
            }
        };
    }
}
