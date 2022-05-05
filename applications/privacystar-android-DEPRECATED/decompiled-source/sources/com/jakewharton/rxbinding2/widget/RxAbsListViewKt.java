package com.jakewharton.rxbinding2.widget;

import android.widget.AbsListView;
import io.reactivex.Observable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 0}, m255d1 = {"��\u0010\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\u001a\u0013\u0010��\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u0086\b¨\u0006\u0004"}, m254d2 = {"scrollEvents", "Lio/reactivex/Observable;", "Lcom/jakewharton/rxbinding2/widget/AbsListViewScrollEvent;", "Landroid/widget/AbsListView;", "rxbinding2-kotlin"}, m253k = 2, m252mv = {1, 1, 1})
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/widget/RxAbsListViewKt.class */
public final class RxAbsListViewKt {
    @NotNull
    public static final Observable<AbsListViewScrollEvent> scrollEvents(@NotNull AbsListView receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Observable<AbsListViewScrollEvent> scrollEvents = RxAbsListView.scrollEvents(receiver);
        Intrinsics.checkExpressionValueIsNotNull(scrollEvents, "RxAbsListView.scrollEvents(this)");
        return scrollEvents;
    }
}
