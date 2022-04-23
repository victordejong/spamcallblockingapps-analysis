package com.jakewharton.rxbinding2.support.p006v4.view;

import android.support.annotation.CheckResult;
import android.support.annotation.NonNull;
import android.view.MenuItem;
import com.jakewharton.rxbinding2.internal.Functions;
import com.jakewharton.rxbinding2.internal.Preconditions;
import com.jakewharton.rxbinding2.view.MenuItemActionViewEvent;
import io.reactivex.Observable;
import io.reactivex.functions.Predicate;
/* renamed from: com.jakewharton.rxbinding2.support.v4.view.RxMenuItemCompat */
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/support/v4/view/RxMenuItemCompat.class */
public final class RxMenuItemCompat {
    private RxMenuItemCompat() {
        throw new AssertionError("No instances.");
    }

    @CheckResult
    @NonNull
    public static Observable<MenuItemActionViewEvent> actionViewEvents(@NonNull MenuItem menuItem) {
        Preconditions.checkNotNull(menuItem, "menuItem == null");
        return new MenuItemActionViewEventObservable(menuItem, Functions.PREDICATE_ALWAYS_TRUE);
    }

    @CheckResult
    @NonNull
    public static Observable<MenuItemActionViewEvent> actionViewEvents(@NonNull MenuItem menuItem, @NonNull Predicate<? super MenuItemActionViewEvent> predicate) {
        Preconditions.checkNotNull(menuItem, "menuItem == null");
        Preconditions.checkNotNull(predicate, "handled == null");
        return new MenuItemActionViewEventObservable(menuItem, predicate);
    }
}
