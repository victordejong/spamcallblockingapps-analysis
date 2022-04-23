package com.google.android.exoplayer2.ui;

import android.animation.ValueAnimator;
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
import com.google.android.exoplayer2.ui.c;
import com.google.android.exoplayer2.ui.h;
import com.google.android.exoplayer2.util.a;
import com.google.android.exoplayer2.util.af;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.model.PropertyFlags;
import java.util.Collections;
import java.util.Formatter;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArraySet;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/DefaultTimeBar.class */
public class DefaultTimeBar extends View implements h {
    private final CopyOnWriteArraySet<h.a> A;
    private final Point B;
    private final float C;
    private int D;
    private long E;
    private int F;
    private Rect G;
    private boolean H;
    private long I;
    private long J;
    private long K;
    private long L;
    private int M;
    private long[] N;
    private boolean[] O;

    /* renamed from: a  reason: collision with root package name */
    final Rect f21966a;

    /* renamed from: b  reason: collision with root package name */
    ValueAnimator f21967b;

    /* renamed from: c  reason: collision with root package name */
    float f21968c;

    /* renamed from: d  reason: collision with root package name */
    boolean f21969d;
    private final Rect e;
    private final Rect f;
    private final Rect g;
    private final Paint h;
    private final Paint i;
    private final Paint j;
    private final Paint k;
    private final Paint l;
    private final Paint m;
    private final Drawable n;
    private final int o;
    private final int p;
    private final int q;
    private final int r;
    private final int s;
    private final int t;
    private final int u;
    private final int v;
    private final int w;
    private final StringBuilder x;
    private final Formatter y;
    private final Runnable z;

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
        this(context, attributeSet, i, attributeSet2, 0);
    }

    public DefaultTimeBar(Context context, AttributeSet attributeSet, int i, AttributeSet attributeSet2, int i2) {
        super(context, attributeSet, i);
        this.f21966a = new Rect();
        this.e = new Rect();
        this.f = new Rect();
        this.g = new Rect();
        Paint paint = new Paint();
        this.h = paint;
        Paint paint2 = new Paint();
        this.i = paint2;
        Paint paint3 = new Paint();
        this.j = paint3;
        Paint paint4 = new Paint();
        this.k = paint4;
        Paint paint5 = new Paint();
        this.l = paint5;
        Paint paint6 = new Paint();
        this.m = paint6;
        paint6.setAntiAlias(true);
        this.A = new CopyOnWriteArraySet<>();
        this.B = new Point();
        float f = context.getResources().getDisplayMetrics().density;
        this.C = f;
        this.w = a(f, -50);
        int a2 = a(f, 4);
        int a3 = a(f, 26);
        int a4 = a(f, 4);
        int a5 = a(f, 12);
        int a6 = a(f, 0);
        int a7 = a(f, 16);
        if (attributeSet2 != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet2, c.l.DefaultTimeBar, i, i2);
            try {
                Drawable drawable = obtainStyledAttributes.getDrawable(c.l.DefaultTimeBar_scrubber_drawable);
                this.n = drawable;
                int i3 = a3;
                if (drawable != null) {
                    if (af.f22275a >= 23) {
                        a(drawable, getLayoutDirection());
                    }
                    i3 = Math.max(drawable.getMinimumHeight(), a3);
                }
                this.o = obtainStyledAttributes.getDimensionPixelSize(c.l.DefaultTimeBar_bar_height, a2);
                this.p = obtainStyledAttributes.getDimensionPixelSize(c.l.DefaultTimeBar_touch_target_height, i3);
                this.q = obtainStyledAttributes.getInt(c.l.DefaultTimeBar_bar_gravity, 0);
                this.r = obtainStyledAttributes.getDimensionPixelSize(c.l.DefaultTimeBar_ad_marker_width, a4);
                this.s = obtainStyledAttributes.getDimensionPixelSize(c.l.DefaultTimeBar_scrubber_enabled_size, a5);
                this.t = obtainStyledAttributes.getDimensionPixelSize(c.l.DefaultTimeBar_scrubber_disabled_size, a6);
                this.u = obtainStyledAttributes.getDimensionPixelSize(c.l.DefaultTimeBar_scrubber_dragged_size, a7);
                int i4 = obtainStyledAttributes.getInt(c.l.DefaultTimeBar_played_color, -1);
                int i5 = obtainStyledAttributes.getInt(c.l.DefaultTimeBar_scrubber_color, -1);
                int i6 = obtainStyledAttributes.getInt(c.l.DefaultTimeBar_buffered_color, -855638017);
                int i7 = obtainStyledAttributes.getInt(c.l.DefaultTimeBar_unplayed_color, 872415231);
                int i8 = obtainStyledAttributes.getInt(c.l.DefaultTimeBar_ad_marker_color, -1291845888);
                int i9 = obtainStyledAttributes.getInt(c.l.DefaultTimeBar_played_ad_marker_color, 872414976);
                paint.setColor(i4);
                paint6.setColor(i5);
                paint2.setColor(i6);
                paint3.setColor(i7);
                paint4.setColor(i8);
                paint5.setColor(i9);
            } finally {
                obtainStyledAttributes.recycle();
            }
        } else {
            this.o = a2;
            this.p = a3;
            this.q = 0;
            this.r = a4;
            this.s = a5;
            this.t = a6;
            this.u = a7;
            paint.setColor(-1);
            paint6.setColor(-1);
            paint2.setColor(-855638017);
            paint3.setColor(872415231);
            paint4.setColor(-1291845888);
            paint5.setColor(872414976);
            this.n = null;
        }
        StringBuilder sb = new StringBuilder();
        this.x = sb;
        this.y = new Formatter(sb, Locale.getDefault());
        this.z = new Runnable() { // from class: com.google.android.exoplayer2.ui._$$Lambda$DefaultTimeBar$aeWlLC7dRnpgLoSLdcO3etiYpJg
            @Override // java.lang.Runnable
            public final void run() {
                DefaultTimeBar.this.g();
            }
        };
        Drawable drawable2 = this.n;
        if (drawable2 != null) {
            this.v = (drawable2.getMinimumWidth() + 1) / 2;
        } else {
            this.v = (Math.max(this.t, Math.max(this.s, this.u)) + 1) / 2;
        }
        this.f21968c = 1.0f;
        ValueAnimator valueAnimator = new ValueAnimator();
        this.f21967b = valueAnimator;
        valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.exoplayer2.ui._$$Lambda$DefaultTimeBar$Z_ioLVnzv4j6RV52b7wOPl7w1uo
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                DefaultTimeBar.this.a(valueAnimator2);
            }
        });
        this.J = -9223372036854775807L;
        this.E = -9223372036854775807L;
        this.D = 20;
        setFocusable(true);
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
    }

    private static int a(float f, int i) {
        return (int) ((i * f) + 0.5f);
    }

    private void a(float f) {
        this.g.right = af.a((int) f, this.e.left, this.e.right);
    }

    private void a(long j) {
        this.I = j;
        this.H = true;
        setPressed(true);
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(true);
        }
        Iterator<h.a> it2 = this.A.iterator();
        while (it2.hasNext()) {
            it2.next().a(j);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(ValueAnimator valueAnimator) {
        this.f21968c = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate(this.f21966a);
    }

    private static boolean a(Drawable drawable, int i) {
        return af.f22275a >= 23 && drawable.setLayoutDirection(i);
    }

    private void b() {
        this.f.set(this.e);
        this.g.set(this.e);
        long j = this.H ? this.I : this.K;
        if (this.J > 0) {
            this.f.right = Math.min(this.e.left + ((int) ((this.e.width() * this.L) / this.J)), this.e.right);
            this.g.right = Math.min(this.e.left + ((int) ((this.e.width() * j) / this.J)), this.e.right);
        } else {
            this.f.right = this.e.left;
            this.g.right = this.e.left;
        }
        invalidate(this.f21966a);
    }

    private void b(long j) {
        if (this.I != j) {
            this.I = j;
            Iterator<h.a> it2 = this.A.iterator();
            while (it2.hasNext()) {
                it2.next().b(j);
            }
        }
    }

    private void b(boolean z) {
        removeCallbacks(this.z);
        this.H = false;
        setPressed(false);
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(false);
        }
        invalidate();
        Iterator<h.a> it2 = this.A.iterator();
        while (it2.hasNext()) {
            it2.next().a(this.I, z);
        }
    }

    private long c() {
        if (this.e.width() <= 0 || this.J == -9223372036854775807L) {
            return 0L;
        }
        return (this.g.width() * this.J) / this.e.width();
    }

    private boolean c(long j) {
        long j2 = this.J;
        if (j2 <= 0) {
            return false;
        }
        long j3 = this.H ? this.I : this.K;
        long a2 = af.a(j3 + j, 0L, j2);
        if (a2 == j3) {
            return false;
        }
        if (!this.H) {
            a(a2);
        } else {
            b(a2);
        }
        b();
        return true;
    }

    private void d() {
        Drawable drawable = this.n;
        if (drawable != null && drawable.isStateful() && this.n.setState(getDrawableState())) {
            invalidate();
        }
    }

    private String e() {
        return af.a(this.x, this.y, this.K);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [long] */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private long f() {
        /*
            r5 = this;
            r0 = r5
            long r0 = r0.E
            r6 = r0
            r0 = r6
            r8 = r0
            r0 = r6
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0026
            r0 = r5
            long r0 = r0.J
            r8 = r0
            r0 = r8
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x001e
            r0 = 0
            return r0
        L_0x001e:
            r0 = r8
            r1 = r5
            int r1 = r1.D
            long r1 = (long) r1
            long r0 = r0 / r1
            r8 = r0
        L_0x0026:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.ui.DefaultTimeBar.f():long");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g() {
        b(false);
    }

    @Override // com.google.android.exoplayer2.ui.h
    public final long a() {
        int width = (int) (this.e.width() / this.C);
        if (width == 0) {
            return Long.MAX_VALUE;
        }
        long j = this.J;
        if (j == 0 || j == -9223372036854775807L) {
            return Long.MAX_VALUE;
        }
        return j / width;
    }

    @Override // com.google.android.exoplayer2.ui.h
    public final void a(h.a aVar) {
        a.b(aVar);
        this.A.add(aVar);
    }

    public final void a(boolean z) {
        if (this.f21967b.isStarted()) {
            this.f21967b.cancel();
        }
        this.f21969d = z;
        this.f21968c = BitmapDescriptorFactory.HUE_RED;
        invalidate(this.f21966a);
    }

    @Override // android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        d();
    }

    @Override // android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.n;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        canvas.save();
        int height = this.e.height();
        int centerY = this.e.centerY() - (height / 2);
        int i = centerY + height;
        if (this.J <= 0) {
            canvas.drawRect(this.e.left, centerY, this.e.right, i, this.j);
        } else {
            int i2 = this.f.left;
            int i3 = this.f.right;
            int max = Math.max(Math.max(this.e.left, i3), this.g.right);
            if (max < this.e.right) {
                canvas.drawRect(max, centerY, this.e.right, i, this.j);
            }
            int max2 = Math.max(i2, this.g.right);
            if (i3 > max2) {
                canvas.drawRect(max2, centerY, i3, i, this.i);
            }
            if (this.g.width() > 0) {
                canvas.drawRect(this.g.left, centerY, this.g.right, i, this.h);
            }
            if (this.M != 0) {
                long[] jArr = (long[]) a.b(this.N);
                boolean[] zArr = (boolean[]) a.b(this.O);
                int i4 = this.r / 2;
                for (int i5 = 0; i5 < this.M; i5++) {
                    int min = this.e.left + Math.min(this.e.width() - this.r, Math.max(0, ((int) ((this.e.width() * af.a(jArr[i5], 0L, this.J)) / this.J)) - i4));
                    canvas.drawRect(min, centerY, min + this.r, i, zArr[i5] ? this.l : this.k);
                }
            }
        }
        if (this.J > 0) {
            int a2 = af.a(this.g.right, this.g.left, this.e.right);
            int centerY2 = this.g.centerY();
            Drawable drawable = this.n;
            if (drawable == null) {
                canvas.drawCircle(a2, centerY2, (int) ((((this.H || isFocused()) ? this.u : isEnabled() ? this.s : this.t) * this.f21968c) / 2.0f), this.m);
            } else {
                int intrinsicWidth = ((int) (drawable.getIntrinsicWidth() * this.f21968c)) / 2;
                int intrinsicHeight = ((int) (this.n.getIntrinsicHeight() * this.f21968c)) / 2;
                this.n.setBounds(a2 - intrinsicWidth, centerY2 - intrinsicHeight, a2 + intrinsicWidth, centerY2 + intrinsicHeight);
                this.n.draw(canvas);
            }
        }
        canvas.restore();
    }

    @Override // android.view.View
    protected void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        if (this.H && !z) {
            b(false);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (accessibilityEvent.getEventType() == 4) {
            accessibilityEvent.getText().add(e());
        }
        accessibilityEvent.setClassName("android.widget.SeekBar");
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("android.widget.SeekBar");
        accessibilityNodeInfo.setContentDescription(e());
        if (this.J > 0) {
            if (af.f22275a >= 21) {
                accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_FORWARD);
                accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_BACKWARD);
                return;
            }
            accessibilityNodeInfo.addAction(4096);
            accessibilityNodeInfo.addAction(PropertyFlags.UNSIGNED);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0040  */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r5v0, types: [com.google.android.exoplayer2.ui.DefaultTimeBar, android.view.View] */
    /* JADX WARN: Unknown variable types count: 2 */
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
            if (r0 == 0) goto L_0x0065
            r0 = r5
            long r0 = r0.f()
            r8 = r0
            r0 = r6
            r1 = 66
            if (r0 == r1) goto L_0x0057
            r0 = r8
            r10 = r0
            r0 = r6
            switch(r0) {
                case 21: goto L_0x0033;
                case 22: goto L_0x0037;
                case 23: goto L_0x0057;
                default: goto L_0x0030;
            }
        L_0x0030:
            goto L_0x0065
        L_0x0033:
            r0 = r8
            long r0 = -r0
            r10 = r0
        L_0x0037:
            r0 = r5
            r1 = r10
            boolean r0 = r0.c(r1)
            if (r0 == 0) goto L_0x0065
            r0 = r5
            r1 = r5
            java.lang.Runnable r1 = r1.z
            boolean r0 = r0.removeCallbacks(r1)
            r0 = r5
            r1 = r5
            java.lang.Runnable r1 = r1.z
            r2 = 1000(0x3e8, double:4.94E-321)
            boolean r0 = r0.postDelayed(r1, r2)
            r0 = 1
            return r0
        L_0x0057:
            r0 = r5
            boolean r0 = r0.H
            if (r0 == 0) goto L_0x0065
            r0 = r5
            r1 = 0
            r0.b(r1)
            r0 = 1
            return r0
        L_0x0065:
            r0 = r5
            r1 = r6
            r2 = r7
            boolean r0 = super.onKeyDown(r1, r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.ui.DefaultTimeBar.onKeyDown(int, android.view.KeyEvent):boolean");
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        Rect rect;
        int i7 = i3 - i;
        int i8 = i4 - i2;
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int i9 = this.f21969d ? 0 : this.v;
        if (this.q == 1) {
            i5 = (i8 - getPaddingBottom()) - this.p;
            int paddingBottom = getPaddingBottom();
            int i10 = this.o;
            i6 = ((i8 - paddingBottom) - i10) - Math.max(i9 - (i10 / 2), 0);
        } else {
            i5 = (i8 - this.p) / 2;
            i6 = (i8 - this.o) / 2;
        }
        this.f21966a.set(paddingLeft, i5, i7 - paddingRight, this.p + i5);
        this.e.set(this.f21966a.left + i9, i6, this.f21966a.right - i9, this.o + i6);
        if (af.f22275a >= 29 && !((rect = this.G) != null && rect.width() == i7 && this.G.height() == i8)) {
            Rect rect2 = new Rect(0, 0, i7, i8);
            this.G = rect2;
            setSystemGestureExclusionRects(Collections.singletonList(rect2));
        }
        b();
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (mode == 0) {
            size = this.p;
        } else if (mode != 1073741824) {
            size = Math.min(this.p, size);
        }
        setMeasuredDimension(View.MeasureSpec.getSize(i), size);
        d();
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i) {
        Drawable drawable = this.n;
        if (drawable != null && a(drawable, i)) {
            invalidate();
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z = false;
        if (!isEnabled() || this.J <= 0) {
            return false;
        }
        this.B.set((int) motionEvent.getX(), (int) motionEvent.getY());
        Point point = this.B;
        int i = point.x;
        int i2 = point.y;
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action != 1) {
                if (action != 2) {
                    if (action != 3) {
                        return false;
                    }
                } else if (!this.H) {
                    return false;
                } else {
                    if (i2 < this.w) {
                        int i3 = this.F;
                        a(i3 + ((i - i3) / 3));
                    } else {
                        this.F = i;
                        a(i);
                    }
                    b(c());
                    b();
                    invalidate();
                    return true;
                }
            }
            if (!this.H) {
                return false;
            }
            if (motionEvent.getAction() == 3) {
                z = true;
            }
            b(z);
            return true;
        }
        float f = i;
        if (!this.f21966a.contains((int) f, i2)) {
            return false;
        }
        a(f);
        a(c());
        b();
        invalidate();
        return true;
    }

    @Override // android.view.View
    public boolean performAccessibilityAction(int i, Bundle bundle) {
        if (super.performAccessibilityAction(i, bundle)) {
            return true;
        }
        if (this.J <= 0) {
            return false;
        }
        if (i == 8192) {
            if (c(-f())) {
                b(false);
            }
        } else if (i != 4096) {
            return false;
        } else {
            if (c(f())) {
                b(false);
            }
        }
        sendAccessibilityEvent(4);
        return true;
    }

    @Override // com.google.android.exoplayer2.ui.h
    public void setAdGroupTimesMs(long[] jArr, boolean[] zArr, int i) {
        a.a(i == 0 || !(jArr == null || zArr == null));
        this.M = i;
        this.N = jArr;
        this.O = zArr;
        b();
    }

    public void setAdMarkerColor(int i) {
        this.k.setColor(i);
        invalidate(this.f21966a);
    }

    public void setBufferedColor(int i) {
        this.i.setColor(i);
        invalidate(this.f21966a);
    }

    @Override // com.google.android.exoplayer2.ui.h
    public void setBufferedPosition(long j) {
        this.L = j;
        b();
    }

    @Override // com.google.android.exoplayer2.ui.h
    public void setDuration(long j) {
        this.J = j;
        if (this.H && j == -9223372036854775807L) {
            b(true);
        }
        b();
    }

    @Override // android.view.View, com.google.android.exoplayer2.ui.h
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        if (this.H && !z) {
            b(true);
        }
    }

    public void setKeyCountIncrement(int i) {
        a.a(i > 0);
        this.D = i;
        this.E = -9223372036854775807L;
    }

    public void setKeyTimeIncrement(long j) {
        a.a(j > 0);
        this.D = -1;
        this.E = j;
    }

    public void setPlayedAdMarkerColor(int i) {
        this.l.setColor(i);
        invalidate(this.f21966a);
    }

    public void setPlayedColor(int i) {
        this.h.setColor(i);
        invalidate(this.f21966a);
    }

    @Override // com.google.android.exoplayer2.ui.h
    public void setPosition(long j) {
        this.K = j;
        setContentDescription(e());
        b();
    }

    public void setScrubberColor(int i) {
        this.m.setColor(i);
        invalidate(this.f21966a);
    }

    public void setUnplayedColor(int i) {
        this.j.setColor(i);
        invalidate(this.f21966a);
    }
}
