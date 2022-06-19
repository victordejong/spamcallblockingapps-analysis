package p1727n3.p1744b0.p1745a;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.view.MotionEvent;
import androidx.recyclerview.widget.RecyclerView;
import java.util.concurrent.atomic.AtomicInteger;
import p1727n3.p1807k.p1821i.C26614s;
/* renamed from: n3.b0.a.j */
/* loaded from: classes-dex2jar.jar:n3/b0/a/j.class */
public class C25596j extends RecyclerView.AbstractC0328n implements RecyclerView.AbstractC0337s {

    /* renamed from: D */
    public static final int[] f71677D = {16842919};

    /* renamed from: E */
    public static final int[] f71678E = new int[0];

    /* renamed from: C */
    public final RecyclerView.AbstractC0338t f71681C;

    /* renamed from: a */
    public final int f71682a;

    /* renamed from: b */
    public final int f71683b;

    /* renamed from: c */
    public final StateListDrawable f71684c;

    /* renamed from: d */
    public final Drawable f71685d;

    /* renamed from: e */
    public final int f71686e;

    /* renamed from: f */
    public final int f71687f;

    /* renamed from: g */
    public final StateListDrawable f71688g;

    /* renamed from: h */
    public final Drawable f71689h;

    /* renamed from: i */
    public final int f71690i;

    /* renamed from: j */
    public final int f71691j;

    /* renamed from: k */
    public int f71692k;

    /* renamed from: l */
    public int f71693l;

    /* renamed from: m */
    public float f71694m;

    /* renamed from: n */
    public int f71695n;

    /* renamed from: o */
    public int f71696o;

    /* renamed from: p */
    public float f71697p;

    /* renamed from: s */
    public RecyclerView f71700s;

    /* renamed from: z */
    public final ValueAnimator f71707z;

    /* renamed from: q */
    public int f71698q = 0;

    /* renamed from: r */
    public int f71699r = 0;

    /* renamed from: t */
    public boolean f71701t = false;

    /* renamed from: u */
    public boolean f71702u = false;

    /* renamed from: v */
    public int f71703v = 0;

    /* renamed from: w */
    public int f71704w = 0;

    /* renamed from: x */
    public final int[] f71705x = new int[2];

    /* renamed from: y */
    public final int[] f71706y = new int[2];

    /* renamed from: A */
    public int f71679A = 0;

    /* renamed from: B */
    public final Runnable f71680B = new RunnableC25597a();

