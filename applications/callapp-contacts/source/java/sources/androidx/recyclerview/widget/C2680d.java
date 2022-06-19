package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.view.MotionEvent;
import androidx.core.view.C0926v;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* renamed from: androidx.recyclerview.widget.d */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/d.class */
public final class C2680d extends RecyclerView.AbstractC2636h implements RecyclerView.AbstractC2644l {

    /* renamed from: r */
    private static final int[] f10226r = {16842919};

    /* renamed from: s */
    private static final int[] f10227s = new int[0];

    /* renamed from: E */
    private final RecyclerView.AbstractC2645m f10232E;

    /* renamed from: a */
    final int f10233a;

    /* renamed from: b */
    final StateListDrawable f10234b;

    /* renamed from: c */
    final Drawable f10235c;

    /* renamed from: d */
    int f10236d;

    /* renamed from: e */
    int f10237e;

    /* renamed from: f */
    float f10238f;

    /* renamed from: g */
    int f10239g;

    /* renamed from: h */
    int f10240h;

    /* renamed from: i */
    float f10241i;

    /* renamed from: l */
    RecyclerView f10244l;

    /* renamed from: p */
    final ValueAnimator f10248p;

    /* renamed from: t */
    private final int f10250t;

    /* renamed from: u */
    private final int f10251u;

    /* renamed from: v */
    private final int f10252v;

    /* renamed from: w */
    private final StateListDrawable f10253w;

    /* renamed from: x */
    private final Drawable f10254x;

    /* renamed from: y */
    private final int f10255y;

    /* renamed from: z */
    private final int f10256z;

    /* renamed from: j */
    int f10242j = 0;

    /* renamed from: k */
    int f10243k = 0;

    /* renamed from: m */
    boolean f10245m = false;

    /* renamed from: n */
    boolean f10246n = false;

    /* renamed from: o */
    int f10247o = 0;

    /* renamed from: A */
    private int f10228A = 0;

    /* renamed from: B */
    private final int[] f10229B = new int[2];

    /* renamed from: C */
    private final int[] f10230C = new int[2];

    /* renamed from: q */
    int f10249q = 0;

