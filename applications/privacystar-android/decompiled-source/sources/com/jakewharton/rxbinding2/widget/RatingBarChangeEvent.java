package com.jakewharton.rxbinding2.widget;

import android.support.annotation.CheckResult;
import android.support.annotation.NonNull;
import android.widget.RatingBar;
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/widget/RatingBarChangeEvent.class */
public abstract class RatingBarChangeEvent {
    @CheckResult
    @NonNull
    public static RatingBarChangeEvent create(@NonNull RatingBar ratingBar, float f, boolean z) {
        return new AutoValue_RatingBarChangeEvent(ratingBar, f, z);
    }

    public abstract boolean fromUser();

    public abstract float rating();

    @NonNull
    public abstract RatingBar view();
}
