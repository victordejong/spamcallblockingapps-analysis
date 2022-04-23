package com.google.android.exoplayer2.p492ui;

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
import com.google.android.exoplayer2.p492ui.DefaultTimeBar;
import java.util.Formatter;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArraySet;
import p131c.p161d.p170b.p188c.p199e1.AbstractC2801m;
import p131c.p161d.p170b.p188c.p199e1.C2799k;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
/* renamed from: com.google.android.exoplayer2.ui.DefaultTimeBar */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ui/DefaultTimeBar.class */
public class DefaultTimeBar extends View implements AbstractC2801m {

    /* renamed from: A */
    public int f22371A;

    /* renamed from: B */
    public long f22372B;

    /* renamed from: C */
    public int f22373C;

    /* renamed from: D */
    public boolean f22374D;

    /* renamed from: E */
    public long f22375E;

    /* renamed from: F */
    public long f22376F;

    /* renamed from: G */
    public long f22377G;

    /* renamed from: H */
    public long f22378H;

    /* renamed from: I */
    public int f22379I;

    /* renamed from: J */
    public long[] f22380J;

    /* renamed from: K */
    public boolean[] f22381K;

    /* renamed from: a */
    public final Rect f22382a;

    /* renamed from: b */
    public final Rect f22383b;

    /* renamed from: c */
    public final Rect f22384c;

    /* renamed from: d */
    public final Rect f22385d;

    /* renamed from: e */
    public final Paint f22386e;

    /* renamed from: f */
    public final Paint f22387f;

    /* renamed from: g */
    public final Paint f22388g;

    /* renamed from: h */
    public final Paint f22389h;

    /* renamed from: i */
    public final Paint f22390i;

    /* renamed from: j */
    public final Paint f22391j;

    /* renamed from: k */
    public final Drawable f22392k;

    /* renamed from: l */
    public final int f22393l;

    /* renamed from: m */
    public final int f22394m;

    /* renamed from: n */
    public final int f22395n;

    /* renamed from: o */
    public final int f22396o;

    /* renamed from: p */
    public final int f22397p;

    /* renamed from: q */
    public final int f22398q;

    /* renamed from: r */
    public final int f22399r;

    /* renamed from: s */
    public final int f22400s;

    /* renamed from: t */
    public final StringBuilder f22401t;

    /* renamed from: u */
    public final Formatter f22402u;

    /* renamed from: v */
    public final Runnable f22403v;

    /* renamed from: w */
    public final CopyOnWriteArraySet<AbstractC2801m.AbstractC2802a> f22404w;

    /* renamed from: x */
    public final int[] f22405x;

    /* renamed from: y */
    public final Point f22406y;

    /* renamed from: z */
    public final float f22407z;

