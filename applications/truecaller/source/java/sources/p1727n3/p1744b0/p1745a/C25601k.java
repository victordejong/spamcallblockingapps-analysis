package p1727n3.p1744b0.p1745a;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.animation.Interpolator;
import androidx.recyclerview.C0297R;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import p1727n3.p1807k.p1821i.C26574e;
import p1727n3.p1807k.p1821i.C26614s;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p195a.p200c.C5231d8;
import s1.z.c.l;
/* renamed from: n3.b0.a.k */
/* loaded from: classes-dex2jar.jar:n3/b0/a/k.class */
public class C25601k extends RecyclerView.AbstractC0328n implements RecyclerView.AbstractC0335q {

    /* renamed from: B */
    public Rect f71714B;

    /* renamed from: C */
    public long f71715C;

    /* renamed from: d */
    public float f71719d;

    /* renamed from: e */
    public float f71720e;

    /* renamed from: f */
    public float f71721f;

    /* renamed from: g */
    public float f71722g;

    /* renamed from: h */
    public float f71723h;

    /* renamed from: i */
    public float f71724i;

    /* renamed from: j */
    public float f71725j;

    /* renamed from: k */
    public float f71726k;

    /* renamed from: m */
    public AbstractC25605d f71728m;

    /* renamed from: o */
    public int f71730o;

    /* renamed from: q */
    public int f71732q;

    /* renamed from: r */
    public RecyclerView f71733r;

    /* renamed from: t */
    public VelocityTracker f71735t;

    /* renamed from: u */
    public List<RecyclerView.AbstractC0313c0> f71736u;

    /* renamed from: v */
    public List<Integer> f71737v;

    /* renamed from: y */
    public C26574e f71740y;

    /* renamed from: z */
    public C25608e f71741z;

    /* renamed from: a */
    public final List<View> f71716a = new ArrayList();

    /* renamed from: b */
    public final float[] f71717b = new float[2];

    /* renamed from: c */
    public RecyclerView.AbstractC0313c0 f71718c = null;

    /* renamed from: l */
    public int f71727l = -1;

    /* renamed from: n */
    public int f71729n = 0;

    /* renamed from: p */
    public List<C25609f> f71731p = new ArrayList();

    /* renamed from: s */
    public final Runnable f71734s = new RunnableC25602a();

    /* renamed from: w */
    public View f71738w = null;

    /* renamed from: x */
    public int f71739x = -1;

    /* renamed from: A */
    public final RecyclerView.AbstractC0337s f71713A = new C25603b();

    /* renamed from: n3.b0.a.k$a */
    /* loaded from: classes-dex2jar.jar:n3/b0/a/k$a.class */
    public class RunnableC25602a implements Runnable {
        public RunnableC25602a() {
            C25601k.this = r4;
        }

