package com.jakewharton.rxbinding2.widget;

import android.support.annotation.NonNull;
import android.widget.TextView;
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/widget/AutoValue_TextViewBeforeTextChangeEvent.class */
final class AutoValue_TextViewBeforeTextChangeEvent extends TextViewBeforeTextChangeEvent {
    private final int after;
    private final int count;
    private final int start;
    private final CharSequence text;
    private final TextView view;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AutoValue_TextViewBeforeTextChangeEvent(TextView textView, CharSequence charSequence, int i, int i2, int i3) {
        if (textView == null) {
            throw new NullPointerException("Null view");
        }
        this.view = textView;
        if (charSequence == null) {
            throw new NullPointerException("Null text");
        }
        this.text = charSequence;
        this.start = i;
        this.count = i2;
        this.after = i3;
    }

    @Override // com.jakewharton.rxbinding2.widget.TextViewBeforeTextChangeEvent
    public int after() {
        return this.after;
    }

    @Override // com.jakewharton.rxbinding2.widget.TextViewBeforeTextChangeEvent
    public int count() {
        return this.count;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof TextViewBeforeTextChangeEvent)) {
            return false;
        }
        TextViewBeforeTextChangeEvent textViewBeforeTextChangeEvent = (TextViewBeforeTextChangeEvent) obj;
        if (!(this.view.equals(textViewBeforeTextChangeEvent.view()) && this.text.equals(textViewBeforeTextChangeEvent.text()) && this.start == textViewBeforeTextChangeEvent.start() && this.count == textViewBeforeTextChangeEvent.count() && this.after == textViewBeforeTextChangeEvent.after())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((((((((this.view.hashCode() ^ 1000003) * 1000003) ^ this.text.hashCode()) * 1000003) ^ this.start) * 1000003) ^ this.count) * 1000003) ^ this.after;
    }

    @Override // com.jakewharton.rxbinding2.widget.TextViewBeforeTextChangeEvent
    public int start() {
        return this.start;
    }

    @Override // com.jakewharton.rxbinding2.widget.TextViewBeforeTextChangeEvent
    @NonNull
    public CharSequence text() {
        return this.text;
    }

    public String toString() {
        return "TextViewBeforeTextChangeEvent{view=" + this.view + ", text=" + ((Object) this.text) + ", start=" + this.start + ", count=" + this.count + ", after=" + this.after + "}";
    }

    @Override // com.jakewharton.rxbinding2.widget.TextViewBeforeTextChangeEvent
    @NonNull
    public TextView view() {
        return this.view;
    }
}
