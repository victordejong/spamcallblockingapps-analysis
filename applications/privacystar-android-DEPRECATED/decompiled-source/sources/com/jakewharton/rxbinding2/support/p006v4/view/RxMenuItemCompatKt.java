package com.jakewharton.rxbinding2.support.p006v4.view;

import android.view.MenuItem;
import com.jakewharton.rxbinding2.view.MenuItemActionViewEvent;
import io.reactivex.Observable;
import io.reactivex.functions.Predicate;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 0}, m255d1 = {"��\u0016\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\u001a\u0013\u0010��\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u0086\b\u001a#\u0010��\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u00032\u000e\u0010\u0004\u001a\n\u0012\u0006\b��\u0012\u00020\u00020\u0005H\u0086\b¨\u0006\u0006"}, m254d2 = {"actionViewEvents", "Lio/reactivex/Observable;", "Lcom/jakewharton/rxbinding2/view/MenuItemActionViewEvent;", "Landroid/view/MenuItem;", "handled", "Lio/reactivex/functions/Predicate;", "rxbinding2-support-v4-kotlin"}, m253k = 2, m252mv = {1, 1, 1})
/* renamed from: com.jakewharton.rxbinding2.support.v4.view.RxMenuItemCompatKt */
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/support/v4/view/RxMenuItemCompatKt.class */
public final class RxMenuItemCompatKt {
    @NotNull
    public static final Observable<MenuItemActionViewEvent> actionViewEvents(@NotNull MenuItem receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Observable<MenuItemActionViewEvent> actionViewEvents = RxMenuItemCompat.actionViewEvents(receiver);
        Intrinsics.checkExpressionValueIsNotNull(actionViewEvents, "RxMenuItemCompat.actionViewEvents(this)");
        return actionViewEvents;
    }

    @NotNull
    public static final Observable<MenuItemActionViewEvent> actionViewEvents(@NotNull MenuItem receiver, @NotNull Predicate<? super MenuItemActionViewEvent> handled) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(handled, "handled");
        Observable<MenuItemActionViewEvent> actionViewEvents = RxMenuItemCompat.actionViewEvents(receiver, handled);
        Intrinsics.checkExpressionValueIsNotNull(actionViewEvents, "RxMenuItemCompat.actionViewEvents(this, handled)");
        return actionViewEvents;
    }
}
