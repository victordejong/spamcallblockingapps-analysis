package com.jakewharton.rxbinding2.support.p006v4.widget;

import android.support.p001v4.widget.NestedScrollView;
import com.jakewharton.rxbinding2.view.ViewScrollChangeEvent;
import io.reactivex.Observable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 0}, m255d1 = {"��\u0010\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\u001a\u0013\u0010��\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u0086\b¨\u0006\u0004"}, m254d2 = {"scrollChangeEvents", "Lio/reactivex/Observable;", "Lcom/jakewharton/rxbinding2/view/ViewScrollChangeEvent;", "Landroid/support/v4/widget/NestedScrollView;", "rxbinding2-support-v4-kotlin"}, m253k = 2, m252mv = {1, 1, 1})
/* renamed from: com.jakewharton.rxbinding2.support.v4.widget.RxNestedScrollViewKt */
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/support/v4/widget/RxNestedScrollViewKt.class */
public final class RxNestedScrollViewKt {
    @NotNull
    public static final Observable<ViewScrollChangeEvent> scrollChangeEvents(@NotNull NestedScrollView receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Observable<ViewScrollChangeEvent> scrollChangeEvents = RxNestedScrollView.scrollChangeEvents(receiver);
        Intrinsics.checkExpressionValueIsNotNull(scrollChangeEvents, "RxNestedScrollView.scrollChangeEvents(this)");
        return scrollChangeEvents;
    }
}
