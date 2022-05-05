package com.jakewharton.rxbinding2.widget;

import android.view.MenuItem;
import android.widget.Toolbar;
import com.jakewharton.rxbinding2.internal.VoidToUnit;
import io.reactivex.Observable;
import io.reactivex.functions.Consumer;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 0}, m255d1 = {"��(\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\r\n��\n\u0002\u0010\b\n\u0002\b\u0003\u001a\u0013\u0010��\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u0086\b\u001a\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00050\u0001*\u00020\u0003H\u0086\b\u001a\u0017\u0010\u0006\u001a\f\u0012\b\b��\u0012\u0004\u0018\u00010\b0\u0007*\u00020\u0003H\u0086\b\u001a\u0015\u0010\t\u001a\n\u0012\u0006\b��\u0012\u00020\n0\u0007*\u00020\u0003H\u0086\b\u001a\u0017\u0010\u000b\u001a\f\u0012\b\b��\u0012\u0004\u0018\u00010\b0\u0007*\u00020\u0003H\u0086\b\u001a\u0015\u0010\f\u001a\n\u0012\u0006\b��\u0012\u00020\n0\u0007*\u00020\u0003H\u0086\b¨\u0006\r"}, m254d2 = {"itemClicks", "Lio/reactivex/Observable;", "Landroid/view/MenuItem;", "Landroid/widget/Toolbar;", "navigationClicks", "", "subtitle", "Lio/reactivex/functions/Consumer;", "", "subtitleRes", "", "title", "titleRes", "rxbinding2-kotlin"}, m253k = 2, m252mv = {1, 1, 1})
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/widget/RxToolbarKt.class */
public final class RxToolbarKt {
    @NotNull
    public static final Observable<MenuItem> itemClicks(@NotNull Toolbar receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Observable<MenuItem> itemClicks = RxToolbar.itemClicks(receiver);
        Intrinsics.checkExpressionValueIsNotNull(itemClicks, "RxToolbar.itemClicks(this)");
        return itemClicks;
    }

    @NotNull
    public static final Observable<Unit> navigationClicks(@NotNull Toolbar receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Observable map = RxToolbar.navigationClicks(receiver).map(VoidToUnit.INSTANCE);
        Intrinsics.checkExpressionValueIsNotNull(map, "RxToolbar.navigationClicks(this).map(VoidToUnit)");
        return map;
    }

    @NotNull
    public static final Consumer<? super CharSequence> subtitle(@NotNull Toolbar receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Consumer<? super CharSequence> subtitle = RxToolbar.subtitle(receiver);
        Intrinsics.checkExpressionValueIsNotNull(subtitle, "RxToolbar.subtitle(this)");
        return subtitle;
    }

    @NotNull
    public static final Consumer<? super Integer> subtitleRes(@NotNull Toolbar receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Consumer<? super Integer> subtitleRes = RxToolbar.subtitleRes(receiver);
        Intrinsics.checkExpressionValueIsNotNull(subtitleRes, "RxToolbar.subtitleRes(this)");
        return subtitleRes;
    }

    @NotNull
    public static final Consumer<? super CharSequence> title(@NotNull Toolbar receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Consumer<? super CharSequence> title = RxToolbar.title(receiver);
        Intrinsics.checkExpressionValueIsNotNull(title, "RxToolbar.title(this)");
        return title;
    }

    @NotNull
    public static final Consumer<? super Integer> titleRes(@NotNull Toolbar receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Consumer<? super Integer> titleRes = RxToolbar.titleRes(receiver);
        Intrinsics.checkExpressionValueIsNotNull(titleRes, "RxToolbar.titleRes(this)");
        return titleRes;
    }
}