    /* renamed from: n3.b0.a.j$a */
    /* loaded from: classes-dex2jar.jar:n3/b0/a/j$a.class */
    public class RunnableC25597a implements Runnable {
        public RunnableC25597a() {
            C25596j.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            C25596j c25596j = C25596j.this;
            int i = c25596j.f71679A;
            if (i == 1) {
                c25596j.f71707z.cancel();
            } else if (i != 2) {
                return;
            }
            c25596j.f71679A = 3;
            ValueAnimator valueAnimator = c25596j.f71707z;
            valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 0.0f);
            c25596j.f71707z.setDuration(500);
            c25596j.f71707z.start();
        }
    }

    /* renamed from: n3.b0.a.j$b */
    /* loaded from: classes-dex2jar.jar:n3/b0/a/j$b.class */
    public class C25598b extends RecyclerView.AbstractC0338t {
        public C25598b() {
            C25596j.this = r4;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0338t
        public void onScrolled(RecyclerView recyclerView, int i, int i2) {
            C25596j c25596j = C25596j.this;
            int computeHorizontalScrollOffset = recyclerView.computeHorizontalScrollOffset();
            int computeVerticalScrollOffset = recyclerView.computeVerticalScrollOffset();
            int computeVerticalScrollRange = c25596j.f71700s.computeVerticalScrollRange();
            int i3 = c25596j.f71699r;
            c25596j.f71701t = computeVerticalScrollRange - i3 > 0 && i3 >= c25596j.f71682a;
            int computeHorizontalScrollRange = c25596j.f71700s.computeHorizontalScrollRange();
            int i4 = c25596j.f71698q;
            boolean z = computeHorizontalScrollRange - i4 > 0 && i4 >= c25596j.f71682a;
            c25596j.f71702u = z;
            boolean z2 = c25596j.f71701t;
            if (!z2 && !z) {
                if (c25596j.f71703v == 0) {
                    return;
                }
                c25596j.m3168h(0);
                return;
            }
            if (z2) {
                float f = computeVerticalScrollOffset;
                float f2 = i3;
                c25596j.f71693l = (int) ((((f2 / 2.0f) + f) * f2) / computeVerticalScrollRange);
                c25596j.f71692k = Math.min(i3, (i3 * i3) / computeVerticalScrollRange);
            }
            if (c25596j.f71702u) {
                float f3 = computeHorizontalScrollOffset;
                float f4 = i4;
                c25596j.f71696o = (int) ((((f4 / 2.0f) + f3) * f4) / computeHorizontalScrollRange);
                c25596j.f71695n = Math.min(i4, (i4 * i4) / computeHorizontalScrollRange);
            }
            int i5 = c25596j.f71703v;
            if (i5 != 0 && i5 != 1) {
                return;
            }
            c25596j.m3168h(1);
        }
    }

    /* renamed from: n3.b0.a.j$c */
    /* loaded from: classes-dex2jar.jar:n3/b0/a/j$c.class */
    public class C25599c extends AnimatorListenerAdapter {

        /* renamed from: a */
        public boolean f71710a = false;

        public C25599c() {
            C25596j.this = r4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f71710a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.f71710a) {
                this.f71710a = false;
            } else if (((Float) C25596j.this.f71707z.getAnimatedValue()).floatValue() == 0.0f) {
                C25596j c25596j = C25596j.this;
                c25596j.f71679A = 0;
                c25596j.m3168h(0);
            } else {
                C25596j c25596j2 = C25596j.this;
                c25596j2.f71679A = 2;
                c25596j2.f71700s.invalidate();
            }
        }
    }

    /* renamed from: n3.b0.a.j$d */
    /* loaded from: classes-dex2jar.jar:n3/b0/a/j$d.class */
    public class C25600d implements ValueAnimator.AnimatorUpdateListener {
        public C25600d() {
            C25596j.this = r4;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            int floatValue = (int) (((Float) valueAnimator.getAnimatedValue()).floatValue() * 255.0f);
            C25596j.this.f71684c.setAlpha(floatValue);
            C25596j.this.f71685d.setAlpha(floatValue);
            C25596j.this.f71700s.invalidate();
        }
    }

    public C25596j(RecyclerView recyclerView, StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2, int i, int i2, int i3) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f71707z = ofFloat;
        C25598b c25598b = new C25598b();
        this.f71681C = c25598b;
        this.f71684c = stateListDrawable;
        this.f71685d = drawable;
        this.f71688g = stateListDrawable2;
        this.f71689h = drawable2;
        this.f71686e = Math.max(i, stateListDrawable.getIntrinsicWidth());
        this.f71687f = Math.max(i, drawable.getIntrinsicWidth());
        this.f71690i = Math.max(i, stateListDrawable2.getIntrinsicWidth());
        this.f71691j = Math.max(i, drawable2.getIntrinsicWidth());
        this.f71682a = i2;
        this.f71683b = i3;
        stateListDrawable.setAlpha(255);
        drawable.setAlpha(255);
        ofFloat.addListener(new C25599c());
        ofFloat.addUpdateListener(new C25600d());
        RecyclerView recyclerView2 = this.f71700s;
        if (recyclerView2 == recyclerView) {
            return;
        }
        if (recyclerView2 != null) {
            recyclerView2.removeItemDecoration(this);
            this.f71700s.removeOnItemTouchListener(this);
            this.f71700s.removeOnScrollListener(c25598b);
            m3172d();
        }
        this.f71700s = recyclerView;
        recyclerView.addItemDecoration(this);
        this.f71700s.addOnItemTouchListener(this);
        this.f71700s.addOnScrollListener(c25598b);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0337s
    /* renamed from: a */
    public void mo3155a(RecyclerView recyclerView, MotionEvent motionEvent) {
        if (this.f71703v == 0) {
            return;
        }
        if (motionEvent.getAction() == 0) {
            boolean m3170f = m3170f(motionEvent.getX(), motionEvent.getY());
            boolean m3171e = m3171e(motionEvent.getX(), motionEvent.getY());
            if (!m3170f && !m3171e) {
                return;
            }
            if (m3171e) {
                this.f71704w = 1;
                this.f71697p = (int) motionEvent.getX();
            } else if (m3170f) {
                this.f71704w = 2;
                this.f71694m = (int) motionEvent.getY();
            }
            m3168h(2);
        } else if (motionEvent.getAction() == 1 && this.f71703v == 2) {
            this.f71694m = 0.0f;
            this.f71697p = 0.0f;
            m3168h(1);
            this.f71704w = 0;
        } else if (motionEvent.getAction() != 2 || this.f71703v != 2) {
        } else {
            m3167i();
            if (this.f71704w == 1) {
                float x = motionEvent.getX();
                int[] iArr = this.f71706y;
                int i = this.f71683b;
                iArr[0] = i;
                iArr[1] = this.f71698q - i;
                float max = Math.max(iArr[0], Math.min(iArr[1], x));
                if (Math.abs(this.f71696o - max) >= 2.0f) {
                    int m3169g = m3169g(this.f71697p, max, iArr, this.f71700s.computeHorizontalScrollRange(), this.f71700s.computeHorizontalScrollOffset(), this.f71698q);
                    if (m3169g != 0) {
                        this.f71700s.scrollBy(m3169g, 0);
                    }
                    this.f71697p = max;
                }
            }
            if (this.f71704w != 2) {
                return;
            }
            float y = motionEvent.getY();
            int[] iArr2 = this.f71705x;
            int i2 = this.f71683b;
            iArr2[0] = i2;
            iArr2[1] = this.f71699r - i2;
            float max2 = Math.max(iArr2[0], Math.min(iArr2[1], y));
            if (Math.abs(this.f71693l - max2) < 2.0f) {
                return;
            }
            int m3169g2 = m3169g(this.f71694m, max2, iArr2, this.f71700s.computeVerticalScrollRange(), this.f71700s.computeVerticalScrollOffset(), this.f71699r);
            if (m3169g2 != 0) {
                this.f71700s.scrollBy(0, m3169g2);
            }
            this.f71694m = max2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x006f, code lost:
        if (r0 == 2) goto L20;
     */
    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0337s
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo3154b(androidx.recyclerview.widget.RecyclerView r5, android.view.MotionEvent r6) {
        /*
            r4 = this;
            r0 = r4
            int r0 = r0.f71703v
            r7 = r0
            r0 = 1
            r8 = r0
            r0 = r7
            r1 = 1
            if (r0 != r1) goto L6d
            r0 = r4
            r1 = r6
            float r1 = r1.getX()
            r2 = r6
            float r2 = r2.getY()
            boolean r0 = r0.m3170f(r1, r2)
            r9 = r0
            r0 = r4
            r1 = r6
            float r1 = r1.getX()
            r2 = r6
            float r2 = r2.getY()
            boolean r0 = r0.m3171e(r1, r2)
            r10 = r0
            r0 = r6
            int r0 = r0.getAction()
            if (r0 != 0) goto L75
            r0 = r9
            if (r0 != 0) goto L3a
            r0 = r10
            if (r0 == 0) goto L75
        L3a:
            r0 = r10
            if (r0 == 0) goto L51
            r0 = r4
            r1 = 1
            r0.f71704w = r1
            r0 = r4
            r1 = r6
            float r1 = r1.getX()
            int r1 = (int) r1
            float r1 = (float) r1
            r0.f71697p = r1
            goto L65
        L51:
            r0 = r9
            if (r0 == 0) goto L65
            r0 = r4
            r1 = 2
            r0.f71704w = r1
            r0 = r4
            r1 = r6
            float r1 = r1.getY()
            int r1 = (int) r1
            float r1 = (float) r1
            r0.f71694m = r1
        L65:
            r0 = r4
            r1 = 2
            r0.m3168h(r1)
            goto L78
        L6d:
            r0 = r7
            r1 = 2
            if (r0 != r1) goto L75
            goto L78
        L75:
            r0 = 0
            r8 = r0
        L78:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1744b0.p1745a.C25596j.mo3154b(androidx.recyclerview.widget.RecyclerView, android.view.MotionEvent):boolean");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0337s
    /* renamed from: c */
    public void mo3153c(boolean z) {
    }

    /* renamed from: d */
    public final void m3172d() {
        this.f71700s.removeCallbacks(this.f71680B);
    }

    /* renamed from: e */
    public boolean m3171e(float f, float f2) {
        boolean z;
        if (f2 >= this.f71699r - this.f71690i) {
            int i = this.f71696o;
            int i2 = this.f71695n;
            if (f >= i - (i2 / 2) && f <= (i2 / 2) + i) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0048, code lost:
        if (r5 >= (r4.f71698q - r4.f71686e)) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x004b, code lost:
        r0 = r4.f71693l;
        r0 = r4.f71692k / 2;
        r11 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0065, code lost:
        if (r6 < (r0 - r0)) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0068, code lost:
        r11 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0074, code lost:
        if (r6 > (r0 + r0)) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0077, code lost:
        r11 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0032, code lost:
        if (r5 <= r4.f71686e) goto L12;
     */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m3170f(float r5, float r6) {
        /*
            r4 = this;
            r0 = r4
            androidx.recyclerview.widget.RecyclerView r0 = r0.f71700s
            r7 = r0
            java.util.concurrent.atomic.AtomicInteger r0 = p1727n3.p1807k.p1821i.C26614s.f74505a
            r8 = r0
            r0 = r7
            int r0 = r0.getLayoutDirection()
            r9 = r0
            r0 = 0
            r10 = r0
            r0 = r9
            r1 = 1
            if (r0 != r1) goto L1f
            r0 = 1
            r9 = r0
            goto L22
        L1f:
            r0 = 0
            r9 = r0
        L22:
            r0 = r9
            if (r0 == 0) goto L38
            r0 = r10
            r11 = r0
            r0 = r5
            r1 = r4
            int r1 = r1.f71686e
            float r1 = (float) r1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L7a
            goto L4b
        L38:
            r0 = r10
            r11 = r0
            r0 = r5
            r1 = r4
            int r1 = r1.f71698q
            r2 = r4
            int r2 = r2.f71686e
            int r1 = r1 - r2
            float r1 = (float) r1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L7a
        L4b:
            r0 = r4
            int r0 = r0.f71693l
            r12 = r0
            r0 = r4
            int r0 = r0.f71692k
            r1 = 2
            int r0 = r0 / r1
            r9 = r0
            r0 = r10
            r11 = r0
            r0 = r6
            r1 = r12
            r2 = r9
            int r1 = r1 - r2
            float r1 = (float) r1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L7a
            r0 = r10
            r11 = r0
            r0 = r6
            r1 = r9
            r2 = r12
            int r1 = r1 + r2
            float r1 = (float) r1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L7a
            r0 = 1
            r11 = r0
        L7a:
            r0 = r11
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1744b0.p1745a.C25596j.m3170f(float, float):boolean");
    }

    /* renamed from: g */
    public final int m3169g(float f, float f2, int[] iArr, int i, int i2, int i3) {
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

    /* renamed from: h */
    public void m3168h(int i) {
        if (i == 2 && this.f71703v != 2) {
            this.f71684c.setState(f71677D);
            m3172d();
        }
        if (i == 0) {
            this.f71700s.invalidate();
        } else {
            m3167i();
        }
        if (this.f71703v == 2 && i != 2) {
            this.f71684c.setState(f71678E);
            m3172d();
            this.f71700s.postDelayed(this.f71680B, 1200);
        } else if (i == 1) {
            m3172d();
            this.f71700s.postDelayed(this.f71680B, 1500);
        }
        this.f71703v = i;
    }

    /* renamed from: i */
    public void m3167i() {
        int i = this.f71679A;
        if (i != 0) {
            if (i != 3) {
                return;
            }
            this.f71707z.cancel();
        }
        this.f71679A = 1;
        ValueAnimator valueAnimator = this.f71707z;
        valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 1.0f);
        this.f71707z.setDuration(500L);
        this.f71707z.setStartDelay(0L);
        this.f71707z.start();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0328n
    public void onDrawOver(Canvas canvas, RecyclerView recyclerView, RecyclerView.C0347z c0347z) {
        int i;
        if (this.f71698q != this.f71700s.getWidth() || this.f71699r != this.f71700s.getHeight()) {
            this.f71698q = this.f71700s.getWidth();
            this.f71699r = this.f71700s.getHeight();
            m3168h(0);
        } else if (this.f71679A == 0) {
        } else {
            if (this.f71701t) {
                int i2 = this.f71698q;
                int i3 = this.f71686e;
                int i4 = i2 - i3;
                int i5 = this.f71693l;
                int i6 = this.f71692k;
                int i7 = i5 - (i6 / 2);
                this.f71684c.setBounds(0, 0, i3, i6);
                this.f71685d.setBounds(0, 0, this.f71687f, this.f71699r);
                RecyclerView recyclerView2 = this.f71700s;
                AtomicInteger atomicInteger = C26614s.f74505a;
                boolean z = true;
                if (recyclerView2.getLayoutDirection() != 1) {
                    z = false;
                }
                if (z) {
                    this.f71685d.draw(canvas);
                    canvas.translate(this.f71686e, i7);
                    canvas.scale(-1.0f, 1.0f);
                    this.f71684c.draw(canvas);
                    canvas.scale(-1.0f, 1.0f);
                    canvas.translate(-this.f71686e, -i7);
                } else {
                    canvas.translate(i4, 0.0f);
                    this.f71685d.draw(canvas);
                    canvas.translate(0.0f, i7);
                    this.f71684c.draw(canvas);
                    canvas.translate(-i4, -i7);
                }
            }
            if (!this.f71702u) {
                return;
            }
            int i8 = this.f71699r;
            int i9 = this.f71690i;
            int i10 = i8 - i9;
            int i11 = this.f71696o;
            int i12 = this.f71695n;
            this.f71688g.setBounds(0, 0, i12, i9);
            this.f71689h.setBounds(0, 0, this.f71698q, this.f71691j);
            canvas.translate(0.0f, i10);
            this.f71689h.draw(canvas);
            canvas.translate(i11 - (i12 / 2), 0.0f);
            this.f71688g.draw(canvas);
            canvas.translate(-i, -i10);
        }
    }
}
