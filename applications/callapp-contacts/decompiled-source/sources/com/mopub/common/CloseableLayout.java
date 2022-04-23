package com.mopub.common;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.widget.FrameLayout;
import androidx.core.content.b;
import com.mopub.common.util.Dips;
import com.mopub.mobileads.base.R;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/CloseableLayout.class */
public class CloseableLayout extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private final int f33794a;

    /* renamed from: b  reason: collision with root package name */
    private OnCloseListener f33795b;

    /* renamed from: c  reason: collision with root package name */
    private final Drawable f33796c;

    /* renamed from: d  reason: collision with root package name */
    private ClosePosition f33797d;
    private final int e;
    private final int f;
    private final int g;
    private boolean h;
    private final Rect i;
    private final Rect j;
    private final Rect k;
    private final Rect l;
    private boolean m;
    private boolean n;
    private a o;

    /* loaded from: classes4-dex2jar.jar:com/mopub/common/CloseableLayout$ClosePosition.class */
    public enum ClosePosition {
        TOP_LEFT(51),
        TOP_CENTER(49),
        TOP_RIGHT(53),
        CENTER(17),
        BOTTOM_LEFT(83),
        BOTTOM_CENTER(81),
        BOTTOM_RIGHT(85);
        
        private final int mGravity;

        ClosePosition(int i) {
            this.mGravity = i;
        }

        final int getGravity() {
            return this.mGravity;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/mopub/common/CloseableLayout$OnCloseListener.class */
    public interface OnCloseListener {
        void onClose();
    }

    /* loaded from: classes4-dex2jar.jar:com/mopub/common/CloseableLayout$a.class */
    final class a implements Runnable {
        private a() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            CloseableLayout.this.a(false);
        }
    }

    public CloseableLayout(Context context) {
        this(context, null, 0);
    }

    public CloseableLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CloseableLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.i = new Rect();
        this.j = new Rect();
        this.k = new Rect();
        this.l = new Rect();
        this.f33796c = b.a(context, R.drawable.ic_mopub_close_button);
        this.f33797d = ClosePosition.TOP_RIGHT;
        this.f33794a = ViewConfiguration.get(context).getScaledTouchSlop();
        this.e = Dips.asIntPixels(50.0f, context);
        this.f = Dips.asIntPixels(34.0f, context);
        this.g = Dips.asIntPixels(8.0f, context);
        setWillNotDraw(false);
        this.m = true;
        setBackgroundColor(getResources().getColor(17170444));
    }

    private static void a(ClosePosition closePosition, int i, Rect rect, Rect rect2) {
        Gravity.apply(closePosition.getGravity(), i, i, rect, rect2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z) {
        if (z != this.n) {
            this.n = z;
            invalidate(this.j);
        }
    }

    private boolean a(int i, int i2, int i3) {
        return i >= this.j.left - i3 && i2 >= this.j.top - i3 && i < this.j.right + i3 && i2 < this.j.bottom + i3;
    }

    public void applyCloseRegionBounds(ClosePosition closePosition, Rect rect, Rect rect2) {
        a(closePosition, this.e, rect, rect2);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.h) {
            this.h = false;
            this.i.set(0, 0, getWidth(), getHeight());
            applyCloseRegionBounds(this.f33797d, this.i, this.j);
            this.l.set(this.j);
            Rect rect = this.l;
            int i = this.g;
            rect.inset(i, i);
            a(this.f33797d, this.f, this.l, this.k);
            Drawable drawable = this.f33796c;
            if (drawable != null) {
                drawable.setBounds(this.k);
            }
        }
        Drawable drawable2 = this.f33796c;
        if (drawable2 != null && drawable2.isVisible()) {
            this.f33796c.draw(canvas);
        }
    }

    public boolean isCloseVisible() {
        Drawable drawable = this.f33796c;
        return drawable != null && drawable.isVisible();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() != 0) {
            return false;
        }
        return a((int) motionEvent.getX(), (int) motionEvent.getY(), 0);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.h = true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        Drawable drawable;
        if (a((int) motionEvent.getX(), (int) motionEvent.getY(), this.f33794a)) {
            if (this.m || (drawable = this.f33796c) == null || drawable.isVisible()) {
                int action = motionEvent.getAction();
                if (action == 0) {
                    a(true);
                    return true;
                } else if (action != 1) {
                    if (action != 3) {
                        return true;
                    }
                    a(false);
                    return true;
                } else if (!this.n) {
                    return true;
                } else {
                    if (this.o == null) {
                        this.o = new a();
                    }
                    postDelayed(this.o, ViewConfiguration.getPressedStateDuration());
                    playSoundEffect(0);
                    OnCloseListener onCloseListener = this.f33795b;
                    if (onCloseListener == null) {
                        return true;
                    }
                    onCloseListener.onClose();
                    return true;
                }
            }
        }
        a(false);
        super.onTouchEvent(motionEvent);
        return false;
    }

    public void setCloseAlwaysInteractable(boolean z) {
        this.m = z;
    }

    public void setClosePosition(ClosePosition closePosition) {
        Preconditions.checkNotNull(closePosition);
        this.f33797d = closePosition;
        this.h = true;
        invalidate();
    }

    public void setCloseVisible(boolean z) {
        Drawable drawable = this.f33796c;
        if (drawable != null && drawable.setVisible(z, false)) {
            invalidate(this.j);
        }
    }

    public void setOnCloseListener(OnCloseListener onCloseListener) {
        this.f33795b = onCloseListener;
    }
}
