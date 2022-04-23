package com.jakewharton.rxbinding2.view;

import android.support.annotation.NonNull;
import android.view.View;
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/view/AutoValue_ViewScrollChangeEvent.class */
final class AutoValue_ViewScrollChangeEvent extends ViewScrollChangeEvent {
    private final int oldScrollX;
    private final int oldScrollY;
    private final int scrollX;
    private final int scrollY;
    private final View view;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AutoValue_ViewScrollChangeEvent(View view, int i, int i2, int i3, int i4) {
        if (view == null) {
            throw new NullPointerException("Null view");
        }
        this.view = view;
        this.scrollX = i;
        this.scrollY = i2;
        this.oldScrollX = i3;
        this.oldScrollY = i4;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ViewScrollChangeEvent)) {
            return false;
        }
        ViewScrollChangeEvent viewScrollChangeEvent = (ViewScrollChangeEvent) obj;
        if (!(this.view.equals(viewScrollChangeEvent.view()) && this.scrollX == viewScrollChangeEvent.scrollX() && this.scrollY == viewScrollChangeEvent.scrollY() && this.oldScrollX == viewScrollChangeEvent.oldScrollX() && this.oldScrollY == viewScrollChangeEvent.oldScrollY())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((((((((this.view.hashCode() ^ 1000003) * 1000003) ^ this.scrollX) * 1000003) ^ this.scrollY) * 1000003) ^ this.oldScrollX) * 1000003) ^ this.oldScrollY;
    }

    @Override // com.jakewharton.rxbinding2.view.ViewScrollChangeEvent
    public int oldScrollX() {
        return this.oldScrollX;
    }

    @Override // com.jakewharton.rxbinding2.view.ViewScrollChangeEvent
    public int oldScrollY() {
        return this.oldScrollY;
    }

    @Override // com.jakewharton.rxbinding2.view.ViewScrollChangeEvent
    public int scrollX() {
        return this.scrollX;
    }

    @Override // com.jakewharton.rxbinding2.view.ViewScrollChangeEvent
    public int scrollY() {
        return this.scrollY;
    }

    public String toString() {
        return "ViewScrollChangeEvent{view=" + this.view + ", scrollX=" + this.scrollX + ", scrollY=" + this.scrollY + ", oldScrollX=" + this.oldScrollX + ", oldScrollY=" + this.oldScrollY + "}";
    }

    @Override // com.jakewharton.rxbinding2.view.ViewScrollChangeEvent
    @NonNull
    public View view() {
        return this.view;
    }
}
