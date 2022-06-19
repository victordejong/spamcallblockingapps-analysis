package com.google.android.exoplayer2.p070ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import com.google.android.exoplayer2.p070ui.DefaultTimeBar;
import java.util.Collections;
import java.util.Formatter;
import java.util.Iterator;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArraySet;
import p1727n3.p1789g0.C26232y;
import p193e.p1577m.p1578a.p1596c.p1632o1.AbstractC24658f;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* renamed from: com.google.android.exoplayer2.ui.DefaultTimeBar */
/* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/ui/DefaultTimeBar.class */
public class DefaultTimeBar extends View implements AbstractC24658f {

    /* renamed from: A */
    public int f5091A;

    /* renamed from: B */
    public long f5092B;

    /* renamed from: C */
    public int f5093C;

    /* renamed from: D */
    public Rect f5094D;

    /* renamed from: E */
    public boolean f5095E;

    /* renamed from: J */
    public long f5096J;

    /* renamed from: K */
    public long f5097K;

    /* renamed from: L */
    public long f5098L;

    /* renamed from: M */
    public long f5099M;

    /* renamed from: N */
    public int f5100N;

    /* renamed from: O */
    public long[] f5101O;

    /* renamed from: P */
    public boolean[] f5102P;

    /* renamed from: a */
    public final Rect f5103a;

    /* renamed from: b */
    public final Rect f5104b;

    /* renamed from: c */
    public final Rect f5105c;

    /* renamed from: d */
    public final Rect f5106d;

    /* renamed from: e */
    public final Paint f5107e;

    /* renamed from: f */
    public final Paint f5108f;

    /* renamed from: g */
    public final Paint f5109g;

    /* renamed from: h */
    public final Paint f5110h;

    /* renamed from: i */
    public final Paint f5111i;

    /* renamed from: j */
    public final Paint f5112j;

    /* renamed from: k */
    public final Drawable f5113k;

    /* renamed from: l */
    public final int f5114l;

    /* renamed from: m */
    public final int f5115m;

    /* renamed from: n */
    public final int f5116n;

    /* renamed from: o */
    public final int f5117o;

    /* renamed from: p */
    public final int f5118p;

    /* renamed from: q */
    public final int f5119q;

    /* renamed from: r */
    public final int f5120r;

    /* renamed from: s */
    public final int f5121s;

    /* renamed from: t */
    public final StringBuilder f5122t;

    /* renamed from: u */
    public final Formatter f5123u;

    /* renamed from: v */
    public final Runnable f5124v;

    /* renamed from: w */
    public final CopyOnWriteArraySet<AbstractC24658f.AbstractC24659a> f5125w;

    /* renamed from: x */
    public final int[] f5126x;

    /* renamed from: y */
    public final Point f5127y;

    /* renamed from: z */
    public final float f5128z;

