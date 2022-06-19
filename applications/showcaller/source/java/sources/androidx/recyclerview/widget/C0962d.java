package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.view.MotionEvent;
import androidx.recyclerview.widget.RecyclerView;
import p020b.p041h.p050l.C1679w;
/* renamed from: androidx.recyclerview.widget.d */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/d.class */
public class C0962d extends RecyclerView.AbstractC0920n implements RecyclerView.AbstractC0928r {

    /* renamed from: a */
    private static final int[] f4300a = {16842919};

    /* renamed from: b */
    private static final int[] f4301b = new int[0];

    /* renamed from: B */
    final ValueAnimator f4303B;

    /* renamed from: c */
    private final int f4307c;

    /* renamed from: d */
    private final int f4308d;

    /* renamed from: e */
    final StateListDrawable f4309e;

    /* renamed from: f */
    final Drawable f4310f;

    /* renamed from: g */
    private final int f4311g;

    /* renamed from: h */
    private final int f4312h;

    /* renamed from: i */
    private final StateListDrawable f4313i;

    /* renamed from: j */
    private final Drawable f4314j;

    /* renamed from: k */
    private final int f4315k;

    /* renamed from: l */
    private final int f4316l;

    /* renamed from: m */
    int f4317m;

    /* renamed from: n */
    int f4318n;

    /* renamed from: o */
    float f4319o;

    /* renamed from: p */
    int f4320p;

    /* renamed from: q */
    int f4321q;

    /* renamed from: r */
    float f4322r;

    /* renamed from: u */
    private RecyclerView f4325u;

    /* renamed from: s */
    private int f4323s = 0;

    /* renamed from: t */
    private int f4324t = 0;

    /* renamed from: v */
    private boolean f4326v = false;

    /* renamed from: w */
    private boolean f4327w = false;

    /* renamed from: x */
    private int f4328x = 0;

    /* renamed from: y */
    private int f4329y = 0;

    /* renamed from: z */
    private final int[] f4330z = new int[2];

    /* renamed from: A */
    private final int[] f4302A = new int[2];

    /* renamed from: C */
    int f4304C = 0;

    /* renamed from: D */
    private final Runnable f4305D = new RunnableC0963a();