        /* JADX WARN: Code restructure failed: missing block: B:23:0x00d7, code lost:
            if (r11 > 0) goto L25;
         */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x014c, code lost:
            if (r16 > 0) goto L36;
         */
        /* JADX WARN: Removed duplicated region for block: B:27:0x00e7  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x015e  */
        /* JADX WARN: Removed duplicated region for block: B:41:0x0190  */
        /* JADX WARN: Removed duplicated region for block: B:44:0x01c5  */
        /* JADX WARN: Removed duplicated region for block: B:49:0x01e5  */
        /* JADX WARN: Type inference failed for: r0v127, types: [long] */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                Method dump skipped, instructions count: 564
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1744b0.p1745a.C25601k.RunnableC25602a.run():void");
        }
    }

    /* renamed from: n3.b0.a.k$b */
    /* loaded from: classes-dex2jar.jar:n3/b0/a/k$b.class */
    public class C25603b implements RecyclerView.AbstractC0337s {
        public C25603b() {
            C25601k.this = r4;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0337s
        /* renamed from: a */
        public void mo3155a(RecyclerView recyclerView, MotionEvent motionEvent) {
            ((C26574e.C26576b) C25601k.this.f71740y.f74449a).f74450a.onTouchEvent(motionEvent);
            VelocityTracker velocityTracker = C25601k.this.f71735t;
            if (velocityTracker != null) {
                velocityTracker.addMovement(motionEvent);
            }
            if (C25601k.this.f71727l == -1) {
                return;
            }
            int actionMasked = motionEvent.getActionMasked();
            int findPointerIndex = motionEvent.findPointerIndex(C25601k.this.f71727l);
            if (findPointerIndex >= 0) {
                C25601k.this.m3165e(actionMasked, motionEvent, findPointerIndex);
            }
            C25601k c25601k = C25601k.this;
            RecyclerView.AbstractC0313c0 abstractC0313c0 = c25601k.f71718c;
            if (abstractC0313c0 == null) {
                return;
            }
            int i = 0;
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    if (findPointerIndex < 0) {
                        return;
                    }
                    c25601k.m3156n(motionEvent, c25601k.f71730o, findPointerIndex);
                    C25601k.this.m3159k(abstractC0313c0);
                    C25601k c25601k2 = C25601k.this;
                    c25601k2.f71733r.removeCallbacks(c25601k2.f71734s);
                    C25601k.this.f71734s.run();
                    C25601k.this.f71733r.invalidate();
                    return;
                } else if (actionMasked != 3) {
                    if (actionMasked != 6) {
                        return;
                    }
                    int actionIndex = motionEvent.getActionIndex();
                    int pointerId = motionEvent.getPointerId(actionIndex);
                    C25601k c25601k3 = C25601k.this;
                    if (pointerId != c25601k3.f71727l) {
                        return;
                    }
                    if (actionIndex == 0) {
                        i = 1;
                    }
                    c25601k3.f71727l = motionEvent.getPointerId(i);
                    C25601k c25601k4 = C25601k.this;
                    c25601k4.m3156n(motionEvent, c25601k4.f71730o, actionIndex);
                    return;
                } else {
                    VelocityTracker velocityTracker2 = c25601k.f71735t;
                    if (velocityTracker2 != null) {
                        velocityTracker2.clear();
                    }
                }
            }
            C25601k.this.m3157m(null, 0);
            C25601k.this.f71727l = -1;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0337s
        /* renamed from: b */
        public boolean mo3154b(RecyclerView recyclerView, MotionEvent motionEvent) {
            int findPointerIndex;
            C25609f c25609f;
            ((C26574e.C26576b) C25601k.this.f71740y.f74449a).f74450a.onTouchEvent(motionEvent);
            int actionMasked = motionEvent.getActionMasked();
            boolean z = true;
            if (actionMasked == 0) {
                C25601k.this.f71727l = motionEvent.getPointerId(0);
                C25601k.this.f71719d = motionEvent.getX();
                C25601k.this.f71720e = motionEvent.getY();
                C25601k c25601k = C25601k.this;
                VelocityTracker velocityTracker = c25601k.f71735t;
                if (velocityTracker != null) {
                    velocityTracker.recycle();
                }
                c25601k.f71735t = VelocityTracker.obtain();
                C25601k c25601k2 = C25601k.this;
                if (c25601k2.f71718c == null) {
                    if (!c25601k2.f71731p.isEmpty()) {
                        View m3162h = c25601k2.m3162h(motionEvent);
                        int size = c25601k2.f71731p.size() - 1;
                        while (true) {
                            c25609f = null;
                            if (size < 0) {
                                break;
                            }
                            c25609f = c25601k2.f71731p.get(size);
                            if (c25609f.f71756e.itemView == m3162h) {
                                break;
                            }
                            size--;
                        }
                    } else {
                        c25609f = null;
                    }
                    if (c25609f != null) {
                        C25601k c25601k3 = C25601k.this;
                        c25601k3.f71719d -= c25609f.f71760i;
                        c25601k3.f71720e -= c25609f.f71761j;
                        c25601k3.m3163g(c25609f.f71756e, true);
                        if (C25601k.this.f71716a.remove(c25609f.f71756e.itemView)) {
                            C25601k.this.f71728m.m3152a(c25609f.f71756e);
                        }
                        C25601k.this.m3157m(c25609f.f71756e, c25609f.f71757f);
                        C25601k c25601k4 = C25601k.this;
                        c25601k4.m3156n(motionEvent, c25601k4.f71730o, 0);
                    }
                }
            } else if (actionMasked == 3 || actionMasked == 1) {
                C25601k c25601k5 = C25601k.this;
                c25601k5.f71727l = -1;
                c25601k5.m3157m(null, 0);
            } else {
                int i = C25601k.this.f71727l;
                if (i != -1 && (findPointerIndex = motionEvent.findPointerIndex(i)) >= 0) {
                    C25601k.this.m3165e(actionMasked, motionEvent, findPointerIndex);
                }
            }
            VelocityTracker velocityTracker2 = C25601k.this.f71735t;
            if (velocityTracker2 != null) {
                velocityTracker2.addMovement(motionEvent);
            }
            if (C25601k.this.f71718c == null) {
                z = false;
            }
            return z;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0337s
        /* renamed from: c */
        public void mo3153c(boolean z) {
            if (!z) {
                return;
            }
            C25601k.this.m3157m(null, 0);
        }
    }

    /* renamed from: n3.b0.a.k$c */
    /* loaded from: classes-dex2jar.jar:n3/b0/a/k$c.class */
    public class C25604c extends C25609f {

        /* renamed from: n */
        public final /* synthetic */ int f71744n;

        /* renamed from: o */
        public final /* synthetic */ RecyclerView.AbstractC0313c0 f71745o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C25604c(RecyclerView.AbstractC0313c0 abstractC0313c0, int i, int i2, float f, float f2, float f3, float f4, int i3, RecyclerView.AbstractC0313c0 abstractC0313c02) {
            super(abstractC0313c0, i, i2, f, f2, f3, f4);
            C25601k.this = r10;
            this.f71744n = i3;
            this.f71745o = abstractC0313c02;
        }

        @Override // p1727n3.p1744b0.p1745a.C25601k.C25609f, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (!this.f71763l) {
                this.f71756e.setIsRecyclable(true);
            }
            this.f71763l = true;
            if (this.f71762k) {
                return;
            }
            if (this.f71744n <= 0) {
                C25601k c25601k = C25601k.this;
                AbstractC25605d abstractC25605d = c25601k.f71728m;
                RecyclerView recyclerView = c25601k.f71733r;
                abstractC25605d.m3152a(this.f71745o);
            } else {
                C25601k.this.f71716a.add(this.f71745o.itemView);
                this.f71759h = true;
                int i = this.f71744n;
                if (i > 0) {
                    C25601k c25601k2 = C25601k.this;
                    c25601k2.f71733r.post(new RunnableC25612l(c25601k2, this, i));
                }
            }
            C25601k c25601k3 = C25601k.this;
            View view = c25601k3.f71738w;
            View view2 = this.f71745o.itemView;
            if (view != view2) {
                return;
            }
            c25601k3.m3158l(view2);
        }
    }

    /* renamed from: n3.b0.a.k$d */
    /* loaded from: classes-dex2jar.jar:n3/b0/a/k$d.class */
    public static abstract class AbstractC25605d {

        /* renamed from: b */
        public static final Interpolator f71747b = new animationInterpolatorC25606a();

        /* renamed from: c */
        public static final Interpolator f71748c = new animationInterpolatorC25607b();

        /* renamed from: a */
        public int f71749a = -1;

        /* renamed from: n3.b0.a.k$d$a */
        /* loaded from: classes-dex2jar.jar:n3/b0/a/k$d$a.class */
        public class animationInterpolatorC25606a implements Interpolator {
            @Override // android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                return f * f * f * f * f;
            }
        }

        /* renamed from: n3.b0.a.k$d$b */
        /* loaded from: classes-dex2jar.jar:n3/b0/a/k$d$b.class */
        public class animationInterpolatorC25607b implements Interpolator {
            @Override // android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                float f2 = f - 1.0f;
                return (f2 * f2 * f2 * f2 * f2) + 1.0f;
            }
        }

        /* renamed from: c */
        public static int m3150c(int i, int i2) {
            int i3;
            int i4;
            int i5 = i & 789516;
            if (i5 == 0) {
                return i;
            }
            int i6 = i & (i5 ^ (-1));
            if (i2 == 0) {
                i4 = i5 << 2;
                i3 = i6;
            } else {
                int i7 = i5 << 1;
                i3 = i6 | ((-789517) & i7);
                i4 = (i7 & 789516) << 2;
            }
            return i3 | i4;
        }

        /* renamed from: a */
        public void m3152a(RecyclerView.AbstractC0313c0 abstractC0313c0) {
            View view = abstractC0313c0.itemView;
            int i = C0297R.C0299id.item_touch_helper_previous_elevation;
            Object tag = view.getTag(i);
            if (tag instanceof Float) {
                float floatValue = ((Float) tag).floatValue();
                AtomicInteger atomicInteger = C26614s.f74505a;
                view.setElevation(floatValue);
            }
            view.setTag(i, null);
            view.setTranslationX(0.0f);
            view.setTranslationY(0.0f);
        }

        /* renamed from: b */
        public abstract int mo3151b(int i, int i2);

        /* renamed from: d */
        public final int m3149d(RecyclerView recyclerView, RecyclerView.AbstractC0313c0 abstractC0313c0) {
            int mo3148e = mo3148e(recyclerView, abstractC0313c0);
            AtomicInteger atomicInteger = C26614s.f74505a;
            return mo3151b(mo3148e, recyclerView.getLayoutDirection());
        }

        /* renamed from: e */
        public abstract int mo3148e(RecyclerView recyclerView, RecyclerView.AbstractC0313c0 abstractC0313c0);

        /* renamed from: f */
        public int m3147f(RecyclerView recyclerView, int i, int i2, long j) {
            if (this.f71749a == -1) {
                this.f71749a = recyclerView.getResources().getDimensionPixelSize(C0297R.dimen.item_touch_helper_max_drag_scroll_per_frame);
            }
            int i3 = this.f71749a;
            int abs = Math.abs(i2);
            float f = 1.0f;
            float signum = ((int) Math.signum(i2)) * i3;
            float min = Math.min(1.0f, (abs * 1.0f) / i) - 1.0f;
            int i4 = (int) (signum * ((min * min * min * min * min) + 1.0f));
            if (j <= 2000) {
                f = ((float) j) / 2000.0f;
            }
            int i5 = (int) (i4 * f * f * f * f * f);
            if (i5 == 0) {
                int i6 = -1;
                if (i2 > 0) {
                    i6 = 1;
                }
                return i6;
            }
            return i5;
        }

        /* renamed from: g */
        public void mo3146g(Canvas canvas, RecyclerView recyclerView, RecyclerView.AbstractC0313c0 abstractC0313c0, float f, float f2, int i, boolean z) {
            float f3;
            View view = abstractC0313c0.itemView;
            if (z && view.getTag(C0297R.C0299id.item_touch_helper_previous_elevation) == null) {
                AtomicInteger atomicInteger = C26614s.f74505a;
                float elevation = view.getElevation();
                int childCount = recyclerView.getChildCount();
                float f4 = 0.0f;
                int i2 = 0;
                while (i2 < childCount) {
                    View childAt = recyclerView.getChildAt(i2);
                    if (childAt == view) {
                        f3 = f4;
                    } else {
                        AtomicInteger atomicInteger2 = C26614s.f74505a;
                        float elevation2 = childAt.getElevation();
                        f3 = f4;
                        if (elevation2 > f4) {
                            f3 = elevation2;
                        }
                    }
                    i2++;
                    f4 = f3;
                }
                view.setElevation(f4 + 1.0f);
                view.setTag(C0297R.C0299id.item_touch_helper_previous_elevation, Float.valueOf(elevation));
            }
            view.setTranslationX(f);
            view.setTranslationY(f2);
        }
    }

    /* renamed from: n3.b0.a.k$e */
    /* loaded from: classes-dex2jar.jar:n3/b0/a/k$e.class */
    public class C25608e extends GestureDetector.SimpleOnGestureListener {

        /* renamed from: a */
        public boolean f71750a = true;

        public C25608e() {
            C25601k.this = r4;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onDown(MotionEvent motionEvent) {
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public void onLongPress(MotionEvent motionEvent) {
            View m3162h;
            RecyclerView.AbstractC0313c0 childViewHolder;
            if (!this.f71750a || (m3162h = C25601k.this.m3162h(motionEvent)) == null || (childViewHolder = C25601k.this.f71733r.getChildViewHolder(m3162h)) == null) {
                return;
            }
            C25601k c25601k = C25601k.this;
            if (!((c25601k.f71728m.m3149d(c25601k.f71733r, childViewHolder) & 16711680) != 0)) {
                return;
            }
            int pointerId = motionEvent.getPointerId(0);
            int i = C25601k.this.f71727l;
            if (pointerId != i) {
                return;
            }
            int findPointerIndex = motionEvent.findPointerIndex(i);
            float x = motionEvent.getX(findPointerIndex);
            float y = motionEvent.getY(findPointerIndex);
            C25601k c25601k2 = C25601k.this;
            c25601k2.f71719d = x;
            c25601k2.f71720e = y;
            c25601k2.f71724i = 0.0f;
            c25601k2.f71723h = 0.0f;
            Objects.requireNonNull(c25601k2.f71728m);
            C25601k.this.m3157m(childViewHolder, 2);
        }
    }

    /* renamed from: n3.b0.a.k$f */
    /* loaded from: classes-dex2jar.jar:n3/b0/a/k$f.class */
    public static class C25609f implements Animator.AnimatorListener {

        /* renamed from: a */
        public final float f71752a;

        /* renamed from: b */
        public final float f71753b;

        /* renamed from: c */
        public final float f71754c;

        /* renamed from: d */
        public final float f71755d;

        /* renamed from: e */
        public final RecyclerView.AbstractC0313c0 f71756e;

        /* renamed from: f */
        public final int f71757f;

        /* renamed from: g */
        public final ValueAnimator f71758g;

        /* renamed from: h */
        public boolean f71759h;

        /* renamed from: i */
        public float f71760i;

        /* renamed from: j */
        public float f71761j;

        /* renamed from: k */
        public boolean f71762k = false;

        /* renamed from: l */
        public boolean f71763l = false;

        /* renamed from: m */
        public float f71764m = 0.0f;

        /* renamed from: n3.b0.a.k$f$a */
        /* loaded from: classes-dex2jar.jar:n3/b0/a/k$f$a.class */
        public class C25610a implements ValueAnimator.AnimatorUpdateListener {
            public C25610a() {
                C25609f.this = r4;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                C25609f.this.f71764m = valueAnimator.getAnimatedFraction();
            }
        }

        public C25609f(RecyclerView.AbstractC0313c0 abstractC0313c0, int i, int i2, float f, float f2, float f3, float f4) {
            this.f71757f = i2;
            this.f71756e = abstractC0313c0;
            this.f71752a = f;
            this.f71753b = f2;
            this.f71754c = f3;
            this.f71755d = f4;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            this.f71758g = ofFloat;
            ofFloat.addUpdateListener(new C25610a());
            ofFloat.setTarget(abstractC0313c0.itemView);
            ofFloat.addListener(this);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f71764m = 1.0f;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (!this.f71763l) {
                this.f71756e.setIsRecyclable(true);
            }
            this.f71763l = true;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    /* renamed from: n3.b0.a.k$g */
    /* loaded from: classes-dex2jar.jar:n3/b0/a/k$g.class */
    public static abstract class AbstractC25611g extends AbstractC25605d {
        public AbstractC25611g(int i, int i2) {
        }
    }

    public C25601k(AbstractC25605d abstractC25605d) {
        this.f71728m = abstractC25605d;
    }

    /* renamed from: j */
    public static boolean m3160j(View view, float f, float f2, float f3, float f4) {
        return f >= f3 && f <= f3 + ((float) view.getWidth()) && f2 >= f4 && f2 <= f4 + ((float) view.getHeight());
    }

    /* renamed from: d */
    public final int m3166d(RecyclerView.AbstractC0313c0 abstractC0313c0, int i) {
        if ((i & 12) != 0) {
            int i2 = 8;
            int i3 = this.f71723h > 0.0f ? 8 : 4;
            VelocityTracker velocityTracker = this.f71735t;
            if (velocityTracker != null && this.f71727l > -1) {
                AbstractC25605d abstractC25605d = this.f71728m;
                float f = this.f71722g;
                Objects.requireNonNull(abstractC25605d);
                velocityTracker.computeCurrentVelocity(1000, f);
                float xVelocity = this.f71735t.getXVelocity(this.f71727l);
                float yVelocity = this.f71735t.getYVelocity(this.f71727l);
                if (xVelocity <= 0.0f) {
                    i2 = 4;
                }
                float abs = Math.abs(xVelocity);
                if ((i2 & i) != 0 && i3 == i2) {
                    AbstractC25605d abstractC25605d2 = this.f71728m;
                    float f2 = this.f71721f;
                    Objects.requireNonNull(abstractC25605d2);
                    if (abs >= f2 && abs > Math.abs(yVelocity)) {
                        return i2;
                    }
                }
            }
            float width = this.f71733r.getWidth();
            Objects.requireNonNull(this.f71728m);
            if ((i & i3) != 0 && Math.abs(this.f71723h) > width * 0.5f) {
                return i3;
            }
            return 0;
        }
        return 0;
    }

    /* renamed from: e */
    public void m3165e(int i, MotionEvent motionEvent, int i2) {
        int m3149d;
        View m3162h;
        if (this.f71718c == null && i == 2 && this.f71729n != 2) {
            Objects.requireNonNull(this.f71728m);
            if (this.f71733r.getScrollState() == 1) {
                return;
            }
            RecyclerView.AbstractC0329o layoutManager = this.f71733r.getLayoutManager();
            int i3 = this.f71727l;
            RecyclerView.AbstractC0313c0 abstractC0313c0 = null;
            if (i3 != -1) {
                int findPointerIndex = motionEvent.findPointerIndex(i3);
                float x = motionEvent.getX(findPointerIndex);
                float f = this.f71719d;
                float y = motionEvent.getY(findPointerIndex);
                float f2 = this.f71720e;
                float abs = Math.abs(x - f);
                float abs2 = Math.abs(y - f2);
                float f3 = this.f71732q;
                if ((abs >= f3 || abs2 >= f3) && ((abs <= abs2 || !layoutManager.canScrollHorizontally()) && ((abs2 <= abs || !layoutManager.canScrollVertically()) && (m3162h = m3162h(motionEvent)) != null))) {
                    abstractC0313c0 = this.f71733r.getChildViewHolder(m3162h);
                }
            }
            if (abstractC0313c0 == null || (m3149d = (this.f71728m.m3149d(this.f71733r, abstractC0313c0) & 65280) >> 8) == 0) {
                return;
            }
            float x2 = motionEvent.getX(i2);
            float y2 = motionEvent.getY(i2);
            float f4 = x2 - this.f71719d;
            float f5 = y2 - this.f71720e;
            float abs3 = Math.abs(f4);
            float abs4 = Math.abs(f5);
            float f6 = this.f71732q;
            if (abs3 < f6 && abs4 < f6) {
                return;
            }
            if (abs3 > abs4) {
                if (f4 < 0.0f && (m3149d & 4) == 0) {
                    return;
                }
                if (f4 > 0.0f && (m3149d & 8) == 0) {
                    return;
                }
            } else if (f5 < 0.0f && (m3149d & 1) == 0) {
                return;
            } else {
                if (f5 > 0.0f && (m3149d & 2) == 0) {
                    return;
                }
            }
            this.f71724i = 0.0f;
            this.f71723h = 0.0f;
            this.f71727l = motionEvent.getPointerId(0);
            m3157m(abstractC0313c0, 1);
        }
    }

    /* renamed from: f */
    public final int m3164f(RecyclerView.AbstractC0313c0 abstractC0313c0, int i) {
        if ((i & 3) != 0) {
            int i2 = 2;
            int i3 = this.f71724i > 0.0f ? 2 : 1;
            VelocityTracker velocityTracker = this.f71735t;
            if (velocityTracker != null && this.f71727l > -1) {
                AbstractC25605d abstractC25605d = this.f71728m;
                float f = this.f71722g;
                Objects.requireNonNull(abstractC25605d);
                velocityTracker.computeCurrentVelocity(1000, f);
                float xVelocity = this.f71735t.getXVelocity(this.f71727l);
                float yVelocity = this.f71735t.getYVelocity(this.f71727l);
                if (yVelocity <= 0.0f) {
                    i2 = 1;
                }
                float abs = Math.abs(yVelocity);
                if ((i2 & i) != 0 && i2 == i3) {
                    AbstractC25605d abstractC25605d2 = this.f71728m;
                    float f2 = this.f71721f;
                    Objects.requireNonNull(abstractC25605d2);
                    if (abs >= f2 && abs > Math.abs(xVelocity)) {
                        return i2;
                    }
                }
            }
            float height = this.f71733r.getHeight();
            Objects.requireNonNull(this.f71728m);
            if ((i & i3) != 0 && Math.abs(this.f71724i) > height * 0.5f) {
                return i3;
            }
            return 0;
        }
        return 0;
    }

    /* renamed from: g */
    public void m3163g(RecyclerView.AbstractC0313c0 abstractC0313c0, boolean z) {
        int i;
        C25609f c25609f;
        int size = this.f71731p.size();
        do {
            i = size - 1;
            if (i < 0) {
                return;
            }
            c25609f = this.f71731p.get(i);
            size = i;
        } while (c25609f.f71756e != abstractC0313c0);
        c25609f.f71762k |= z;
        if (!c25609f.f71763l) {
            c25609f.f71758g.cancel();
        }
        this.f71731p.remove(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0328n
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.C0347z c0347z) {
        rect.setEmpty();
    }

    /* renamed from: h */
    public View m3162h(MotionEvent motionEvent) {
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        RecyclerView.AbstractC0313c0 abstractC0313c0 = this.f71718c;
        if (abstractC0313c0 != null) {
            View view = abstractC0313c0.itemView;
            if (m3160j(view, x, y, this.f71725j + this.f71723h, this.f71726k + this.f71724i)) {
                return view;
            }
        }
        for (int size = this.f71731p.size() - 1; size >= 0; size--) {
            C25609f c25609f = this.f71731p.get(size);
            View view2 = c25609f.f71756e.itemView;
            if (m3160j(view2, x, y, c25609f.f71760i, c25609f.f71761j)) {
                return view2;
            }
        }
        return this.f71733r.findChildViewUnder(x, y);
    }

    /* renamed from: i */
    public final void m3161i(float[] fArr) {
        if ((this.f71730o & 12) != 0) {
            fArr[0] = (this.f71725j + this.f71723h) - this.f71718c.itemView.getLeft();
        } else {
            fArr[0] = this.f71718c.itemView.getTranslationX();
        }
        if ((this.f71730o & 3) != 0) {
            fArr[1] = (this.f71726k + this.f71724i) - this.f71718c.itemView.getTop();
        } else {
            fArr[1] = this.f71718c.itemView.getTranslationY();
        }
    }

    /* renamed from: k */
    public void m3159k(RecyclerView.AbstractC0313c0 abstractC0313c0) {
        RecyclerView.AbstractC0313c0 abstractC0313c02;
        int i;
        int right;
        if (!this.f71733r.isLayoutRequested() && this.f71729n == 2) {
            Objects.requireNonNull(this.f71728m);
            int i2 = (int) (this.f71725j + this.f71723h);
            int i3 = (int) (this.f71726k + this.f71724i);
            if (Math.abs(i3 - abstractC0313c0.itemView.getTop()) < abstractC0313c0.itemView.getHeight() * 0.5f && Math.abs(i2 - abstractC0313c0.itemView.getLeft()) < abstractC0313c0.itemView.getWidth() * 0.5f) {
                return;
            }
            List<RecyclerView.AbstractC0313c0> list = this.f71736u;
            if (list == null) {
                this.f71736u = new ArrayList();
                this.f71737v = new ArrayList();
            } else {
                list.clear();
                this.f71737v.clear();
            }
            Objects.requireNonNull(this.f71728m);
            int round = Math.round(this.f71725j + this.f71723h) - 0;
            int round2 = Math.round(this.f71726k + this.f71724i) - 0;
            int width = abstractC0313c0.itemView.getWidth() + round + 0;
            int height = abstractC0313c0.itemView.getHeight() + round2 + 0;
            int i4 = (round + width) / 2;
            int i5 = (round2 + height) / 2;
            RecyclerView.AbstractC0329o layoutManager = this.f71733r.getLayoutManager();
            int childCount = layoutManager.getChildCount();
            for (int i6 = 0; i6 < childCount; i6++) {
                View childAt = layoutManager.getChildAt(i6);
                if (childAt != abstractC0313c0.itemView && childAt.getBottom() >= round2 && childAt.getTop() <= height && childAt.getRight() >= round && childAt.getLeft() <= width) {
                    RecyclerView.AbstractC0313c0 childViewHolder = this.f71733r.getChildViewHolder(childAt);
                    Objects.requireNonNull(this.f71728m);
                    int abs = Math.abs(i4 - ((childAt.getRight() + childAt.getLeft()) / 2));
                    int abs2 = Math.abs(i5 - ((childAt.getBottom() + childAt.getTop()) / 2));
                    int i7 = (abs2 * abs2) + (abs * abs);
                    int size = this.f71736u.size();
                    int i8 = 0;
                    for (int i9 = 0; i9 < size && i7 > this.f71737v.get(i9).intValue(); i9++) {
                        i8++;
                    }
                    this.f71736u.add(i8, childViewHolder);
                    this.f71737v.add(i8, Integer.valueOf(i7));
                }
            }
            List<RecyclerView.AbstractC0313c0> list2 = this.f71736u;
            if (list2.size() == 0) {
                return;
            }
            Objects.requireNonNull(this.f71728m);
            int width2 = abstractC0313c0.itemView.getWidth();
            int height2 = abstractC0313c0.itemView.getHeight();
            int left = i2 - abstractC0313c0.itemView.getLeft();
            int top = i3 - abstractC0313c0.itemView.getTop();
            int size2 = list2.size();
            int i10 = -1;
            RecyclerView.AbstractC0313c0 abstractC0313c03 = null;
            int i11 = 0;
            while (i11 < size2) {
                RecyclerView.AbstractC0313c0 abstractC0313c04 = list2.get(i11);
                if (left <= 0 || (right = abstractC0313c04.itemView.getRight() - (width2 + i2)) >= 0) {
                    i = i10;
                    abstractC0313c02 = abstractC0313c03;
                } else {
                    abstractC0313c02 = abstractC0313c03;
                    i = i10;
                    if (abstractC0313c04.itemView.getRight() > abstractC0313c0.itemView.getRight()) {
                        int abs3 = Math.abs(right);
                        abstractC0313c02 = abstractC0313c03;
                        i = i10;
                        if (abs3 > i10) {
                            i = abs3;
                            abstractC0313c02 = abstractC0313c04;
                        }
                    }
                }
                RecyclerView.AbstractC0313c0 abstractC0313c05 = abstractC0313c02;
                int i12 = i;
                if (left < 0) {
                    int left2 = abstractC0313c04.itemView.getLeft() - i2;
                    abstractC0313c05 = abstractC0313c02;
                    i12 = i;
                    if (left2 > 0) {
                        abstractC0313c05 = abstractC0313c02;
                        i12 = i;
                        if (abstractC0313c04.itemView.getLeft() < abstractC0313c0.itemView.getLeft()) {
                            int abs4 = Math.abs(left2);
                            abstractC0313c05 = abstractC0313c02;
                            i12 = i;
                            if (abs4 > i) {
                                i12 = abs4;
                                abstractC0313c05 = abstractC0313c04;
                            }
                        }
                    }
                }
                RecyclerView.AbstractC0313c0 abstractC0313c06 = abstractC0313c05;
                int i13 = i12;
                if (top < 0) {
                    int top2 = abstractC0313c04.itemView.getTop() - i3;
                    abstractC0313c06 = abstractC0313c05;
                    i13 = i12;
                    if (top2 > 0) {
                        abstractC0313c06 = abstractC0313c05;
                        i13 = i12;
                        if (abstractC0313c04.itemView.getTop() < abstractC0313c0.itemView.getTop()) {
                            int abs5 = Math.abs(top2);
                            abstractC0313c06 = abstractC0313c05;
                            i13 = i12;
                            if (abs5 > i12) {
                                i13 = abs5;
                                abstractC0313c06 = abstractC0313c04;
                            }
                        }
                    }
                }
                RecyclerView.AbstractC0313c0 abstractC0313c07 = abstractC0313c06;
                i10 = i13;
                if (top > 0) {
                    int bottom = abstractC0313c04.itemView.getBottom() - (height2 + i3);
                    abstractC0313c07 = abstractC0313c06;
                    i10 = i13;
                    if (bottom < 0) {
                        abstractC0313c07 = abstractC0313c06;
                        i10 = i13;
                        if (abstractC0313c04.itemView.getBottom() > abstractC0313c0.itemView.getBottom()) {
                            int abs6 = Math.abs(bottom);
                            abstractC0313c07 = abstractC0313c06;
                            i10 = i13;
                            if (abs6 > i13) {
                                i10 = abs6;
                                abstractC0313c07 = abstractC0313c04;
                            }
                        }
                    }
                }
                i11++;
                abstractC0313c03 = abstractC0313c07;
            }
            if (abstractC0313c03 == null) {
                this.f71736u.clear();
                this.f71737v.clear();
                return;
            }
            abstractC0313c03.getAbsoluteAdapterPosition();
            abstractC0313c0.getAbsoluteAdapterPosition();
            AbstractC25605d abstractC25605d = this.f71728m;
            RecyclerView recyclerView = this.f71733r;
            Objects.requireNonNull((C5231d8) abstractC25605d);
            l.e(recyclerView, "recyclerView");
            l.e(abstractC0313c0, "fromViewHolder");
            l.e(abstractC0313c03, "toViewHolder");
        }
    }

    /* renamed from: l */
    public void m3158l(View view) {
        if (view == this.f71738w) {
            this.f71738w = null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0103, code lost:
        if (r19 > 0) goto L42;
     */
    /* JADX WARN: Type inference failed for: r0v83, types: [long] */
    /* JADX WARN: Type inference failed for: r0v85, types: [long] */
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m3157m(androidx.recyclerview.widget.RecyclerView.AbstractC0313c0 r14, int r15) {
        /*
            Method dump skipped, instructions count: 856
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1744b0.p1745a.C25601k.m3157m(androidx.recyclerview.widget.RecyclerView$c0, int):void");
    }

    /* renamed from: n */
    public void m3156n(MotionEvent motionEvent, int i, int i2) {
        float x = motionEvent.getX(i2);
        float y = motionEvent.getY(i2);
        float f = x - this.f71719d;
        this.f71723h = f;
        this.f71724i = y - this.f71720e;
        if ((i & 4) == 0) {
            this.f71723h = Math.max(0.0f, f);
        }
        if ((i & 8) == 0) {
            this.f71723h = Math.min(0.0f, this.f71723h);
        }
        if ((i & 1) == 0) {
            this.f71724i = Math.max(0.0f, this.f71724i);
        }
        if ((i & 2) == 0) {
            this.f71724i = Math.min(0.0f, this.f71724i);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0335q
    public void onChildViewAttachedToWindow(View view) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0335q
    public void onChildViewDetachedFromWindow(View view) {
        m3158l(view);
        RecyclerView.AbstractC0313c0 childViewHolder = this.f71733r.getChildViewHolder(view);
        if (childViewHolder == null) {
            return;
        }
        RecyclerView.AbstractC0313c0 abstractC0313c0 = this.f71718c;
        if (abstractC0313c0 != null && childViewHolder == abstractC0313c0) {
            m3157m(null, 0);
            return;
        }
        m3163g(childViewHolder, false);
        if (!this.f71716a.remove(childViewHolder.itemView)) {
            return;
        }
        this.f71728m.m3152a(childViewHolder);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0328n
    public void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.C0347z c0347z) {
        float f;
        float f2;
        this.f71739x = -1;
        if (this.f71718c != null) {
            m3161i(this.f71717b);
            float[] fArr = this.f71717b;
            f2 = fArr[0];
            f = fArr[1];
        } else {
            f2 = 0.0f;
            f = 0.0f;
        }
        AbstractC25605d abstractC25605d = this.f71728m;
        RecyclerView.AbstractC0313c0 abstractC0313c0 = this.f71718c;
        List<C25609f> list = this.f71731p;
        int i = this.f71729n;
        Objects.requireNonNull(abstractC25605d);
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            C25609f c25609f = list.get(i2);
            float f3 = c25609f.f71752a;
            float f4 = c25609f.f71754c;
            if (f3 == f4) {
                c25609f.f71760i = c25609f.f71756e.itemView.getTranslationX();
            } else {
                c25609f.f71760i = C22128a.m8646a(f4, f3, c25609f.f71764m, f3);
            }
            float f5 = c25609f.f71753b;
            float f6 = c25609f.f71755d;
            if (f5 == f6) {
                c25609f.f71761j = c25609f.f71756e.itemView.getTranslationY();
            } else {
                c25609f.f71761j = C22128a.m8646a(f6, f5, c25609f.f71764m, f5);
            }
            int save = canvas.save();
            abstractC25605d.mo3146g(canvas, recyclerView, c25609f.f71756e, c25609f.f71760i, c25609f.f71761j, c25609f.f71757f, false);
            canvas.restoreToCount(save);
        }
        if (abstractC0313c0 != null) {
            int save2 = canvas.save();
            abstractC25605d.mo3146g(canvas, recyclerView, abstractC0313c0, f2, f, i, true);
            canvas.restoreToCount(save2);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0328n
    public void onDrawOver(Canvas canvas, RecyclerView recyclerView, RecyclerView.C0347z c0347z) {
        boolean z = false;
        if (this.f71718c != null) {
            m3161i(this.f71717b);
            float[] fArr = this.f71717b;
            float f = fArr[0];
            float f2 = fArr[1];
        }
        AbstractC25605d abstractC25605d = this.f71728m;
        RecyclerView.AbstractC0313c0 abstractC0313c0 = this.f71718c;
        List<C25609f> list = this.f71731p;
        Objects.requireNonNull(abstractC25605d);
        int size = list.size();
        for (int i = 0; i < size; i++) {
            C25609f c25609f = list.get(i);
            int save = canvas.save();
            View view = c25609f.f71756e.itemView;
            canvas.restoreToCount(save);
        }
        if (abstractC0313c0 != null) {
            canvas.restoreToCount(canvas.save());
        }
        for (int i2 = size - 1; i2 >= 0; i2--) {
            C25609f c25609f2 = list.get(i2);
            boolean z2 = c25609f2.f71763l;
            if (z2 && !c25609f2.f71759h) {
                list.remove(i2);
            } else if (!z2) {
                z = true;
            }
        }
        if (z) {
            recyclerView.invalidate();
        }
    }
}
