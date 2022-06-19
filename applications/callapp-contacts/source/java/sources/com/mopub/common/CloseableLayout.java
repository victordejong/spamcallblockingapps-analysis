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
import androidx.core.content.C0790b;
import com.mopub.common.util.Dips;
import com.mopub.mobileads.base.C16855R;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/CloseableLayout.class */
public class CloseableLayout extends FrameLayout {

    /* renamed from: a */
    private final int f58685a;

    /* renamed from: b */
    private OnCloseListener f58686b;

    /* renamed from: c */
    private final Drawable f58687c;

    /* renamed from: d */
    private ClosePosition f58688d;

    /* renamed from: e */
    private final int f58689e;

    /* renamed from: f */
    private final int f58690f;

    /* renamed from: g */
    private final int f58691g;

    /* renamed from: h */
    private boolean f58692h;

    /* renamed from: i */
    private final Rect f58693i;

    /* renamed from: j */
    private final Rect f58694j;

    /* renamed from: k */
    private final Rect f58695k;

    /* renamed from: l */
    private final Rect f58696l;

    /* renamed from: m */
    private boolean f58697m;

    /* renamed from: n */
    private boolean f58698n;

    /* renamed from: o */
    private RunnableC16675a f58699o;

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

    /* renamed from: com.mopub.common.CloseableLayout$a */
    /* loaded from: classes4-dex2jar.jar:com/mopub/common/CloseableLayout$a.class */
    final class RunnableC16675a implements Runnable {
        private RunnableC16675a() {
            CloseableLayout.this = r4;
        }

        @Override // java.lang.Runnable
        public final void run() {
            CloseableLayout.this.m6775a(false);
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
        this.f58693i = new Rect();
        this.f58694j = new Rect();
        this.f58695k = new Rect();
        this.f58696l = new Rect();
        this.f58687c = C0790b.m44502a(context, C16855R.C16856drawable.ic_mopub_close_button);
        this.f58688d = ClosePosition.TOP_RIGHT;
        this.f58685a = ViewConfiguration.get(context).getScaledTouchSlop();
        this.f58689e = Dips.asIntPixels(50.0f, context);
        this.f58690f = Dips.asIntPixels(34.0f, context);
        this.f58691g = Dips.asIntPixels(8.0f, context);
        setWillNotDraw(false);
        this.f58697m = true;
        setBackgroundColor(getResources().getColor(17170444));
    }

    /* renamed from: a */
    private static void m6777a(ClosePosition closePosition, int i, Rect rect, Rect rect2) {
        Gravity.apply(closePosition.getGravity(), i, i, rect, rect2);
    }

    /* renamed from: a */
    public void m6775a(boolean z) {
        if (z == this.f58698n) {
            return;
        }
        this.f58698n = z;
        invalidate(this.f58694j);
    }

    /* renamed from: a */
    private boolean m6778a(int i, int i2, int i3) {
        return i >= this.f58694j.left - i3 && i2 >= this.f58694j.top - i3 && i < this.f58694j.right + i3 && i2 < this.f58694j.bottom + i3;
    }

    public void applyCloseRegionBounds(ClosePosition closePosition, Rect rect, Rect rect2) {
        m6777a(closePosition, this.f58689e, rect, rect2);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.f58692h) {
            this.f58692h = false;
            this.f58693i.set(0, 0, getWidth(), getHeight());
            applyCloseRegionBounds(this.f58688d, this.f58693i, this.f58694j);
            this.f58696l.set(this.f58694j);
            Rect rect = this.f58696l;
            int i = this.f58691g;
            rect.inset(i, i);
            m6777a(this.f58688d, this.f58690f, this.f58696l, this.f58695k);
            Drawable drawable = this.f58687c;
            if (drawable != null) {
                drawable.setBounds(this.f58695k);
            }
        }
        Drawable drawable2 = this.f58687c;
        if (drawable2 == null || !drawable2.isVisible()) {
            return;
        }
        this.f58687c.draw(canvas);
    }

    public boolean isCloseVisible() {
        Drawable drawable = this.f58687c;
        return drawable != null && drawable.isVisible();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() != 0) {
            return false;
        }
        return m6778a((int) motionEvent.getX(), (int) motionEvent.getY(), 0);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f58692h = true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        Drawable drawable;
        if (m6778a((int) motionEvent.getX(), (int) motionEvent.getY(), this.f58685a)) {
            if (this.f58697m || (drawable = this.f58687c) == null || drawable.isVisible()) {
                int action = motionEvent.getAction();
                if (action == 0) {
                    m6775a(true);
                    return true;
                } else if (action != 1) {
                    if (action != 3) {
                        return true;
                    }
                    m6775a(false);
                    return true;
                } else if (!this.f58698n) {
                    return true;
                } else {
                    if (this.f58699o == null) {
                        this.f58699o = new RunnableC16675a();
                    }
                    postDelayed(this.f58699o, ViewConfiguration.getPressedStateDuration());
                    playSoundEffect(0);
                    OnCloseListener onCloseListener = this.f58686b;
                    if (onCloseListener == null) {
                        return true;
                    }
                    onCloseListener.onClose();
                    return true;
                }
            }
        }
        m6775a(false);
        super.onTouchEvent(motionEvent);
        return false;
    }

    public void setCloseAlwaysInteractable(boolean z) {
        this.f58697m = z;
    }

    public void setClosePosition(ClosePosition closePosition) {
        Preconditions.checkNotNull(closePosition);
        this.f58688d = closePosition;
        this.f58692h = true;
        invalidate();
    }

    public void setCloseVisible(boolean z) {
        Drawable drawable = this.f58687c;
        if (drawable == null || !drawable.setVisible(z, false)) {
            return;
        }
        invalidate(this.f58694j);
    }

    public void setOnCloseListener(OnCloseListener onCloseListener) {
        this.f58686b = onCloseListener;
    }
}
