package com.jakewharton.rxbinding2.widget;

import android.support.annotation.CheckResult;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.KeyEvent;
import android.widget.TextView;
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/widget/TextViewEditorActionEvent.class */
public abstract class TextViewEditorActionEvent {
    @CheckResult
    @NonNull
    public static TextViewEditorActionEvent create(@NonNull TextView textView, int i, @Nullable KeyEvent keyEvent) {
        return new AutoValue_TextViewEditorActionEvent(textView, i, keyEvent);
    }

    public abstract int actionId();

    @Nullable
    public abstract KeyEvent keyEvent();

    @NonNull
    public abstract TextView view();
}
