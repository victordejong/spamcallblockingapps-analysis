package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.view.MotionEvent;
import androidx.core.p026h.C0595u;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: androidx.recyclerview.widget.e */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/e.class */
public class C0976e extends RecyclerView.AbstractC0924h implements RecyclerView.AbstractC0933m {

    /* renamed from: k */
    private static final int[] f3329k = {16842919};

    /* renamed from: l */
    private static final int[] f3330l = new int[0];

    /* renamed from: a */
    final StateListDrawable f3336a;

    /* renamed from: b */
    final Drawable f3337b;

    /* renamed from: c */
    int f3338c;

    /* renamed from: d */
    int f3339d;

    /* renamed from: e */
    float f3340e;

    /* renamed from: f */
    int f3341f;

    /* renamed from: g */
    int f3342g;

    /* renamed from: h */
    float f3343h;

    /* renamed from: m */
    private final int f3346m;

    /* renamed from: n */
    private final int f3347n;

    /* renamed from: o */
    private final int f3348o;

    /* renamed from: p */
    private final int f3349p;

    /* renamed from: q */
    private final StateListDrawable f3350q;

    /* renamed from: r */
    private final Drawable f3351r;

    /* renamed from: s */
    private final int f3352s;

    /* renamed from: t */
    private final int f3353t;

    /* renamed from: w */
    private RecyclerView f3356w;

    /* renamed from: u */
    private int f3354u = 0;

    /* renamed from: v */
    private int f3355v = 0;

    /* renamed from: x */
    private boolean f3357x = false;

    /* renamed from: y */
    private boolean f3358y = false;

    /* renamed from: z */
    private int f3359z = 0;

    /* renamed from: A */
    private int f3331A = 0;

    /* renamed from: B */
    private final int[] f3332B = new int[2];

    /* renamed from: C */
    private final int[] f3333C = new int[2];

    /* renamed from: i */
    final ValueAnimator f3344i = ValueAnimator.ofFloat(0.0f, 1.0f);

    /* renamed from: j */
    int f3345j = 0;

    /* renamed from: D */
    private final Runnable f3334D = new Runnable() { // from class: androidx.recyclerview.widget.e.1
        @Override // java.lang.Runnable
        public void run() {
            C0976e.this.m18523b(500);
        }
    };

