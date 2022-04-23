package com.jakewharton.rxbinding2.widget;

import android.support.annotation.NonNull;
import android.widget.AbsListView;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/widget/AutoValue_AbsListViewScrollEvent.class */
public final class AutoValue_AbsListViewScrollEvent extends AbsListViewScrollEvent {
    private final int firstVisibleItem;
    private final int scrollState;
    private final int totalItemCount;
    private final AbsListView view;
    private final int visibleItemCount;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AutoValue_AbsListViewScrollEvent(AbsListView absListView, int i, int i2, int i3, int i4) {
        if (absListView == null) {
            throw new NullPointerException("Null view");
        }
        this.view = absListView;
        this.scrollState = i;
        this.firstVisibleItem = i2;
        this.visibleItemCount = i3;
        this.totalItemCount = i4;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbsListViewScrollEvent)) {
            return false;
        }
        AbsListViewScrollEvent absListViewScrollEvent = (AbsListViewScrollEvent) obj;
        if (!(this.view.equals(absListViewScrollEvent.view()) && this.scrollState == absListViewScrollEvent.scrollState() && this.firstVisibleItem == absListViewScrollEvent.firstVisibleItem() && this.visibleItemCount == absListViewScrollEvent.visibleItemCount() && this.totalItemCount == absListViewScrollEvent.totalItemCount())) {
            z = false;
        }
        return z;
    }

    @Override // com.jakewharton.rxbinding2.widget.AbsListViewScrollEvent
    public int firstVisibleItem() {
        return this.firstVisibleItem;
    }

    public int hashCode() {
        return ((((((((this.view.hashCode() ^ 1000003) * 1000003) ^ this.scrollState) * 1000003) ^ this.firstVisibleItem) * 1000003) ^ this.visibleItemCount) * 1000003) ^ this.totalItemCount;
    }

    @Override // com.jakewharton.rxbinding2.widget.AbsListViewScrollEvent
    public int scrollState() {
        return this.scrollState;
    }

    public String toString() {
        return "AbsListViewScrollEvent{view=" + this.view + ", scrollState=" + this.scrollState + ", firstVisibleItem=" + this.firstVisibleItem + ", visibleItemCount=" + this.visibleItemCount + ", totalItemCount=" + this.totalItemCount + "}";
    }

    @Override // com.jakewharton.rxbinding2.widget.AbsListViewScrollEvent
    public int totalItemCount() {
        return this.totalItemCount;
    }

    @Override // com.jakewharton.rxbinding2.widget.AbsListViewScrollEvent
    @NonNull
    public AbsListView view() {
        return this.view;
    }

    @Override // com.jakewharton.rxbinding2.widget.AbsListViewScrollEvent
    public int visibleItemCount() {
        return this.visibleItemCount;
    }
}
