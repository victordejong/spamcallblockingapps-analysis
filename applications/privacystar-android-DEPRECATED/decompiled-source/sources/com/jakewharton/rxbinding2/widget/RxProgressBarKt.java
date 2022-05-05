package com.jakewharton.rxbinding2.widget;

import android.support.p001v4.app.NotificationCompat;
import android.widget.ProgressBar;
import io.reactivex.functions.Consumer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 0}, m255d1 = {"��\u001a\n��\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\u001a\u0015\u0010��\u001a\n\u0012\u0006\b��\u0012\u00020\u00020\u0001*\u00020\u0003H\u0086\b\u001a\u0015\u0010\u0004\u001a\n\u0012\u0006\b��\u0012\u00020\u00020\u0001*\u00020\u0003H\u0086\b\u001a\u0015\u0010\u0005\u001a\n\u0012\u0006\b��\u0012\u00020\u00060\u0001*\u00020\u0003H\u0086\b\u001a\u0015\u0010\u0007\u001a\n\u0012\u0006\b��\u0012\u00020\u00020\u0001*\u00020\u0003H\u0086\b\u001a\u0015\u0010\b\u001a\n\u0012\u0006\b��\u0012\u00020\u00020\u0001*\u00020\u0003H\u0086\b\u001a\u0015\u0010\t\u001a\n\u0012\u0006\b��\u0012\u00020\u00020\u0001*\u00020\u0003H\u0086\b¨\u0006\n"}, m254d2 = {"incrementProgressBy", "Lio/reactivex/functions/Consumer;", "", "Landroid/widget/ProgressBar;", "incrementSecondaryProgressBy", "indeterminate", "", "max", NotificationCompat.CATEGORY_PROGRESS, "secondaryProgress", "rxbinding2-kotlin"}, m253k = 2, m252mv = {1, 1, 1})
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/widget/RxProgressBarKt.class */
public final class RxProgressBarKt {
    @NotNull
    public static final Consumer<? super Integer> incrementProgressBy(@NotNull ProgressBar receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Consumer<? super Integer> incrementProgressBy = RxProgressBar.incrementProgressBy(receiver);
        Intrinsics.checkExpressionValueIsNotNull(incrementProgressBy, "RxProgressBar.incrementProgressBy(this)");
        return incrementProgressBy;
    }

    @NotNull
    public static final Consumer<? super Integer> incrementSecondaryProgressBy(@NotNull ProgressBar receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Consumer<? super Integer> incrementSecondaryProgressBy = RxProgressBar.incrementSecondaryProgressBy(receiver);
        Intrinsics.checkExpressionValueIsNotNull(incrementSecondaryProgressBy, "RxProgressBar.incrementSecondaryProgressBy(this)");
        return incrementSecondaryProgressBy;
    }

    @NotNull
    public static final Consumer<? super Boolean> indeterminate(@NotNull ProgressBar receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Consumer<? super Boolean> indeterminate = RxProgressBar.indeterminate(receiver);
        Intrinsics.checkExpressionValueIsNotNull(indeterminate, "RxProgressBar.indeterminate(this)");
        return indeterminate;
    }

    @NotNull
    public static final Consumer<? super Integer> max(@NotNull ProgressBar receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Consumer<? super Integer> max = RxProgressBar.max(receiver);
        Intrinsics.checkExpressionValueIsNotNull(max, "RxProgressBar.max(this)");
        return max;
    }

    @NotNull
    public static final Consumer<? super Integer> progress(@NotNull ProgressBar receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Consumer<? super Integer> progress = RxProgressBar.progress(receiver);
        Intrinsics.checkExpressionValueIsNotNull(progress, "RxProgressBar.progress(this)");
        return progress;
    }

    @NotNull
    public static final Consumer<? super Integer> secondaryProgress(@NotNull ProgressBar receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Consumer<? super Integer> secondaryProgress = RxProgressBar.secondaryProgress(receiver);
        Intrinsics.checkExpressionValueIsNotNull(secondaryProgress, "RxProgressBar.secondaryProgress(this)");
        return secondaryProgress;
    }
}
