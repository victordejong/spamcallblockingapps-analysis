package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.view.MotionEvent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
/* JADX INFO: Access modifiers changed from: package-private */
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/FastScroller.class */
public class FastScroller extends RecyclerView.ItemDecoration implements RecyclerView.OnItemTouchListener {

    /* renamed from: D */
    private static final int[] f4523D = {16842919};

    /* renamed from: E */
    private static final int[] f4524E = new int[0];

    /* renamed from: a */
    private final int f4528a;

    /* renamed from: b */
    private final int f4529b;

    /* renamed from: c */
    final StateListDrawable f4530c;

    /* renamed from: d */
    final Drawable f4531d;

    /* renamed from: e */
    private final int f4532e;

    /* renamed from: f */
    private final int f4533f;

    /* renamed from: g */
    private final StateListDrawable f4534g;

    /* renamed from: h */
    private final Drawable f4535h;

    /* renamed from: i */
    private final int f4536i;

    /* renamed from: j */
    private final int f4537j;
    @VisibleForTesting

    /* renamed from: k */
    int f4538k;
    @VisibleForTesting

    /* renamed from: l */
    int f4539l;
    @VisibleForTesting

    /* renamed from: m */
    float f4540m;
    @VisibleForTesting

    /* renamed from: n */
    int f4541n;
    @VisibleForTesting

    /* renamed from: o */
    int f4542o;
    @VisibleForTesting

    /* renamed from: p */
    float f4543p;

    /* renamed from: s */
    private RecyclerView f4546s;

    /* renamed from: q */
    private int f4544q = 0;

    /* renamed from: r */
    private int f4545r = 0;

    /* renamed from: t */
    private boolean f4547t = false;

    /* renamed from: u */
    private boolean f4548u = false;

    /* renamed from: v */
    private int f4549v = 0;

    /* renamed from: w */
    private int f4550w = 0;

    /* renamed from: x */
    private final int[] f4551x = new int[2];

    /* renamed from: y */
    private final int[] f4552y = new int[2];

    /* renamed from: z */
    final ValueAnimator f4553z = ValueAnimator.ofFloat(0.0f, 1.0f);

    /* renamed from: A */
    int f4525A = 0;

    /* renamed from: B */
    private final Runnable f4526B = new Runnable() { // from class: androidx.recyclerview.widget.FastScroller.1
        @Override // java.lang.Runnable
        public void run() {
            FastScroller.this.m17770s(500);
        }
    };

    /* renamed from: C */
    private final RecyclerView.OnScrollListener f4527C = new RecyclerView.OnScrollListener() { // from class: androidx.recyclerview.widget.FastScroller.2
        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        /* renamed from: b */
        public void mo7064b(RecyclerView recyclerView, int i, int i2) {
            FastScroller.this.m17779D(recyclerView.computeHorizontalScrollOffset(), recyclerView.computeVerticalScrollOffset());
        }
    };

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/FastScroller$AnimatorListener.class */
    private class AnimatorListener extends AnimatorListenerAdapter {

        /* renamed from: a */
        private boolean f4556a = false;

