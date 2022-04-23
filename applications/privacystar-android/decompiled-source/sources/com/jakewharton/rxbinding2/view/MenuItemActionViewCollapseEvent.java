package com.jakewharton.rxbinding2.view;

import android.support.annotation.CheckResult;
import android.support.annotation.NonNull;
import android.view.MenuItem;
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/view/MenuItemActionViewCollapseEvent.class */
public abstract class MenuItemActionViewCollapseEvent extends MenuItemActionViewEvent {
    @CheckResult
    @NonNull
    public static MenuItemActionViewCollapseEvent create(@NonNull MenuItem menuItem) {
        return new AutoValue_MenuItemActionViewCollapseEvent(menuItem);
    }
}
