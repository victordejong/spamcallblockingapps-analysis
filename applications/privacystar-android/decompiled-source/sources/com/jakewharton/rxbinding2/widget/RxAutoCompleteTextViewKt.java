package com.jakewharton.rxbinding2.widget;

import android.widget.AutoCompleteTextView;
import io.reactivex.Observable;
import io.reactivex.functions.Consumer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 0}, m255d1 = {"�� \n��\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\u001a\u0015\u0010��\u001a\n\u0012\u0006\b��\u0012\u00020\u00020\u0001*\u00020\u0003H\u0086\b\u001a\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005*\u00020\u0003H\u0086\b\u001a\u0015\u0010\u0007\u001a\n\u0012\u0006\b��\u0012\u00020\b0\u0001*\u00020\u0003H\u0086\b¨\u0006\t"}, m254d2 = {"completionHint", "Lio/reactivex/functions/Consumer;", "", "Landroid/widget/AutoCompleteTextView;", "itemClickEvents", "Lio/reactivex/Observable;", "Lcom/jakewharton/rxbinding2/widget/AdapterViewItemClickEvent;", "threshold", "", "rxbinding2-kotlin"}, m253k = 2, m252mv = {1, 1, 1})
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/widget/RxAutoCompleteTextViewKt.class */
public final class RxAutoCompleteTextViewKt {
    @NotNull
    public static final Consumer<? super CharSequence> completionHint(@NotNull AutoCompleteTextView receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Consumer<? super CharSequence> completionHint = RxAutoCompleteTextView.completionHint(receiver);
        Intrinsics.checkExpressionValueIsNotNull(completionHint, "RxAutoCompleteTextView.completionHint(this)");
        return completionHint;
    }

    @NotNull
    public static final Observable<AdapterViewItemClickEvent> itemClickEvents(@NotNull AutoCompleteTextView receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Observable<AdapterViewItemClickEvent> itemClickEvents = RxAutoCompleteTextView.itemClickEvents(receiver);
        Intrinsics.checkExpressionValueIsNotNull(itemClickEvents, "RxAutoCompleteTextView.itemClickEvents(this)");
        return itemClickEvents;
    }

    @NotNull
    public static final Consumer<? super Integer> threshold(@NotNull AutoCompleteTextView receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Consumer<? super Integer> threshold = RxAutoCompleteTextView.threshold(receiver);
        Intrinsics.checkExpressionValueIsNotNull(threshold, "RxAutoCompleteTextView.threshold(this)");
        return threshold;
    }
}
