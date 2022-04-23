package com.callapp.contacts.activity.fastscroll;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.activity.fastscroll.FastScroller;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/fastscroll/FastScrollRecyclerView.class */
public class FastScrollRecyclerView extends RecyclerView {
    private FastScroller Q;

    public FastScrollRecyclerView(Context context) {
        super(context);
        a(context, (AttributeSet) null);
        setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
    }

    public FastScrollRecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FastScrollRecyclerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context, attributeSet);
    }

    private void a(Context context, AttributeSet attributeSet) {
        this.Q = new FastScroller(context, attributeSet);
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        FastScroller fastScroller = this.Q;
        fastScroller.f12817a = this;
        if (fastScroller.f12817a != null) {
            fastScroller.f12817a.a(fastScroller.f12818b);
        }
        ViewParent parent = getParent();
        if (parent instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) parent;
            ViewParent parent2 = this.Q.getParent();
            if (parent2 != null) {
                ((ViewGroup) parent2).removeView(this.Q);
            }
            viewGroup.addView(this.Q);
            this.Q.setLayoutParams(viewGroup);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        FastScroller fastScroller = this.Q;
        if (fastScroller.f12817a != null) {
            fastScroller.f12817a.b(fastScroller.f12818b);
            fastScroller.f12817a = null;
        }
        super.onDetachedFromWindow();
    }

    public void setBubbleColor(int i) {
        this.Q.setBubbleColor(i);
    }

    public void setBubbleTextColor(int i) {
        this.Q.setBubbleTextColor(i);
    }

    public void setFastScrollEnabled(boolean z) {
        this.Q.setEnabled(z);
    }

    public void setFastScrollStateChangeListener(FastScrollStateChangeListener fastScrollStateChangeListener) {
        this.Q.setFastScrollStateChangeListener(fastScrollStateChangeListener);
    }

    public void setFastScrollerIndexer(FastScroller.SectionIndexer sectionIndexer) {
        this.Q.setSectionIndexer(sectionIndexer);
    }

    public void setHandleColor(int i) {
        this.Q.setHandleColor(i);
    }

    public void setHideScrollbar(boolean z) {
        this.Q.setHideScrollbar(z);
    }

    public void setTrackColor(int i) {
        this.Q.setTrackColor(i);
    }

    public void setTrackVisible(boolean z) {
        this.Q.setTrackVisible(z);
    }

    public void setWideClickArea(boolean z) {
        this.Q.setFastScrollWidePadding(z);
    }
}
