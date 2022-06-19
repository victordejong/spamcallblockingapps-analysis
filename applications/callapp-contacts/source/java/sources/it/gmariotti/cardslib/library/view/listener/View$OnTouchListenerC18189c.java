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
/* renamed from: it.gmariotti.cardslib.library.view.listener.c */
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/listener/c.class */
public final class View$OnTouchListenerC18189c implements View.OnTouchListener {

    /* renamed from: a */
    private int f63268a;

    /* renamed from: b */
    private int f63269b;

    /* renamed from: c */
    private int f63270c;

    /* renamed from: d */
    private long f63271d;

    /* renamed from: e */
    private View f63272e;

    /* renamed from: f */
    private AbstractC18193a f63273f;

    /* renamed from: g */
    private int f63274g = 1;

    /* renamed from: h */
    private float f63275h;

    /* renamed from: i */
    private float f63276i;

    /* renamed from: j */
    private boolean f63277j;

    /* renamed from: k */
    private int f63278k;

    /* renamed from: l */
    private Object f63279l;

    /* renamed from: m */
    private VelocityTracker f63280m;

    /* renamed from: n */
    private float f63281n;

    /* renamed from: it.gmariotti.cardslib.library.view.listener.c$a */
    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/listener/c$a.class */
    public interface AbstractC18193a {
        /* renamed from: a */
        boolean mo4315a();

        /* renamed from: b */
        void mo4314b();
    }

