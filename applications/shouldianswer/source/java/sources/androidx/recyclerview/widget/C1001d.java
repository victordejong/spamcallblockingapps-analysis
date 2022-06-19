package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.view.MotionEvent;
import androidx.core.p023g.C0552u;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.flexbox.FlexItem;
import com.google.android.gms.common.ConnectionResult;
/* renamed from: androidx.recyclerview.widget.d */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/d.class */
public class C1001d extends RecyclerView.AbstractC0955h implements RecyclerView.AbstractC0964m {

    /* renamed from: k */
    private static final int[] f3136k = {16842919};

    /* renamed from: l */
    private static final int[] f3137l = new int[0];

    /* renamed from: a */
    final StateListDrawable f3143a;

    /* renamed from: b */
    final Drawable f3144b;

    /* renamed from: c */
    int f3145c;

    /* renamed from: d */
    int f3146d;

    /* renamed from: e */
    float f3147e;

    /* renamed from: f */
    int f3148f;

    /* renamed from: g */
    int f3149g;

    /* renamed from: h */
    float f3150h;

    /* renamed from: m */
    private final int f3153m;

    /* renamed from: n */
    private final int f3154n;

    /* renamed from: o */
    private final int f3155o;

    /* renamed from: p */
    private final int f3156p;

    /* renamed from: q */
    private final StateListDrawable f3157q;

    /* renamed from: r */
    private final Drawable f3158r;

    /* renamed from: s */
    private final int f3159s;

    /* renamed from: t */
    private final int f3160t;

    /* renamed from: w */
    private RecyclerView f3163w;

    /* renamed from: u */
    private int f3161u = 0;

    /* renamed from: v */
    private int f3162v = 0;

    /* renamed from: x */
    private boolean f3164x = false;

    /* renamed from: y */
    private boolean f3165y = false;

    /* renamed from: z */
    private int f3166z = 0;

    /* renamed from: A */
    private int f3138A = 0;

    /* renamed from: B */
    private final int[] f3139B = new int[2];

    /* renamed from: C */
    private final int[] f3140C = new int[2];

    /* renamed from: i */
    final ValueAnimator f3151i = ValueAnimator.ofFloat(FlexItem.FLEX_GROW_DEFAULT, 1.0f);

    /* renamed from: j */
    int f3152j = 0;

    /* renamed from: D */
    private final Runnable f3141D = new Runnable() { // from class: androidx.recyclerview.widget.d.1
        @Override // java.lang.Runnable
        public void run() {
            C1001d.this.m4626b(500);
        }
    };

