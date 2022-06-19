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
import com.mopub.mobileads.base.C1128R;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/CloseableLayout.class */
public class CloseableLayout extends FrameLayout {

    /* renamed from: a */
    public final int f4181a;

    /* renamed from: b */
    public OnCloseListener f4182b;

    /* renamed from: c */
    public final Drawable f4183c;

    /* renamed from: d */
    public ClosePosition f4184d;

    /* renamed from: f */
    public final int f4185f;

    /* renamed from: g */
    public final int f4186g;

    /* renamed from: h */
    public final int f4187h;

    /* renamed from: j */
    public boolean f4188j;

    /* renamed from: k */
    public final Rect f4189k;

    /* renamed from: l */
    public final Rect f4190l;

    /* renamed from: m */
    public final Rect f4191m;

    /* renamed from: n */
    public final Rect f4192n;

    /* renamed from: o */
    public boolean f4193o;

    /* renamed from: p */
    public boolean f4194p;

    /* renamed from: q */
    public RunnableC1002b f4195q;

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
        public final int f4197a;

        ClosePosition(int i) {
            this.f4197a = i;
        }

        /* renamed from: a */
        public int m4006a() {
            return this.f4197a;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/mopub/common/CloseableLayout$OnCloseListener.class */
    public interface OnCloseListener {
        void onClose();
    }

    /* renamed from: com.mopub.common.CloseableLayout$b */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/CloseableLayout$b.class */
    public final class RunnableC1002b implements Runnable {
        public RunnableC1002b() {
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
        this.f4189k = new Rect();
        this.f4190l = new Rect();
        this.f4191m = new Rect();
        this.f4192n = new Rect();
        this.f4183c = g8.f(context, C1128R.C1129drawable.ic_mopub_close_button);
        this.f4184d = ClosePosition.TOP_RIGHT;
        this.f4181a = ViewConfiguration.get(context).getScaledTouchSlop();
        this.f4185f = Dips.asIntPixels(50.0f, context);
        this.f4186g = Dips.asIntPixels(34.0f, context);
        this.f4187h = Dips.asIntPixels(8.0f, context);
        setWillNotDraw(false);
        this.f4193o = true;
    }

    public void setClosePressed(boolean z) {
        if (z == m4010d()) {
            return;
        }
        this.f4194p = z;
        invalidate(this.f4190l);
    }

    public void applyCloseRegionBounds(ClosePosition closePosition, Rect rect, Rect rect2) {
        m4012b(closePosition, this.f4185f, rect, rect2);
    }

    /* renamed from: b */
    public final void m4012b(ClosePosition closePosition, int i, Rect rect, Rect rect2) {
        Gravity.apply(closePosition.m4006a(), i, i, rect, rect2);
    }

    /* renamed from: c */
    public final void m4011c(ClosePosition closePosition, Rect rect, Rect rect2) {
        m4012b(closePosition, this.f4186g, rect, rect2);
    }

    @VisibleForTesting
    /* renamed from: d */
    public boolean m4010d() {
        return this.f4194p;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.f4188j) {
            this.f4188j = false;
            this.f4189k.set(0, 0, getWidth(), getHeight());
            applyCloseRegionBounds(this.f4184d, this.f4189k, this.f4190l);
            this.f4192n.set(this.f4190l);
            Rect rect = this.f4192n;
            int i = this.f4187h;
            rect.inset(i, i);
            m4011c(this.f4184d, this.f4192n, this.f4191m);
            Drawable drawable = this.f4183c;
            if (drawable != null) {
                drawable.setBounds(this.f4191m);
            }
        }
        Drawable drawable2 = this.f4183c;
        if (drawable2 == null || !drawable2.isVisible()) {
            return;
        }
        this.f4183c.draw(canvas);
    }

    /* renamed from: e */
    public final void m4009e() {
        playSoundEffect(0);
        OnCloseListener onCloseListener = this.f4182b;
        if (onCloseListener != null) {
            onCloseListener.onClose();
        }
    }

    @VisibleForTesting
    /* renamed from: f */
    public boolean m4008f(int i, int i2, int i3) {
        Rect rect = this.f4190l;
        return i >= rect.left - i3 && i2 >= rect.top - i3 && i < rect.right + i3 && i2 < rect.bottom + i3;
    }

    @VisibleForTesting
    /* renamed from: g */
    public boolean m4007g() {
        Drawable drawable;
        return this.f4193o || (drawable = this.f4183c) == null || drawable.isVisible();
    }

    @VisibleForTesting
    public Rect getCloseBounds() {
        return this.f4190l;
    }

    @VisibleForTesting
    public boolean isCloseVisible() {
        Drawable drawable = this.f4183c;
        return drawable != null && drawable.isVisible();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() != 0) {
            return false;
        }
        return m4008f((int) motionEvent.getX(), (int) motionEvent.getY(), 0);
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f4188j = true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!m4008f((int) motionEvent.getX(), (int) motionEvent.getY(), this.f4181a) || !m4007g()) {
            setClosePressed(false);
            super.onTouchEvent(motionEvent);
            return false;
        }
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
        } else if (!m4010d()) {
            return true;
        } else {
            if (this.f4195q == null) {
                this.f4195q = new RunnableC1002b();
            }
            postDelayed(this.f4195q, ViewConfiguration.getPressedStateDuration());
            m4009e();
            return true;
        }
    }

    public void setCloseAlwaysInteractable(boolean z) {
        this.f4193o = z;
    }

    @VisibleForTesting
    public void setCloseBoundChanged(boolean z) {
        this.f4188j = z;
    }

    @VisibleForTesting
    public void setCloseBounds(Rect rect) {
        this.f4190l.set(rect);
    }

    public void setClosePosition(ClosePosition closePosition) {
        Preconditions.checkNotNull(closePosition);
        this.f4184d = closePosition;
        this.f4188j = true;
        invalidate();
    }

    public void setCloseVisible(boolean z) {
        Drawable drawable = this.f4183c;
        if (drawable == null || !drawable.setVisible(z, false)) {
            return;
        }
        invalidate(this.f4190l);
    }

    public void setOnCloseListener(OnCloseListener onCloseListener) {
        this.f4182b = onCloseListener;
    }
}