    public View$OnTouchListenerC18189c(View view, Object obj, AbstractC18193a abstractC18193a) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(view.getContext());
        this.f63268a = viewConfiguration.getScaledTouchSlop();
        this.f63269b = viewConfiguration.getScaledMinimumFlingVelocity() * 16;
        this.f63270c = viewConfiguration.getScaledMaximumFlingVelocity();
        this.f63271d = view.getContext().getResources().getInteger(17694720);
        this.f63272e = view;
        this.f63279l = obj;
        this.f63273f = abstractC18193a;
    }

    /* renamed from: a */
    static /* synthetic */ void m4326a(View$OnTouchListenerC18189c view$OnTouchListenerC18189c) {
        final ViewGroup.LayoutParams layoutParams = view$OnTouchListenerC18189c.f63272e.getLayoutParams();
        final int height = view$OnTouchListenerC18189c.f63272e.getHeight();
        ValueAnimator duration = ValueAnimator.ofInt(height, 1).setDuration(view$OnTouchListenerC18189c.f63271d);
        duration.addListener(new AnimatorListenerAdapter() { // from class: it.gmariotti.cardslib.library.view.listener.c.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                AbstractC18193a abstractC18193a = View$OnTouchListenerC18189c.this.f63273f;
                View unused = View$OnTouchListenerC18189c.this.f63272e;
                Object unused2 = View$OnTouchListenerC18189c.this.f63279l;
                abstractC18193a.mo4314b();
                View$OnTouchListenerC18189c.this.f63272e.setAlpha(1.0f);
                View$OnTouchListenerC18189c.this.f63272e.setTranslationX(BitmapDescriptorFactory.HUE_RED);
                layoutParams.height = height;
                View$OnTouchListenerC18189c.this.f63272e.setLayoutParams(layoutParams);
            }
        });
        duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: it.gmariotti.cardslib.library.view.listener.c.3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                layoutParams.height = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                View$OnTouchListenerC18189c.this.f63272e.setLayoutParams(layoutParams);
            }
        });
        duration.start();
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        boolean z;
        motionEvent.offsetLocation(this.f63281n, BitmapDescriptorFactory.HUE_RED);
        if (this.f63274g < 2) {
            this.f63274g = this.f63272e.getWidth();
        }
        int actionMasked = motionEvent.getActionMasked();
        boolean z2 = true;
        if (actionMasked == 0) {
            this.f63275h = motionEvent.getRawX();
            this.f63276i = motionEvent.getRawY();
            if (this.f63273f.mo4315a()) {
                VelocityTracker obtain = VelocityTracker.obtain();
                this.f63280m = obtain;
                obtain.addMovement(motionEvent);
            }
            view.onTouchEvent(motionEvent);
            return true;
        } else if (actionMasked == 1) {
            if (this.f63280m == null) {
                return false;
            }
            float rawX = motionEvent.getRawX() - this.f63275h;
            this.f63280m.addMovement(motionEvent);
            this.f63280m.computeCurrentVelocity(1000);
            float xVelocity = this.f63280m.getXVelocity();
            float abs = Math.abs(xVelocity);
            float abs2 = Math.abs(this.f63280m.getYVelocity());
            if (Math.abs(rawX) > this.f63274g / 2 && this.f63277j) {
                z = rawX > BitmapDescriptorFactory.HUE_RED;
            } else if (this.f63269b > abs || abs > this.f63270c || abs2 >= abs || !this.f63277j) {
                z = false;
                z2 = false;
            } else {
                z2 = ((xVelocity > BitmapDescriptorFactory.HUE_RED ? 1 : (xVelocity == BitmapDescriptorFactory.HUE_RED ? 0 : -1)) < 0) == ((rawX > BitmapDescriptorFactory.HUE_RED ? 1 : (rawX == BitmapDescriptorFactory.HUE_RED ? 0 : -1)) < 0);
                z = this.f63280m.getXVelocity() > BitmapDescriptorFactory.HUE_RED;
            }
            if (z2) {
                this.f63272e.animate().translationX(z ? this.f63274g : -this.f63274g).alpha(BitmapDescriptorFactory.HUE_RED).setDuration(this.f63271d).setListener(new AnimatorListenerAdapter() { // from class: it.gmariotti.cardslib.library.view.listener.c.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator) {
                        View$OnTouchListenerC18189c.m4326a(View$OnTouchListenerC18189c.this);
                    }
                });
            } else if (this.f63277j) {
                this.f63272e.animate().translationX(BitmapDescriptorFactory.HUE_RED).alpha(1.0f).setDuration(this.f63271d).setListener(null);
            }
            this.f63280m.recycle();
            this.f63280m = null;
            this.f63281n = BitmapDescriptorFactory.HUE_RED;
            this.f63275h = BitmapDescriptorFactory.HUE_RED;
            this.f63276i = BitmapDescriptorFactory.HUE_RED;
            this.f63277j = false;
            return false;
        } else if (actionMasked != 2) {
            if (actionMasked != 3 || this.f63280m == null) {
                return false;
            }
            this.f63272e.animate().translationX(BitmapDescriptorFactory.HUE_RED).alpha(1.0f).setDuration(this.f63271d).setListener(null);
            this.f63280m.recycle();
            this.f63280m = null;
            this.f63281n = BitmapDescriptorFactory.HUE_RED;
            this.f63275h = BitmapDescriptorFactory.HUE_RED;
            this.f63276i = BitmapDescriptorFactory.HUE_RED;
            this.f63277j = false;
            return false;
        } else {
            VelocityTracker velocityTracker = this.f63280m;
            if (velocityTracker == null) {
                return false;
            }
            velocityTracker.addMovement(motionEvent);
            float rawX2 = motionEvent.getRawX() - this.f63275h;
            float rawY = motionEvent.getRawY();
            float f = this.f63276i;
            if (Math.abs(rawX2) > this.f63268a && Math.abs(rawY - f) < Math.abs(rawX2) / 2.0f) {
                this.f63277j = true;
                this.f63278k = rawX2 > BitmapDescriptorFactory.HUE_RED ? this.f63268a : -this.f63268a;
                this.f63272e.getParent().requestDisallowInterceptTouchEvent(true);
                MotionEvent obtain2 = MotionEvent.obtain(motionEvent);
                obtain2.setAction((motionEvent.getActionIndex() << 8) | 3);
                this.f63272e.onTouchEvent(obtain2);
                obtain2.recycle();
            }
            if (!this.f63277j) {
                return false;
            }
            this.f63281n = rawX2;
            this.f63272e.setTranslationX(rawX2 - this.f63278k);
            this.f63272e.setAlpha(Math.max((float) BitmapDescriptorFactory.HUE_RED, Math.min(1.0f, 1.0f - ((Math.abs(rawX2) * 2.0f) / this.f63274g))));
            return true;
        }
    }
}