    /* renamed from: D */
    private final Runnable f10231D = new Runnable() { // from class: androidx.recyclerview.widget.d.1
        @Override // java.lang.Runnable
        public final void run() {
            C2680d c2680d = C2680d.this;
            int i = c2680d.f10249q;
            if (i == 1) {
                c2680d.f10248p.cancel();
            } else if (i != 2) {
                return;
            }
            c2680d.f10249q = 3;
            c2680d.f10248p.setFloatValues(((Float) c2680d.f10248p.getAnimatedValue()).floatValue(), BitmapDescriptorFactory.HUE_RED);
            c2680d.f10248p.setDuration(500L);
            c2680d.f10248p.start();
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.recyclerview.widget.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/d$a.class */
    public final class C2683a extends AnimatorListenerAdapter {

        /* renamed from: b */
        private boolean f10260b = false;

        C2683a() {
            C2680d.this = r4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
            this.f10260b = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            if (this.f10260b) {
                this.f10260b = false;
            } else if (((Float) C2680d.this.f10248p.getAnimatedValue()).floatValue() == BitmapDescriptorFactory.HUE_RED) {
                C2680d.this.f10249q = 0;
                C2680d.this.m40103a(0);
            } else {
                C2680d.this.f10249q = 2;
                C2680d.this.f10244l.invalidate();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.recyclerview.widget.d$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/d$b.class */
    public final class C2684b implements ValueAnimator.AnimatorUpdateListener {
        C2684b() {
            C2680d.this = r4;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            int floatValue = (int) (((Float) valueAnimator.getAnimatedValue()).floatValue() * 255.0f);
            C2680d.this.f10234b.setAlpha(floatValue);
            C2680d.this.f10235c.setAlpha(floatValue);
            C2680d.this.f10244l.invalidate();
        }
    }

    public C2680d(RecyclerView recyclerView, StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2, int i, int i2, int i3) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        this.f10248p = ofFloat;
        RecyclerView.AbstractC2645m abstractC2645m = new RecyclerView.AbstractC2645m() { // from class: androidx.recyclerview.widget.d.2
            @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2645m
            /* renamed from: a */
            public final void mo10832a(RecyclerView recyclerView2, int i4, int i5) {
                C2680d c2680d = C2680d.this;
                int computeHorizontalScrollOffset = recyclerView2.computeHorizontalScrollOffset();
                int computeVerticalScrollOffset = recyclerView2.computeVerticalScrollOffset();
                int computeVerticalScrollRange = c2680d.f10244l.computeVerticalScrollRange();
                int i6 = c2680d.f10243k;
                c2680d.f10245m = computeVerticalScrollRange - i6 > 0 && c2680d.f10243k >= c2680d.f10233a;
                int computeHorizontalScrollRange = c2680d.f10244l.computeHorizontalScrollRange();
                int i7 = c2680d.f10242j;
                c2680d.f10246n = computeHorizontalScrollRange - i7 > 0 && c2680d.f10242j >= c2680d.f10233a;
                if (!c2680d.f10245m && !c2680d.f10246n) {
                    if (c2680d.f10247o == 0) {
                        return;
                    }
                    c2680d.m40103a(0);
                    return;
                }
                if (c2680d.f10245m) {
                    float f = computeVerticalScrollOffset;
                    float f2 = i6;
                    c2680d.f10237e = (int) ((f2 * (f + (f2 / 2.0f))) / computeVerticalScrollRange);
                    c2680d.f10236d = Math.min(i6, (i6 * i6) / computeVerticalScrollRange);
                }
                if (c2680d.f10246n) {
                    float f3 = computeHorizontalScrollOffset;
                    float f4 = i7;
                    c2680d.f10240h = (int) ((f4 * (f3 + (f4 / 2.0f))) / computeHorizontalScrollRange);
                    c2680d.f10239g = Math.min(i7, (i7 * i7) / computeHorizontalScrollRange);
                }
                if (c2680d.f10247o != 0 && c2680d.f10247o != 1) {
                    return;
                }
                c2680d.m40103a(1);
            }
        };
        this.f10232E = abstractC2645m;
        this.f10234b = stateListDrawable;
        this.f10235c = drawable;
        this.f10253w = stateListDrawable2;
        this.f10254x = drawable2;
        this.f10251u = Math.max(i, stateListDrawable.getIntrinsicWidth());
        this.f10252v = Math.max(i, drawable.getIntrinsicWidth());
        this.f10255y = Math.max(i, stateListDrawable2.getIntrinsicWidth());
        this.f10256z = Math.max(i, drawable2.getIntrinsicWidth());
        this.f10233a = i2;
        this.f10250t = i3;
        stateListDrawable.setAlpha(255);
        drawable.setAlpha(255);
        ofFloat.addListener(new C2683a());
        ofFloat.addUpdateListener(new C2684b());
        RecyclerView recyclerView2 = this.f10244l;
        if (recyclerView2 != recyclerView) {
            if (recyclerView2 != null) {
                recyclerView2.m40460b(this);
                RecyclerView recyclerView3 = this.f10244l;
                recyclerView3.f9986s.remove(this);
                if (recyclerView3.f9987t == this) {
                    recyclerView3.f9987t = null;
                }
                this.f10244l.m40459b(abstractC2645m);
                m40097c();
            }
            this.f10244l = recyclerView;
            if (recyclerView == null) {
                return;
            }
            recyclerView.m40480a(this, -1);
            this.f10244l.f9986s.add(this);
            this.f10244l.m40478a(abstractC2645m);
        }
    }

    /* renamed from: a */
    private static int m40104a(float f, float f2, int[] iArr, int i, int i2, int i3) {
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
    private boolean m40106a() {
        return C0926v.m44097f(this.f10244l) == 1;
    }

    /* renamed from: a */
    private boolean m40105a(float f, float f2) {
        if (m40106a()) {
            if (f > this.f10251u) {
                return false;
            }
        } else if (f < this.f10242j - this.f10251u) {
            return false;
        }
        int i = this.f10237e;
        int i2 = this.f10236d;
        return f2 >= ((float) (i - (i2 / 2))) && f2 <= ((float) (i + (i2 / 2)));
    }

    /* renamed from: b */
    private void m40101b() {
        int i = this.f10249q;
        if (i != 0) {
            if (i != 3) {
                return;
            }
            this.f10248p.cancel();
        }
        this.f10249q = 1;
        ValueAnimator valueAnimator = this.f10248p;
        valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 1.0f);
        this.f10248p.setDuration(500L);
        this.f10248p.setStartDelay(0L);
        this.f10248p.start();
    }

    /* renamed from: b */
    private void m40099b(int i) {
        m40097c();
        this.f10244l.postDelayed(this.f10231D, i);
    }

    /* renamed from: b */
    private boolean m40100b(float f, float f2) {
        if (f2 >= this.f10243k - this.f10255y) {
            int i = this.f10240h;
            int i2 = this.f10239g;
            return f >= ((float) (i - (i2 / 2))) && f <= ((float) (i + (i2 / 2)));
        }
        return false;
    }

    /* renamed from: c */
    private void m40097c() {
        this.f10244l.removeCallbacks(this.f10231D);
    }

    /* renamed from: a */
    final void m40103a(int i) {
        if (i == 2 && this.f10247o != 2) {
            this.f10234b.setState(f10226r);
            m40097c();
        }
        if (i == 0) {
            this.f10244l.invalidate();
        } else {
            m40101b();
        }
        if (this.f10247o == 2 && i != 2) {
            this.f10234b.setState(f10227s);
            m40099b(1200);
        } else if (i == 1) {
            m40099b(ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED);
        }
        this.f10247o = i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2636h
    /* renamed from: a */
    public final void mo30290a(Canvas canvas, RecyclerView recyclerView, RecyclerView.C2654s c2654s) {
        if (this.f10242j != this.f10244l.getWidth() || this.f10243k != this.f10244l.getHeight()) {
            this.f10242j = this.f10244l.getWidth();
            this.f10243k = this.f10244l.getHeight();
            m40103a(0);
        } else if (this.f10249q == 0) {
        } else {
            if (this.f10245m) {
                int i = this.f10242j;
                int i2 = this.f10251u;
                int i3 = i - i2;
                int i4 = this.f10237e;
                int i5 = this.f10236d;
                int i6 = i4 - (i5 / 2);
                this.f10234b.setBounds(0, 0, i2, i5);
                this.f10235c.setBounds(0, 0, this.f10252v, this.f10243k);
                if (m40106a()) {
                    this.f10235c.draw(canvas);
                    canvas.translate(this.f10251u, i6);
                    canvas.scale(-1.0f, 1.0f);
                    this.f10234b.draw(canvas);
                    canvas.scale(-1.0f, 1.0f);
                    canvas.translate(-this.f10251u, -i6);
                } else {
                    canvas.translate(i3, BitmapDescriptorFactory.HUE_RED);
                    this.f10235c.draw(canvas);
                    canvas.translate(BitmapDescriptorFactory.HUE_RED, i6);
                    this.f10234b.draw(canvas);
                    canvas.translate(-i3, -i6);
                }
            }
            if (!this.f10246n) {
                return;
            }
            int i7 = this.f10243k;
            int i8 = this.f10255y;
            int i9 = i7 - i8;
            int i10 = this.f10240h;
            int i11 = this.f10239g;
            int i12 = i10 - (i11 / 2);
            this.f10253w.setBounds(0, 0, i11, i8);
            this.f10254x.setBounds(0, 0, this.f10242j, this.f10256z);
            canvas.translate(BitmapDescriptorFactory.HUE_RED, i9);
            this.f10254x.draw(canvas);
            canvas.translate(i12, BitmapDescriptorFactory.HUE_RED);
            this.f10253w.draw(canvas);
            canvas.translate(-i12, -i9);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0077, code lost:
        if (r0 == 2) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x003c, code lost:
        if (r0 != false) goto L10;
     */
    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2644l
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo40102a(android.view.MotionEvent r5) {
        /*
            r4 = this;
            r0 = r4
            int r0 = r0.f10247o
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = r6
            r1 = 1
            if (r0 != r1) goto L72
            r0 = r4
            r1 = r5
            float r1 = r1.getX()
            r2 = r5
            float r2 = r2.getY()
            boolean r0 = r0.m40105a(r1, r2)
            r8 = r0
            r0 = r4
            r1 = r5
            float r1 = r1.getX()
            r2 = r5
            float r2 = r2.getY()
            boolean r0 = r0.m40100b(r1, r2)
            r9 = r0
            r0 = r7
            r10 = r0
            r0 = r5
            int r0 = r0.getAction()
            if (r0 != 0) goto L7d
            r0 = r8
            if (r0 != 0) goto L3f
            r0 = r7
            r10 = r0
            r0 = r9
            if (r0 == 0) goto L7d
        L3f:
            r0 = r9
            if (r0 == 0) goto L56
            r0 = r4
            r1 = 1
            r0.f10228A = r1
            r0 = r4
            r1 = r5
            float r1 = r1.getX()
            int r1 = (int) r1
            float r1 = (float) r1
            r0.f10241i = r1
            goto L6a
        L56:
            r0 = r8
            if (r0 == 0) goto L6a
            r0 = r4
            r1 = 2
            r0.f10228A = r1
            r0 = r4
            r1 = r5
            float r1 = r1.getY()
            int r1 = (int) r1
            float r1 = (float) r1
            r0.f10238f = r1
        L6a:
            r0 = r4
            r1 = 2
            r0.m40103a(r1)
            goto L7a
        L72:
            r0 = r7
            r10 = r0
            r0 = r6
            r1 = 2
            if (r0 != r1) goto L7d
        L7a:
            r0 = 1
            r10 = r0
        L7d:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.C2680d.mo40102a(android.view.MotionEvent):boolean");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2644l
    /* renamed from: b */
    public final void mo40098b(MotionEvent motionEvent) {
        if (this.f10247o == 0) {
            return;
        }
        if (motionEvent.getAction() == 0) {
            boolean m40105a = m40105a(motionEvent.getX(), motionEvent.getY());
            boolean m40100b = m40100b(motionEvent.getX(), motionEvent.getY());
            if (!m40105a && !m40100b) {
                return;
            }
            if (m40100b) {
                this.f10228A = 1;
                this.f10241i = (int) motionEvent.getX();
            } else if (m40105a) {
                this.f10228A = 2;
                this.f10238f = (int) motionEvent.getY();
            }
            m40103a(2);
        } else if (motionEvent.getAction() == 1 && this.f10247o == 2) {
            this.f10238f = BitmapDescriptorFactory.HUE_RED;
            this.f10241i = BitmapDescriptorFactory.HUE_RED;
            m40103a(1);
            this.f10228A = 0;
        } else if (motionEvent.getAction() != 2 || this.f10247o != 2) {
        } else {
            m40101b();
            if (this.f10228A == 1) {
                float x = motionEvent.getX();
                int[] iArr = this.f10230C;
                int i = this.f10250t;
                iArr[0] = i;
                iArr[1] = this.f10242j - i;
                float max = Math.max(iArr[0], Math.min(iArr[1], x));
                if (Math.abs(this.f10240h - max) >= 2.0f) {
                    int m40104a = m40104a(this.f10241i, max, iArr, this.f10244l.computeHorizontalScrollRange(), this.f10244l.computeHorizontalScrollOffset(), this.f10242j);
                    if (m40104a != 0) {
                        this.f10244l.scrollBy(m40104a, 0);
                    }
                    this.f10241i = max;
                }
            }
            if (this.f10228A != 2) {
                return;
            }
            float y = motionEvent.getY();
            int[] iArr2 = this.f10229B;
            int i2 = this.f10250t;
            iArr2[0] = i2;
            iArr2[1] = this.f10243k - i2;
            float max2 = Math.max(iArr2[0], Math.min(iArr2[1], y));
            if (Math.abs(this.f10237e - max2) < 2.0f) {
                return;
            }
            int m40104a2 = m40104a(this.f10238f, max2, iArr2, this.f10244l.computeVerticalScrollRange(), this.f10244l.computeVerticalScrollOffset(), this.f10243k);
            if (m40104a2 != 0) {
                this.f10244l.scrollBy(0, m40104a2);
            }
            this.f10238f = max2;
        }
    }
}