    /* renamed from: E */
    private final RecyclerView.AbstractC0934n f3335E = new RecyclerView.AbstractC0934n() { // from class: androidx.recyclerview.widget.e.2
        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0934n
        /* renamed from: a */
        public void mo1098a(RecyclerView recyclerView, int i, int i2) {
            C0976e.this.m18531a(recyclerView.computeHorizontalScrollOffset(), recyclerView.computeVerticalScrollOffset());
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.recyclerview.widget.e$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/e$a.class */
    public class C0979a extends AnimatorListenerAdapter {

        /* renamed from: b */
        private boolean f3363b = false;

        C0979a() {
            C0976e.this = r4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f3363b = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.f3363b) {
                this.f3363b = false;
            } else if (((Float) C0976e.this.f3344i.getAnimatedValue()).floatValue() == 0.0f) {
                C0976e.this.f3345j = 0;
                C0976e.this.m18532a(0);
            } else {
                C0976e.this.f3345j = 2;
                C0976e.this.m18536a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.recyclerview.widget.e$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/e$b.class */
    public class C0980b implements ValueAnimator.AnimatorUpdateListener {
        C0980b() {
            C0976e.this = r4;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            int floatValue = (int) (((Float) valueAnimator.getAnimatedValue()).floatValue() * 255.0f);
            C0976e.this.f3336a.setAlpha(floatValue);
            C0976e.this.f3337b.setAlpha(floatValue);
            C0976e.this.m18536a();
        }
    }

    public C0976e(RecyclerView recyclerView, StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2, int i, int i2, int i3) {
        this.f3336a = stateListDrawable;
        this.f3337b = drawable;
        this.f3350q = stateListDrawable2;
        this.f3351r = drawable2;
        this.f3348o = Math.max(i, stateListDrawable.getIntrinsicWidth());
        this.f3349p = Math.max(i, drawable.getIntrinsicWidth());
        this.f3352s = Math.max(i, stateListDrawable2.getIntrinsicWidth());
        this.f3353t = Math.max(i, drawable2.getIntrinsicWidth());
        this.f3346m = i2;
        this.f3347n = i3;
        this.f3336a.setAlpha(255);
        this.f3337b.setAlpha(255);
        this.f3344i.addListener(new C0979a());
        this.f3344i.addUpdateListener(new C0980b());
        m18529a(recyclerView);
    }

    /* renamed from: a */
    private int m18533a(float f, float f2, int[] iArr, int i, int i2, int i3) {
        int i4;
        int i5 = iArr[1] - iArr[0];
        if (i5 == 0) {
            i4 = 0;
        } else {
            float f3 = (f2 - f) / i5;
            int i6 = i - i3;
            int i7 = (int) (f3 * i6);
            int i8 = i2 + i7;
            i4 = 0;
            if (i8 < i6) {
                i4 = 0;
                if (i8 >= 0) {
                    i4 = i7;
                }
            }
        }
        return i4;
    }

    /* renamed from: a */
    private void m18535a(float f) {
        int[] m18515g = m18515g();
        float max = Math.max(m18515g[0], Math.min(m18515g[1], f));
        if (Math.abs(this.f3339d - max) < 2.0f) {
            return;
        }
        int m18533a = m18533a(this.f3340e, max, m18515g, this.f3356w.computeVerticalScrollRange(), this.f3356w.computeVerticalScrollOffset(), this.f3355v);
        if (m18533a != 0) {
            this.f3356w.scrollBy(0, m18533a);
        }
        this.f3340e = max;
    }

    /* renamed from: a */
    private void m18530a(Canvas canvas) {
        int i = this.f3354u - this.f3348o;
        int i2 = this.f3339d - (this.f3338c / 2);
        this.f3336a.setBounds(0, 0, this.f3348o, this.f3338c);
        this.f3337b.setBounds(0, 0, this.f3349p, this.f3355v);
        if (!m18517e()) {
            canvas.translate(i, 0.0f);
            this.f3337b.draw(canvas);
            canvas.translate(0.0f, i2);
            this.f3336a.draw(canvas);
            canvas.translate(-i, -i2);
            return;
        }
        this.f3337b.draw(canvas);
        canvas.translate(this.f3348o, i2);
        canvas.scale(-1.0f, 1.0f);
        this.f3336a.draw(canvas);
        canvas.scale(1.0f, 1.0f);
        canvas.translate(-this.f3348o, -i2);
    }

    /* renamed from: b */
    private void m18525b(float f) {
        int[] m18514h = m18514h();
        float max = Math.max(m18514h[0], Math.min(m18514h[1], f));
        if (Math.abs(this.f3342g - max) < 2.0f) {
            return;
        }
        int m18533a = m18533a(this.f3343h, max, m18514h, this.f3356w.computeHorizontalScrollRange(), this.f3356w.computeHorizontalScrollOffset(), this.f3354u);
        if (m18533a != 0) {
            this.f3356w.scrollBy(m18533a, 0);
        }
        this.f3343h = max;
    }

    /* renamed from: b */
    private void m18522b(Canvas canvas) {
        int i = this.f3355v - this.f3352s;
        int i2 = this.f3342g - (this.f3341f / 2);
        this.f3350q.setBounds(0, 0, this.f3341f, this.f3352s);
        this.f3351r.setBounds(0, 0, this.f3354u, this.f3353t);
        canvas.translate(0.0f, i);
        this.f3351r.draw(canvas);
        canvas.translate(i2, 0.0f);
        this.f3350q.draw(canvas);
        canvas.translate(-i2, -i);
    }

    /* renamed from: c */
    private void m18520c() {
        this.f3356w.addItemDecoration(this);
        this.f3356w.addOnItemTouchListener(this);
        this.f3356w.addOnScrollListener(this.f3335E);
    }

    /* renamed from: c */
    private void m18519c(int i) {
        m18516f();
        this.f3356w.postDelayed(this.f3334D, i);
    }

    /* renamed from: d */
    private void m18518d() {
        this.f3356w.removeItemDecoration(this);
        this.f3356w.removeOnItemTouchListener(this);
        this.f3356w.removeOnScrollListener(this.f3335E);
        m18516f();
    }

    /* renamed from: e */
    private boolean m18517e() {
        boolean z = true;
        if (C0595u.m20320g(this.f3356w) != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: f */
    private void m18516f() {
        this.f3356w.removeCallbacks(this.f3334D);
    }

    /* renamed from: g */
    private int[] m18515g() {
        this.f3332B[0] = this.f3347n;
        this.f3332B[1] = this.f3355v - this.f3347n;
        return this.f3332B;
    }

    /* renamed from: h */
    private int[] m18514h() {
        this.f3333C[0] = this.f3347n;
        this.f3333C[1] = this.f3354u - this.f3347n;
        return this.f3333C;
    }

    /* renamed from: a */
    void m18536a() {
        this.f3356w.invalidate();
    }

    /* renamed from: a */
    void m18532a(int i) {
        if (i == 2 && this.f3359z != 2) {
            this.f3336a.setState(f3329k);
            m18516f();
        }
        if (i == 0) {
            m18536a();
        } else {
            m18526b();
        }
        if (this.f3359z == 2 && i != 2) {
            this.f3336a.setState(f3330l);
            m18519c(1200);
        } else if (i == 1) {
            m18519c(1500);
        }
        this.f3359z = i;
    }

    /* renamed from: a */
    void m18531a(int i, int i2) {
        int computeVerticalScrollRange = this.f3356w.computeVerticalScrollRange();
        int i3 = this.f3355v;
        this.f3357x = computeVerticalScrollRange - i3 > 0 && this.f3355v >= this.f3346m;
        int computeHorizontalScrollRange = this.f3356w.computeHorizontalScrollRange();
        int i4 = this.f3354u;
        this.f3358y = computeHorizontalScrollRange - i4 > 0 && this.f3354u >= this.f3346m;
        if (!this.f3357x && !this.f3358y) {
            if (this.f3359z == 0) {
                return;
            }
            m18532a(0);
            return;
        }
        if (this.f3357x) {
            this.f3339d = (int) (((i2 + (i3 / 2.0f)) * i3) / computeVerticalScrollRange);
            this.f3338c = Math.min(i3, (i3 * i3) / computeVerticalScrollRange);
        }
        if (this.f3358y) {
            this.f3342g = (int) (((i + (i4 / 2.0f)) * i4) / computeHorizontalScrollRange);
            this.f3341f = Math.min(i4, (i4 * i4) / computeHorizontalScrollRange);
        }
        if (this.f3359z != 0 && this.f3359z != 1) {
            return;
        }
        m18532a(1);
    }

    /* renamed from: a */
    public void m18529a(RecyclerView recyclerView) {
        if (this.f3356w == recyclerView) {
            return;
        }
        if (this.f3356w != null) {
            m18518d();
        }
        this.f3356w = recyclerView;
        if (this.f3356w == null) {
            return;
        }
        m18520c();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0933m
    /* renamed from: a */
    public void mo18527a(boolean z) {
    }

    /* renamed from: a */
    boolean m18534a(float f, float f2) {
        boolean z;
        if (!m18517e() ? f >= this.f3354u - this.f3348o : f <= this.f3348o / 2) {
            if (f2 >= this.f3339d - (this.f3338c / 2) && f2 <= this.f3339d + (this.f3338c / 2)) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0933m
    /* renamed from: a */
    public boolean mo18528a(RecyclerView recyclerView, MotionEvent motionEvent) {
        boolean z = true;
        if (this.f3359z == 1) {
            boolean m18534a = m18534a(motionEvent.getX(), motionEvent.getY());
            boolean m18524b = m18524b(motionEvent.getX(), motionEvent.getY());
            if (motionEvent.getAction() != 0 || (!m18534a && !m18524b)) {
                z = false;
            } else {
                if (m18524b) {
                    this.f3331A = 1;
                    this.f3343h = (int) motionEvent.getX();
                } else if (m18534a) {
                    this.f3331A = 2;
                    this.f3340e = (int) motionEvent.getY();
                }
                m18532a(2);
            }
        } else if (this.f3359z != 2) {
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    public void m18526b() {
        switch (this.f3345j) {
            case 0:
                break;
            case 1:
            case 2:
            default:
                return;
            case 3:
                this.f3344i.cancel();
                break;
        }
        this.f3345j = 1;
        this.f3344i.setFloatValues(((Float) this.f3344i.getAnimatedValue()).floatValue(), 1.0f);
        this.f3344i.setDuration(500L);
        this.f3344i.setStartDelay(0L);
        this.f3344i.start();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: b */
    void m18523b(int i) {
        switch (this.f3345j) {
            case 1:
                this.f3344i.cancel();
                break;
            case 2:
                break;
            default:
                return;
        }
        this.f3345j = 3;
        this.f3344i.setFloatValues(((Float) this.f3344i.getAnimatedValue()).floatValue(), 0.0f);
        this.f3344i.setDuration(i);
        this.f3344i.start();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0924h
    /* renamed from: b */
    public void mo1299b(Canvas canvas, RecyclerView recyclerView, RecyclerView.C0945u c0945u) {
        if (this.f3354u != this.f3356w.getWidth() || this.f3355v != this.f3356w.getHeight()) {
            this.f3354u = this.f3356w.getWidth();
            this.f3355v = this.f3356w.getHeight();
            m18532a(0);
        } else if (this.f3345j == 0) {
        } else {
            if (this.f3357x) {
                m18530a(canvas);
            }
            if (!this.f3358y) {
                return;
            }
            m18522b(canvas);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0933m
    /* renamed from: b */
    public void mo18521b(RecyclerView recyclerView, MotionEvent motionEvent) {
        if (this.f3359z == 0) {
            return;
        }
        if (motionEvent.getAction() == 0) {
            boolean m18534a = m18534a(motionEvent.getX(), motionEvent.getY());
            boolean m18524b = m18524b(motionEvent.getX(), motionEvent.getY());
            if (!m18534a && !m18524b) {
                return;
            }
            if (m18524b) {
                this.f3331A = 1;
                this.f3343h = (int) motionEvent.getX();
            } else if (m18534a) {
                this.f3331A = 2;
                this.f3340e = (int) motionEvent.getY();
            }
            m18532a(2);
        } else if (motionEvent.getAction() == 1 && this.f3359z == 2) {
            this.f3340e = 0.0f;
            this.f3343h = 0.0f;
            m18532a(1);
            this.f3331A = 0;
        } else if (motionEvent.getAction() != 2 || this.f3359z != 2) {
        } else {
            m18526b();
            if (this.f3331A == 1) {
                m18525b(motionEvent.getX());
            }
            if (this.f3331A != 2) {
                return;
            }
            m18535a(motionEvent.getY());
        }
    }

    /* renamed from: b */
    boolean m18524b(float f, float f2) {
        return f2 >= ((float) (this.f3355v - this.f3352s)) && f >= ((float) (this.f3342g - (this.f3341f / 2))) && f <= ((float) (this.f3342g + (this.f3341f / 2)));
    }
}
