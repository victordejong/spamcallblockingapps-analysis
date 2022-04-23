package com.jakewharton.rxbinding2.widget;

import android.support.annotation.CheckResult;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.Editable;
import android.widget.TextView;
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/widget/TextViewAfterTextChangeEvent.class */
public abstract class TextViewAfterTextChangeEvent {
    @CheckResult
    @NonNull
    public static TextViewAfterTextChangeEvent create(@NonNull TextView textView, @Nullable Editable editable) {
        return new AutoValue_TextViewAfterTextChangeEvent(textView, editable);
    }

    @Nullable
    public abstract Editable editable();

    @NonNull
    public abstract TextView view();
}
