package com.jakewharton.rxbinding2.support.p006v4.widget;

import android.support.p001v4.widget.SwipeRefreshLayout;
import com.jakewharton.rxbinding2.internal.VoidToUnit;
import io.reactivex.Observable;
import io.reactivex.functions.Consumer;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 0}, m255d1 = {"��\u001a\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n��\u001a\u0013\u0010��\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u0086\b\u001a\u0015\u0010\u0004\u001a\n\u0012\u0006\b��\u0012\u00020\u00060\u0005*\u00020\u0003H\u0086\b¨\u0006\u0007"}, m254d2 = {"refreshes", "Lio/reactivex/Observable;", "", "Landroid/support/v4/widget/SwipeRefreshLayout;", "refreshing", "Lio/reactivex/functions/Consumer;", "", "rxbinding2-support-v4-kotlin"}, m253k = 2, m252mv = {1, 1, 1})
/* renamed from: com.jakewharton.rxbinding2.support.v4.widget.RxSwipeRefreshLayoutKt */
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/support/v4/widget/RxSwipeRefreshLayoutKt.class */
public final class RxSwipeRefreshLayoutKt {
    @NotNull
    public static final Observable<Unit> refreshes(@NotNull SwipeRefreshLayout receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Observable map = RxSwipeRefreshLayout.refreshes(receiver).map(VoidToUnit.INSTANCE);
        Intrinsics.checkExpressionValueIsNotNull(map, "RxSwipeRefreshLayout.ref…hes(this).map(VoidToUnit)");
        return map;
    }

    @NotNull
    public static final Consumer<? super Boolean> refreshing(@NotNull SwipeRefreshLayout receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Consumer<? super Boolean> refreshing = RxSwipeRefreshLayout.refreshing(receiver);
        Intrinsics.checkExpressionValueIsNotNull(refreshing, "RxSwipeRefreshLayout.refreshing(this)");
        return refreshing;
    }
}
