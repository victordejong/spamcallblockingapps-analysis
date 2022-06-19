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
import com.mopub.common.util.Dips;
import com.mopub.mobileads.base.C2684R;
import p1727n3.p1807k.p1809b.C26467a;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/CloseableLayout.class */
public class CloseableLayout extends FrameLayout {

    /* renamed from: a */
    public final int f8444a;

    /* renamed from: b */
    public OnCloseListener f8445b;

    /* renamed from: c */
    public final Drawable f8446c;

    /* renamed from: d */
    public ClosePosition f8447d;

    /* renamed from: e */
    public final int f8448e;

    /* renamed from: f */
    public final int f8449f;

    /* renamed from: g */
    public final int f8450g;

    /* renamed from: h */
    public boolean f8451h;

    /* renamed from: i */
    public final Rect f8452i;

    /* renamed from: j */
    public final Rect f8453j;

    /* renamed from: k */
    public final Rect f8454k;

    /* renamed from: l */
    public final Rect f8455l;

    /* renamed from: m */
    public boolean f8456m;

    /* renamed from: n */
    public boolean f8457n;

    /* renamed from: o */
    public RunnableC2632b f8458o;

    /* loaded from: classes3-dex2jar.jar:com/mopub/common/CloseableLayout$ClosePosition.class */
    public enum ClosePosition {
        TOP_LEFT(51),
        TOP_CENTER(49),
        TOP_RIGHT(53),
        CENTER(17),
        BOTTOM_LEFT(83),
        BOTTOM_CENTER(81),
        BOTTOM_RIGHT(85);
        

        /* renamed from: a */
        public final int f8460a;

        ClosePosition(int i) {
            this.f8460a = i;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/mopub/common/CloseableLayout$OnCloseListener.class */
    public interface OnCloseListener {
        void onClose();
    }

    /* renamed from: com.mopub.common.CloseableLayout$b */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/CloseableLayout$b.class */
    public final class RunnableC2632b implements Runnable {
        public RunnableC2632b(C2631a c2631a) {
            CloseableLayout.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            CloseableLayout.this.setClosePressed(false);
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
        this.f8452i = new Rect();
        this.f8453j = new Rect();
        this.f8454k = new Rect();
        this.f8455l = new Rect();
        int i2 = C2684R.C2685drawable.ic_mopub_close_button;
        Object obj = C26467a.f74235a;
        this.f8446c = C26467a.C26470c.m1789b(context, i2);
        this.f8447d = ClosePosition.TOP_RIGHT;
        this.f8444a = ViewConfiguration.get(context).getScaledTouchSlop();
        this.f8448e = Dips.asIntPixels(50.0f, context);
        this.f8449f = Dips.asIntPixels(34.0f, context);
        this.f8450g = Dips.asIntPixels(8.0f, context);
        setWillNotDraw(false);
        this.f8456m = true;
        setBackgroundColor(getResources().getColor(17170444));
    }

    public void setClosePressed(boolean z) {
        if (z == this.f8457n) {
            return;
        }
        this.f8457n = z;
        invalidate(this.f8453j);
    }

    public void applyCloseRegionBounds(ClosePosition closePosition, Rect rect, Rect rect2) {
        int i = this.f8448e;
        Gravity.apply(closePosition.f8460a, i, i, rect, rect2);
    }

    @VisibleForTesting
    /* renamed from: b */
    public boolean m36329b(int i, int i2, int i3) {
        Rect rect = this.f8453j;
        return i >= rect.left - i3 && i2 >= rect.top - i3 && i < rect.right + i3 && i2 < rect.bottom + i3;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.f8451h) {
            this.f8451h = false;
            this.f8452i.set(0, 0, getWidth(), getHeight());
            applyCloseRegionBounds(this.f8447d, this.f8452i, this.f8453j);
            this.f8455l.set(this.f8453j);
            Rect rect = this.f8455l;
            int i = this.f8450g;
            rect.inset(i, i);
            ClosePosition closePosition = this.f8447d;
            Rect rect2 = this.f8455l;
            Rect rect3 = this.f8454k;
            int i2 = this.f8449f;
            Gravity.apply(closePosition.f8460a, i2, i2, rect2, rect3);
            Drawable drawable = this.f8446c;
            if (drawable != null) {
                drawable.setBounds(this.f8454k);
            }
        }
        Drawable drawable2 = this.f8446c;
        if (drawable2 == null || !drawable2.isVisible()) {
            return;
        }
        this.f8446c.draw(canvas);
    }

    @VisibleForTesting
    public Rect getCloseBounds() {
        return this.f8453j;
    }

    @VisibleForTesting
    public boolean isCloseVisible() {
        Drawable drawable = this.f8446c;
        return drawable != null && drawable.isVisible();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() != 0) {
            return false;
        }
        return m36329b((int) motionEvent.getX(), (int) motionEvent.getY(), 0);
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f8451h = true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        Drawable drawable;
        if (m36329b((int) motionEvent.getX(), (int) motionEvent.getY(), this.f8444a)) {
            if (this.f8456m || (drawable = this.f8446c) == null || drawable.isVisible()) {
                int action = motionEvent.getAction();
                if (action == 0) {
                    setClosePressed(true);
                    return true;
                } else if (action != 1) {
                    if (action != 3) {
                        return true;
                    }
                    setClosePressed(false);
                    return true;
                } else if (!this.f8457n) {
                    return true;
                } else {
                    if (this.f8458o == null) {
                        this.f8458o = new RunnableC2632b(null);
                    }
                    postDelayed(this.f8458o, ViewConfiguration.getPressedStateDuration());
                    playSoundEffect(0);
                    OnCloseListener onCloseListener = this.f8445b;
                    if (onCloseListener == null) {
                        return true;
                    }
                    onCloseListener.onClose();
                    return true;
                }
            }
        }
        setClosePressed(false);
        super.onTouchEvent(motionEvent);
        return false;
    }

    public void setCloseAlwaysInteractable(boolean z) {
        this.f8456m = z;
    }

    @VisibleForTesting
    public void setCloseBoundChanged(boolean z) {
        this.f8451h = z;
    }

    @VisibleForTesting
    public void setCloseBounds(Rect rect) {
        this.f8453j.set(rect);
    }

    public void setClosePosition(ClosePosition closePosition) {
        Preconditions.checkNotNull(closePosition);
        this.f8447d = closePosition;
        this.f8451h = true;
        invalidate();
    }

    public void setCloseVisible(boolean z) {
        Drawable drawable = this.f8446c;
        if (drawable == null || !drawable.setVisible(z, false)) {
            return;
        }
        invalidate(this.f8453j);
    }

    public void setOnCloseListener(OnCloseListener onCloseListener) {
        this.f8445b = onCloseListener;
    }
}
