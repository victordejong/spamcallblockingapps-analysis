package it.gmariotti.cardslib.library.view.listener;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/listener/b.class */
public final class b implements View.OnTouchListener {

    /* renamed from: b  reason: collision with root package name */
    private int f36512b;

    /* renamed from: c  reason: collision with root package name */
    private int f36513c;

    /* renamed from: d  reason: collision with root package name */
    private long f36514d;
    private View e;
    private a f;
    private float h;
    private float i;
    private boolean j;
    private int k;
    private Object l;
    private VelocityTracker m;
    private float n;
    private float o;
    private int g = 1;

    /* renamed from: a  reason: collision with root package name */
    private int f36511a = 0;

    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/listener/b$a.class */
    public interface a {
        boolean a();

        void b();
    }

    public b(View view, Object obj, a aVar) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(view.getContext());
        this.f36512b = viewConfiguration.getScaledMinimumFlingVelocity() * 16;
        this.f36513c = viewConfiguration.getScaledMaximumFlingVelocity();
        this.f36514d = view.getContext().getResources().getInteger(17694720);
        this.e = view;
        this.l = obj;
        this.f = aVar;
    }

    static /* synthetic */ void a(b bVar) {
        final ViewGroup.LayoutParams layoutParams = bVar.e.getLayoutParams();
        final int height = bVar.e.getHeight();
        ValueAnimator duration = ValueAnimator.ofInt(height, 1).setDuration(bVar.f36514d);
        duration.addListener(new AnimatorListenerAdapter() { // from class: it.gmariotti.cardslib.library.view.listener.b.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                a aVar = b.this.f;
                View unused = b.this.e;
                Object unused2 = b.this.l;
                aVar.b();
                b.this.e.setAlpha(1.0f);
                b.this.e.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                layoutParams.height = height;
                b.this.e.setLayoutParams(layoutParams);
            }
        });
        duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: it.gmariotti.cardslib.library.view.listener.b.3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                layoutParams.height = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                b.this.e.setLayoutParams(layoutParams);
            }
        });
        duration.start();
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        motionEvent.offsetLocation(BitmapDescriptorFactory.HUE_RED, this.n);
        if (this.g < 2) {
            this.g = this.e.getHeight();
        }
        if (this.o == BitmapDescriptorFactory.HUE_RED) {
            this.o = this.e.getY();
        }
        int actionMasked = motionEvent.getActionMasked();
        boolean z = true;
        boolean z2 = true;
        if (actionMasked != 0) {
            float f = 1.0f;
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    VelocityTracker velocityTracker = this.m;
                    if (velocityTracker == null) {
                        return false;
                    }
                    velocityTracker.addMovement(motionEvent);
                    float rawX = motionEvent.getRawX();
                    float f2 = this.h;
                    float rawY = motionEvent.getRawY() - this.i;
                    if (Math.abs(rawY) > this.f36511a) {
                        boolean z3 = Math.abs(rawX - f2) < Math.abs(rawY) / 2.0f;
                        int i = (rawY > BitmapDescriptorFactory.HUE_RED ? 1 : (rawY == BitmapDescriptorFactory.HUE_RED ? 0 : -1));
                        if (z3 && (i > 0)) {
                            this.j = true;
                            this.k = i > 0 ? this.f36511a : 0;
                            this.e.getParent().requestDisallowInterceptTouchEvent(true);
                            MotionEvent obtain = MotionEvent.obtain(motionEvent);
                            obtain.setAction(3 | (motionEvent.getActionIndex() << 8));
                            this.e.onTouchEvent(obtain);
                            obtain.recycle();
                        }
                    }
                    if (!this.j) {
                        return false;
                    }
                    int i2 = (rawY > BitmapDescriptorFactory.HUE_RED ? 1 : (rawY == BitmapDescriptorFactory.HUE_RED ? 0 : -1));
                    this.n = i2 >= 0 ? rawY : BitmapDescriptorFactory.HUE_RED;
                    this.e.setTranslationY(i2 >= 0 ? rawY - this.k : BitmapDescriptorFactory.HUE_RED);
                    View view2 = this.e;
                    if (i2 >= 0) {
                        f = Math.max((float) BitmapDescriptorFactory.HUE_RED, Math.min(1.0f, 1.0f - ((Math.abs(rawY) * 1.5f) / this.g)));
                    }
                    view2.setAlpha(f);
                    return true;
                } else if (actionMasked != 3 || this.m == null) {
                    return false;
                } else {
                    this.e.animate().translationY(BitmapDescriptorFactory.HUE_RED).alpha(1.0f).setDuration(this.f36514d).setListener(null);
                    this.m.recycle();
                    this.m = null;
                    this.n = BitmapDescriptorFactory.HUE_RED;
                    this.h = BitmapDescriptorFactory.HUE_RED;
                    this.i = BitmapDescriptorFactory.HUE_RED;
                    this.j = false;
                    return false;
                }
            } else if (this.m == null) {
                return false;
            } else {
                float rawY2 = motionEvent.getRawY() - this.i;
                this.m.addMovement(motionEvent);
                this.m.computeCurrentVelocity(1000);
                float xVelocity = this.m.getXVelocity();
                float abs = Math.abs(xVelocity);
                float abs2 = Math.abs(this.m.getYVelocity());
                if (Math.abs(rawY2) > (this.g * 2) / 3 && this.j) {
                    z2 = rawY2 > BitmapDescriptorFactory.HUE_RED;
                } else if (this.f36512b > abs || abs > this.f36513c || abs2 >= abs || !this.j) {
                    z2 = false;
                    z = false;
                } else {
                    z = ((xVelocity > BitmapDescriptorFactory.HUE_RED ? 1 : (xVelocity == BitmapDescriptorFactory.HUE_RED ? 0 : -1)) < 0) == ((rawY2 > BitmapDescriptorFactory.HUE_RED ? 1 : (rawY2 == BitmapDescriptorFactory.HUE_RED ? 0 : -1)) < 0);
                    if (this.m.getXVelocity() <= BitmapDescriptorFactory.HUE_RED) {
                        z2 = false;
                    }
                }
                if (z) {
                    this.e.animate().translationY(z2 ? this.g : -this.g).alpha(BitmapDescriptorFactory.HUE_RED).setDuration(this.f36514d).setListener(new AnimatorListenerAdapter() { // from class: it.gmariotti.cardslib.library.view.listener.b.1
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public final void onAnimationEnd(Animator animator) {
                            b.a(b.this);
                        }
                    });
                } else if (this.j) {
                    this.e.animate().translationY(BitmapDescriptorFactory.HUE_RED).alpha(1.0f).setDuration(this.f36514d).setListener(null);
                }
                this.m.recycle();
                this.m = null;
                this.n = BitmapDescriptorFactory.HUE_RED;
                this.h = BitmapDescriptorFactory.HUE_RED;
                this.i = BitmapDescriptorFactory.HUE_RED;
                this.j = false;
                return false;
            }
        } else {
            this.h = motionEvent.getRawX();
            this.i = motionEvent.getRawY();
            if (this.f.a()) {
                VelocityTracker obtain2 = VelocityTracker.obtain();
                this.m = obtain2;
                obtain2.addMovement(motionEvent);
            }
            view.onTouchEvent(motionEvent);
            return true;
        }
    }
}