    public DefaultTimeBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DefaultTimeBar(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, attributeSet);
    }

    public DefaultTimeBar(Context context, AttributeSet attributeSet, int i, AttributeSet attributeSet2) {
        super(context, attributeSet, i);
        this.f22382a = new Rect();
        this.f22383b = new Rect();
        this.f22384c = new Rect();
        this.f22385d = new Rect();
        this.f22386e = new Paint();
        this.f22387f = new Paint();
        this.f22388g = new Paint();
        this.f22389h = new Paint();
        this.f22390i = new Paint();
        Paint paint = new Paint();
        this.f22391j = paint;
        paint.setAntiAlias(true);
        this.f22404w = new CopyOnWriteArraySet<>();
        this.f22405x = new int[2];
        this.f22406y = new Point();
        float f = context.getResources().getDisplayMetrics().density;
        this.f22407z = f;
        this.f22400s = m18432a(f, -50);
        int a = m18432a(this.f22407z, 4);
        int a2 = m18432a(this.f22407z, 26);
        int a3 = m18432a(this.f22407z, 4);
        int a4 = m18432a(this.f22407z, 12);
        int a5 = m18432a(this.f22407z, 0);
        int a6 = m18432a(this.f22407z, 16);
        if (attributeSet2 != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet2, C2799k.DefaultTimeBar, 0, 0);
            try {
                Drawable drawable = obtainStyledAttributes.getDrawable(C2799k.DefaultTimeBar_scrubber_drawable);
                this.f22392k = drawable;
                int i2 = a2;
                if (drawable != null) {
                    m18429a(drawable);
                    i2 = Math.max(this.f22392k.getMinimumHeight(), a2);
                }
                this.f22393l = obtainStyledAttributes.getDimensionPixelSize(C2799k.DefaultTimeBar_bar_height, a);
                this.f22394m = obtainStyledAttributes.getDimensionPixelSize(C2799k.DefaultTimeBar_touch_target_height, i2);
                this.f22395n = obtainStyledAttributes.getDimensionPixelSize(C2799k.DefaultTimeBar_ad_marker_width, a3);
                this.f22396o = obtainStyledAttributes.getDimensionPixelSize(C2799k.DefaultTimeBar_scrubber_enabled_size, a4);
                this.f22397p = obtainStyledAttributes.getDimensionPixelSize(C2799k.DefaultTimeBar_scrubber_disabled_size, a5);
                this.f22398q = obtainStyledAttributes.getDimensionPixelSize(C2799k.DefaultTimeBar_scrubber_dragged_size, a6);
                int i3 = obtainStyledAttributes.getInt(C2799k.DefaultTimeBar_played_color, -1);
                int i4 = obtainStyledAttributes.getInt(C2799k.DefaultTimeBar_scrubber_color, -1);
                int i5 = obtainStyledAttributes.getInt(C2799k.DefaultTimeBar_buffered_color, -855638017);
                int i6 = obtainStyledAttributes.getInt(C2799k.DefaultTimeBar_unplayed_color, 872415231);
                int i7 = obtainStyledAttributes.getInt(C2799k.DefaultTimeBar_ad_marker_color, -1291845888);
                int i8 = obtainStyledAttributes.getInt(C2799k.DefaultTimeBar_played_ad_marker_color, 872414976);
                this.f22386e.setColor(i3);
                this.f22391j.setColor(i4);
                this.f22387f.setColor(i5);
                this.f22388g.setColor(i6);
                this.f22389h.setColor(i7);
                this.f22390i.setColor(i8);
            } finally {
                obtainStyledAttributes.recycle();
            }
        } else {
            this.f22393l = a;
            this.f22394m = a2;
            this.f22395n = a3;
            this.f22396o = a4;
            this.f22397p = a5;
            this.f22398q = a6;
            this.f22386e.setColor(-1);
            this.f22391j.setColor(-1);
            this.f22387f.setColor(-855638017);
            this.f22388g.setColor(872415231);
            this.f22389h.setColor(-1291845888);
            this.f22390i.setColor(872414976);
            this.f22392k = null;
        }
        this.f22401t = new StringBuilder();
        this.f22402u = new Formatter(this.f22401t, Locale.getDefault());
        this.f22403v = new Runnable() { // from class: c.d.b.c.e1.b
            @Override // java.lang.Runnable
            public final void run() {
                DefaultTimeBar.this.m18435a();
            }
        };
        Drawable drawable2 = this.f22392k;
        if (drawable2 != null) {
            this.f22399r = (drawable2.getMinimumWidth() + 1) / 2;
        } else {
            this.f22399r = (Math.max(this.f22397p, Math.max(this.f22396o, this.f22398q)) + 1) / 2;
        }
        this.f22376F = -9223372036854775807L;
        this.f22372B = -9223372036854775807L;
        this.f22371A = 20;
        setFocusable(true);
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
    }

    /* renamed from: a */
    public static int m18432a(float f, int i) {
        return (int) ((i * f) + 0.5f);
    }

    /* renamed from: a */
    public static boolean m18428a(Drawable drawable, int i) {
        return C2885h0.f10477a >= 23 && drawable.setLayoutDirection(i);
    }

    /* renamed from: b */
    public static int m18422b(float f, int i) {
        return (int) (i / f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private long getPositionIncrement() {
        /*
            r5 = this;
            r0 = r5
            long r0 = r0.f22372B
            r6 = r0
            r0 = r6
            r8 = r0
            r0 = r6
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0029
            r0 = r5
            long r0 = r0.f22376F
            r8 = r0
            r0 = r8
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0021
            r0 = 0
            r8 = r0
            goto L_0x0029
        L_0x0021:
            r0 = r8
            r1 = r5
            int r1 = r1.f22371A
            long r1 = (long) r1
            long r0 = r0 / r1
            r8 = r0
        L_0x0029:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.p492ui.DefaultTimeBar.getPositionIncrement():long");
    }

    private String getProgressText() {
        return C2885h0.m28664a(this.f22401t, this.f22402u, this.f22377G);
    }

    private long getScrubberPosition() {
        if (this.f22383b.width() <= 0 || this.f22376F == -9223372036854775807L) {
            return 0L;
        }
        return (this.f22385d.width() * this.f22376F) / this.f22383b.width();
    }

    /* renamed from: a */
    public final Point m18427a(MotionEvent motionEvent) {
        getLocationOnScreen(this.f22405x);
        this.f22406y.set(((int) motionEvent.getRawX()) - this.f22405x[0], ((int) motionEvent.getRawY()) - this.f22405x[1]);
        return this.f22406y;
    }

    /* renamed from: a */
    public /* synthetic */ void m18435a() {
        m18425a(false);
    }

    /* renamed from: a */
    public final void m18434a(float f) {
        Rect rect = this.f22385d;
        Rect rect2 = this.f22383b;
        rect.right = C2885h0.m28685a((int) f, rect2.left, rect2.right);
    }

    /* renamed from: a */
    public final void m18430a(Canvas canvas) {
        if (this.f22376F > 0) {
            Rect rect = this.f22385d;
            int a = C2885h0.m28685a(rect.right, rect.left, this.f22383b.right);
            int centerY = this.f22385d.centerY();
            Drawable drawable = this.f22392k;
            if (drawable == null) {
                canvas.drawCircle(a, centerY, ((this.f22374D || isFocused()) ? this.f22398q : isEnabled() ? this.f22396o : this.f22397p) / 2, this.f22391j);
                return;
            }
            int intrinsicWidth = drawable.getIntrinsicWidth() / 2;
            int intrinsicHeight = this.f22392k.getIntrinsicHeight() / 2;
            this.f22392k.setBounds(a - intrinsicWidth, centerY - intrinsicHeight, a + intrinsicWidth, centerY + intrinsicHeight);
            this.f22392k.draw(canvas);
        }
    }

    @Override // p131c.p161d.p170b.p188c.p199e1.AbstractC2801m
    /* renamed from: a */
    public void mo18426a(AbstractC2801m.AbstractC2802a aVar) {
        this.f22404w.add(aVar);
    }

    /* renamed from: a */
    public final void m18425a(boolean z) {
        removeCallbacks(this.f22403v);
        this.f22374D = false;
        setPressed(false);
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(false);
        }
        invalidate();
        Iterator<AbstractC2801m.AbstractC2802a> it = this.f22404w.iterator();
        while (it.hasNext()) {
            it.next().mo18361a(this, this.f22375E, z);
        }
    }

    @Override // p131c.p161d.p170b.p188c.p199e1.AbstractC2801m
    /* renamed from: a */
    public void mo18424a(long[] jArr, boolean[] zArr, int i) {
        C2877e.m28734a(i == 0 || !(jArr == null || zArr == null));
        this.f22379I = i;
        this.f22380J = jArr;
        this.f22381K = zArr;
        m18423b();
    }

    /* renamed from: a */
    public final boolean m18433a(float f, float f2) {
        return this.f22382a.contains((int) f, (int) f2);
    }

    /* renamed from: a */
    public final boolean m18431a(long j) {
        if (this.f22376F <= 0) {
            return false;
        }
        long j2 = this.f22374D ? this.f22375E : this.f22377G;
        long b = C2885h0.m28649b(j2 + j, 0L, this.f22376F);
        if (b == j2) {
            return false;
        }
        if (!this.f22374D) {
            m18421b(b);
        } else {
            m18418c(b);
        }
        m18423b();
        return true;
    }

    /* renamed from: a */
    public final boolean m18429a(Drawable drawable) {
        return C2885h0.f10477a >= 23 && m18428a(drawable, getLayoutDirection());
    }

    /* renamed from: b */
    public final void m18423b() {
        this.f22384c.set(this.f22383b);
        this.f22385d.set(this.f22383b);
        long j = this.f22374D ? this.f22375E : this.f22377G;
        if (this.f22376F > 0) {
            int width = (int) ((this.f22383b.width() * this.f22378H) / this.f22376F);
            Rect rect = this.f22384c;
            Rect rect2 = this.f22383b;
            rect.right = Math.min(rect2.left + width, rect2.right);
            int width2 = (int) ((this.f22383b.width() * j) / this.f22376F);
            Rect rect3 = this.f22385d;
            Rect rect4 = this.f22383b;
            rect3.right = Math.min(rect4.left + width2, rect4.right);
        } else {
            Rect rect5 = this.f22384c;
            int i = this.f22383b.left;
            rect5.right = i;
            this.f22385d.right = i;
        }
        invalidate(this.f22382a);
    }

    /* renamed from: b */
    public final void m18421b(long j) {
        this.f22375E = j;
        this.f22374D = true;
        setPressed(true);
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(true);
        }
        Iterator<AbstractC2801m.AbstractC2802a> it = this.f22404w.iterator();
        while (it.hasNext()) {
            it.next().mo18360b(this, j);
        }
    }

    /* renamed from: b */
    public final void m18420b(Canvas canvas) {
        int height = this.f22383b.height();
        int centerY = this.f22383b.centerY() - (height / 2);
        int i = height + centerY;
        if (this.f22376F <= 0) {
            Rect rect = this.f22383b;
            canvas.drawRect(rect.left, centerY, rect.right, i, this.f22388g);
            return;
        }
        Rect rect2 = this.f22384c;
        int i2 = rect2.left;
        int i3 = rect2.right;
        int max = Math.max(Math.max(this.f22383b.left, i3), this.f22385d.right);
        int i4 = this.f22383b.right;
        if (max < i4) {
            canvas.drawRect(max, centerY, i4, i, this.f22388g);
        }
        int max2 = Math.max(i2, this.f22385d.right);
        if (i3 > max2) {
            canvas.drawRect(max2, centerY, i3, i, this.f22387f);
        }
        if (this.f22385d.width() > 0) {
            Rect rect3 = this.f22385d;
            canvas.drawRect(rect3.left, centerY, rect3.right, i, this.f22386e);
        }
        if (this.f22379I != 0) {
            long[] jArr = this.f22380J;
            C2877e.m28737a(jArr);
            long[] jArr2 = jArr;
            boolean[] zArr = this.f22381K;
            C2877e.m28737a(zArr);
            boolean[] zArr2 = zArr;
            int i5 = this.f22395n / 2;
            for (int i6 = 0; i6 < this.f22379I; i6++) {
                int width = (int) ((this.f22383b.width() * C2885h0.m28649b(jArr2[i6], 0L, this.f22376F)) / this.f22376F);
                Rect rect4 = this.f22383b;
                int min = rect4.left + Math.min(rect4.width() - this.f22395n, Math.max(0, width - i5));
                canvas.drawRect(min, centerY, min + this.f22395n, i, zArr2[i6] ? this.f22390i : this.f22389h);
            }
        }
    }

    /* renamed from: c */
    public final void m18419c() {
        Drawable drawable = this.f22392k;
        if (drawable != null && drawable.isStateful() && this.f22392k.setState(getDrawableState())) {
            invalidate();
        }
    }

    /* renamed from: c */
    public final void m18418c(long j) {
        if (this.f22375E != j) {
            this.f22375E = j;
            Iterator<AbstractC2801m.AbstractC2802a> it = this.f22404w.iterator();
            while (it.hasNext()) {
                it.next().mo18362a(this, j);
            }
        }
    }

    @Override // android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        m18419c();
    }

    @Override // p131c.p161d.p170b.p188c.p199e1.AbstractC2801m
    public long getPreferredUpdateDelay() {
        long j;
        int b = m18422b(this.f22407z, this.f22383b.width());
        if (b != 0) {
            long j2 = this.f22376F;
            if (!(j2 == 0 || j2 == -9223372036854775807L)) {
                j = j2 / b;
                return j;
            }
        }
        j = Long.MAX_VALUE;
        return j;
    }

    @Override // android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f22392k;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        canvas.save();
        m18420b(canvas);
        m18430a(canvas);
        canvas.restore();
    }

    @Override // android.view.View
    public void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        if (this.f22374D && !z) {
            m18425a(false);
        }
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
        if (this.f22376F > 0) {
            if (C2885h0.f10477a >= 21) {
                accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_FORWARD);
                accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_BACKWARD);
                return;
            }
            accessibilityNodeInfo.addAction(4096);
            accessibilityNodeInfo.addAction(8192);
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
            long r0 = r0.getPositionIncrement()
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
            boolean r0 = r0.m18431a(r1)
            if (r0 == 0) goto L_0x0065
            r0 = r5
            r1 = r5
            java.lang.Runnable r1 = r1.f22403v
            boolean r0 = r0.removeCallbacks(r1)
            r0 = r5
            r1 = r5
            java.lang.Runnable r1 = r1.f22403v
            r2 = 1000(0x3e8, double:4.94E-321)
            boolean r0 = r0.postDelayed(r1, r2)
            r0 = 1
            return r0
        L_0x0057:
            r0 = r5
            boolean r0 = r0.f22374D
            if (r0 == 0) goto L_0x0065
            r0 = r5
            r1 = 0
            r0.m18425a(r1)
            r0 = 1
            return r0
        L_0x0065:
            r0 = r5
            r1 = r6
            r2 = r7
            boolean r0 = super.onKeyDown(r1, r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.p492ui.DefaultTimeBar.onKeyDown(int, android.view.KeyEvent):boolean");
    }

    @Override // android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5 = ((i4 - i2) - this.f22394m) / 2;
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int i6 = this.f22394m;
        int i7 = ((i6 - this.f22393l) / 2) + i5;
        this.f22382a.set(paddingLeft, i5, (i3 - i) - paddingRight, i6 + i5);
        Rect rect = this.f22383b;
        Rect rect2 = this.f22382a;
        int i8 = rect2.left;
        int i9 = this.f22399r;
        rect.set(i8 + i9, i7, rect2.right - i9, this.f22393l + i7);
        m18423b();
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (mode == 0) {
            size = this.f22394m;
        } else if (mode != 1073741824) {
            size = Math.min(this.f22394m, size);
        }
        setMeasuredDimension(View.MeasureSpec.getSize(i), size);
        m18419c();
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i) {
        Drawable drawable = this.f22392k;
        if (drawable != null && m18428a(drawable, i)) {
            invalidate();
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z = false;
        if (!isEnabled() || this.f22376F <= 0) {
            return false;
        }
        Point a = m18427a(motionEvent);
        int i = a.x;
        int i2 = a.y;
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action != 1) {
                if (action != 2) {
                    if (action != 3) {
                        return false;
                    }
                } else if (!this.f22374D) {
                    return false;
                } else {
                    if (i2 < this.f22400s) {
                        int i3 = this.f22373C;
                        m18434a(i3 + ((i - i3) / 3));
                    } else {
                        this.f22373C = i;
                        m18434a(i);
                    }
                    m18418c(getScrubberPosition());
                    m18423b();
                    invalidate();
                    return true;
                }
            }
            if (!this.f22374D) {
                return false;
            }
            if (motionEvent.getAction() == 3) {
                z = true;
            }
            m18425a(z);
            return true;
        }
        float f = i;
        if (!m18433a(f, i2)) {
            return false;
        }
        m18434a(f);
        m18421b(getScrubberPosition());
        m18423b();
        invalidate();
        return true;
    }

    @Override // android.view.View
    public boolean performAccessibilityAction(int i, Bundle bundle) {
        if (super.performAccessibilityAction(i, bundle)) {
            return true;
        }
        if (this.f22376F <= 0) {
            return false;
        }
        if (i == 8192) {
            if (m18431a(-getPositionIncrement())) {
                m18425a(false);
            }
        } else if (i != 4096) {
            return false;
        } else {
            if (m18431a(getPositionIncrement())) {
                m18425a(false);
            }
        }
        sendAccessibilityEvent(4);
        return true;
    }

    public void setAdMarkerColor(int i) {
        this.f22389h.setColor(i);
        invalidate(this.f22382a);
    }

    public void setBufferedColor(int i) {
        this.f22387f.setColor(i);
        invalidate(this.f22382a);
    }

    @Override // p131c.p161d.p170b.p188c.p199e1.AbstractC2801m
    public void setBufferedPosition(long j) {
        this.f22378H = j;
        m18423b();
    }

    @Override // p131c.p161d.p170b.p188c.p199e1.AbstractC2801m
    public void setDuration(long j) {
        this.f22376F = j;
        if (this.f22374D && j == -9223372036854775807L) {
            m18425a(true);
        }
        m18423b();
    }

    @Override // android.view.View, p131c.p161d.p170b.p188c.p199e1.AbstractC2801m
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        if (this.f22374D && !z) {
            m18425a(true);
        }
    }

    public void setKeyCountIncrement(int i) {
        C2877e.m28734a(i > 0);
        this.f22371A = i;
        this.f22372B = -9223372036854775807L;
    }

    public void setKeyTimeIncrement(long j) {
        C2877e.m28734a(j > 0);
        this.f22371A = -1;
        this.f22372B = j;
    }

    public void setPlayedAdMarkerColor(int i) {
        this.f22390i.setColor(i);
        invalidate(this.f22382a);
    }

    public void setPlayedColor(int i) {
        this.f22386e.setColor(i);
        invalidate(this.f22382a);
    }

    @Override // p131c.p161d.p170b.p188c.p199e1.AbstractC2801m
    public void setPosition(long j) {
        this.f22377G = j;
        setContentDescription(getProgressText());
        m18423b();
    }

    public void setScrubberColor(int i) {
        this.f22391j.setColor(i);
        invalidate(this.f22382a);
    }

    public void setUnplayedColor(int i) {
        this.f22388g.setColor(i);
        invalidate(this.f22382a);
    }
}
