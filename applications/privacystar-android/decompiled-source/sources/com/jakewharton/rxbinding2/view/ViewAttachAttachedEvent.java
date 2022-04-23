package com.jakewharton.rxbinding2.view;

import android.support.annotation.CheckResult;
import android.support.annotation.NonNull;
import android.view.View;
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/view/ViewAttachAttachedEvent.class */
public abstract class ViewAttachAttachedEvent extends ViewAttachEvent {
    @CheckResult
    @NonNull
    public static ViewAttachAttachedEvent create(@NonNull View view) {
        return new AutoValue_ViewAttachAttachedEvent(view);
    }
}
