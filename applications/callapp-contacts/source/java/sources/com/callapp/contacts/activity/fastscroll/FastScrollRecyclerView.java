package com.callapp.contacts.activity.fastscroll;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.activity.fastscroll.FastScroller;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/fastscroll/FastScrollRecyclerView.class */
public class FastScrollRecyclerView extends RecyclerView {

    /* renamed from: Q */
    private FastScroller f22905Q;

    public FastScrollRecyclerView(Context context) {
        super(context);
        m30338a(context, (AttributeSet) null);
        setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
    }

    public FastScrollRecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FastScrollRecyclerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m30338a(context, attributeSet);
    }

    /* renamed from: a */
    private void m30338a(Context context, AttributeSet attributeSet) {
        this.f22905Q = new FastScroller(context, attributeSet);
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        FastScroller fastScroller = this.f22905Q;
        fastScroller.f22906a = this;
        if (fastScroller.f22906a != null) {
            fastScroller.f22906a.m40478a(fastScroller.f22907b);
        }
        ViewParent parent = getParent();
        if (parent instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) parent;
            ViewParent parent2 = this.f22905Q.getParent();
            if (parent2 != null) {
                ((ViewGroup) parent2).removeView(this.f22905Q);
            }
            viewGroup.addView(this.f22905Q);
            this.f22905Q.setLayoutParams(viewGroup);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        FastScroller fastScroller = this.f22905Q;
        if (fastScroller.f22906a != null) {
            fastScroller.f22906a.m40459b(fastScroller.f22907b);
            fastScroller.f22906a = null;
        }
        super.onDetachedFromWindow();
    }

    public void setBubbleColor(int i) {
        this.f22905Q.setBubbleColor(i);
    }

    public void setBubbleTextColor(int i) {
        this.f22905Q.setBubbleTextColor(i);
    }

    public void setFastScrollEnabled(boolean z) {
        this.f22905Q.setEnabled(z);
    }

    public void setFastScrollStateChangeListener(FastScrollStateChangeListener fastScrollStateChangeListener) {
        this.f22905Q.setFastScrollStateChangeListener(fastScrollStateChangeListener);
    }

    public void setFastScrollerIndexer(FastScroller.SectionIndexer sectionIndexer) {
        this.f22905Q.setSectionIndexer(sectionIndexer);
    }

    public void setHandleColor(int i) {
        this.f22905Q.setHandleColor(i);
    }

    public void setHideScrollbar(boolean z) {
        this.f22905Q.setHideScrollbar(z);
    }

    public void setTrackColor(int i) {
        this.f22905Q.setTrackColor(i);
    }

    public void setTrackVisible(boolean z) {
        this.f22905Q.setTrackVisible(z);
    }

    public void setWideClickArea(boolean z) {
        this.f22905Q.setFastScrollWidePadding(z);
    }
}
