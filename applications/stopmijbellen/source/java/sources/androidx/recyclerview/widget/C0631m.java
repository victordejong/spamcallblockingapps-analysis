package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.view.MotionEvent;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.common.ConnectionResult;
import java.util.List;
import java.util.WeakHashMap;
import p163m0.C3589v;
import p163m0.C3611y;
/* renamed from: androidx.recyclerview.widget.m */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/m.class */
public class C0631m extends RecyclerView.AbstractC0572l implements RecyclerView.AbstractC0580p {

    /* renamed from: D */
    public static final int[] f2469D = {16842919};

    /* renamed from: E */
    public static final int[] f2470E = new int[0];

    /* renamed from: C */
    public final RecyclerView.AbstractC0581q f2473C;

    /* renamed from: a */
    public final int f2474a;

    /* renamed from: b */
    public final int f2475b;

    /* renamed from: c */
    public final StateListDrawable f2476c;

    /* renamed from: d */
    public final Drawable f2477d;

    /* renamed from: e */
    public final int f2478e;

    /* renamed from: f */
    public final int f2479f;

    /* renamed from: g */
    public final StateListDrawable f2480g;

    /* renamed from: h */
    public final Drawable f2481h;

    /* renamed from: i */
    public final int f2482i;

    /* renamed from: j */
    public final int f2483j;

    /* renamed from: k */
    public int f2484k;

    /* renamed from: l */
    public int f2485l;

    /* renamed from: m */
    public float f2486m;

    /* renamed from: n */
    public int f2487n;

    /* renamed from: o */
    public int f2488o;

    /* renamed from: p */
    public float f2489p;

    /* renamed from: s */
    public RecyclerView f2492s;

    /* renamed from: z */
    public final ValueAnimator f2499z;

    /* renamed from: q */
    public int f2490q = 0;

    /* renamed from: r */
    public int f2491r = 0;

    /* renamed from: t */
    public boolean f2493t = false;

    /* renamed from: u */
    public boolean f2494u = false;

    /* renamed from: v */
    public int f2495v = 0;

    /* renamed from: w */
    public int f2496w = 0;

    /* renamed from: x */
    public final int[] f2497x = new int[2];

    /* renamed from: y */
    public final int[] f2498y = new int[2];

    /* renamed from: A */
    public int f2471A = 0;

    /* renamed from: B */
    public final Runnable f2472B = new RunnableC0632a();

