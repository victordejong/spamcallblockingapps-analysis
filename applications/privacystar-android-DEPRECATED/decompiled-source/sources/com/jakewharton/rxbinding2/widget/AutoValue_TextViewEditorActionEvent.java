package com.jakewharton.rxbinding2.widget;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.KeyEvent;
import android.widget.TextView;
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/widget/AutoValue_TextViewEditorActionEvent.class */
final class AutoValue_TextViewEditorActionEvent extends TextViewEditorActionEvent {
    private final int actionId;
    private final KeyEvent keyEvent;
    private final TextView view;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AutoValue_TextViewEditorActionEvent(TextView textView, int i, @Nullable KeyEvent keyEvent) {
        if (textView == null) {
            throw new NullPointerException("Null view");
        }
        this.view = textView;
        this.actionId = i;
        this.keyEvent = keyEvent;
    }

    @Override // com.jakewharton.rxbinding2.widget.TextViewEditorActionEvent
    public int actionId() {
        return this.actionId;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof TextViewEditorActionEvent)) {
            return false;
        }
        TextViewEditorActionEvent textViewEditorActionEvent = (TextViewEditorActionEvent) obj;
        if (!this.view.equals(textViewEditorActionEvent.view()) || this.actionId != textViewEditorActionEvent.actionId() || (this.keyEvent != null ? !this.keyEvent.equals(textViewEditorActionEvent.keyEvent()) : textViewEditorActionEvent.keyEvent() != null)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int hashCode = this.view.hashCode();
        return ((((hashCode ^ 1000003) * 1000003) ^ this.actionId) * 1000003) ^ (this.keyEvent == null ? 0 : this.keyEvent.hashCode());
    }

    @Override // com.jakewharton.rxbinding2.widget.TextViewEditorActionEvent
    @Nullable
    public KeyEvent keyEvent() {
        return this.keyEvent;
    }

    public String toString() {
        return "TextViewEditorActionEvent{view=" + this.view + ", actionId=" + this.actionId + ", keyEvent=" + this.keyEvent + "}";
    }

    @Override // com.jakewharton.rxbinding2.widget.TextViewEditorActionEvent
    @NonNull
    public TextView view() {
        return this.view;
    }
}
