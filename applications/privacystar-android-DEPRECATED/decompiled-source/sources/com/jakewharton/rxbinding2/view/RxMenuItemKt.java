package com.jakewharton.rxbinding2.view;

import android.graphics.drawable.Drawable;
import android.view.MenuItem;
import com.jakewharton.rxbinding2.internal.VoidToUnit;
import com.privacystar.core.data.sqlite.p008db.blocking_options.BlockingOptionsContract;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import io.reactivex.Observable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Predicate;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 0}, m255d1 = {"��<\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0010\r\n\u0002\b\u0003\u001a\u0013\u0010��\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u0086\b\u001a#\u0010��\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u00032\u000e\u0010\u0004\u001a\n\u0012\u0006\b��\u0012\u00020\u00020\u0005H\u0086\b\u001a\u0015\u0010\u0006\u001a\n\u0012\u0006\b��\u0012\u00020\b0\u0007*\u00020\u0003H\u0086\b\u001a\u0013\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u0001*\u00020\u0003H\u0086\b\u001a#\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u0001*\u00020\u00032\u000e\u0010\u0004\u001a\n\u0012\u0006\b��\u0012\u00020\u00030\u0005H\u0086\b\u001a\u0015\u0010\u000b\u001a\n\u0012\u0006\b��\u0012\u00020\b0\u0007*\u00020\u0003H\u0086\b\u001a\u0015\u0010\f\u001a\n\u0012\u0006\b��\u0012\u00020\r0\u0007*\u00020\u0003H\u0086\b\u001a\u0015\u0010\u000e\u001a\n\u0012\u0006\b��\u0012\u00020\u000f0\u0007*\u00020\u0003H\u0086\b\u001a\u0015\u0010\u0010\u001a\n\u0012\u0006\b��\u0012\u00020\u00110\u0007*\u00020\u0003H\u0086\b\u001a\u0015\u0010\u0012\u001a\n\u0012\u0006\b��\u0012\u00020\u000f0\u0007*\u00020\u0003H\u0086\b\u001a\u0015\u0010\u0013\u001a\n\u0012\u0006\b��\u0012\u00020\b0\u0007*\u00020\u0003H\u0086\b¨\u0006\u0014"}, m254d2 = {"actionViewEvents", "Lio/reactivex/Observable;", "Lcom/jakewharton/rxbinding2/view/MenuItemActionViewEvent;", "Landroid/view/MenuItem;", "handled", "Lio/reactivex/functions/Predicate;", BlockingOptionsContract.BlockingOptionsEntry.COLUMN_CHECKED, "Lio/reactivex/functions/Consumer;", "", "clicks", "", "enabled", SettingsJsonConstants.APP_ICON_KEY, "Landroid/graphics/drawable/Drawable;", "iconRes", "", "title", "", "titleRes", "visible", "rxbinding2-kotlin"}, m253k = 2, m252mv = {1, 1, 1})
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/view/RxMenuItemKt.class */
public final class RxMenuItemKt {
    @NotNull
    public static final Observable<MenuItemActionViewEvent> actionViewEvents(@NotNull MenuItem receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Observable<MenuItemActionViewEvent> actionViewEvents = RxMenuItem.actionViewEvents(receiver);
        Intrinsics.checkExpressionValueIsNotNull(actionViewEvents, "RxMenuItem.actionViewEvents(this)");
        return actionViewEvents;
    }

    @NotNull
    public static final Observable<MenuItemActionViewEvent> actionViewEvents(@NotNull MenuItem receiver, @NotNull Predicate<? super MenuItemActionViewEvent> handled) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(handled, "handled");
        Observable<MenuItemActionViewEvent> actionViewEvents = RxMenuItem.actionViewEvents(receiver, handled);
        Intrinsics.checkExpressionValueIsNotNull(actionViewEvents, "RxMenuItem.actionViewEvents(this, handled)");
        return actionViewEvents;
    }

    @NotNull
    public static final Consumer<? super Boolean> checked(@NotNull MenuItem receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Consumer<? super Boolean> checked = RxMenuItem.checked(receiver);
        Intrinsics.checkExpressionValueIsNotNull(checked, "RxMenuItem.checked(this)");
        return checked;
    }

    @NotNull
    public static final Observable<Unit> clicks(@NotNull MenuItem receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Observable map = RxMenuItem.clicks(receiver).map(VoidToUnit.INSTANCE);
        Intrinsics.checkExpressionValueIsNotNull(map, "RxMenuItem.clicks(this).map(VoidToUnit)");
        return map;
    }

    @NotNull
    public static final Observable<Unit> clicks(@NotNull MenuItem receiver, @NotNull Predicate<? super MenuItem> handled) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(handled, "handled");
        Observable map = RxMenuItem.clicks(receiver, handled).map(VoidToUnit.INSTANCE);
        Intrinsics.checkExpressionValueIsNotNull(map, "RxMenuItem.clicks(this, handled).map(VoidToUnit)");
        return map;
    }

    @NotNull
    public static final Consumer<? super Boolean> enabled(@NotNull MenuItem receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Consumer<? super Boolean> enabled = RxMenuItem.enabled(receiver);
        Intrinsics.checkExpressionValueIsNotNull(enabled, "RxMenuItem.enabled(this)");
        return enabled;
    }

    @NotNull
    public static final Consumer<? super Drawable> icon(@NotNull MenuItem receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Consumer<? super Drawable> icon = RxMenuItem.icon(receiver);
        Intrinsics.checkExpressionValueIsNotNull(icon, "RxMenuItem.icon(this)");
        return icon;
    }

    @NotNull
    public static final Consumer<? super Integer> iconRes(@NotNull MenuItem receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Consumer<? super Integer> iconRes = RxMenuItem.iconRes(receiver);
        Intrinsics.checkExpressionValueIsNotNull(iconRes, "RxMenuItem.iconRes(this)");
        return iconRes;
    }

    @NotNull
    public static final Consumer<? super CharSequence> title(@NotNull MenuItem receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Consumer<? super CharSequence> title = RxMenuItem.title(receiver);
        Intrinsics.checkExpressionValueIsNotNull(title, "RxMenuItem.title(this)");
        return title;
    }

    @NotNull
    public static final Consumer<? super Integer> titleRes(@NotNull MenuItem receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Consumer<? super Integer> titleRes = RxMenuItem.titleRes(receiver);
        Intrinsics.checkExpressionValueIsNotNull(titleRes, "RxMenuItem.titleRes(this)");
        return titleRes;
    }

    @NotNull
    public static final Consumer<? super Boolean> visible(@NotNull MenuItem receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Consumer<? super Boolean> visible = RxMenuItem.visible(receiver);
        Intrinsics.checkExpressionValueIsNotNull(visible, "RxMenuItem.visible(this)");
        return visible;
    }
}
