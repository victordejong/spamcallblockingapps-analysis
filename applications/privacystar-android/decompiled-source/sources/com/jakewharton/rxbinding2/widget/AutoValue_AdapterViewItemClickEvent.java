package com.jakewharton.rxbinding2.widget;

import android.support.annotation.NonNull;
import android.view.View;
import android.widget.AdapterView;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/widget/AutoValue_AdapterViewItemClickEvent.class */
public final class AutoValue_AdapterViewItemClickEvent extends AdapterViewItemClickEvent {
    private final View clickedView;

    /* renamed from: id */
    private final long f219id;
    private final int position;
    private final AdapterView<?> view;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AutoValue_AdapterViewItemClickEvent(AdapterView<?> adapterView, View view, int i, long j) {
        if (adapterView == null) {
            throw new NullPointerException("Null view");
        }
        this.view = adapterView;
        if (view == null) {
            throw new NullPointerException("Null clickedView");
        }
        this.clickedView = view;
        this.position = i;
        this.f219id = j;
    }

    @Override // com.jakewharton.rxbinding2.widget.AdapterViewItemClickEvent
    @NonNull
    public View clickedView() {
        return this.clickedView;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AdapterViewItemClickEvent)) {
            return false;
        }
        AdapterViewItemClickEvent adapterViewItemClickEvent = (AdapterViewItemClickEvent) obj;
        if (!this.view.equals(adapterViewItemClickEvent.view()) || !this.clickedView.equals(adapterViewItemClickEvent.clickedView()) || this.position != adapterViewItemClickEvent.position() || this.f219id != adapterViewItemClickEvent.mo322id()) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return (int) (((((((this.view.hashCode() ^ 1000003) * 1000003) ^ this.clickedView.hashCode()) * 1000003) ^ this.position) * 1000003) ^ ((this.f219id >>> 32) ^ this.f219id));
    }

    @Override // com.jakewharton.rxbinding2.widget.AdapterViewItemClickEvent
    /* renamed from: id */
    public long mo322id() {
        return this.f219id;
    }

    @Override // com.jakewharton.rxbinding2.widget.AdapterViewItemClickEvent
    public int position() {
        return this.position;
    }

    public String toString() {
        return "AdapterViewItemClickEvent{view=" + this.view + ", clickedView=" + this.clickedView + ", position=" + this.position + ", id=" + this.f219id + "}";
    }

    @Override // com.jakewharton.rxbinding2.widget.AdapterViewItemClickEvent
    @NonNull
    public AdapterView<?> view() {
        return this.view;
    }
}
