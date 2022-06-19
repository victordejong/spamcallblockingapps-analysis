package com.google.android.exoplayer2.p346ui;

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
import com.google.android.exoplayer2.p346ui.AbstractC11509h;
import com.google.android.exoplayer2.p346ui.C11479c;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.model.PropertyFlags;
import java.util.Collections;
import java.util.Formatter;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArraySet;
/* renamed from: com.google.android.exoplayer2.ui.DefaultTimeBar */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/DefaultTimeBar.class */
public class DefaultTimeBar extends View implements AbstractC11509h {

    /* renamed from: A */
    private final CopyOnWriteArraySet<AbstractC11509h.AbstractC11510a> f37867A;

    /* renamed from: B */
    private final Point f37868B;

    /* renamed from: C */
    private final float f37869C;

    /* renamed from: D */
    private int f37870D;

    /* renamed from: E */
    private long f37871E;

    /* renamed from: F */
    private int f37872F;

    /* renamed from: G */
    private Rect f37873G;

    /* renamed from: H */
    private boolean f37874H;

    /* renamed from: I */
    private long f37875I;

    /* renamed from: J */
    private long f37876J;

    /* renamed from: K */
    private long f37877K;

    /* renamed from: L */
    private long f37878L;

    /* renamed from: M */
    private int f37879M;

    /* renamed from: N */
    private long[] f37880N;

    /* renamed from: O */
    private boolean[] f37881O;

    /* renamed from: a */
    final Rect f37882a;

    /* renamed from: b */
    ValueAnimator f37883b;

    /* renamed from: c */
    float f37884c;

    /* renamed from: d */
    boolean f37885d;

    /* renamed from: e */
    private final Rect f37886e;

    /* renamed from: f */
    private final Rect f37887f;

    /* renamed from: g */
    private final Rect f37888g;

    /* renamed from: h */
    private final Paint f37889h;

    /* renamed from: i */
    private final Paint f37890i;

    /* renamed from: j */
    private final Paint f37891j;

    /* renamed from: k */
    private final Paint f37892k;

    /* renamed from: l */
    private final Paint f37893l;

    /* renamed from: m */
    private final Paint f37894m;

    /* renamed from: n */
    private final Drawable f37895n;

    /* renamed from: o */
    private final int f37896o;

    /* renamed from: p */
    private final int f37897p;

    /* renamed from: q */
    private final int f37898q;

    /* renamed from: r */
    private final int f37899r;

    /* renamed from: s */
    private final int f37900s;

    /* renamed from: t */
    private final int f37901t;

    /* renamed from: u */
    private final int f37902u;

    /* renamed from: v */
    private final int f37903v;

    /* renamed from: w */
    private final int f37904w;

    /* renamed from: x */
    private final StringBuilder f37905x;

    /* renamed from: y */
    private final Formatter f37906y;