    /* renamed from: androidx.recyclerview.widget.m$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/m$a.class */
    public class RunnableC0632a implements Runnable {
        public RunnableC0632a() {
            C0631m.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            C0631m c0631m = C0631m.this;
            int i = c0631m.f2471A;
            if (i == 1) {
                c0631m.f2499z.cancel();
            } else if (i != 2) {
                return;
            }
            c0631m.f2471A = 3;
            ValueAnimator valueAnimator = c0631m.f2499z;
            valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 0.0f);
            c0631m.f2499z.setDuration(500);
            c0631m.f2499z.start();
        }
    }

    /* renamed from: androidx.recyclerview.widget.m$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/m$b.class */
    public class C0633b extends RecyclerView.AbstractC0581q {
        public C0633b() {
            C0631m.this = r4;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0581q
        /* renamed from: b */
        public void mo4617b(RecyclerView recyclerView, int i, int i2) {
            C0631m c0631m = C0631m.this;
            int computeHorizontalScrollOffset = recyclerView.computeHorizontalScrollOffset();
            int computeVerticalScrollOffset = recyclerView.computeVerticalScrollOffset();
            int computeVerticalScrollRange = c0631m.f2492s.computeVerticalScrollRange();
            int i3 = c0631m.f2491r;
            c0631m.f2493t = computeVerticalScrollRange - i3 > 0 && i3 >= c0631m.f2474a;
            int computeHorizontalScrollRange = c0631m.f2492s.computeHorizontalScrollRange();
            int i4 = c0631m.f2490q;
            boolean z = computeHorizontalScrollRange - i4 > 0 && i4 >= c0631m.f2474a;
            c0631m.f2494u = z;
            boolean z2 = c0631m.f2493t;
            if (!z2 && !z) {
                if (c0631m.f2495v == 0) {
                    return;
                }
                c0631m.m7562j(0);
                return;
            }
            if (z2) {
                float f = computeVerticalScrollOffset;
                float f2 = i3;
                c0631m.f2485l = (int) ((((f2 / 2.0f) + f) * f2) / computeVerticalScrollRange);
                c0631m.f2484k = Math.min(i3, (i3 * i3) / computeVerticalScrollRange);
            }
            if (c0631m.f2494u) {
                float f3 = computeHorizontalScrollOffset;
                float f4 = i4;
                c0631m.f2488o = (int) ((((f4 / 2.0f) + f3) * f4) / computeHorizontalScrollRange);
                c0631m.f2487n = Math.min(i4, (i4 * i4) / computeHorizontalScrollRange);
            }
            int i5 = c0631m.f2495v;
            if (i5 != 0 && i5 != 1) {
                return;
            }
            c0631m.m7562j(1);
        }
    }

    /* renamed from: androidx.recyclerview.widget.m$c */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/m$c.class */
    public class C0634c extends AnimatorListenerAdapter {

        /* renamed from: a */
        public boolean f2502a = false;

        public C0634c() {
            C0631m.this = r4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f2502a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.f2502a) {
                this.f2502a = false;
            } else if (((Float) C0631m.this.f2499z.getAnimatedValue()).floatValue() == 0.0f) {
                C0631m c0631m = C0631m.this;
                c0631m.f2471A = 0;
                c0631m.m7562j(0);
            } else {
                C0631m c0631m2 = C0631m.this;
                c0631m2.f2471A = 2;
                c0631m2.f2492s.invalidate();
            }
        }
    }

    /* renamed from: androidx.recyclerview.widget.m$d */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/m$d.class */
    public class C0635d implements ValueAnimator.AnimatorUpdateListener {
        public C0635d() {
            C0631m.this = r4;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            int floatValue = (int) (((Float) valueAnimator.getAnimatedValue()).floatValue() * 255.0f);
            C0631m.this.f2476c.setAlpha(floatValue);
            C0631m.this.f2477d.setAlpha(floatValue);
            C0631m.this.f2492s.invalidate();
        }
    }

    public C0631m(RecyclerView recyclerView, StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2, int i, int i2, int i3) {
        boolean z = false;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f2499z = ofFloat;
        C0633b c0633b = new C0633b();
        this.f2473C = c0633b;
        this.f2476c = stateListDrawable;
        this.f2477d = drawable;
        this.f2480g = stateListDrawable2;
        this.f2481h = drawable2;
        this.f2478e = Math.max(i, stateListDrawable.getIntrinsicWidth());
        this.f2479f = Math.max(i, drawable.getIntrinsicWidth());
        this.f2482i = Math.max(i, stateListDrawable2.getIntrinsicWidth());
        this.f2483j = Math.max(i, drawable2.getIntrinsicWidth());
        this.f2474a = i2;
        this.f2475b = i3;
        stateListDrawable.setAlpha(255);
        drawable.setAlpha(255);
        ofFloat.addListener(new C0634c());
        ofFloat.addUpdateListener(new C0635d());
        RecyclerView recyclerView2 = this.f2492s;
        if (recyclerView2 == recyclerView) {
            return;
        }
        if (recyclerView2 != null) {
            RecyclerView.AbstractC0573m abstractC0573m = recyclerView2.f2197m;
            if (abstractC0573m != null) {
                abstractC0573m.mo7710d("Cannot remove item decoration during a scroll  or layout");
            }
            recyclerView2.f2201o.remove(this);
            if (recyclerView2.f2201o.isEmpty()) {
                recyclerView2.setWillNotDraw(recyclerView2.getOverScrollMode() == 2 ? true : z);
            }
            recyclerView2.m7901Q();
            recyclerView2.requestLayout();
            RecyclerView recyclerView3 = this.f2492s;
            recyclerView3.f2203p.remove(this);
            if (recyclerView3.f2205q == this) {
                recyclerView3.f2205q = null;
            }
            List<RecyclerView.AbstractC0581q> list = this.f2492s.f2190i0;
            if (list != null) {
                list.remove(c0633b);
            }
            m7566f();
        }
        this.f2492s = recyclerView;
        recyclerView.m7880g(this);
        this.f2492s.f2203p.add(this);
        this.f2492s.m7878h(c0633b);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x006f, code lost:
        if (r0 == 2) goto L20;
     */
    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0580p
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo7570a(androidx.recyclerview.widget.RecyclerView r5, android.view.MotionEvent r6) {
        /*
            r4 = this;
            r0 = r4
            int r0 = r0.f2495v
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
            boolean r0 = r0.m7564h(r1, r2)
            r9 = r0
            r0 = r4
            r1 = r6
            float r1 = r1.getX()
            r2 = r6
            float r2 = r2.getY()
            boolean r0 = r0.m7565g(r1, r2)
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
            r0.f2496w = r1
            r0 = r4
            r1 = r6
            float r1 = r1.getX()
            int r1 = (int) r1
            float r1 = (float) r1
            r0.f2489p = r1
            goto L65
        L51:
            r0 = r9
            if (r0 == 0) goto L65
            r0 = r4
            r1 = 2
            r0.f2496w = r1
            r0 = r4
            r1 = r6
            float r1 = r1.getY()
            int r1 = (int) r1
            float r1 = (float) r1
            r0.f2486m = r1
        L65:
            r0 = r4
            r1 = 2
            r0.m7562j(r1)
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
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.C0631m.mo7570a(androidx.recyclerview.widget.RecyclerView, android.view.MotionEvent):boolean");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0580p
    /* renamed from: b */
    public void mo7569b(RecyclerView recyclerView, MotionEvent motionEvent) {
        if (this.f2495v == 0) {
            return;
        }
        if (motionEvent.getAction() == 0) {
            boolean m7564h = m7564h(motionEvent.getX(), motionEvent.getY());
            boolean m7565g = m7565g(motionEvent.getX(), motionEvent.getY());
            if (!m7564h && !m7565g) {
                return;
            }
            if (m7565g) {
                this.f2496w = 1;
                this.f2489p = (int) motionEvent.getX();
            } else if (m7564h) {
                this.f2496w = 2;
                this.f2486m = (int) motionEvent.getY();
            }
            m7562j(2);
        } else if (motionEvent.getAction() == 1 && this.f2495v == 2) {
            this.f2486m = 0.0f;
            this.f2489p = 0.0f;
            m7562j(1);
            this.f2496w = 0;
        } else if (motionEvent.getAction() != 2 || this.f2495v != 2) {
        } else {
            m7561k();
            if (this.f2496w == 1) {
                float x = motionEvent.getX();
                int[] iArr = this.f2498y;
                int i = this.f2475b;
                iArr[0] = i;
                iArr[1] = this.f2490q - i;
                float max = Math.max(iArr[0], Math.min(iArr[1], x));
                if (Math.abs(this.f2488o - max) >= 2.0f) {
                    int m7563i = m7563i(this.f2489p, max, iArr, this.f2492s.computeHorizontalScrollRange(), this.f2492s.computeHorizontalScrollOffset(), this.f2490q);
                    if (m7563i != 0) {
                        this.f2492s.scrollBy(m7563i, 0);
                    }
                    this.f2489p = max;
                }
            }
            if (this.f2496w != 2) {
                return;
            }
            float y = motionEvent.getY();
            int[] iArr2 = this.f2497x;
            int i2 = this.f2475b;
            iArr2[0] = i2;
            iArr2[1] = this.f2491r - i2;
            float max2 = Math.max(iArr2[0], Math.min(iArr2[1], y));
            if (Math.abs(this.f2485l - max2) < 2.0f) {
                return;
            }
            int m7563i2 = m7563i(this.f2486m, max2, iArr2, this.f2492s.computeVerticalScrollRange(), this.f2492s.computeVerticalScrollOffset(), this.f2491r);
            if (m7563i2 != 0) {
                this.f2492s.scrollBy(0, m7563i2);
            }
            this.f2486m = max2;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0580p
    /* renamed from: c */
    public void mo7568c(boolean z) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0572l
    /* renamed from: e */
    public void mo7567e(Canvas canvas, RecyclerView recyclerView, RecyclerView.C0592x c0592x) {
        int i;
        if (this.f2490q != this.f2492s.getWidth() || this.f2491r != this.f2492s.getHeight()) {
            this.f2490q = this.f2492s.getWidth();
            this.f2491r = this.f2492s.getHeight();
            m7562j(0);
        } else if (this.f2471A == 0) {
        } else {
            if (this.f2493t) {
                int i2 = this.f2490q;
                int i3 = this.f2478e;
                int i4 = i2 - i3;
                int i5 = this.f2485l;
                int i6 = this.f2484k;
                int i7 = i5 - (i6 / 2);
                this.f2476c.setBounds(0, 0, i3, i6);
                this.f2477d.setBounds(0, 0, this.f2479f, this.f2491r);
                RecyclerView recyclerView2 = this.f2492s;
                WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
                boolean z = true;
                if (C3589v.C3594e.m2071d(recyclerView2) != 1) {
                    z = false;
                }
                if (z) {
                    this.f2477d.draw(canvas);
                    canvas.translate(this.f2478e, i7);
                    canvas.scale(-1.0f, 1.0f);
                    this.f2476c.draw(canvas);
                    canvas.scale(1.0f, 1.0f);
                    canvas.translate(-this.f2478e, -i7);
                } else {
                    canvas.translate(i4, 0.0f);
                    this.f2477d.draw(canvas);
                    canvas.translate(0.0f, i7);
                    this.f2476c.draw(canvas);
                    canvas.translate(-i4, -i7);
                }
            }
            if (!this.f2494u) {
                return;
            }
            int i8 = this.f2491r;
            int i9 = this.f2482i;
            int i10 = i8 - i9;
            int i11 = this.f2488o;
            int i12 = this.f2487n;
            this.f2480g.setBounds(0, 0, i12, i9);
            this.f2481h.setBounds(0, 0, this.f2490q, this.f2483j);
            canvas.translate(0.0f, i10);
            this.f2481h.draw(canvas);
            canvas.translate(i11 - (i12 / 2), 0.0f);
            this.f2480g.draw(canvas);
            canvas.translate(-i, -i10);
        }
    }

    /* renamed from: f */
    public final void m7566f() {
        this.f2492s.removeCallbacks(this.f2472B);
    }

    /* renamed from: g */
    public boolean m7565g(float f, float f2) {
        boolean z;
        if (f2 >= this.f2491r - this.f2482i) {
            int i = this.f2488o;
            int i2 = this.f2487n;
            if (f >= i - (i2 / 2) && f <= (i2 / 2) + i) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x004a, code lost:
        if (r5 >= (r4.f2490q - r4.f2478e)) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x004d, code lost:
        r0 = r4.f2485l;
        r0 = r4.f2484k / 2;
        r11 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0067, code lost:
        if (r6 < (r0 - r0)) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x006a, code lost:
        r11 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0076, code lost:
        if (r6 > (r0 + r0)) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0079, code lost:
        r11 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0034, code lost:
        if (r5 <= (r4.f2478e / 2)) goto L12;
     */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m7564h(float r5, float r6) {
        /*
            r4 = this;
            r0 = r4
            androidx.recyclerview.widget.RecyclerView r0 = r0.f2492s
            r7 = r0
            java.util.WeakHashMap<android.view.View, m0.y> r0 = p163m0.C3589v.f11780a
            r8 = r0
            r0 = r7
            int r0 = p163m0.C3589v.C3594e.m2071d(r0)
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
            if (r0 == 0) goto L3a
            r0 = r10
            r11 = r0
            r0 = r5
            r1 = r4
            int r1 = r1.f2478e
            r2 = 2
            int r1 = r1 / r2
            float r1 = (float) r1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L7c
            goto L4d
        L3a:
            r0 = r10
            r11 = r0
            r0 = r5
            r1 = r4
            int r1 = r1.f2490q
            r2 = r4
            int r2 = r2.f2478e
            int r1 = r1 - r2
            float r1 = (float) r1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L7c
        L4d:
            r0 = r4
            int r0 = r0.f2485l
            r12 = r0
            r0 = r4
            int r0 = r0.f2484k
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
            if (r0 < 0) goto L7c
            r0 = r10
            r11 = r0
            r0 = r6
            r1 = r9
            r2 = r12
            int r1 = r1 + r2
            float r1 = (float) r1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L7c
            r0 = 1
            r11 = r0
        L7c:
            r0 = r11
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.C0631m.m7564h(float, float):boolean");
    }

    /* renamed from: i */
    public final int m7563i(float f, float f2, int[] iArr, int i, int i2, int i3) {
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

    /* renamed from: j */
    public void m7562j(int i) {
        if (i == 2 && this.f2495v != 2) {
            this.f2476c.setState(f2469D);
            m7566f();
        }
        if (i == 0) {
            this.f2492s.invalidate();
        } else {
            m7561k();
        }
        if (this.f2495v == 2 && i != 2) {
            this.f2476c.setState(f2470E);
            m7566f();
            this.f2492s.postDelayed(this.f2472B, 1200);
        } else if (i == 1) {
            m7566f();
            this.f2492s.postDelayed(this.f2472B, (long) ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED);
        }
        this.f2495v = i;
    }

    /* renamed from: k */
    public void m7561k() {
        int i = this.f2471A;
        if (i != 0) {
            if (i != 3) {
                return;
            }
            this.f2499z.cancel();
        }
        this.f2471A = 1;
        ValueAnimator valueAnimator = this.f2499z;
        valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 1.0f);
        this.f2499z.setDuration(500L);
        this.f2499z.setStartDelay(0L);
        this.f2499z.start();
    }
}