        AnimatorListener() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f4556a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.f4556a) {
                this.f4556a = false;
            } else if (((Float) FastScroller.this.f4553z.getAnimatedValue()).floatValue() == 0.0f) {
                FastScroller fastScroller = FastScroller.this;
                fastScroller.f4525A = 0;
                fastScroller.m17782A(0);
            } else {
                FastScroller fastScroller2 = FastScroller.this;
                fastScroller2.f4525A = 2;
                fastScroller2.m17765x();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/FastScroller$AnimatorUpdater.class */
    private class AnimatorUpdater implements ValueAnimator.AnimatorUpdateListener {
        AnimatorUpdater() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            int floatValue = (int) (((Float) valueAnimator.getAnimatedValue()).floatValue() * 255.0f);
            FastScroller.this.f4530c.setAlpha(floatValue);
            FastScroller.this.f4531d.setAlpha(floatValue);
            FastScroller.this.m17765x();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FastScroller(RecyclerView recyclerView, StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2, int i, int i2, int i3) {
        this.f4530c = stateListDrawable;
        this.f4531d = drawable;
        this.f4534g = stateListDrawable2;
        this.f4535h = drawable2;
        this.f4532e = Math.max(i, stateListDrawable.getIntrinsicWidth());
        this.f4533f = Math.max(i, drawable.getIntrinsicWidth());
        this.f4536i = Math.max(i, stateListDrawable2.getIntrinsicWidth());
        this.f4537j = Math.max(i, drawable2.getIntrinsicWidth());
        this.f4528a = i2;
        this.f4529b = i3;
        this.f4530c.setAlpha(255);
        this.f4531d.setAlpha(255);
        this.f4553z.addListener(new AnimatorListener());
        this.f4553z.addUpdateListener(new AnimatorUpdater());
        m17777l(recyclerView);
    }

    /* renamed from: B */
    private void m17781B() {
        this.f4546s.addItemDecoration(this);
        this.f4546s.addOnItemTouchListener(this);
        this.f4546s.addOnScrollListener(this.f4527C);
    }

    /* renamed from: E */
    private void m17778E(float f) {
        int[] r = m17771r();
        float max = Math.max(r[0], Math.min(r[1], f));
        if (Math.abs(this.f4539l - max) >= 2.0f) {
            int z = m17763z(this.f4540m, max, r, this.f4546s.computeVerticalScrollRange(), this.f4546s.computeVerticalScrollOffset(), this.f4545r);
            if (z != 0) {
                this.f4546s.scrollBy(0, z);
            }
            this.f4540m = max;
        }
    }

    /* renamed from: m */
    private void m17776m() {
        this.f4546s.removeCallbacks(this.f4526B);
    }

    /* renamed from: n */
    private void m17775n() {
        this.f4546s.removeItemDecoration(this);
        this.f4546s.removeOnItemTouchListener(this);
        this.f4546s.removeOnScrollListener(this.f4527C);
        m17776m();
    }

    /* renamed from: o */
    private void m17774o(Canvas canvas) {
        int i = this.f4545r;
        int i2 = this.f4536i;
        int i3 = i - i2;
        int i4 = this.f4542o;
        int i5 = this.f4541n;
        int i6 = i4 - (i5 / 2);
        this.f4534g.setBounds(0, 0, i5, i2);
        this.f4535h.setBounds(0, 0, this.f4544q, this.f4537j);
        canvas.translate(0.0f, i3);
        this.f4535h.draw(canvas);
        canvas.translate(i6, 0.0f);
        this.f4534g.draw(canvas);
        canvas.translate(-i6, -i3);
    }

    /* renamed from: p */
    private void m17773p(Canvas canvas) {
        int i = this.f4544q;
        int i2 = this.f4532e;
        int i3 = i - i2;
        int i4 = this.f4539l;
        int i5 = this.f4538k;
        int i6 = i4 - (i5 / 2);
        this.f4530c.setBounds(0, 0, i2, i5);
        this.f4531d.setBounds(0, 0, this.f4533f, this.f4545r);
        if (m17768u()) {
            this.f4531d.draw(canvas);
            canvas.translate(this.f4532e, i6);
            canvas.scale(-1.0f, 1.0f);
            this.f4530c.draw(canvas);
            canvas.scale(1.0f, 1.0f);
            canvas.translate(-this.f4532e, -i6);
            return;
        }
        canvas.translate(i3, 0.0f);
        this.f4531d.draw(canvas);
        canvas.translate(0.0f, i6);
        this.f4530c.draw(canvas);
        canvas.translate(-i3, -i6);
    }

    /* renamed from: q */
    private int[] m17772q() {
        int[] iArr = this.f4552y;
        int i = this.f4529b;
        iArr[0] = i;
        iArr[1] = this.f4544q - i;
        return iArr;
    }

    /* renamed from: r */
    private int[] m17771r() {
        int[] iArr = this.f4551x;
        int i = this.f4529b;
        iArr[0] = i;
        iArr[1] = this.f4545r - i;
        return iArr;
    }

    /* renamed from: t */
    private void m17769t(float f) {
        int[] q = m17772q();
        float max = Math.max(q[0], Math.min(q[1], f));
        if (Math.abs(this.f4542o - max) >= 2.0f) {
            int z = m17763z(this.f4543p, max, q, this.f4546s.computeHorizontalScrollRange(), this.f4546s.computeHorizontalScrollOffset(), this.f4544q);
            if (z != 0) {
                this.f4546s.scrollBy(z, 0);
            }
            this.f4543p = max;
        }
    }

    /* renamed from: u */
    private boolean m17768u() {
        boolean z = true;
        if (ViewCompat.m19244A(this.f4546s) != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: y */
    private void m17764y(int i) {
        m17776m();
        this.f4546s.postDelayed(this.f4526B, i);
    }

    /* renamed from: z */
    private int m17763z(float f, float f2, int[] iArr, int i, int i2, int i3) {
        int i4 = iArr[1] - iArr[0];
        if (i4 == 0) {
            return 0;
        }
        float f3 = (f2 - f) / i4;
        int i5 = i - i3;
        int i6 = (int) (f3 * i5);
        int i7 = i2 + i6;
        if (i7 >= i5 || i7 < 0) {
            return 0;
        }
        return i6;
    }

    /* renamed from: A */
    void m17782A(int i) {
        if (i == 2 && this.f4549v != 2) {
            this.f4530c.setState(f4523D);
            m17776m();
        }
        if (i == 0) {
            m17765x();
        } else {
            m17780C();
        }
        if (this.f4549v == 2 && i != 2) {
            this.f4530c.setState(f4524E);
            m17764y(1200);
        } else if (i == 1) {
            m17764y(1500);
        }
        this.f4549v = i;
    }

    /* renamed from: C */
    public void m17780C() {
        int i = this.f4525A;
        if (i != 0) {
            if (i == 3) {
                this.f4553z.cancel();
            } else {
                return;
            }
        }
        this.f4525A = 1;
        ValueAnimator valueAnimator = this.f4553z;
        valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 1.0f);
        this.f4553z.setDuration(500L);
        this.f4553z.setStartDelay(0L);
        this.f4553z.start();
    }

    /* renamed from: D */
    void m17779D(int i, int i2) {
        int computeVerticalScrollRange = this.f4546s.computeVerticalScrollRange();
        int i3 = this.f4545r;
        this.f4547t = computeVerticalScrollRange - i3 > 0 && i3 >= this.f4528a;
        int computeHorizontalScrollRange = this.f4546s.computeHorizontalScrollRange();
        int i4 = this.f4544q;
        boolean z = computeHorizontalScrollRange - i4 > 0 && i4 >= this.f4528a;
        this.f4548u = z;
        if (this.f4547t || z) {
            if (this.f4547t) {
                float f = i3;
                this.f4539l = (int) ((f * (i2 + (f / 2.0f))) / computeVerticalScrollRange);
                this.f4538k = Math.min(i3, (i3 * i3) / computeVerticalScrollRange);
            }
            if (this.f4548u) {
                float f2 = i4;
                this.f4542o = (int) ((f2 * (i + (f2 / 2.0f))) / computeHorizontalScrollRange);
                this.f4541n = Math.min(i4, (i4 * i4) / computeHorizontalScrollRange);
            }
            int i5 = this.f4549v;
            if (i5 == 0 || i5 == 1) {
                m17782A(1);
            }
        } else if (this.f4549v != 0) {
            m17782A(0);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
    /* renamed from: a */
    public void mo17301a(@NonNull RecyclerView recyclerView, @NonNull MotionEvent motionEvent) {
        if (this.f4549v != 0) {
            if (motionEvent.getAction() == 0) {
                boolean w = m17766w(motionEvent.getX(), motionEvent.getY());
                boolean v = m17767v(motionEvent.getX(), motionEvent.getY());
                if (w || v) {
                    if (v) {
                        this.f4550w = 1;
                        this.f4543p = (int) motionEvent.getX();
                    } else if (w) {
                        this.f4550w = 2;
                        this.f4540m = (int) motionEvent.getY();
                    }
                    m17782A(2);
                }
            } else if (motionEvent.getAction() == 1 && this.f4549v == 2) {
                this.f4540m = 0.0f;
                this.f4543p = 0.0f;
                m17782A(1);
                this.f4550w = 0;
            } else if (motionEvent.getAction() == 2 && this.f4549v == 2) {
                m17780C();
                if (this.f4550w == 1) {
                    m17769t(motionEvent.getX());
                }
                if (this.f4550w == 2) {
                    m17778E(motionEvent.getY());
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x007b, code lost:
        if (r0 == 2) goto L_0x007e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x003f, code lost:
        if (r0 != false) goto L_0x0042;
     */
    @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo17300c(@androidx.annotation.NonNull androidx.recyclerview.widget.RecyclerView r5, @androidx.annotation.NonNull android.view.MotionEvent r6) {
        /*
            r4 = this;
            r0 = r4
            int r0 = r0.f4549v
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = r7
            r1 = 1
            if (r0 != r1) goto L_0x0075
            r0 = r4
            r1 = r6
            float r1 = r1.getX()
            r2 = r6
            float r2 = r2.getY()
            boolean r0 = r0.m17766w(r1, r2)
            r9 = r0
            r0 = r4
            r1 = r6
            float r1 = r1.getX()
            r2 = r6
            float r2 = r2.getY()
            boolean r0 = r0.m17767v(r1, r2)
            r10 = r0
            r0 = r8
            r11 = r0
            r0 = r6
            int r0 = r0.getAction()
            if (r0 != 0) goto L_0x0081
            r0 = r9
            if (r0 != 0) goto L_0x0042
            r0 = r8
            r11 = r0
            r0 = r10
            if (r0 == 0) goto L_0x0081
        L_0x0042:
            r0 = r10
            if (r0 == 0) goto L_0x0059
            r0 = r4
            r1 = 1
            r0.f4550w = r1
            r0 = r4
            r1 = r6
            float r1 = r1.getX()
            int r1 = (int) r1
            float r1 = (float) r1
            r0.f4543p = r1
            goto L_0x006d
        L_0x0059:
            r0 = r9
            if (r0 == 0) goto L_0x006d
            r0 = r4
            r1 = 2
            r0.f4550w = r1
            r0 = r4
            r1 = r6
            float r1 = r1.getY()
            int r1 = (int) r1
            float r1 = (float) r1
            r0.f4540m = r1
        L_0x006d:
            r0 = r4
            r1 = 2
            r0.m17782A(r1)
            goto L_0x007e
        L_0x0075:
            r0 = r8
            r11 = r0
            r0 = r7
            r1 = 2
            if (r0 != r1) goto L_0x0081
        L_0x007e:
            r0 = 1
            r11 = r0
        L_0x0081:
            r0 = r11
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.FastScroller.mo17300c(androidx.recyclerview.widget.RecyclerView, android.view.MotionEvent):boolean");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
    /* renamed from: e */
    public void mo17299e(boolean z) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    /* renamed from: k */
    public void mo17464k(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
        if (this.f4544q != this.f4546s.getWidth() || this.f4545r != this.f4546s.getHeight()) {
            this.f4544q = this.f4546s.getWidth();
            this.f4545r = this.f4546s.getHeight();
            m17782A(0);
        } else if (this.f4525A != 0) {
            if (this.f4547t) {
                m17773p(canvas);
            }
            if (this.f4548u) {
                m17774o(canvas);
            }
        }
    }

    /* renamed from: l */
    public void m17777l(@Nullable RecyclerView recyclerView) {
        RecyclerView recyclerView2 = this.f4546s;
        if (recyclerView2 != recyclerView) {
            if (recyclerView2 != null) {
                m17775n();
            }
            this.f4546s = recyclerView;
            if (recyclerView != null) {
                m17781B();
            }
        }
    }

    @VisibleForTesting
    /* renamed from: s */
    void m17770s(int i) {
        int i2 = this.f4525A;
        if (i2 == 1) {
            this.f4553z.cancel();
        } else if (i2 != 2) {
            return;
        }
        this.f4525A = 3;
        ValueAnimator valueAnimator = this.f4553z;
        valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 0.0f);
        this.f4553z.setDuration(i);
        this.f4553z.start();
    }

    @VisibleForTesting
    /* renamed from: v */
    boolean m17767v(float f, float f2) {
        boolean z;
        if (f2 >= this.f4545r - this.f4536i) {
            int i = this.f4542o;
            int i2 = this.f4541n;
            if (f >= i - (i2 / 2) && f <= i + (i2 / 2)) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    @VisibleForTesting
    /* renamed from: w */
    boolean m17766w(float f, float f2) {
        boolean z;
        if (!m17768u() ? f >= this.f4544q - this.f4532e : f <= this.f4532e / 2) {
            int i = this.f4539l;
            int i2 = this.f4538k;
            if (f2 >= i - (i2 / 2) && f2 <= i + (i2 / 2)) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    /* renamed from: x */
    void m17765x() {
        this.f4546s.invalidate();
    }
}
