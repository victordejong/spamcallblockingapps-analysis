package com.google.android.exoplayer2.p260ui;

import android.annotation.TargetApi;
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
import com.google.android.exoplayer2.p260ui.AbstractC5444m;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5515h0;
import java.util.Collections;
import java.util.Formatter;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArraySet;
/* renamed from: com.google.android.exoplayer2.ui.DefaultTimeBar */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ui/DefaultTimeBar.class */
public class DefaultTimeBar extends View implements AbstractC5444m {

    /* renamed from: A */
    private final int[] f17415A;

    /* renamed from: B */
    private final Point f17416B;

    /* renamed from: C */
    private final float f17417C;

    /* renamed from: D */
    private int f17418D;

    /* renamed from: E */
    private long f17419E;

    /* renamed from: F */
    private int f17420F;

    /* renamed from: G */
    private Rect f17421G;

    /* renamed from: H */
    private boolean f17422H;

    /* renamed from: I */
    private long f17423I;

    /* renamed from: J */
    private long f17424J;

    /* renamed from: K */
    private long f17425K;

    /* renamed from: L */
    private long f17426L;

    /* renamed from: M */
    private int f17427M;

    /* renamed from: N */
    private long[] f17428N;

    /* renamed from: O */
    private boolean[] f17429O;

    /* renamed from: d */
    private final Rect f17430d;

    /* renamed from: e */
    private final Rect f17431e;

    /* renamed from: f */
    private final Rect f17432f;

    /* renamed from: g */
    private final Rect f17433g;

    /* renamed from: h */
    private final Paint f17434h;

    /* renamed from: i */
    private final Paint f17435i;

    /* renamed from: j */
    private final Paint f17436j;

    /* renamed from: k */
    private final Paint f17437k;

    /* renamed from: l */
    private final Paint f17438l;

    /* renamed from: m */
    private final Paint f17439m;

    /* renamed from: n */
    private final Drawable f17440n;

    /* renamed from: o */
    private final int f17441o;

    /* renamed from: p */
    private final int f17442p;

    /* renamed from: q */
    private final int f17443q;

    /* renamed from: r */
    private final int f17444r;

    /* renamed from: s */
    private final int f17445s;

    /* renamed from: t */
    private final int f17446t;

    /* renamed from: u */
    private final int f17447u;

    /* renamed from: v */
    private final int f17448v;

    /* renamed from: w */
    private final StringBuilder f17449w;

    /* renamed from: x */
    private final Formatter f17450x;

    /* renamed from: y */
    private final Runnable f17451y;

    /* renamed from: z */
    private final CopyOnWriteArraySet<AbstractC5444m.AbstractC5445a> f17452z;

    public DefaultTimeBar(Context context) {
        this(context, null);
    }