    /* renamed from: E */
    private final RecyclerView.AbstractC0929s f4306E = new C0964b();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.recyclerview.widget.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/d$a.class */
    public class RunnableC0963a implements Runnable {
        RunnableC0963a() {
            C0962d.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            C0962d.this.m31450q(500);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.recyclerview.widget.d$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/d$b.class */
    public class C0964b extends RecyclerView.AbstractC0929s {
        C0964b() {
            C0962d.this = r4;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0929s
        /* renamed from: b */
        public void mo4984b(RecyclerView recyclerView, int i, int i2) {
            C0962d.this.m31463B(recyclerView.computeHorizontalScrollOffset(), recyclerView.computeVerticalScrollOffset());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.recyclerview.widget.d$c */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/d$c.class */
    public class C0965c extends AnimatorListenerAdapter {

        /* renamed from: a */
        private boolean f4333a = false;

        C0965c() {
            C0962d.this = r4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f4333a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.f4333a) {
                this.f4333a = false;
            } else if (((Float) C0962d.this.f4303B.getAnimatedValue()).floatValue() == 0.0f) {
                C0962d c0962d = C0962d.this;
                c0962d.f4304C = 0;
                c0962d.m31442y(0);
            } else {
                C0962d c0962d2 = C0962d.this;
                c0962d2.f4304C = 2;
                c0962d2.m31445v();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.recyclerview.widget.d$d */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/d$d.class */
    public class C0966d implements ValueAnimator.AnimatorUpdateListener {
        C0966d() {
            C0962d.this = r4;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            int floatValue = (int) (((Float) valueAnimator.getAnimatedValue()).floatValue() * 255.0f);
            C0962d.this.f4309e.setAlpha(floatValue);
            C0962d.this.f4310f.setAlpha(floatValue);
            C0962d.this.m31445v();
        }
    }

    public C0962d(RecyclerView recyclerView, StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2, int i, int i2, int i3) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f4303B = ofFloat;
        this.f4309e = stateListDrawable;
        this.f4310f = drawable;
        this.f4313i = stateListDrawable2;
        this.f4314j = drawable2;
        this.f4311g = Math.max(i, stateListDrawable.getIntrinsicWidth());
        this.f4312h = Math.max(i, drawable.getIntrinsicWidth());
        this.f4315k = Math.max(i, stateListDrawable2.getIntrinsicWidth());
        this.f4316l = Math.max(i, drawable2.getIntrinsicWidth());
        this.f4307c = i2;
        this.f4308d = i3;
        stateListDrawable.setAlpha(255);
        drawable.setAlpha(255);
        ofFloat.addListener(new C0965c());
        ofFloat.addUpdateListener(new C0966d());
        m31457j(recyclerView);
    }

    /* renamed from: C */
    private void m31462C(float f) {
        int[] m31451p = m31451p();
        float max = Math.max(m31451p[0], Math.min(m31451p[1], f));
        if (Math.abs(this.f4318n - max) < 2.0f) {
            return;
        }
        int m31443x = m31443x(this.f4319o, max, m31451p, this.f4325u.computeVerticalScrollRange(), this.f4325u.computeVerticalScrollOffset(), this.f4324t);
        if (m31443x != 0) {
            this.f4325u.scrollBy(0, m31443x);
        }
        this.f4319o = max;
    }

    /* renamed from: k */
    private void m31456k() {
        this.f4325u.removeCallbacks(this.f4305D);
    }

    /* renamed from: l */
    private void m31455l() {
        this.f4325u.m32052X0(this);
        this.f4325u.m32050Y0(this);
        this.f4325u.m32048Z0(this.f4306E);
        m31456k();
    }

    /* renamed from: m */
    private void m31454m(Canvas canvas) {
        int i = this.f4324t;
        int i2 = this.f4315k;
        int i3 = i - i2;
        int i4 = this.f4321q;
        int i5 = this.f4320p;
        int i6 = i4 - (i5 / 2);
        this.f4313i.setBounds(0, 0, i5, i2);
        this.f4314j.setBounds(0, 0, this.f4323s, this.f4316l);
        canvas.translate(0.0f, i3);
        this.f4314j.draw(canvas);
        canvas.translate(i6, 0.0f);
        this.f4313i.draw(canvas);
        canvas.translate(-i6, -i3);
    }

    /* renamed from: n */
    private void m31453n(Canvas canvas) {
        int i = this.f4323s;
        int i2 = this.f4311g;
        int i3 = i - i2;
        int i4 = this.f4318n;
        int i5 = this.f4317m;
        int i6 = i4 - (i5 / 2);
        this.f4309e.setBounds(0, 0, i2, i5);
        this.f4310f.setBounds(0, 0, this.f4312h, this.f4324t);
        if (!m31448s()) {
            canvas.translate(i3, 0.0f);
            this.f4310f.draw(canvas);
            canvas.translate(0.0f, i6);
            this.f4309e.draw(canvas);
            canvas.translate(-i3, -i6);
            return;
        }
        this.f4310f.draw(canvas);
        canvas.translate(this.f4311g, i6);
        canvas.scale(-1.0f, 1.0f);
        this.f4309e.draw(canvas);
        canvas.scale(-1.0f, 1.0f);
        canvas.translate(-this.f4311g, -i6);
    }

    /* renamed from: o */
    private int[] m31452o() {
        int[] iArr = this.f4302A;
        int i = this.f4308d;
        iArr[0] = i;
        iArr[1] = this.f4323s - i;
        return iArr;
    }

    /* renamed from: p */
    private int[] m31451p() {
        int[] iArr = this.f4330z;
        int i = this.f4308d;
        iArr[0] = i;
        iArr[1] = this.f4324t - i;
        return iArr;
    }

    /* renamed from: r */
    private void m31449r(float f) {
        int[] m31452o = m31452o();
        float max = Math.max(m31452o[0], Math.min(m31452o[1], f));
        if (Math.abs(this.f4321q - max) < 2.0f) {
            return;
        }
        int m31443x = m31443x(this.f4322r, max, m31452o, this.f4325u.computeHorizontalScrollRange(), this.f4325u.computeHorizontalScrollOffset(), this.f4323s);
        if (m31443x != 0) {
            this.f4325u.scrollBy(m31443x, 0);
        }
        this.f4322r = max;
    }

    /* renamed from: s */
    private boolean m31448s() {
        boolean z = true;
        if (C1679w.m29346C(this.f4325u) != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: w */
    private void m31444w(int i) {
        m31456k();
        this.f4325u.postDelayed(this.f4305D, i);
    }

    /* renamed from: x */
    private int m31443x(float f, float f2, int[] iArr, int i, int i2, int i3) {
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

    /* renamed from: z */
    private void m31441z() {
        this.f4325u.m32027h(this);
        this.f4325u.m32018k(this);
        this.f4325u.m32015l(this.f4306E);
    }

    /* renamed from: A */
    public void m31464A() {
        int i = this.f4304C;
        if (i != 0) {
            if (i != 3) {
                return;
            }
            this.f4303B.cancel();
        }
        this.f4304C = 1;
        ValueAnimator valueAnimator = this.f4303B;
        valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 1.0f);
        this.f4303B.setDuration(500L);
        this.f4303B.setStartDelay(0L);
        this.f4303B.start();
    }

    /* renamed from: B */
    void m31463B(int i, int i2) {
        int computeVerticalScrollRange = this.f4325u.computeVerticalScrollRange();
        int i3 = this.f4324t;
        this.f4326v = computeVerticalScrollRange - i3 > 0 && i3 >= this.f4307c;
        int computeHorizontalScrollRange = this.f4325u.computeHorizontalScrollRange();
        int i4 = this.f4323s;
        boolean z = computeHorizontalScrollRange - i4 > 0 && i4 >= this.f4307c;
        this.f4327w = z;
        boolean z2 = this.f4326v;
        if (!z2 && !z) {
            if (this.f4328x == 0) {
                return;
            }
            m31442y(0);
            return;
        }
        if (z2) {
            float f = i3;
            this.f4318n = (int) ((f * (i2 + (f / 2.0f))) / computeVerticalScrollRange);
            this.f4317m = Math.min(i3, (i3 * i3) / computeVerticalScrollRange);
        }
        if (this.f4327w) {
            float f2 = i4;
            this.f4321q = (int) ((f2 * (i + (f2 / 2.0f))) / computeHorizontalScrollRange);
            this.f4320p = Math.min(i4, (i4 * i4) / computeHorizontalScrollRange);
        }
        int i5 = this.f4328x;
        if (i5 != 0 && i5 != 1) {
            return;
        }
        m31442y(1);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0928r
    /* renamed from: a */
    public void mo31461a(RecyclerView recyclerView, MotionEvent motionEvent) {
        if (this.f4328x == 0) {
            return;
        }
        if (motionEvent.getAction() == 0) {
            boolean m31446u = m31446u(motionEvent.getX(), motionEvent.getY());
            boolean m31447t = m31447t(motionEvent.getX(), motionEvent.getY());
            if (!m31446u && !m31447t) {
                return;
            }
            if (m31447t) {
                this.f4329y = 1;
                this.f4322r = (int) motionEvent.getX();
            } else if (m31446u) {
                this.f4329y = 2;
                this.f4319o = (int) motionEvent.getY();
            }
            m31442y(2);
        } else if (motionEvent.getAction() == 1 && this.f4328x == 2) {
            this.f4319o = 0.0f;
            this.f4322r = 0.0f;
            m31442y(1);
            this.f4329y = 0;
        } else if (motionEvent.getAction() != 2 || this.f4328x != 2) {
        } else {
            m31464A();
            if (this.f4329y == 1) {
                m31449r(motionEvent.getX());
            }
            if (this.f4329y != 2) {
                return;
            }
            m31462C(motionEvent.getY());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x007b, code lost:
        if (r0 == 2) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x003f, code lost:
        if (r0 != false) goto L10;
     */
    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0928r
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo31460b(androidx.recyclerview.widget.RecyclerView r5, android.view.MotionEvent r6) {
        /*
            r4 = this;
            r0 = r4
            int r0 = r0.f4328x
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
            boolean r0 = r0.m31446u(r1, r2)
            r9 = r0
            r0 = r4
            r1 = r6
            float r1 = r1.getX()
            r2 = r6
            float r2 = r2.getY()
            boolean r0 = r0.m31447t(r1, r2)
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
            r0.f4329y = r1
            r0 = r4
            r1 = r6
            float r1 = r1.getX()
            int r1 = (int) r1
            float r1 = (float) r1
            r0.f4322r = r1
            goto L6d
        L59:
            r0 = r9
            if (r0 == 0) goto L6d
            r0 = r4
            r1 = 2
            r0.f4329y = r1
            r0 = r4
            r1 = r6
            float r1 = r1.getY()
            int r1 = (int) r1
            float r1 = (float) r1
            r0.f4319o = r1
        L6d:
            r0 = r4
            r1 = 2
            r0.m31442y(r1)
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
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.C0962d.mo31460b(androidx.recyclerview.widget.RecyclerView, android.view.MotionEvent):boolean");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0928r
    /* renamed from: c */
    public void mo31459c(boolean z) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0920n
    /* renamed from: i */
    public void mo31458i(Canvas canvas, RecyclerView recyclerView, RecyclerView.C0938y c0938y) {
        if (this.f4323s != this.f4325u.getWidth() || this.f4324t != this.f4325u.getHeight()) {
            this.f4323s = this.f4325u.getWidth();
            this.f4324t = this.f4325u.getHeight();
            m31442y(0);
        } else if (this.f4304C == 0) {
        } else {
            if (this.f4326v) {
                m31453n(canvas);
            }
            if (!this.f4327w) {
                return;
            }
            m31454m(canvas);
        }
    }

    /* renamed from: j */
    public void m31457j(RecyclerView recyclerView) {
        RecyclerView recyclerView2 = this.f4325u;
        if (recyclerView2 == recyclerView) {
            return;
        }
        if (recyclerView2 != null) {
            m31455l();
        }
        this.f4325u = recyclerView;
        if (recyclerView == null) {
            return;
        }
        m31441z();
    }

    /* renamed from: q */
    void m31450q(int i) {
        int i2 = this.f4304C;
        if (i2 == 1) {
            this.f4303B.cancel();
        } else if (i2 != 2) {
            return;
        }
        this.f4304C = 3;
        ValueAnimator valueAnimator = this.f4303B;
        valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 0.0f);
        this.f4303B.setDuration(i);
        this.f4303B.start();
    }

    /* renamed from: t */
    boolean m31447t(float f, float f2) {
        boolean z;
        if (f2 >= this.f4324t - this.f4315k) {
            int i = this.f4321q;
            int i2 = this.f4320p;
            if (f >= i - (i2 / 2) && f <= i + (i2 / 2)) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    /* renamed from: u */
    boolean m31446u(float f, float f2) {
        boolean z;
        if (!m31448s() ? f >= this.f4323s - this.f4311g : f <= this.f4311g) {
            int i = this.f4318n;
            int i2 = this.f4317m;
            if (f2 >= i - (i2 / 2) && f2 <= i + (i2 / 2)) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    /* renamed from: v */
    void m31445v() {
        this.f4325u.invalidate();
    }

    /* renamed from: y */
    void m31442y(int i) {
        if (i == 2 && this.f4328x != 2) {
            this.f4309e.setState(f4300a);
            m31456k();
        }
        if (i == 0) {
            m31445v();
        } else {
            m31464A();
        }
        if (this.f4328x == 2 && i != 2) {
            this.f4309e.setState(f4301b);
            m31444w(1200);
        } else if (i == 1) {
            m31444w(1500);
        }
        this.f4328x = i;
    }
}
