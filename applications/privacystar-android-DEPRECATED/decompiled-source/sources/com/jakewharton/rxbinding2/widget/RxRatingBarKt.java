package com.jakewharton.rxbinding2.widget;

import android.widget.RatingBar;
import com.jakewharton.rxbinding2.InitialValueObservable;
import io.reactivex.functions.Consumer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 0}, m255d1 = {"��\"\n��\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0007\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0015\u0010��\u001a\n\u0012\u0006\b��\u0012\u00020\u00020\u0001*\u00020\u0003H\u0086\b\u001a\u0015\u0010\u0004\u001a\n\u0012\u0006\b��\u0012\u00020\u00050\u0001*\u00020\u0003H\u0086\b\u001a\u0013\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007*\u00020\u0003H\u0086\b\u001a\u0013\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007*\u00020\u0003H\u0086\b¨\u0006\n"}, m254d2 = {"isIndicator", "Lio/reactivex/functions/Consumer;", "", "Landroid/widget/RatingBar;", "rating", "", "ratingChangeEvents", "Lcom/jakewharton/rxbinding2/InitialValueObservable;", "Lcom/jakewharton/rxbinding2/widget/RatingBarChangeEvent;", "ratingChanges", "rxbinding2-kotlin"}, m253k = 2, m252mv = {1, 1, 1})
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/widget/RxRatingBarKt.class */
public final class RxRatingBarKt {
    @NotNull
    public static final Consumer<? super Boolean> isIndicator(@NotNull RatingBar receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Consumer<? super Boolean> isIndicator = RxRatingBar.isIndicator(receiver);
        Intrinsics.checkExpressionValueIsNotNull(isIndicator, "RxRatingBar.isIndicator(this)");
        return isIndicator;
    }

    @NotNull
    public static final Consumer<? super Float> rating(@NotNull RatingBar receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Consumer<? super Float> rating = RxRatingBar.rating(receiver);
        Intrinsics.checkExpressionValueIsNotNull(rating, "RxRatingBar.rating(this)");
        return rating;
    }

    @NotNull
    public static final InitialValueObservable<RatingBarChangeEvent> ratingChangeEvents(@NotNull RatingBar receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        InitialValueObservable<RatingBarChangeEvent> ratingChangeEvents = RxRatingBar.ratingChangeEvents(receiver);
        Intrinsics.checkExpressionValueIsNotNull(ratingChangeEvents, "RxRatingBar.ratingChangeEvents(this)");
        return ratingChangeEvents;
    }

    @NotNull
    public static final InitialValueObservable<Float> ratingChanges(@NotNull RatingBar receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        InitialValueObservable<Float> ratingChanges = RxRatingBar.ratingChanges(receiver);
        Intrinsics.checkExpressionValueIsNotNull(ratingChanges, "RxRatingBar.ratingChanges(this)");
        return ratingChanges;
    }
}
