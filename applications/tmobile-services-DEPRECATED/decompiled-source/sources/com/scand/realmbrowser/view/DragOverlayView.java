package com.scand.realmbrowser.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.DragEvent;
import android.view.View;
import androidx.core.content.res.ResourcesCompat;
import com.scand.realmbrowser.C1506R;
/* loaded from: classes-dex2jar.jar:com/scand/realmbrowser/view/DragOverlayView.class */
public class DragOverlayView extends View {

    /* renamed from: f */
    private Drawable f12546f;

    /* renamed from: g */
    private int f12547g;

    /* renamed from: h */
    private int f12548h;

    /* renamed from: i */
    private int f12549i;

    /* renamed from: j */
    private OnDragFinished f12550j;

    /* loaded from: classes-dex2jar.jar:com/scand/realmbrowser/view/DragOverlayView$OnDragFinished.class */
    public interface OnDragFinished {
        /* renamed from: b */
        void mo7687b(int i);
    }

    public DragOverlayView(Context context) {
        super(context);
        m7688a();
    }

    public DragOverlayView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m7688a();
    }

    public DragOverlayView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m7688a();
    }

    /* renamed from: a */
    private void m7688a() {
        this.f12546f = ResourcesCompat.m19613a(getResources(), C1506R.C1508drawable.realm_browser_dummy_drag_divider_vertical, getContext().getTheme());
        this.f12547g = getResources().getInteger(17694720);
    }

    @Override // android.view.View
    public boolean onDragEvent(DragEvent dragEvent) {
        int action = dragEvent.getAction();
        if (action == 1) {
            animate().alpha(1.0f).setDuration(this.f12547g).setListener(null);
            return true;
        } else if (action == 2) {
            setShadowPosition((int) dragEvent.getX());
            return true;
        } else if (action != 4) {
            return true;
        } else {
            OnDragFinished onDragFinished = this.f12550j;
            if (onDragFinished != null) {
                onDragFinished.mo7687b(this.f12548h);
            }
            this.f12548h = 0;
            this.f12549i = 0;
            animate().alpha(0.0f).setDuration(this.f12547g).setListener(null);
            return true;
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int measuredHeight = getMeasuredHeight();
        int i = this.f12548h;
        Drawable drawable = this.f12546f;
        drawable.setBounds(i, 0, drawable.getIntrinsicWidth() + i, measuredHeight);
        this.f12546f.draw(canvas);
    }

    public void setMinLeft(int i) {
        this.f12549i = i;
    }

    public void setOnDragFinishedListener(OnDragFinished onDragFinished) {
        this.f12550j = onDragFinished;
    }

    public void setShadowPosition(int i) {
        this.f12548h = Math.max(this.f12549i, i);
        invalidate();
    }
}