    public DefaultTimeBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, attributeSet);
    }

    public DefaultTimeBar(Context context, AttributeSet attributeSet, int i, AttributeSet attributeSet2) {
        super(context, attributeSet, i);
        this.f5103a = new Rect();
        this.f5104b = new Rect();
        this.f5105c = new Rect();
        this.f5106d = new Rect();
        Paint paint = new Paint();
        this.f5107e = paint;
        Paint paint2 = new Paint();
        this.f5108f = paint2;
        Paint paint3 = new Paint();
        this.f5109g = paint3;
        Paint paint4 = new Paint();
        this.f5110h = paint4;
        Paint paint5 = new Paint();
        this.f5111i = paint5;
        Paint paint6 = new Paint();
        this.f5112j = paint6;
        paint6.setAntiAlias(true);
        this.f5125w = new CopyOnWriteArraySet<>();
        this.f5126x = new int[2];
        this.f5127y = new Point();
        float f = context.getResources().getDisplayMetrics().density;
        this.f5128z = f;
        this.f5121s = m39219c(f, -50);
        int m39219c = m39219c(f, 4);
        int m39219c2 = m39219c(f, 26);
        int m39219c3 = m39219c(f, 4);
        int m39219c4 = m39219c(f, 12);
        int m39219c5 = m39219c(f, 0);
        int m39219c6 = m39219c(f, 16);
        if (attributeSet2 != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet2, C2018R.styleable.DefaultTimeBar, 0, 0);
            try {
                Drawable drawable = obtainStyledAttributes.getDrawable(C2018R.styleable.DefaultTimeBar_scrubber_drawable);
                this.f5113k = drawable;
                if (drawable != null) {
                    int i2 = C24773d0.f69427a;
                    if (i2 >= 23) {
                        int layoutDirection = getLayoutDirection();
                        if (i2 < 23 || drawable.setLayoutDirection(layoutDirection)) {
                        }
                    }
                    m39219c2 = Math.max(drawable.getMinimumHeight(), m39219c2);
                }
                this.f5114l = obtainStyledAttributes.getDimensionPixelSize(C2018R.styleable.DefaultTimeBar_bar_height, m39219c);
                this.f5115m = obtainStyledAttributes.getDimensionPixelSize(C2018R.styleable.DefaultTimeBar_touch_target_height, m39219c2);
                this.f5116n = obtainStyledAttributes.getDimensionPixelSize(C2018R.styleable.DefaultTimeBar_ad_marker_width, m39219c3);
                this.f5117o = obtainStyledAttributes.getDimensionPixelSize(C2018R.styleable.DefaultTimeBar_scrubber_enabled_size, m39219c4);
                this.f5118p = obtainStyledAttributes.getDimensionPixelSize(C2018R.styleable.DefaultTimeBar_scrubber_disabled_size, m39219c5);
                this.f5119q = obtainStyledAttributes.getDimensionPixelSize(C2018R.styleable.DefaultTimeBar_scrubber_dragged_size, m39219c6);
                int i3 = obtainStyledAttributes.getInt(C2018R.styleable.DefaultTimeBar_played_color, -1);
                int i4 = obtainStyledAttributes.getInt(C2018R.styleable.DefaultTimeBar_scrubber_color, -1);
                int i5 = obtainStyledAttributes.getInt(C2018R.styleable.DefaultTimeBar_buffered_color, -855638017);
                int i6 = obtainStyledAttributes.getInt(C2018R.styleable.DefaultTimeBar_unplayed_color, 872415231);
                int i7 = obtainStyledAttributes.getInt(C2018R.styleable.DefaultTimeBar_ad_marker_color, -1291845888);
                int i8 = obtainStyledAttributes.getInt(C2018R.styleable.DefaultTimeBar_played_ad_marker_color, 872414976);
                paint.setColor(i3);
                paint6.setColor(i4);
                paint2.setColor(i5);
                paint3.setColor(i6);
                paint4.setColor(i7);
                paint5.setColor(i8);
            } finally {
                obtainStyledAttributes.recycle();
            }
        } else {
            this.f5114l = m39219c;
            this.f5115m = m39219c2;
            this.f5116n = m39219c3;
            this.f5117o = m39219c4;
            this.f5118p = m39219c5;
            this.f5119q = m39219c6;
            paint.setColor(-1);
            paint6.setColor(-1);
            paint2.setColor(-855638017);
            paint3.setColor(872415231);
            paint4.setColor(-1291845888);
            paint5.setColor(872414976);
            this.f5113k = null;
        }
        StringBuilder sb = new StringBuilder();
        this.f5122t = sb;
        this.f5123u = new Formatter(sb, Locale.getDefault());
        this.f5124v = new Runnable() { // from class: e.m.a.c.o1.b
            @Override // java.lang.Runnable
            public final void run() {
                DefaultTimeBar.this.m39215g(false);
            }
        };
        Drawable drawable2 = this.f5113k;
        if (drawable2 != null) {
            this.f5120r = (drawable2.getMinimumWidth() + 1) / 2;
        } else {
            this.f5120r = (Math.max(this.f5118p, Math.max(this.f5117o, this.f5119q)) + 1) / 2;
        }
        this.f5097K = -9223372036854775807L;
        this.f5092B = -9223372036854775807L;
        this.f5091A = 20;
        setFocusable(true);
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
    }

    /* renamed from: c */
    public static int m39219c(float f, int i) {
        return (int) ((i * f) + 0.5f);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    private long getPositionIncrement() {
        ?? r0 = this.f5092B;
        char c = r0;
        if (r0 == -9223372036854775807L) {
            long j = this.f5097K;
            c = j == -9223372036854775807L ? (char) 0 : j / this.f5091A;
        }
        return c;
    }

    private String getProgressText() {
        return C24773d0.m4609o(this.f5122t, this.f5123u, this.f5098L);
    }

    private long getScrubberPosition() {
        if (this.f5104b.width() <= 0 || this.f5097K == -9223372036854775807L) {
            return 0L;
        }
        return (this.f5106d.width() * this.f5097K) / this.f5104b.width();
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1632o1.AbstractC24658f
    /* renamed from: a */
    public void mo4787a(long[] jArr, boolean[] zArr, int i) {
        C26232y.m2310r(i == 0 || !(jArr == null || zArr == null));
        this.f5100N = i;
        this.f5101O = jArr;
        this.f5102P = zArr;
        m39214h();
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1632o1.AbstractC24658f
    /* renamed from: b */
    public void mo4786b(AbstractC24658f.AbstractC24659a abstractC24659a) {
        this.f5125w.add(abstractC24659a);
    }

    /* renamed from: d */
    public final void m39218d(float f) {
        Rect rect = this.f5106d;
        Rect rect2 = this.f5104b;
        rect.right = C24773d0.m4618f((int) f, rect2.left, rect2.right);
    }

    @Override // android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        m39213i();
    }

    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* renamed from: e */
    public final boolean m39217e(long j) {
        long j2 = this.f5097K;
        if (j2 <= 0) {
            return false;
        }
        char c = this.f5095E ? this.f5096J : this.f5098L;
        long m4617g = C24773d0.m4617g(c + j, 0L, j2);
        if (m4617g == c) {
            return false;
        }
        if (!this.f5095E) {
            m39216f(m4617g);
        } else {
            m39212j(m4617g);
        }
        m39214h();
        return true;
    }

    /* renamed from: f */
    public final void m39216f(long j) {
        this.f5096J = j;
        this.f5095E = true;
        setPressed(true);
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(true);
        }
        Iterator<AbstractC24658f.AbstractC24659a> it = this.f5125w.iterator();
        while (it.hasNext()) {
            it.next().mo4783c(this, j);
        }
    }

    /* renamed from: g */
    public final void m39215g(boolean z) {
        removeCallbacks(this.f5124v);
        this.f5095E = false;
        setPressed(false);
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(false);
        }
        invalidate();
        Iterator<AbstractC24658f.AbstractC24659a> it = this.f5125w.iterator();
        while (it.hasNext()) {
            it.next().mo4785a(this, this.f5096J, z);
        }
    }

    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    @Override // p193e.p1577m.p1578a.p1596c.p1632o1.AbstractC24658f
    public long getPreferredUpdateDelay() {
        char c;
        int width = (int) (this.f5104b.width() / this.f5128z);
        if (width != 0) {
            long j = this.f5097K;
            if (j != 0 && j != -9223372036854775807L) {
                c = j / width;
                return c;
            }
        }
        c = 65535;
        return c;
    }

    /* JADX WARN: Type inference failed for: r0v43, types: [long] */
    /* JADX WARN: Type inference failed for: r0v45, types: [long] */
    /* renamed from: h */
    public final void m39214h() {
        this.f5105c.set(this.f5104b);
        this.f5106d.set(this.f5104b);
        char c = this.f5095E ? this.f5096J : this.f5098L;
        if (this.f5097K > 0) {
            int width = (int) ((this.f5104b.width() * this.f5099M) / this.f5097K);
            Rect rect = this.f5105c;
            Rect rect2 = this.f5104b;
            rect.right = Math.min(rect2.left + width, rect2.right);
            int width2 = (int) ((this.f5104b.width() * c) / this.f5097K);
            Rect rect3 = this.f5106d;
            Rect rect4 = this.f5104b;
            rect3.right = Math.min(rect4.left + width2, rect4.right);
        } else {
            Rect rect5 = this.f5105c;
            int i = this.f5104b.left;
            rect5.right = i;
            this.f5106d.right = i;
        }
        invalidate(this.f5103a);
    }

    /* renamed from: i */
    public final void m39213i() {
        Drawable drawable = this.f5113k;
        if (drawable == null || !drawable.isStateful() || !this.f5113k.setState(getDrawableState())) {
            return;
        }
        invalidate();
    }

    /* renamed from: j */
    public final void m39212j(long j) {
        if (this.f5096J == j) {
            return;
        }
        this.f5096J = j;
        Iterator<AbstractC24658f.AbstractC24659a> it = this.f5125w.iterator();
        while (it.hasNext()) {
            it.next().mo4784b(this, j);
        }
    }

    @Override // android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f5113k;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        int min;
        canvas.save();
        int height = this.f5104b.height();
        int centerY = this.f5104b.centerY() - (height / 2);
        int i = height + centerY;
        if (this.f5097K <= 0) {
            Rect rect = this.f5104b;
            canvas.drawRect(rect.left, centerY, rect.right, i, this.f5109g);
        } else {
            Rect rect2 = this.f5105c;
            int i2 = rect2.left;
            int i3 = rect2.right;
            int max = Math.max(Math.max(this.f5104b.left, i3), this.f5106d.right);
            int i4 = this.f5104b.right;
            if (max < i4) {
                canvas.drawRect(max, centerY, i4, i, this.f5109g);
            }
            int max2 = Math.max(i2, this.f5106d.right);
            if (i3 > max2) {
                canvas.drawRect(max2, centerY, i3, i, this.f5108f);
            }
            if (this.f5106d.width() > 0) {
                Rect rect3 = this.f5106d;
                canvas.drawRect(rect3.left, centerY, rect3.right, i, this.f5107e);
            }
            if (this.f5100N != 0) {
                long[] jArr = this.f5101O;
                Objects.requireNonNull(jArr);
                boolean[] zArr = this.f5102P;
                Objects.requireNonNull(zArr);
                int i5 = this.f5116n / 2;
                for (int i6 = 0; i6 < this.f5100N; i6++) {
                    int width = (int) ((this.f5104b.width() * C24773d0.m4617g(jArr[i6], 0L, this.f5097K)) / this.f5097K);
                    Rect rect4 = this.f5104b;
                    canvas.drawRect(Math.min(rect4.width() - this.f5116n, Math.max(0, width - i5)) + rect4.left, centerY, min + this.f5116n, i, zArr[i6] ? this.f5111i : this.f5110h);
                }
            }
        }
        if (this.f5097K > 0) {
            Rect rect5 = this.f5106d;
            int m4618f = C24773d0.m4618f(rect5.right, rect5.left, this.f5104b.right);
            int centerY2 = this.f5106d.centerY();
            Drawable drawable = this.f5113k;
            if (drawable == null) {
                canvas.drawCircle(m4618f, centerY2, ((this.f5095E || isFocused()) ? this.f5119q : isEnabled() ? this.f5117o : this.f5118p) / 2, this.f5112j);
            } else {
                int intrinsicWidth = drawable.getIntrinsicWidth() / 2;
                int intrinsicHeight = this.f5113k.getIntrinsicHeight() / 2;
                this.f5113k.setBounds(m4618f - intrinsicWidth, centerY2 - intrinsicHeight, m4618f + intrinsicWidth, centerY2 + intrinsicHeight);
                this.f5113k.draw(canvas);
            }
        }
        canvas.restore();
    }

    @Override // android.view.View
    public void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        if (!this.f5095E || z) {
            return;
        }
        m39215g(false);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (accessibilityEvent.getEventType() == 4) {
            accessibilityEvent.getText().add(getProgressText());
        }
        accessibilityEvent.setClassName("android.widget.SeekBar");
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("android.widget.SeekBar");
        accessibilityNodeInfo.setContentDescription(getProgressText());
        if (this.f5097K <= 0) {
            return;
        }
        if (C24773d0.f69427a >= 21) {
            accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_FORWARD);
            accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_BACKWARD);
            return;
        }
        accessibilityNodeInfo.addAction(4096);
        accessibilityNodeInfo.addAction(8192);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0040  */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    @Override // android.view.View, android.view.KeyEvent.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onKeyDown(int r6, android.view.KeyEvent r7) {
        /*
            r5 = this;
            r0 = r5
            boolean r0 = r0.isEnabled()
            if (r0 == 0) goto L65
            r0 = r5
            long r0 = r0.getPositionIncrement()
            r8 = r0
            r0 = r6
            r1 = 66
            if (r0 == r1) goto L57
            r0 = r8
            r10 = r0
            r0 = r6
            switch(r0) {
                case 21: goto L33;
                case 22: goto L37;
                case 23: goto L57;
                default: goto L30;
            }
        L30:
            goto L65
        L33:
            r0 = r8
            long r0 = -r0
            r10 = r0
        L37:
            r0 = r5
            r1 = r10
            boolean r0 = r0.m39217e(r1)
            if (r0 == 0) goto L65
            r0 = r5
            r1 = r5
            java.lang.Runnable r1 = r1.f5124v
            boolean r0 = r0.removeCallbacks(r1)
            r0 = r5
            r1 = r5
            java.lang.Runnable r1 = r1.f5124v
            r2 = 1000(0x3e8, double:4.94E-321)
            boolean r0 = r0.postDelayed(r1, r2)
            r0 = 1
            return r0
        L57:
            r0 = r5
            boolean r0 = r0.f5095E
            if (r0 == 0) goto L65
            r0 = r5
            r1 = 0
            r0.m39215g(r1)
            r0 = 1
            return r0
        L65:
            r0 = r5
            r1 = r6
            r2 = r7
            boolean r0 = super.onKeyDown(r1, r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.p070ui.DefaultTimeBar.onKeyDown(int, android.view.KeyEvent):boolean");
    }

    @Override // android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        Rect rect;
        int i5 = i3 - i;
        int i6 = i4 - i2;
        int i7 = (i6 - this.f5115m) / 2;
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int i8 = this.f5115m;
        int i9 = ((i8 - this.f5114l) / 2) + i7;
        this.f5103a.set(paddingLeft, i7, i5 - paddingRight, i8 + i7);
        Rect rect2 = this.f5104b;
        Rect rect3 = this.f5103a;
        int i10 = rect3.left;
        int i11 = this.f5120r;
        rect2.set(i10 + i11, i9, rect3.right - i11, this.f5114l + i9);
        if (C24773d0.f69427a >= 29 && ((rect = this.f5094D) == null || rect.width() != i5 || this.f5094D.height() != i6)) {
            Rect rect4 = new Rect(0, 0, i5, i6);
            this.f5094D = rect4;
            setSystemGestureExclusionRects(Collections.singletonList(rect4));
        }
        m39214h();
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (mode == 0) {
            size = this.f5115m;
        } else if (mode != 1073741824) {
            size = Math.min(this.f5115m, size);
        }
        setMeasuredDimension(View.MeasureSpec.getSize(i), size);
        m39213i();
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i) {
        Drawable drawable = this.f5113k;
        if (drawable != null) {
            if (!(C24773d0.f69427a >= 23 && drawable.setLayoutDirection(i))) {
                return;
            }
            invalidate();
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z = false;
        if (!isEnabled() || this.f5097K <= 0) {
            return false;
        }
        getLocationOnScreen(this.f5126x);
        this.f5127y.set(((int) motionEvent.getRawX()) - this.f5126x[0], ((int) motionEvent.getRawY()) - this.f5126x[1]);
        Point point = this.f5127y;
        int i = point.x;
        int i2 = point.y;
        int action = motionEvent.getAction();
        if (action == 0) {
            float f = i;
            if (!this.f5103a.contains((int) f, i2)) {
                return false;
            }
            m39218d(f);
            m39216f(getScrubberPosition());
            m39214h();
            invalidate();
            return true;
        }
        if (action != 1) {
            if (action == 2) {
                if (!this.f5095E) {
                    return false;
                }
                if (i2 < this.f5121s) {
                    int i3 = this.f5093C;
                    m39218d(((i - i3) / 3) + i3);
                } else {
                    this.f5093C = i;
                    m39218d(i);
                }
                m39212j(getScrubberPosition());
                m39214h();
                invalidate();
                return true;
            } else if (action != 3) {
                return false;
            }
        }
        if (!this.f5095E) {
            return false;
        }
        if (motionEvent.getAction() == 3) {
            z = true;
        }
        m39215g(z);
        return true;
    }

    @Override // android.view.View
    public boolean performAccessibilityAction(int i, Bundle bundle) {
        if (super.performAccessibilityAction(i, bundle)) {
            return true;
        }
        if (this.f5097K <= 0) {
            return false;
        }
        if (i == 8192) {
            if (m39217e(-getPositionIncrement())) {
                m39215g(false);
            }
        } else if (i != 4096) {
            return false;
        } else {
            if (m39217e(getPositionIncrement())) {
                m39215g(false);
            }
        }
        sendAccessibilityEvent(4);
        return true;
    }

    public void setAdMarkerColor(int i) {
        this.f5110h.setColor(i);
        invalidate(this.f5103a);
    }

    public void setBufferedColor(int i) {
        this.f5108f.setColor(i);
        invalidate(this.f5103a);
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1632o1.AbstractC24658f
    public void setBufferedPosition(long j) {
        this.f5099M = j;
        m39214h();
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1632o1.AbstractC24658f
    public void setDuration(long j) {
        this.f5097K = j;
        if (this.f5095E && j == -9223372036854775807L) {
            m39215g(true);
        }
        m39214h();
    }

    @Override // android.view.View, p193e.p1577m.p1578a.p1596c.p1632o1.AbstractC24658f
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        if (!this.f5095E || z) {
            return;
        }
        m39215g(true);
    }

    public void setKeyCountIncrement(int i) {
        C26232y.m2310r(i > 0);
        this.f5091A = i;
        this.f5092B = -9223372036854775807L;
    }

    public void setKeyTimeIncrement(long j) {
        C26232y.m2310r(j > 0);
        this.f5091A = -1;
        this.f5092B = j;
    }

    public void setPlayedAdMarkerColor(int i) {
        this.f5111i.setColor(i);
        invalidate(this.f5103a);
    }

    public void setPlayedColor(int i) {
        this.f5107e.setColor(i);
        invalidate(this.f5103a);
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1632o1.AbstractC24658f
    public void setPosition(long j) {
        this.f5098L = j;
        setContentDescription(getProgressText());
        m39214h();
    }

    public void setScrubberColor(int i) {
        this.f5112j.setColor(i);
        invalidate(this.f5103a);
    }

    public void setUnplayedColor(int i) {
        this.f5109g.setColor(i);
        invalidate(this.f5103a);
    }
}
