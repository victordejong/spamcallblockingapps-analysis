package com.jakewharton.rxbinding2.support.p006v4.widget;

import android.support.annotation.CheckResult;
import android.support.annotation.NonNull;
import android.support.p001v4.widget.DrawerLayout;
import com.jakewharton.rxbinding2.InitialValueObservable;
import com.jakewharton.rxbinding2.internal.Preconditions;
import io.reactivex.functions.Consumer;
/* renamed from: com.jakewharton.rxbinding2.support.v4.widget.RxDrawerLayout */
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/support/v4/widget/RxDrawerLayout.class */
public final class RxDrawerLayout {
    private RxDrawerLayout() {
        throw new AssertionError("No instances.");
    }

    @CheckResult
    @NonNull
    public static InitialValueObservable<Boolean> drawerOpen(@NonNull DrawerLayout drawerLayout, int i) {
        Preconditions.checkNotNull(drawerLayout, "view == null");
        return new DrawerLayoutDrawerOpenedObservable(drawerLayout, i);
    }

    @CheckResult
    @NonNull
    public static Consumer<? super Boolean> open(@NonNull final DrawerLayout drawerLayout, final int i) {
        Preconditions.checkNotNull(drawerLayout, "view == null");
        return new Consumer<Boolean>() { // from class: com.jakewharton.rxbinding2.support.v4.widget.RxDrawerLayout.1
            public void accept(Boolean bool) {
                if (bool.booleanValue()) {
                    DrawerLayout.this.openDrawer(i);
                } else {
                    DrawerLayout.this.closeDrawer(i);
                }
            }
        };
    }
}
