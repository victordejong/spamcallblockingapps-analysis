package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.view.MotionEvent;
import androidx.core.view.v;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/d.class */
public final class d extends RecyclerView.h implements RecyclerView.l {
    private static final int[] r = {16842919};
    private static final int[] s = new int[0];
    private final RecyclerView.m E;

    /* renamed from: a  reason: collision with root package name */
    final int f5449a;

    /* renamed from: b  reason: collision with root package name */
    final StateListDrawable f5450b;

    /* renamed from: c  reason: collision with root package name */
    final Drawable f5451c;

    /* renamed from: d  reason: collision with root package name */
    int f5452d;
    int e;
    float f;
    int g;
    int h;
    float i;
    RecyclerView l;
    final ValueAnimator p;
    private final int t;
    private final int u;
    private final int v;
    private final StateListDrawable w;
    private final Drawable x;
    private final int y;
    private final int z;
    int j = 0;
    int k = 0;
    boolean m = false;
    boolean n = false;
    int o = 0;
    private int A = 0;
    private final int[] B = new int[2];
    private final int[] C = new int[2];
    int q = 0;
    private final Runnable D = new Runnable() { // from class: androidx.recyclerview.widget.d.1
        @Override // java.lang.Runnable
        public final void run() {
            d dVar = d.this;
            int i = dVar.q;
            if (i == 1) {
                dVar.p.cancel();
            } else if (i != 2) {
                return;
            }
            dVar.q = 3;
            dVar.p.setFloatValues(((Float) dVar.p.getAnimatedValue()).floatValue(), BitmapDescriptorFactory.HUE_RED);
            dVar.p.setDuration(500L);
            dVar.p.start();
        }
    };

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/d$a.class */
    final class a extends AnimatorListenerAdapter {