    /* renamed from: z */
    private final Runnable f37907z;

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
        this.f37882a = new Rect();
        this.f37886e = new Rect();
        this.f37887f = new Rect();
        this.f37888g = new Rect();
        Paint paint = new Paint();
        this.f37889h = paint;
        Paint paint2 = new Paint();
        this.f37890i = paint2;
        Paint paint3 = new Paint();
        this.f37891j = paint3;
        Paint paint4 = new Paint();
        this.f37892k = paint4;
        Paint paint5 = new Paint();
        this.f37893l = paint5;
        Paint paint6 = new Paint();
        this.f37894m = paint6;
        paint6.setAntiAlias(true);
        this.f37867A = new CopyOnWriteArraySet<>();
        this.f37868B = new Point();
        float f = context.getResources().getDisplayMetrics().density;
        this.f37869C = f;
        this.f37904w = m20530a(f, -50);
        int m20530a = m20530a(f, 4);
        int m20530a2 = m20530a(f, 26);
        int m20530a3 = m20530a(f, 4);
        int m20530a4 = m20530a(f, 12);
        int m20530a5 = m20530a(f, 0);
        int m20530a6 = m20530a(f, 16);
        if (attributeSet2 != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet2, C11479c.C11491l.DefaultTimeBar, i, i2);
            try {
                Drawable drawable = obtainStyledAttributes.getDrawable(C11479c.C11491l.DefaultTimeBar_scrubber_drawable);
                this.f37895n = drawable;
                int i3 = m20530a2;
                if (drawable != null) {
                    if (C11599af.f38648a >= 23) {
                        m20527a(drawable, getLayoutDirection());
                    }
                    i3 = Math.max(drawable.getMinimumHeight(), m20530a2);
                }
                this.f37896o = obtainStyledAttributes.getDimensionPixelSize(C11479c.C11491l.DefaultTimeBar_bar_height, m20530a);
                this.f37897p = obtainStyledAttributes.getDimensionPixelSize(C11479c.C11491l.DefaultTimeBar_touch_target_height, i3);
                this.f37898q = obtainStyledAttributes.getInt(C11479c.C11491l.DefaultTimeBar_bar_gravity, 0);
                this.f37899r = obtainStyledAttributes.getDimensionPixelSize(C11479c.C11491l.DefaultTimeBar_ad_marker_width, m20530a3);
                this.f37900s = obtainStyledAttributes.getDimensionPixelSize(C11479c.C11491l.DefaultTimeBar_scrubber_enabled_size, m20530a4);
                this.f37901t = obtainStyledAttributes.getDimensionPixelSize(C11479c.C11491l.DefaultTimeBar_scrubber_disabled_size, m20530a5);
                this.f37902u = obtainStyledAttributes.getDimensionPixelSize(C11479c.C11491l.DefaultTimeBar_scrubber_dragged_size, m20530a6);
                int i4 = obtainStyledAttributes.getInt(C11479c.C11491l.DefaultTimeBar_played_color, -1);
                int i5 = obtainStyledAttributes.getInt(C11479c.C11491l.DefaultTimeBar_scrubber_color, -1);
                int i6 = obtainStyledAttributes.getInt(C11479c.C11491l.DefaultTimeBar_buffered_color, -855638017);
                int i7 = obtainStyledAttributes.getInt(C11479c.C11491l.DefaultTimeBar_unplayed_color, 872415231);
                int i8 = obtainStyledAttributes.getInt(C11479c.C11491l.DefaultTimeBar_ad_marker_color, -1291845888);
                int i9 = obtainStyledAttributes.getInt(C11479c.C11491l.DefaultTimeBar_played_ad_marker_color, 872414976);
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
            this.f37896o = m20530a;
            this.f37897p = m20530a2;
            this.f37898q = 0;
            this.f37899r = m20530a3;
            this.f37900s = m20530a4;
            this.f37901t = m20530a5;
            this.f37902u = m20530a6;
            paint.setColor(-1);
            paint6.setColor(-1);
            paint2.setColor(-855638017);
            paint3.setColor(872415231);
            paint4.setColor(-1291845888);
            paint5.setColor(872414976);
            this.f37895n = null;
        }
        StringBuilder sb = new StringBuilder();
        this.f37905x = sb;
        this.f37906y = new Formatter(sb, Locale.getDefault());
        this.f37907z = new Runnable() { // from class: com.google.android.exoplayer2.ui._$$Lambda$DefaultTimeBar$aeWlLC7dRnpgLoSLdcO3etiYpJg
            @Override // java.lang.Runnable
            public final void run() {
                DefaultTimeBar.this.m20517g();
            }
        };
        Drawable drawable2 = this.f37895n;
        if (drawable2 != null) {
            this.f37903v = (drawable2.getMinimumWidth() + 1) / 2;
        } else {
            this.f37903v = (Math.max(this.f37901t, Math.max(this.f37900s, this.f37902u)) + 1) / 2;
        }
        this.f37884c = 1.0f;
        ValueAnimator valueAnimator = new ValueAnimator();
        this.f37883b = valueAnimator;
        valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.exoplayer2.ui._$$Lambda$DefaultTimeBar$Z_ioLVnzv4j6RV52b7wOPl7w1uo
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                DefaultTimeBar.this.m20528a(valueAnimator2);
            }
        });
        this.f37876J = -9223372036854775807L;
        this.f37871E = -9223372036854775807L;
        this.f37870D = 20;
        setFocusable(true);
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
    }

    /* renamed from: a */
    private static int m20530a(float f, int i) {
        return (int) ((i * f) + 0.5f);
    }

    /* renamed from: a */
    private void m20531a(float f) {
        this.f37888g.right = C11599af.m19997a((int) f, this.f37886e.left, this.f37886e.right);
    }

    /* renamed from: a */
    private void m20529a(long j) {
        this.f37875I = j;
        this.f37874H = true;
        setPressed(true);
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(true);
        }
        Iterator<AbstractC11509h.AbstractC11510a> it2 = this.f37867A.iterator();
        while (it2.hasNext()) {
            it2.next().mo20230a(j);
        }
    }

    /* renamed from: a */
    public /* synthetic */ void m20528a(ValueAnimator valueAnimator) {
        this.f37884c = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate(this.f37882a);
    }

    /* renamed from: a */
    private static boolean m20527a(Drawable drawable, int i) {
        return C11599af.f38648a >= 23 && drawable.setLayoutDirection(i);
    }

    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    /* JADX WARN: Type inference failed for: r0v35, types: [long] */
    /* renamed from: b */
    private void m20525b() {
        this.f37887f.set(this.f37886e);
        this.f37888g.set(this.f37886e);
        char c = this.f37874H ? this.f37875I : this.f37877K;
        if (this.f37876J > 0) {
            this.f37887f.right = Math.min(this.f37886e.left + ((int) ((this.f37886e.width() * this.f37878L) / this.f37876J)), this.f37886e.right);
            this.f37888g.right = Math.min(this.f37886e.left + ((int) ((this.f37886e.width() * c) / this.f37876J)), this.f37886e.right);
        } else {
            this.f37887f.right = this.f37886e.left;
            this.f37888g.right = this.f37886e.left;
        }
        invalidate(this.f37882a);
    }

    /* renamed from: b */
    private void m20524b(long j) {
        if (this.f37875I == j) {
            return;
        }
        this.f37875I = j;
        Iterator<AbstractC11509h.AbstractC11510a> it2 = this.f37867A.iterator();
        while (it2.hasNext()) {
            it2.next().mo20228b(j);
        }
    }

    /* renamed from: b */
    private void m20523b(boolean z) {
        removeCallbacks(this.f37907z);
        this.f37874H = false;
        setPressed(false);
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(false);
        }
        invalidate();
        Iterator<AbstractC11509h.AbstractC11510a> it2 = this.f37867A.iterator();
        while (it2.hasNext()) {
            it2.next().mo20229a(this.f37875I, z);
        }
    }

    /* renamed from: c */
    private long m20522c() {
        if (this.f37886e.width() <= 0 || this.f37876J == -9223372036854775807L) {
            return 0L;
        }
        return (this.f37888g.width() * this.f37876J) / this.f37886e.width();
    }

    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* renamed from: c */
    private boolean m20521c(long j) {
        long j2 = this.f37876J;
        if (j2 <= 0) {
            return false;
        }
        char c = this.f37874H ? this.f37875I : this.f37877K;
        long m19993a = C11599af.m19993a(c + j, 0L, j2);
        if (m19993a == c) {
            return false;
        }
        if (!this.f37874H) {
            m20529a(m19993a);
        } else {
            m20524b(m19993a);
        }
        m20525b();
        return true;
    }

    /* renamed from: d */
    private void m20520d() {
        Drawable drawable = this.f37895n;
        if (drawable == null || !drawable.isStateful() || !this.f37895n.setState(getDrawableState())) {
            return;
        }
        invalidate();
    }

    /* renamed from: e */
    private String m20519e() {
        return C11599af.m19967a(this.f37905x, this.f37906y, this.f37877K);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* renamed from: f */
    private long m20518f() {
        ?? r0 = this.f37871E;
        char c = r0;
        if (r0 == -9223372036854775807L) {
            long j = this.f37876J;
            if (j == -9223372036854775807L) {
                return 0L;
            }
            c = j / this.f37870D;
        }
        return c;
    }

    /* renamed from: g */
    public /* synthetic */ void m20517g() {
        m20523b(false);
    }

    @Override // com.google.android.exoplayer2.p346ui.AbstractC11509h
    /* renamed from: a */
    public final long mo20232a() {
        int width = (int) (this.f37886e.width() / this.f37869C);
        if (width != 0) {
            long j = this.f37876J;
            if (j != 0 && j != -9223372036854775807L) {
                return j / width;
            }
            return Long.MAX_VALUE;
        }
        return Long.MAX_VALUE;
    }

    @Override // com.google.android.exoplayer2.p346ui.AbstractC11509h
    /* renamed from: a */
    public final void mo20231a(AbstractC11509h.AbstractC11510a abstractC11510a) {
        C11593a.m20020b(abstractC11510a);
        this.f37867A.add(abstractC11510a);
    }

    /* renamed from: a */
    public final void m20526a(boolean z) {
        if (this.f37883b.isStarted()) {
            this.f37883b.cancel();
        }
        this.f37885d = z;
        this.f37884c = BitmapDescriptorFactory.HUE_RED;
        invalidate(this.f37882a);
    }

    @Override // android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        m20520d();
    }

    @Override // android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f37895n;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        Drawable drawable;
        int min;
        canvas.save();
        int height = this.f37886e.height();
        int centerY = this.f37886e.centerY() - (height / 2);
        int i = centerY + height;
        if (this.f37876J <= 0) {
            canvas.drawRect(this.f37886e.left, centerY, this.f37886e.right, i, this.f37891j);
        } else {
            int i2 = this.f37887f.left;
            int i3 = this.f37887f.right;
            int max = Math.max(Math.max(this.f37886e.left, i3), this.f37888g.right);
            if (max < this.f37886e.right) {
                canvas.drawRect(max, centerY, this.f37886e.right, i, this.f37891j);
            }
            int max2 = Math.max(i2, this.f37888g.right);
            if (i3 > max2) {
                canvas.drawRect(max2, centerY, i3, i, this.f37890i);
            }
            if (this.f37888g.width() > 0) {
                canvas.drawRect(this.f37888g.left, centerY, this.f37888g.right, i, this.f37889h);
            }
            if (this.f37879M != 0) {
                long[] jArr = (long[]) C11593a.m20020b(this.f37880N);
                boolean[] zArr = (boolean[]) C11593a.m20020b(this.f37881O);
                int i4 = this.f37899r / 2;
                for (int i5 = 0; i5 < this.f37879M; i5++) {
                    canvas.drawRect(this.f37886e.left + Math.min(this.f37886e.width() - this.f37899r, Math.max(0, ((int) ((this.f37886e.width() * C11599af.m19993a(jArr[i5], 0L, this.f37876J)) / this.f37876J)) - i4)), centerY, min + this.f37899r, i, zArr[i5] ? this.f37893l : this.f37892k);
                }
            }
        }
        if (this.f37876J > 0) {
            int m19997a = C11599af.m19997a(this.f37888g.right, this.f37888g.left, this.f37886e.right);
            int centerY2 = this.f37888g.centerY();
            if (this.f37895n == null) {
                canvas.drawCircle(m19997a, centerY2, (int) ((((this.f37874H || isFocused()) ? this.f37902u : isEnabled() ? this.f37900s : this.f37901t) * this.f37884c) / 2.0f), this.f37894m);
            } else {
                int intrinsicWidth = ((int) (drawable.getIntrinsicWidth() * this.f37884c)) / 2;
                int intrinsicHeight = ((int) (this.f37895n.getIntrinsicHeight() * this.f37884c)) / 2;
                this.f37895n.setBounds(m19997a - intrinsicWidth, centerY2 - intrinsicHeight, m19997a + intrinsicWidth, centerY2 + intrinsicHeight);
                this.f37895n.draw(canvas);
            }
        }
        canvas.restore();
    }

    @Override // android.view.View
    protected void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        if (!this.f37874H || z) {
            return;
        }
        m20523b(false);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (accessibilityEvent.getEventType() == 4) {
            accessibilityEvent.getText().add(m20519e());
        }
        accessibilityEvent.setClassName("android.widget.SeekBar");
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("android.widget.SeekBar");
        accessibilityNodeInfo.setContentDescription(m20519e());
        if (this.f37876J <= 0) {
            return;
        }
        if (C11599af.f38648a >= 21) {
            accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_FORWARD);
            accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_BACKWARD);
            return;
        }
        accessibilityNodeInfo.addAction(4096);
        accessibilityNodeInfo.addAction(PropertyFlags.UNSIGNED);
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
            long r0 = r0.m20518f()
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
            boolean r0 = r0.m20521c(r1)
            if (r0 == 0) goto L65
            r0 = r5
            r1 = r5
            java.lang.Runnable r1 = r1.f37907z
            boolean r0 = r0.removeCallbacks(r1)
            r0 = r5
            r1 = r5
            java.lang.Runnable r1 = r1.f37907z
            r2 = 1000(0x3e8, double:4.94E-321)
            boolean r0 = r0.postDelayed(r1, r2)
            r0 = 1
            return r0
        L57:
            r0 = r5
            boolean r0 = r0.f37874H
            if (r0 == 0) goto L65
            r0 = r5
            r1 = 0
            r0.m20523b(r1)
            r0 = 1
            return r0
        L65:
            r0 = r5
            r1 = r6
            r2 = r7
            boolean r0 = super.onKeyDown(r1, r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.p346ui.DefaultTimeBar.onKeyDown(int, android.view.KeyEvent):boolean");
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
        int i9 = this.f37885d ? 0 : this.f37903v;
        if (this.f37898q == 1) {
            i5 = (i8 - getPaddingBottom()) - this.f37897p;
            int paddingBottom = getPaddingBottom();
            int i10 = this.f37896o;
            i6 = ((i8 - paddingBottom) - i10) - Math.max(i9 - (i10 / 2), 0);
        } else {
            i5 = (i8 - this.f37897p) / 2;
            i6 = (i8 - this.f37896o) / 2;
        }
        this.f37882a.set(paddingLeft, i5, i7 - paddingRight, this.f37897p + i5);
        this.f37886e.set(this.f37882a.left + i9, i6, this.f37882a.right - i9, this.f37896o + i6);
        if (C11599af.f38648a >= 29 && ((rect = this.f37873G) == null || rect.width() != i7 || this.f37873G.height() != i8)) {
            Rect rect2 = new Rect(0, 0, i7, i8);
            this.f37873G = rect2;
            setSystemGestureExclusionRects(Collections.singletonList(rect2));
        }
        m20525b();
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (mode == 0) {
            size = this.f37897p;
        } else if (mode != 1073741824) {
            size = Math.min(this.f37897p, size);
        }
        setMeasuredDimension(View.MeasureSpec.getSize(i), size);
        m20520d();
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i) {
        Drawable drawable = this.f37895n;
        if (drawable == null || !m20527a(drawable, i)) {
            return;
        }
        invalidate();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z = false;
        if (!isEnabled() || this.f37876J <= 0) {
            return false;
        }
        this.f37868B.set((int) motionEvent.getX(), (int) motionEvent.getY());
        Point point = this.f37868B;
        int i = point.x;
        int i2 = point.y;
        int action = motionEvent.getAction();
        if (action == 0) {
            float f = i;
            if (!this.f37882a.contains((int) f, i2)) {
                return false;
            }
            m20531a(f);
            m20529a(m20522c());
            m20525b();
            invalidate();
            return true;
        }
        if (action != 1) {
            if (action == 2) {
                if (!this.f37874H) {
                    return false;
                }
                if (i2 < this.f37904w) {
                    int i3 = this.f37872F;
                    m20531a(i3 + ((i - i3) / 3));
                } else {
                    this.f37872F = i;
                    m20531a(i);
                }
                m20524b(m20522c());
                m20525b();
                invalidate();
                return true;
            } else if (action != 3) {
                return false;
            }
        }
        if (!this.f37874H) {
            return false;
        }
        if (motionEvent.getAction() == 3) {
            z = true;
        }
        m20523b(z);
        return true;
    }

    @Override // android.view.View
    public boolean performAccessibilityAction(int i, Bundle bundle) {
        if (super.performAccessibilityAction(i, bundle)) {
            return true;
        }
        if (this.f37876J <= 0) {
            return false;
        }
        if (i == 8192) {
            if (m20521c(-m20518f())) {
                m20523b(false);
            }
        } else if (i != 4096) {
            return false;
        } else {
            if (m20521c(m20518f())) {
                m20523b(false);
            }
        }
        sendAccessibilityEvent(4);
        return true;
    }

    @Override // com.google.android.exoplayer2.p346ui.AbstractC11509h
    public void setAdGroupTimesMs(long[] jArr, boolean[] zArr, int i) {
        C11593a.m20022a(i == 0 || !(jArr == null || zArr == null));
        this.f37879M = i;
        this.f37880N = jArr;
        this.f37881O = zArr;
        m20525b();
    }

    public void setAdMarkerColor(int i) {
        this.f37892k.setColor(i);
        invalidate(this.f37882a);
    }

    public void setBufferedColor(int i) {
        this.f37890i.setColor(i);
        invalidate(this.f37882a);
    }

    @Override // com.google.android.exoplayer2.p346ui.AbstractC11509h
    public void setBufferedPosition(long j) {
        this.f37878L = j;
        m20525b();
    }

    @Override // com.google.android.exoplayer2.p346ui.AbstractC11509h
    public void setDuration(long j) {
        this.f37876J = j;
        if (this.f37874H && j == -9223372036854775807L) {
            m20523b(true);
        }
        m20525b();
    }

    @Override // android.view.View, com.google.android.exoplayer2.p346ui.AbstractC11509h
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        if (!this.f37874H || z) {
            return;
        }
        m20523b(true);
    }

    public void setKeyCountIncrement(int i) {
        C11593a.m20022a(i > 0);
        this.f37870D = i;
        this.f37871E = -9223372036854775807L;
    }

    public void setKeyTimeIncrement(long j) {
        C11593a.m20022a(j > 0);
        this.f37870D = -1;
        this.f37871E = j;
    }

    public void setPlayedAdMarkerColor(int i) {
        this.f37893l.setColor(i);
        invalidate(this.f37882a);
    }

    public void setPlayedColor(int i) {
        this.f37889h.setColor(i);
        invalidate(this.f37882a);
    }

    @Override // com.google.android.exoplayer2.p346ui.AbstractC11509h
    public void setPosition(long j) {
        this.f37877K = j;
        setContentDescription(m20519e());
        m20525b();
    }

    public void setScrubberColor(int i) {
        this.f37894m.setColor(i);
        invalidate(this.f37882a);
    }

    public void setUnplayedColor(int i) {
        this.f37891j.setColor(i);
        invalidate(this.f37882a);
    }
}