    public DefaultTimeBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DefaultTimeBar(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, attributeSet);
    }

    public DefaultTimeBar(Context context, AttributeSet attributeSet, int i, AttributeSet attributeSet2) {
        super(context, attributeSet, i);
        this.f17430d = new Rect();
        this.f17431e = new Rect();
        this.f17432f = new Rect();
        this.f17433g = new Rect();
        Paint paint = new Paint();
        this.f17434h = paint;
        Paint paint2 = new Paint();
        this.f17435i = paint2;
        Paint paint3 = new Paint();
        this.f17436j = paint3;
        Paint paint4 = new Paint();
        this.f17437k = paint4;
        Paint paint5 = new Paint();
        this.f17438l = paint5;
        Paint paint6 = new Paint();
        this.f17439m = paint6;
        paint6.setAntiAlias(true);
        this.f17452z = new CopyOnWriteArraySet<>();
        this.f17415A = new int[2];
        this.f17416B = new Point();
        float f = context.getResources().getDisplayMetrics().density;
        this.f17417C = f;
        this.f17448v = m19240b(f, -50);
        int m19240b = m19240b(f, 4);
        int m19240b2 = m19240b(f, 26);
        int m19240b3 = m19240b(f, 4);
        int m19240b4 = m19240b(f, 12);
        int m19240b5 = m19240b(f, 0);
        int m19240b6 = m19240b(f, 16);
        if (attributeSet2 != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet2, C5442k.DefaultTimeBar, 0, 0);
            try {
                Drawable drawable = obtainStyledAttributes.getDrawable(C5442k.DefaultTimeBar_scrubber_drawable);
                this.f17440n = drawable;
                int i2 = m19240b2;
                if (drawable != null) {
                    m19230l(drawable);
                    i2 = Math.max(drawable.getMinimumHeight(), m19240b2);
                }
                this.f17441o = obtainStyledAttributes.getDimensionPixelSize(C5442k.DefaultTimeBar_bar_height, m19240b);
                this.f17442p = obtainStyledAttributes.getDimensionPixelSize(C5442k.DefaultTimeBar_touch_target_height, i2);
                this.f17443q = obtainStyledAttributes.getDimensionPixelSize(C5442k.DefaultTimeBar_ad_marker_width, m19240b3);
                this.f17444r = obtainStyledAttributes.getDimensionPixelSize(C5442k.DefaultTimeBar_scrubber_enabled_size, m19240b4);
                this.f17445s = obtainStyledAttributes.getDimensionPixelSize(C5442k.DefaultTimeBar_scrubber_disabled_size, m19240b5);
                this.f17446t = obtainStyledAttributes.getDimensionPixelSize(C5442k.DefaultTimeBar_scrubber_dragged_size, m19240b6);
                int i3 = obtainStyledAttributes.getInt(C5442k.DefaultTimeBar_played_color, -1);
                int i4 = obtainStyledAttributes.getInt(C5442k.DefaultTimeBar_scrubber_color, -1);
                int i5 = obtainStyledAttributes.getInt(C5442k.DefaultTimeBar_buffered_color, -855638017);
                int i6 = obtainStyledAttributes.getInt(C5442k.DefaultTimeBar_unplayed_color, 872415231);
                int i7 = obtainStyledAttributes.getInt(C5442k.DefaultTimeBar_ad_marker_color, -1291845888);
                int i8 = obtainStyledAttributes.getInt(C5442k.DefaultTimeBar_played_ad_marker_color, 872414976);
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
            this.f17441o = m19240b;
            this.f17442p = m19240b2;
            this.f17443q = m19240b3;
            this.f17444r = m19240b4;
            this.f17445s = m19240b5;
            this.f17446t = m19240b6;
            paint.setColor(-1);
            paint6.setColor(-1);
            paint2.setColor(-855638017);
            paint3.setColor(872415231);
            paint4.setColor(-1291845888);
            paint5.setColor(872414976);
            this.f17440n = null;
        }
        StringBuilder sb = new StringBuilder();
        this.f17449w = sb;
        this.f17450x = new Formatter(sb, Locale.getDefault());
        this.f17451y = new Runnable() { // from class: com.google.android.exoplayer2.ui.b
            @Override // java.lang.Runnable
            public final void run() {
                DefaultTimeBar.this.m19235g();
            }
        };
        Drawable drawable2 = this.f17440n;
        if (drawable2 != null) {
            this.f17447u = (drawable2.getMinimumWidth() + 1) / 2;
        } else {
            this.f17447u = (Math.max(this.f17445s, Math.max(this.f17444r, this.f17446t)) + 1) / 2;
        }
        this.f17424J = -9223372036854775807L;
        this.f17419E = -9223372036854775807L;
        this.f17418D = 20;
        setFocusable(true);
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
    }

    /* renamed from: b */
    private static int m19240b(float f, int i) {
        return (int) ((i * f) + 0.5f);
    }

    /* renamed from: c */
    private void m19239c(Canvas canvas) {
        if (this.f17424J <= 0) {
            return;
        }
        Rect rect = this.f17433g;
        int m18819n = C5515h0.m18819n(rect.right, rect.left, this.f17431e.right);
        int centerY = this.f17433g.centerY();
        Drawable drawable = this.f17440n;
        if (drawable == null) {
            canvas.drawCircle(m18819n, centerY, ((this.f17422H || isFocused()) ? this.f17446t : isEnabled() ? this.f17444r : this.f17445s) / 2, this.f17439m);
            return;
        }
        int intrinsicWidth = drawable.getIntrinsicWidth() / 2;
        int intrinsicHeight = this.f17440n.getIntrinsicHeight() / 2;
        this.f17440n.setBounds(m18819n - intrinsicWidth, centerY - intrinsicHeight, m18819n + intrinsicWidth, centerY + intrinsicHeight);
        this.f17440n.draw(canvas);
    }

    /* renamed from: d */
    private void m19238d(Canvas canvas) {
        int min;
        int height = this.f17431e.height();
        int centerY = this.f17431e.centerY() - (height / 2);
        int i = height + centerY;
        if (this.f17424J <= 0) {
            Rect rect = this.f17431e;
            canvas.drawRect(rect.left, centerY, rect.right, i, this.f17436j);
            return;
        }
        Rect rect2 = this.f17432f;
        int i2 = rect2.left;
        int i3 = rect2.right;
        int max = Math.max(Math.max(this.f17431e.left, i3), this.f17433g.right);
        int i4 = this.f17431e.right;
        if (max < i4) {
            canvas.drawRect(max, centerY, i4, i, this.f17436j);
        }
        int max2 = Math.max(i2, this.f17433g.right);
        if (i3 > max2) {
            canvas.drawRect(max2, centerY, i3, i, this.f17435i);
        }
        if (this.f17433g.width() > 0) {
            Rect rect3 = this.f17433g;
            canvas.drawRect(rect3.left, centerY, rect3.right, i, this.f17434h);
        }
        if (this.f17427M == 0) {
            return;
        }
        long[] jArr = (long[]) C5508e.m18911e(this.f17428N);
        boolean[] zArr = (boolean[]) C5508e.m18911e(this.f17429O);
        int i5 = this.f17443q / 2;
        for (int i6 = 0; i6 < this.f17427M; i6++) {
            int width = (int) ((this.f17431e.width() * C5515h0.m18817o(jArr[i6], 0L, this.f17424J)) / this.f17424J);
            Rect rect4 = this.f17431e;
            canvas.drawRect(rect4.left + Math.min(rect4.width() - this.f17443q, Math.max(0, width - i5)), centerY, min + this.f17443q, i, zArr[i6] ? this.f17438l : this.f17437k);
        }
    }

    /* renamed from: e */
    private boolean m19237e(float f, float f2) {
        return this.f17430d.contains((int) f, (int) f2);
    }

    /* renamed from: f */
    public /* synthetic */ void m19235g() {
        m19226p(false);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    private long getPositionIncrement() {
        ?? r0 = this.f17419E;
        char c = r0;
        if (r0 == -9223372036854775807L) {
            long j = this.f17424J;
            c = j == -9223372036854775807L ? (char) 0 : j / this.f17418D;
        }
        return c;
    }

    private String getProgressText() {
        return C5515h0.m18860L(this.f17449w, this.f17450x, this.f17425K);
    }

    private long getScrubberPosition() {
        if (this.f17431e.width() <= 0 || this.f17424J == -9223372036854775807L) {
            return 0L;
        }
        return (this.f17433g.width() * this.f17424J) / this.f17431e.width();
    }

    /* renamed from: h */
    private void m19234h(float f) {
        Rect rect = this.f17433g;
        Rect rect2 = this.f17431e;
        rect.right = C5515h0.m18819n((int) f, rect2.left, rect2.right);
    }

    /* renamed from: i */
    private static int m19233i(float f, int i) {
        return (int) (i / f);
    }

    /* renamed from: j */
    private Point m19232j(MotionEvent motionEvent) {
        getLocationOnScreen(this.f17415A);
        this.f17416B.set(((int) motionEvent.getRawX()) - this.f17415A[0], ((int) motionEvent.getRawY()) - this.f17415A[1]);
        return this.f17416B;
    }

    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* renamed from: k */
    private boolean m19231k(long j) {
        long j2 = this.f17424J;
        if (j2 <= 0) {
            return false;
        }
        char c = this.f17422H ? this.f17423I : this.f17425K;
        long m18817o = C5515h0.m18817o(c + j, 0L, j2);
        if (m18817o == c) {
            return false;
        }
        if (!this.f17422H) {
            m19227o(m18817o);
        } else {
            m19223s(m18817o);
        }
        m19225q();
        return true;
    }

    /* renamed from: l */
    private boolean m19230l(Drawable drawable) {
        return C5515h0.f17876a >= 23 && m19229m(drawable, getLayoutDirection());
    }

    /* renamed from: m */
    private static boolean m19229m(Drawable drawable, int i) {
        return C5515h0.f17876a >= 23 && drawable.setLayoutDirection(i);
    }

    /* renamed from: n */
    private void m19228n(int i, int i2) {
        Rect rect = this.f17421G;
        if (rect != null && rect.width() == i && this.f17421G.height() == i2) {
            return;
        }
        Rect rect2 = new Rect(0, 0, i, i2);
        this.f17421G = rect2;
        setSystemGestureExclusionRects(Collections.singletonList(rect2));
    }

    /* renamed from: o */
    private void m19227o(long j) {
        this.f17423I = j;
        this.f17422H = true;
        setPressed(true);
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(true);
        }
        Iterator<AbstractC5444m.AbstractC5445a> it = this.f17452z.iterator();
        while (it.hasNext()) {
            it.next().mo19090c(this, j);
        }
    }

    /* renamed from: p */
    private void m19226p(boolean z) {
        removeCallbacks(this.f17451y);
        this.f17422H = false;
        setPressed(false);
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(false);
        }
        invalidate();
        Iterator<AbstractC5444m.AbstractC5445a> it = this.f17452z.iterator();
        while (it.hasNext()) {
            it.next().mo19091b(this, this.f17423I, z);
        }
    }

    /* JADX WARN: Type inference failed for: r0v43, types: [long] */
    /* JADX WARN: Type inference failed for: r0v45, types: [long] */
    /* renamed from: q */
    private void m19225q() {
        this.f17432f.set(this.f17431e);
        this.f17433g.set(this.f17431e);
        char c = this.f17422H ? this.f17423I : this.f17425K;
        if (this.f17424J > 0) {
            int width = (int) ((this.f17431e.width() * this.f17426L) / this.f17424J);
            Rect rect = this.f17432f;
            Rect rect2 = this.f17431e;
            rect.right = Math.min(rect2.left + width, rect2.right);
            int width2 = (int) ((this.f17431e.width() * c) / this.f17424J);
            Rect rect3 = this.f17433g;
            Rect rect4 = this.f17431e;
            rect3.right = Math.min(rect4.left + width2, rect4.right);
        } else {
            Rect rect5 = this.f17432f;
            int i = this.f17431e.left;
            rect5.right = i;
            this.f17433g.right = i;
        }
        invalidate(this.f17430d);
    }

    /* renamed from: r */
    private void m19224r() {
        Drawable drawable = this.f17440n;
        if (drawable == null || !drawable.isStateful() || !this.f17440n.setState(getDrawableState())) {
            return;
        }
        invalidate();
    }

    /* renamed from: s */
    private void m19223s(long j) {
        if (this.f17423I == j) {
            return;
        }
        this.f17423I = j;
        Iterator<AbstractC5444m.AbstractC5445a> it = this.f17452z.iterator();
        while (it.hasNext()) {
            it.next().mo19092a(this, j);
        }
    }

    @Override // com.google.android.exoplayer2.p260ui.AbstractC5444m
    /* renamed from: a */
    public void mo19093a(AbstractC5444m.AbstractC5445a abstractC5445a) {
        this.f17452z.add(abstractC5445a);
    }

    @Override // android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        m19224r();
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    @Override // com.google.android.exoplayer2.p260ui.AbstractC5444m
    public long getPreferredUpdateDelay() {
        char c;
        int m19233i = m19233i(this.f17417C, this.f17431e.width());
        if (m19233i != 0) {
            long j = this.f17424J;
            if (j != 0 && j != -9223372036854775807L) {
                c = j / m19233i;
                return c;
            }
        }
        c = 65535;
        return c;
    }

    @Override // android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f17440n;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        canvas.save();
        m19238d(canvas);
        m19239c(canvas);
        canvas.restore();
    }

    @Override // android.view.View
    protected void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        if (!this.f17422H || z) {
            return;
        }
        m19226p(false);
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
    @TargetApi(21)
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("android.widget.SeekBar");
        accessibilityNodeInfo.setContentDescription(getProgressText());
        if (this.f17424J <= 0) {
            return;
        }
        if (C5515h0.f17876a >= 21) {
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
            boolean r0 = r0.m19231k(r1)
            if (r0 == 0) goto L65
            r0 = r5
            r1 = r5
            java.lang.Runnable r1 = r1.f17451y
            boolean r0 = r0.removeCallbacks(r1)
            r0 = r5
            r1 = r5
            java.lang.Runnable r1 = r1.f17451y
            r2 = 1000(0x3e8, double:4.94E-321)
            boolean r0 = r0.postDelayed(r1, r2)
            r0 = 1
            return r0
        L57:
            r0 = r5
            boolean r0 = r0.f17422H
            if (r0 == 0) goto L65
            r0 = r5
            r1 = 0
            r0.m19226p(r1)
            r0 = 1
            return r0
        L65:
            r0 = r5
            r1 = r6
            r2 = r7
            boolean r0 = super.onKeyDown(r1, r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.p260ui.DefaultTimeBar.onKeyDown(int, android.view.KeyEvent):boolean");
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5 = i3 - i;
        int i6 = i4 - i2;
        int i7 = (i6 - this.f17442p) / 2;
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int i8 = this.f17442p;
        int i9 = ((i8 - this.f17441o) / 2) + i7;
        this.f17430d.set(paddingLeft, i7, i5 - paddingRight, i8 + i7);
        Rect rect = this.f17431e;
        Rect rect2 = this.f17430d;
        int i10 = rect2.left;
        int i11 = this.f17447u;
        rect.set(i10 + i11, i9, rect2.right - i11, this.f17441o + i9);
        if (C5515h0.f17876a >= 29) {
            m19228n(i5, i6);
        }
        m19225q();
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (mode == 0) {
            size = this.f17442p;
        } else if (mode != 1073741824) {
            size = Math.min(this.f17442p, size);
        }
        setMeasuredDimension(View.MeasureSpec.getSize(i), size);
        m19224r();
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i) {
        Drawable drawable = this.f17440n;
        if (drawable == null || !m19229m(drawable, i)) {
            return;
        }
        invalidate();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z = false;
        if (!isEnabled() || this.f17424J <= 0) {
            return false;
        }
        Point m19232j = m19232j(motionEvent);
        int i = m19232j.x;
        int i2 = m19232j.y;
        int action = motionEvent.getAction();
        if (action == 0) {
            float f = i;
            if (!m19237e(f, i2)) {
                return false;
            }
            m19234h(f);
            m19227o(getScrubberPosition());
            m19225q();
            invalidate();
            return true;
        }
        if (action != 1) {
            if (action == 2) {
                if (!this.f17422H) {
                    return false;
                }
                if (i2 < this.f17448v) {
                    int i3 = this.f17420F;
                    m19234h(i3 + ((i - i3) / 3));
                } else {
                    this.f17420F = i;
                    m19234h(i);
                }
                m19223s(getScrubberPosition());
                m19225q();
                invalidate();
                return true;
            } else if (action != 3) {
                return false;
            }
        }
        if (!this.f17422H) {
            return false;
        }
        if (motionEvent.getAction() == 3) {
            z = true;
        }
        m19226p(z);
        return true;
    }

    @Override // android.view.View
    public boolean performAccessibilityAction(int i, Bundle bundle) {
        if (super.performAccessibilityAction(i, bundle)) {
            return true;
        }
        if (this.f17424J <= 0) {
            return false;
        }
        if (i == 8192) {
            if (m19231k(-getPositionIncrement())) {
                m19226p(false);
            }
        } else if (i != 4096) {
            return false;
        } else {
            if (m19231k(getPositionIncrement())) {
                m19226p(false);
            }
        }
        sendAccessibilityEvent(4);
        return true;
    }

    @Override // com.google.android.exoplayer2.p260ui.AbstractC5444m
    public void setAdGroupTimesMs(long[] jArr, boolean[] zArr, int i) {
        C5508e.m18915a(i == 0 || !(jArr == null || zArr == null));
        this.f17427M = i;
        this.f17428N = jArr;
        this.f17429O = zArr;
        m19225q();
    }

    public void setAdMarkerColor(int i) {
        this.f17437k.setColor(i);
        invalidate(this.f17430d);
    }

    public void setBufferedColor(int i) {
        this.f17435i.setColor(i);
        invalidate(this.f17430d);
    }

    @Override // com.google.android.exoplayer2.p260ui.AbstractC5444m
    public void setBufferedPosition(long j) {
        this.f17426L = j;
        m19225q();
    }

    @Override // com.google.android.exoplayer2.p260ui.AbstractC5444m
    public void setDuration(long j) {
        this.f17424J = j;
        if (this.f17422H && j == -9223372036854775807L) {
            m19226p(true);
        }
        m19225q();
    }

    @Override // android.view.View, com.google.android.exoplayer2.p260ui.AbstractC5444m
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        if (!this.f17422H || z) {
            return;
        }
        m19226p(true);
    }

    public void setKeyCountIncrement(int i) {
        C5508e.m18915a(i > 0);
        this.f17418D = i;
        this.f17419E = -9223372036854775807L;
    }

    public void setKeyTimeIncrement(long j) {
        C5508e.m18915a(j > 0);
        this.f17418D = -1;
        this.f17419E = j;
    }

    public void setPlayedAdMarkerColor(int i) {
        this.f17438l.setColor(i);
        invalidate(this.f17430d);
    }

    public void setPlayedColor(int i) {
        this.f17434h.setColor(i);
        invalidate(this.f17430d);
    }

    @Override // com.google.android.exoplayer2.p260ui.AbstractC5444m
    public void setPosition(long j) {
        this.f17425K = j;
        setContentDescription(getProgressText());
        m19225q();
    }

    public void setScrubberColor(int i) {
        this.f17439m.setColor(i);
        invalidate(this.f17430d);
    }

    public void setUnplayedColor(int i) {
        this.f17436j.setColor(i);
        invalidate(this.f17430d);
    }
}