        /* renamed from: b  reason: collision with root package name */
        private boolean f5456b = false;

        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
            this.f5456b = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            if (this.f5456b) {
                this.f5456b = false;
            } else if (((Float) d.this.p.getAnimatedValue()).floatValue() == BitmapDescriptorFactory.HUE_RED) {
                d.this.q = 0;
                d.this.a(0);
            } else {
                d.this.q = 2;
                d.this.l.invalidate();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/d$b.class */
    final class b implements ValueAnimator.AnimatorUpdateListener {
        b() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            int floatValue = (int) (((Float) valueAnimator.getAnimatedValue()).floatValue() * 255.0f);
            d.this.f5450b.setAlpha(floatValue);
            d.this.f5451c.setAlpha(floatValue);
            d.this.l.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(RecyclerView recyclerView, StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2, int i, int i2, int i3) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        this.p = ofFloat;
        RecyclerView.m mVar = new RecyclerView.m() { // from class: androidx.recyclerview.widget.d.2
            @Override // androidx.recyclerview.widget.RecyclerView.m
            public final void a(RecyclerView recyclerView2, int i4, int i5) {
                d dVar = d.this;
                int computeHorizontalScrollOffset = recyclerView2.computeHorizontalScrollOffset();
                int computeVerticalScrollOffset = recyclerView2.computeVerticalScrollOffset();
                int computeVerticalScrollRange = dVar.l.computeVerticalScrollRange();
                int i6 = dVar.k;
                dVar.m = computeVerticalScrollRange - i6 > 0 && dVar.k >= dVar.f5449a;
                int computeHorizontalScrollRange = dVar.l.computeHorizontalScrollRange();
                int i7 = dVar.j;
                dVar.n = computeHorizontalScrollRange - i7 > 0 && dVar.j >= dVar.f5449a;
                if (dVar.m || dVar.n) {
                    if (dVar.m) {
                        float f = computeVerticalScrollOffset;
                        float f2 = i6;
                        dVar.e = (int) ((f2 * (f + (f2 / 2.0f))) / computeVerticalScrollRange);
                        dVar.f5452d = Math.min(i6, (i6 * i6) / computeVerticalScrollRange);
                    }
                    if (dVar.n) {
                        float f3 = computeHorizontalScrollOffset;
                        float f4 = i7;
                        dVar.h = (int) ((f4 * (f3 + (f4 / 2.0f))) / computeHorizontalScrollRange);
                        dVar.g = Math.min(i7, (i7 * i7) / computeHorizontalScrollRange);
                    }
                    if (dVar.o == 0 || dVar.o == 1) {
                        dVar.a(1);
                    }
                } else if (dVar.o != 0) {
                    dVar.a(0);
                }
            }
        };
        this.E = mVar;
        this.f5450b = stateListDrawable;
        this.f5451c = drawable;
        this.w = stateListDrawable2;
        this.x = drawable2;
        this.u = Math.max(i, stateListDrawable.getIntrinsicWidth());
        this.v = Math.max(i, drawable.getIntrinsicWidth());
        this.y = Math.max(i, stateListDrawable2.getIntrinsicWidth());
        this.z = Math.max(i, drawable2.getIntrinsicWidth());
        this.f5449a = i2;
        this.t = i3;
        stateListDrawable.setAlpha(255);
        drawable.setAlpha(255);
        ofFloat.addListener(new a());
        ofFloat.addUpdateListener(new b());
        RecyclerView recyclerView2 = this.l;
        if (recyclerView2 != recyclerView) {
            if (recyclerView2 != null) {
                recyclerView2.b(this);
                RecyclerView recyclerView3 = this.l;
                recyclerView3.s.remove(this);
                if (recyclerView3.t == this) {
                    recyclerView3.t = null;
                }
                this.l.b(mVar);
                c();
            }
            this.l = recyclerView;
            if (recyclerView != null) {
                recyclerView.a(this, -1);
                this.l.s.add(this);
                this.l.a(mVar);
            }
        }
    }

    private static int a(float f, float f2, int[] iArr, int i, int i2, int i3) {
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

    private boolean a() {
        return v.f(this.l) == 1;
    }

    private boolean a(float f, float f2) {
        if (a()) {
            if (f > this.u) {
                return false;
            }
        } else if (f < this.j - this.u) {
            return false;
        }
        int i = this.e;
        int i2 = this.f5452d;
        return f2 >= ((float) (i - (i2 / 2))) && f2 <= ((float) (i + (i2 / 2)));
    }

    private void b() {
        int i = this.q;
        if (i != 0) {
            if (i == 3) {
                this.p.cancel();
            } else {
                return;
            }
        }
        this.q = 1;
        ValueAnimator valueAnimator = this.p;
        valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 1.0f);
        this.p.setDuration(500L);
        this.p.setStartDelay(0L);
        this.p.start();
    }

    private void b(int i) {
        c();
        this.l.postDelayed(this.D, i);
    }

    private boolean b(float f, float f2) {
        if (f2 < this.k - this.y) {
            return false;
        }
        int i = this.h;
        int i2 = this.g;
        return f >= ((float) (i - (i2 / 2))) && f <= ((float) (i + (i2 / 2)));
    }

    private void c() {
        this.l.removeCallbacks(this.D);
    }

    final void a(int i) {
        if (i == 2 && this.o != 2) {
            this.f5450b.setState(r);
            c();
        }
        if (i == 0) {
            this.l.invalidate();
        } else {
            b();
        }
        if (this.o == 2 && i != 2) {
            this.f5450b.setState(s);
            b(1200);
        } else if (i == 1) {
            b(ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED);
        }
        this.o = i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public final void a(Canvas canvas, RecyclerView recyclerView, RecyclerView.s sVar) {
        if (this.j != this.l.getWidth() || this.k != this.l.getHeight()) {
            this.j = this.l.getWidth();
            this.k = this.l.getHeight();
            a(0);
        } else if (this.q != 0) {
            if (this.m) {
                int i = this.j;
                int i2 = this.u;
                int i3 = i - i2;
                int i4 = this.e;
                int i5 = this.f5452d;
                int i6 = i4 - (i5 / 2);
                this.f5450b.setBounds(0, 0, i2, i5);
                this.f5451c.setBounds(0, 0, this.v, this.k);
                if (a()) {
                    this.f5451c.draw(canvas);
                    canvas.translate(this.u, i6);
                    canvas.scale(-1.0f, 1.0f);
                    this.f5450b.draw(canvas);
                    canvas.scale(-1.0f, 1.0f);
                    canvas.translate(-this.u, -i6);
                } else {
                    canvas.translate(i3, BitmapDescriptorFactory.HUE_RED);
                    this.f5451c.draw(canvas);
                    canvas.translate(BitmapDescriptorFactory.HUE_RED, i6);
                    this.f5450b.draw(canvas);
                    canvas.translate(-i3, -i6);
                }
            }
            if (this.n) {
                int i7 = this.k;
                int i8 = this.y;
                int i9 = i7 - i8;
                int i10 = this.h;
                int i11 = this.g;
                int i12 = i10 - (i11 / 2);
                this.w.setBounds(0, 0, i11, i8);
                this.x.setBounds(0, 0, this.j, this.z);
                canvas.translate(BitmapDescriptorFactory.HUE_RED, i9);
                this.x.draw(canvas);
                canvas.translate(i12, BitmapDescriptorFactory.HUE_RED);
                this.w.draw(canvas);
                canvas.translate(-i12, -i9);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0077, code lost:
        if (r0 == 2) goto L_0x007a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x003c, code lost:
        if (r0 != false) goto L_0x003f;
     */
    @Override // androidx.recyclerview.widget.RecyclerView.l
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(android.view.MotionEvent r5) {
        /*
            r4 = this;
            r0 = r4
            int r0 = r0.o
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = r6
            r1 = 1
            if (r0 != r1) goto L_0x0072
            r0 = r4
            r1 = r5
            float r1 = r1.getX()
            r2 = r5
            float r2 = r2.getY()
            boolean r0 = r0.a(r1, r2)
            r8 = r0
            r0 = r4
            r1 = r5
            float r1 = r1.getX()
            r2 = r5
            float r2 = r2.getY()
            boolean r0 = r0.b(r1, r2)
            r9 = r0
            r0 = r7
            r10 = r0
            r0 = r5
            int r0 = r0.getAction()
            if (r0 != 0) goto L_0x007d
            r0 = r8
            if (r0 != 0) goto L_0x003f
            r0 = r7
            r10 = r0
            r0 = r9
            if (r0 == 0) goto L_0x007d
        L_0x003f:
            r0 = r9
            if (r0 == 0) goto L_0x0056
            r0 = r4
            r1 = 1
            r0.A = r1
            r0 = r4
            r1 = r5
            float r1 = r1.getX()
            int r1 = (int) r1
            float r1 = (float) r1
            r0.i = r1
            goto L_0x006a
        L_0x0056:
            r0 = r8
            if (r0 == 0) goto L_0x006a
            r0 = r4
            r1 = 2
            r0.A = r1
            r0 = r4
            r1 = r5
            float r1 = r1.getY()
            int r1 = (int) r1
            float r1 = (float) r1
            r0.f = r1
        L_0x006a:
            r0 = r4
            r1 = 2
            r0.a(r1)
            goto L_0x007a
        L_0x0072:
            r0 = r7
            r10 = r0
            r0 = r6
            r1 = 2
            if (r0 != r1) goto L_0x007d
        L_0x007a:
            r0 = 1
            r10 = r0
        L_0x007d:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.d.a(android.view.MotionEvent):boolean");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.l
    public final void b(MotionEvent motionEvent) {
        if (this.o != 0) {
            if (motionEvent.getAction() == 0) {
                boolean a2 = a(motionEvent.getX(), motionEvent.getY());
                boolean b2 = b(motionEvent.getX(), motionEvent.getY());
                if (a2 || b2) {
                    if (b2) {
                        this.A = 1;
                        this.i = (int) motionEvent.getX();
                    } else if (a2) {
                        this.A = 2;
                        this.f = (int) motionEvent.getY();
                    }
                    a(2);
                }
            } else if (motionEvent.getAction() == 1 && this.o == 2) {
                this.f = BitmapDescriptorFactory.HUE_RED;
                this.i = BitmapDescriptorFactory.HUE_RED;
                a(1);
                this.A = 0;
            } else if (motionEvent.getAction() == 2 && this.o == 2) {
                b();
                if (this.A == 1) {
                    float x = motionEvent.getX();
                    int[] iArr = this.C;
                    int i = this.t;
                    iArr[0] = i;
                    iArr[1] = this.j - i;
                    float max = Math.max(iArr[0], Math.min(iArr[1], x));
                    if (Math.abs(this.h - max) >= 2.0f) {
                        int a3 = a(this.i, max, iArr, this.l.computeHorizontalScrollRange(), this.l.computeHorizontalScrollOffset(), this.j);
                        if (a3 != 0) {
                            this.l.scrollBy(a3, 0);
                        }
                        this.i = max;
                    }
                }
                if (this.A == 2) {
                    float y = motionEvent.getY();
                    int[] iArr2 = this.B;
                    int i2 = this.t;
                    iArr2[0] = i2;
                    iArr2[1] = this.k - i2;
                    float max2 = Math.max(iArr2[0], Math.min(iArr2[1], y));
                    if (Math.abs(this.e - max2) >= 2.0f) {
                        int a4 = a(this.f, max2, iArr2, this.l.computeVerticalScrollRange(), this.l.computeVerticalScrollOffset(), this.k);
                        if (a4 != 0) {
                            this.l.scrollBy(0, a4);
                        }
                        this.f = max2;
                    }
                }
            }
        }
    }
}
