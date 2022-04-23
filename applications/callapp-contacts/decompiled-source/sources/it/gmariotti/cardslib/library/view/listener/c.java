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
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/listener/c.class */
public final class c implements View.OnTouchListener {

    /* renamed from: a  reason: collision with root package name */
    private int f36521a;

    /* renamed from: b  reason: collision with root package name */
    private int f36522b;

    /* renamed from: c  reason: collision with root package name */
    private int f36523c;

    /* renamed from: d  reason: collision with root package name */
    private long f36524d;
    private View e;
    private a f;
    private int g = 1;
    private float h;
    private float i;
    private boolean j;
    private int k;
    private Object l;
    private VelocityTracker m;
    private float n;

    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/listener/c$a.class */
    public interface a {
        boolean a();

        void b();
    }

    public c(View view, Object obj, a aVar) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(view.getContext());
        this.f36521a = viewConfiguration.getScaledTouchSlop();
        this.f36522b = viewConfiguration.getScaledMinimumFlingVelocity() * 16;
        this.f36523c = viewConfiguration.getScaledMaximumFlingVelocity();
        this.f36524d = view.getContext().getResources().getInteger(17694720);
        this.e = view;
        this.l = obj;
        this.f = aVar;
    }

    static /* synthetic */ void a(c cVar) {
        final ViewGroup.LayoutParams layoutParams = cVar.e.getLayoutParams();
        final int height = cVar.e.getHeight();
        ValueAnimator duration = ValueAnimator.ofInt(height, 1).setDuration(cVar.f36524d);
        duration.addListener(new AnimatorListenerAdapter() { // from class: it.gmariotti.cardslib.library.view.listener.c.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                a aVar = c.this.f;
                View unused = c.this.e;
                Object unused2 = c.this.l;
                aVar.b();
                c.this.e.setAlpha(1.0f);
                c.this.e.setTranslationX(BitmapDescriptorFactory.HUE_RED);
                layoutParams.height = height;
                c.this.e.setLayoutParams(layoutParams);
            }
        });
        duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: it.gmariotti.cardslib.library.view.listener.c.3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                layoutParams.height = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                c.this.e.setLayoutParams(layoutParams);
            }
        });
        duration.start();
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        motionEvent.offsetLocation(this.n, BitmapDescriptorFactory.HUE_RED);
        if (this.g < 2) {
            this.g = this.e.getWidth();
        }
        int actionMasked = motionEvent.getActionMasked();
        boolean z = true;
        boolean z2 = true;
        if (actionMasked == 0) {
            this.h = motionEvent.getRawX();
            this.i = motionEvent.getRawY();
            if (this.f.a()) {
                VelocityTracker obtain = VelocityTracker.obtain();
                this.m = obtain;
                obtain.addMovement(motionEvent);
            }
            view.onTouchEvent(motionEvent);
            return true;
        } else if (actionMasked != 1) {
            if (actionMasked == 2) {
                VelocityTracker velocityTracker = this.m;
                if (velocityTracker == null) {
                    return false;
                }
                velocityTracker.addMovement(motionEvent);
                float rawX = motionEvent.getRawX() - this.h;
                float rawY = motionEvent.getRawY();
                float f = this.i;
                if (Math.abs(rawX) > this.f36521a && Math.abs(rawY - f) < Math.abs(rawX) / 2.0f) {
                    this.j = true;
                    this.k = rawX > BitmapDescriptorFactory.HUE_RED ? this.f36521a : -this.f36521a;
                    this.e.getParent().requestDisallowInterceptTouchEvent(true);
                    MotionEvent obtain2 = MotionEvent.obtain(motionEvent);
                    obtain2.setAction((motionEvent.getActionIndex() << 8) | 3);
                    this.e.onTouchEvent(obtain2);
                    obtain2.recycle();
                }
                if (!this.j) {
                    return false;
                }
                this.n = rawX;
                this.e.setTranslationX(rawX - this.k);
                this.e.setAlpha(Math.max((float) BitmapDescriptorFactory.HUE_RED, Math.min(1.0f, 1.0f - ((Math.abs(rawX) * 2.0f) / this.g))));
                return true;
            } else if (actionMasked != 3 || this.m == null) {
                return false;
            } else {
                this.e.animate().translationX(BitmapDescriptorFactory.HUE_RED).alpha(1.0f).setDuration(this.f36524d).setListener(null);
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
            float rawX2 = motionEvent.getRawX() - this.h;
            this.m.addMovement(motionEvent);
            this.m.computeCurrentVelocity(1000);
            float xVelocity = this.m.getXVelocity();
            float abs = Math.abs(xVelocity);
            float abs2 = Math.abs(this.m.getYVelocity());
            if (Math.abs(rawX2) > this.g / 2 && this.j) {
                z2 = rawX2 > BitmapDescriptorFactory.HUE_RED;
            } else if (this.f36522b > abs || abs > this.f36523c || abs2 >= abs || !this.j) {
                z2 = false;
                z = false;
            } else {
                z = ((xVelocity > BitmapDescriptorFactory.HUE_RED ? 1 : (xVelocity == BitmapDescriptorFactory.HUE_RED ? 0 : -1)) < 0) == ((rawX2 > BitmapDescriptorFactory.HUE_RED ? 1 : (rawX2 == BitmapDescriptorFactory.HUE_RED ? 0 : -1)) < 0);
                if (this.m.getXVelocity() <= BitmapDescriptorFactory.HUE_RED) {
                    z2 = false;
                }
            }
            if (z) {
                this.e.animate().translationX(z2 ? this.g : -this.g).alpha(BitmapDescriptorFactory.HUE_RED).setDuration(this.f36524d).setListener(new AnimatorListenerAdapter() { // from class: it.gmariotti.cardslib.library.view.listener.c.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator) {
                        c.a(c.this);
                    }
                });
            } else if (this.j) {
                this.e.animate().translationX(BitmapDescriptorFactory.HUE_RED).alpha(1.0f).setDuration(this.f36524d).setListener(null);
            }
            this.m.recycle();
            this.m = null;
            this.n = BitmapDescriptorFactory.HUE_RED;
            this.h = BitmapDescriptorFactory.HUE_RED;
            this.i = BitmapDescriptorFactory.HUE_RED;
            this.j = false;
            return false;
        }
    }
}
