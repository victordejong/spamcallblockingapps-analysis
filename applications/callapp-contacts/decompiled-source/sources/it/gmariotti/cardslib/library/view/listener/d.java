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
import it.gmariotti.cardslib.library.a;
import it.gmariotti.cardslib.library.a.b;
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/listener/d.class */
public final class d implements View.OnTouchListener {

    /* renamed from: a  reason: collision with root package name */
    private int f36531a;

    /* renamed from: b  reason: collision with root package name */
    private int f36532b;

    /* renamed from: c  reason: collision with root package name */
    private int f36533c;

    /* renamed from: d  reason: collision with root package name */
    private long f36534d;
    private it.gmariotti.cardslib.library.view.a.a e;
    private a f;
    private int g = 1;
    private float h;
    private float i;
    private b j;
    private boolean k;
    private int l;
    private VelocityTracker m;
    private boolean n;
    private float o;
    private int p;

    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/listener/d$a.class */
    public interface a {
        void a(it.gmariotti.cardslib.library.view.a.a aVar, b bVar);

        boolean a(b bVar);
    }

    public d(it.gmariotti.cardslib.library.view.a.a aVar, b bVar, a aVar2) {
        this.p = 2;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(aVar.getContext());
        this.f36531a = viewConfiguration.getScaledTouchSlop();
        this.f36532b = viewConfiguration.getScaledMinimumFlingVelocity() * 16;
        this.f36533c = viewConfiguration.getScaledMaximumFlingVelocity();
        this.f36534d = aVar.getContext().getResources().getInteger(17694720);
        this.e = aVar;
        this.j = bVar;
        this.f = aVar2;
        this.p = aVar.getContext().getResources().getInteger(a.d.list_card_swipe_distance_divisor);
    }

    static /* synthetic */ void a(d dVar) {
        final ViewGroup.LayoutParams layoutParams = ((View) dVar.e).getLayoutParams();
        final int height = ((View) dVar.e).getHeight();
        ValueAnimator duration = ValueAnimator.ofInt(height, 1).setDuration(dVar.f36534d);
        duration.addListener(new AnimatorListenerAdapter() { // from class: it.gmariotti.cardslib.library.view.listener.d.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                d.this.f.a(d.this.e, d.this.j);
                ((View) d.this.e).setAlpha(1.0f);
                ((View) d.this.e).setTranslationX(BitmapDescriptorFactory.HUE_RED);
                layoutParams.height = height;
                ((View) d.this.e).setLayoutParams(layoutParams);
            }
        });
        duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: it.gmariotti.cardslib.library.view.listener.d.3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                layoutParams.height = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                ((View) d.this.e).setLayoutParams(layoutParams);
            }
        });
        duration.start();
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        motionEvent.offsetLocation(this.o, BitmapDescriptorFactory.HUE_RED);
        if (this.g < 2) {
            this.g = ((View) this.e).getWidth();
        }
        int actionMasked = motionEvent.getActionMasked();
        boolean z = true;
        boolean z2 = true;
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    VelocityTracker velocityTracker = this.m;
                    if (velocityTracker == null || this.n) {
                        return false;
                    }
                    velocityTracker.addMovement(motionEvent);
                    float rawX = motionEvent.getRawX() - this.h;
                    float rawY = motionEvent.getRawY();
                    float f = this.i;
                    if (Math.abs(rawX) > this.f36531a && Math.abs(rawY - f) < Math.abs(rawX) / 2.0f) {
                        this.k = true;
                        ((View) this.e).getParent().requestDisallowInterceptTouchEvent(true);
                        this.l = rawX > BitmapDescriptorFactory.HUE_RED ? this.f36531a : -this.f36531a;
                        MotionEvent obtain = MotionEvent.obtain(motionEvent);
                        obtain.setAction((motionEvent.getActionIndex() << 8) | 3);
                        ((View) this.e).onTouchEvent(obtain);
                        obtain.recycle();
                    }
                    if (!this.k) {
                        return false;
                    }
                    this.o = rawX;
                    ((View) this.e).setTranslationX(rawX - this.l);
                    ((View) this.e).setAlpha(Math.max((float) BitmapDescriptorFactory.HUE_RED, Math.min(1.0f, 1.0f - ((Math.abs(rawX) * 2.0f) / this.g))));
                    return true;
                } else if (actionMasked != 3 || this.m == null) {
                    return false;
                } else {
                    ((View) this.e).animate().translationX(BitmapDescriptorFactory.HUE_RED).alpha(1.0f).setDuration(this.f36534d).setListener(null);
                    this.m.recycle();
                    this.m = null;
                    this.o = BitmapDescriptorFactory.HUE_RED;
                    this.h = BitmapDescriptorFactory.HUE_RED;
                    this.i = BitmapDescriptorFactory.HUE_RED;
                    this.k = false;
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
                if (Math.abs(rawX2) > this.g / this.p && this.k) {
                    z2 = rawX2 > BitmapDescriptorFactory.HUE_RED;
                } else if (this.f36532b > abs || abs > this.f36533c || abs2 >= abs || !this.k) {
                    z2 = false;
                    z = false;
                } else {
                    z = ((xVelocity > BitmapDescriptorFactory.HUE_RED ? 1 : (xVelocity == BitmapDescriptorFactory.HUE_RED ? 0 : -1)) < 0) == ((rawX2 > BitmapDescriptorFactory.HUE_RED ? 1 : (rawX2 == BitmapDescriptorFactory.HUE_RED ? 0 : -1)) < 0);
                    if (this.m.getXVelocity() <= BitmapDescriptorFactory.HUE_RED) {
                        z2 = false;
                    }
                }
                if (z) {
                    ((View) this.e).animate().translationX(z2 ? this.g : -this.g).alpha(BitmapDescriptorFactory.HUE_RED).setDuration(this.f36534d).setListener(new AnimatorListenerAdapter() { // from class: it.gmariotti.cardslib.library.view.listener.d.1
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public final void onAnimationEnd(Animator animator) {
                            d.a(d.this);
                        }
                    });
                } else if (this.k) {
                    ((View) this.e).animate().translationX(BitmapDescriptorFactory.HUE_RED).alpha(1.0f).setDuration(this.f36534d).setListener(null);
                }
                this.m.recycle();
                this.m = null;
                this.o = BitmapDescriptorFactory.HUE_RED;
                this.h = BitmapDescriptorFactory.HUE_RED;
                this.i = BitmapDescriptorFactory.HUE_RED;
                this.k = false;
                return false;
            }
        } else if (this.n) {
            return false;
        } else {
            this.h = motionEvent.getRawX();
            this.i = motionEvent.getRawY();
            if (this.f.a(this.j)) {
                VelocityTracker obtain2 = VelocityTracker.obtain();
                this.m = obtain2;
                obtain2.addMovement(motionEvent);
            }
            view.onTouchEvent(motionEvent);
            return true;
        }
    }
}