    /* renamed from: E */
    private final RecyclerView.AbstractC0965n f3142E = new RecyclerView.AbstractC0965n() { // from class: androidx.recyclerview.widget.d.2
        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0965n
        /* renamed from: a */
        public void mo572a(RecyclerView recyclerView, int i, int i2) {
            C1001d.this.m4632a(recyclerView.computeHorizontalScrollOffset(), recyclerView.computeVerticalScrollOffset());
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.recyclerview.widget.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/d$a.class */
    public class C1004a extends AnimatorListenerAdapter {

        /* renamed from: b */
        private boolean f3170b = false;

        C1004a() {
            C1001d.this = r4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f3170b = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.f3170b) {
                this.f3170b = false;
            } else if (((Float) C1001d.this.f3151i.getAnimatedValue()).floatValue() == FlexItem.FLEX_GROW_DEFAULT) {
                C1001d c1001d = C1001d.this;
                c1001d.f3152j = 0;
                c1001d.m4633a(0);
            } else {
                C1001d c1001d2 = C1001d.this;
                c1001d2.f3152j = 2;
                c1001d2.m4637a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.recyclerview.widget.d$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/d$b.class */
    public class C1005b implements ValueAnimator.AnimatorUpdateListener {
        C1005b() {
            C1001d.this = r4;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            int floatValue = (int) (((Float) valueAnimator.getAnimatedValue()).floatValue() * 255.0f);
            C1001d.this.f3143a.setAlpha(floatValue);
            C1001d.this.f3144b.setAlpha(floatValue);
            C1001d.this.m4637a();
        }
    }

    public C1001d(RecyclerView recyclerView, StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2, int i, int i2, int i3) {
        this.f3143a = stateListDrawable;
        this.f3144b = drawable;
        this.f3157q = stateListDrawable2;
        this.f3158r = drawable2;
        this.f3155o = Math.max(i, stateListDrawable.getIntrinsicWidth());
        this.f3156p = Math.max(i, drawable.getIntrinsicWidth());
        this.f3159s = Math.max(i, stateListDrawable2.getIntrinsicWidth());
        this.f3160t = Math.max(i, drawable2.getIntrinsicWidth());
        this.f3153m = i2;
        this.f3154n = i3;
        this.f3143a.setAlpha(255);
        this.f3144b.setAlpha(255);
        this.f3151i.addListener(new C1004a());
        this.f3151i.addUpdateListener(new C1005b());
        m4630a(recyclerView);
    }

    /* renamed from: a */
    private int m4634a(float f, float f2, int[] iArr, int i, int i2, int i3) {
        int i4 = iArr[1] - iArr[0];
        if (i4 == 0) {
            return 0;
        }
        float f3 = (f2 - f) / i4;
        int i5 = i - i3;
        int i6 = (int) (f3 * i5);
        int i7 = i2 + i6;
        if (i7 < i5 && i7 >= 0) {
            return i6;
        }
        return 0;
    }

    /* renamed from: a */
    private void m4636a(float f) {
        int[] m4619g = m4619g();
        float max = Math.max(m4619g[0], Math.min(m4619g[1], f));
        if (Math.abs(this.f3146d - max) < 2.0f) {
            return;
        }
        int m4634a = m4634a(this.f3147e, max, m4619g, this.f3163w.computeVerticalScrollRange(), this.f3163w.computeVerticalScrollOffset(), this.f3162v);
        if (m4634a != 0) {
            this.f3163w.scrollBy(0, m4634a);
        }
        this.f3147e = max;
    }

    /* renamed from: a */
    private void m4631a(Canvas canvas) {
        int i = this.f3161u;
        int i2 = this.f3155o;
        int i3 = i - i2;
        int i4 = this.f3146d;
        int i5 = this.f3145c;
        int i6 = i4 - (i5 / 2);
        this.f3143a.setBounds(0, 0, i2, i5);
        this.f3144b.setBounds(0, 0, this.f3156p, this.f3162v);
        if (!m4621e()) {
            canvas.translate(i3, FlexItem.FLEX_GROW_DEFAULT);
            this.f3144b.draw(canvas);
            canvas.translate(FlexItem.FLEX_GROW_DEFAULT, i6);
            this.f3143a.draw(canvas);
            canvas.translate(-i3, -i6);
            return;
        }
        this.f3144b.draw(canvas);
        canvas.translate(this.f3155o, i6);
        canvas.scale(-1.0f, 1.0f);
        this.f3143a.draw(canvas);
        canvas.scale(1.0f, 1.0f);
        canvas.translate(-this.f3155o, -i6);
    }

    /* renamed from: b */
    private void m4628b(float f) {
        int[] m4618h = m4618h();
        float max = Math.max(m4618h[0], Math.min(m4618h[1], f));
        if (Math.abs(this.f3149g - max) < 2.0f) {
            return;
        }
        int m4634a = m4634a(this.f3150h, max, m4618h, this.f3163w.computeHorizontalScrollRange(), this.f3163w.computeHorizontalScrollOffset(), this.f3161u);
        if (m4634a != 0) {
            this.f3163w.scrollBy(m4634a, 0);
        }
        this.f3150h = max;
    }

    /* renamed from: b */
    private void m4625b(Canvas canvas) {
        int i = this.f3162v;
        int i2 = this.f3159s;
        int i3 = i - i2;
        int i4 = this.f3149g;
        int i5 = this.f3148f;
        int i6 = i4 - (i5 / 2);
        this.f3157q.setBounds(0, 0, i5, i2);
        this.f3158r.setBounds(0, 0, this.f3161u, this.f3160t);
        canvas.translate(FlexItem.FLEX_GROW_DEFAULT, i3);
        this.f3158r.draw(canvas);
        canvas.translate(i6, FlexItem.FLEX_GROW_DEFAULT);
        this.f3157q.draw(canvas);
        canvas.translate(-i6, -i3);
    }

    /* renamed from: c */
    private void m4624c() {
        this.f3163w.addItemDecoration(this);
        this.f3163w.addOnItemTouchListener(this);
        this.f3163w.addOnScrollListener(this.f3142E);
    }

    /* renamed from: c */
    private void m4623c(int i) {
        m4620f();
        this.f3163w.postDelayed(this.f3141D, i);
    }

    /* renamed from: d */
    private void m4622d() {
        this.f3163w.removeItemDecoration(this);
        this.f3163w.removeOnItemTouchListener(this);
        this.f3163w.removeOnScrollListener(this.f3142E);
        m4620f();
    }

    /* renamed from: e */
    private boolean m4621e() {
        boolean z = true;
        if (C0552u.m6245f(this.f3163w) != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: f */
    private void m4620f() {
        this.f3163w.removeCallbacks(this.f3141D);
    }

    /* renamed from: g */
    private int[] m4619g() {
        int[] iArr = this.f3139B;
        int i = this.f3154n;
        iArr[0] = i;
        iArr[1] = this.f3162v - i;
        return iArr;
    }

    /* renamed from: h */
    private int[] m4618h() {
        int[] iArr = this.f3140C;
        int i = this.f3154n;
        iArr[0] = i;
        iArr[1] = this.f3161u - i;
        return iArr;
    }

    /* renamed from: a */
    void m4637a() {
        this.f3163w.invalidate();
    }

    /* renamed from: a */
    void m4633a(int i) {
        if (i == 2 && this.f3166z != 2) {
            this.f3143a.setState(f3136k);
            m4620f();
        }
        if (i == 0) {
            m4637a();
        } else {
            m4629b();
        }
        if (this.f3166z == 2 && i != 2) {
            this.f3143a.setState(f3137l);
            m4623c(1200);
        } else if (i == 1) {
            m4623c(ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED);
        }
        this.f3166z = i;
    }

    /* renamed from: a */
    void m4632a(int i, int i2) {
        int computeVerticalScrollRange = this.f3163w.computeVerticalScrollRange();
        int i3 = this.f3162v;
        this.f3164x = computeVerticalScrollRange - i3 > 0 && i3 >= this.f3153m;
        int computeHorizontalScrollRange = this.f3163w.computeHorizontalScrollRange();
        int i4 = this.f3161u;
        this.f3165y = computeHorizontalScrollRange - i4 > 0 && i4 >= this.f3153m;
        if (!this.f3164x && !this.f3165y) {
            if (this.f3166z == 0) {
                return;
            }
            m4633a(0);
            return;
        }
        if (this.f3164x) {
            float f = i3;
            this.f3146d = (int) ((f * (i2 + (f / 2.0f))) / computeVerticalScrollRange);
            this.f3145c = Math.min(i3, (i3 * i3) / computeVerticalScrollRange);
        }
        if (this.f3165y) {
            float f2 = i4;
            this.f3149g = (int) ((f2 * (i + (f2 / 2.0f))) / computeHorizontalScrollRange);
            this.f3148f = Math.min(i4, (i4 * i4) / computeHorizontalScrollRange);
        }
        int i5 = this.f3166z;
        if (i5 != 0 && i5 != 1) {
            return;
        }
        m4633a(1);
    }

    /* renamed from: a */
    public void m4630a(RecyclerView recyclerView) {
        RecyclerView recyclerView2 = this.f3163w;
        if (recyclerView2 == recyclerView) {
            return;
        }
        if (recyclerView2 != null) {
            m4622d();
        }
        this.f3163w = recyclerView;
        if (this.f3163w == null) {
            return;
        }
        m4624c();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0964m
    /* renamed from: a */
    public void mo3991a(boolean z) {
    }

    /* renamed from: a */
    boolean m4635a(float f, float f2) {
        boolean z;
        if (!m4621e() ? f >= this.f3161u - this.f3155o : f <= this.f3155o / 2) {
            int i = this.f3146d;
            int i2 = this.f3145c;
            if (f2 >= i - (i2 / 2) && f2 <= i + (i2 / 2)) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x007b, code lost:
        if (r0 == 2) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x003f, code lost:
        if (r0 != false) goto L10;
     */
    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0964m
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo3992a(androidx.recyclerview.widget.RecyclerView r5, android.view.MotionEvent r6) {
        /*
            r4 = this;
            r0 = r4
            int r0 = r0.f3166z
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = r7
            r1 = 1
            if (r0 != r1) goto L75
            r0 = r4
            r1 = r6
            float r1 = r1.getX()
            r2 = r6
            float r2 = r2.getY()
            boolean r0 = r0.m4635a(r1, r2)
            r9 = r0
            r0 = r4
            r1 = r6
            float r1 = r1.getX()
            r2 = r6
            float r2 = r2.getY()
            boolean r0 = r0.m4627b(r1, r2)
            r10 = r0
            r0 = r8
            r11 = r0
            r0 = r6
            int r0 = r0.getAction()
            if (r0 != 0) goto L81
            r0 = r9
            if (r0 != 0) goto L42
            r0 = r8
            r11 = r0
            r0 = r10
            if (r0 == 0) goto L81
        L42:
            r0 = r10
            if (r0 == 0) goto L59
            r0 = r4
            r1 = 1
            r0.f3138A = r1
            r0 = r4
            r1 = r6
            float r1 = r1.getX()
            int r1 = (int) r1
            float r1 = (float) r1
            r0.f3150h = r1
            goto L6d
        L59:
            r0 = r9
            if (r0 == 0) goto L6d
            r0 = r4
            r1 = 2
            r0.f3138A = r1
            r0 = r4
            r1 = r6
            float r1 = r1.getY()
            int r1 = (int) r1
            float r1 = (float) r1
            r0.f3147e = r1
        L6d:
            r0 = r4
            r1 = 2
            r0.m4633a(r1)
            goto L7e
        L75:
            r0 = r8
            r11 = r0
            r0 = r7
            r1 = 2
            if (r0 != r1) goto L81
        L7e:
            r0 = 1
            r11 = r0
        L81:
            r0 = r11
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.C1001d.mo3992a(androidx.recyclerview.widget.RecyclerView, android.view.MotionEvent):boolean");
    }

    /* renamed from: b */
    public void m4629b() {
        int i = this.f3152j;
        if (i != 0) {
            if (i != 3) {
                return;
            }
            this.f3151i.cancel();
        }
        this.f3152j = 1;
        ValueAnimator valueAnimator = this.f3151i;
        valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 1.0f);
        this.f3151i.setDuration(500L);
        this.f3151i.setStartDelay(0L);
        this.f3151i.start();
    }

    /* renamed from: b */
    void m4626b(int i) {
        int i2 = this.f3152j;
        if (i2 == 1) {
            this.f3151i.cancel();
        } else if (i2 != 2) {
            return;
        }
        this.f3152j = 3;
        ValueAnimator valueAnimator = this.f3151i;
        valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), FlexItem.FLEX_GROW_DEFAULT);
        this.f3151i.setDuration(i);
        this.f3151i.start();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0964m
    /* renamed from: b */
    public void mo3990b(RecyclerView recyclerView, MotionEvent motionEvent) {
        if (this.f3166z == 0) {
            return;
        }
        if (motionEvent.getAction() == 0) {
            boolean m4635a = m4635a(motionEvent.getX(), motionEvent.getY());
            boolean m4627b = m4627b(motionEvent.getX(), motionEvent.getY());
            if (!m4635a && !m4627b) {
                return;
            }
            if (m4627b) {
                this.f3138A = 1;
                this.f3150h = (int) motionEvent.getX();
            } else if (m4635a) {
                this.f3138A = 2;
                this.f3147e = (int) motionEvent.getY();
            }
            m4633a(2);
        } else if (motionEvent.getAction() == 1 && this.f3166z == 2) {
            this.f3147e = FlexItem.FLEX_GROW_DEFAULT;
            this.f3150h = FlexItem.FLEX_GROW_DEFAULT;
            m4633a(1);
            this.f3138A = 0;
        } else if (motionEvent.getAction() != 2 || this.f3166z != 2) {
        } else {
            m4629b();
            if (this.f3138A == 1) {
                m4628b(motionEvent.getX());
            }
            if (this.f3138A != 2) {
                return;
            }
            m4636a(motionEvent.getY());
        }
    }

    /* renamed from: b */
    boolean m4627b(float f, float f2) {
        boolean z;
        if (f2 >= this.f3162v - this.f3159s) {
            int i = this.f3149g;
            int i2 = this.f3148f;
            if (f >= i - (i2 / 2) && f <= i + (i2 / 2)) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0955h
    public void onDrawOver(Canvas canvas, RecyclerView recyclerView, RecyclerView.C0974t c0974t) {
        if (this.f3161u != this.f3163w.getWidth() || this.f3162v != this.f3163w.getHeight()) {
            this.f3161u = this.f3163w.getWidth();
            this.f3162v = this.f3163w.getHeight();
            m4633a(0);
        } else if (this.f3152j == 0) {
        } else {
            if (this.f3164x) {
                m4631a(canvas);
            }
            if (!this.f3165y) {
                return;
            }
            m4625b(canvas);
        }
    }
}
