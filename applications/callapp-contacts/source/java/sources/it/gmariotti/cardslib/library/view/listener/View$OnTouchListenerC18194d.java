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
import it.gmariotti.cardslib.library.C18061a;
import it.gmariotti.cardslib.library.p510a.C18073b;
import it.gmariotti.cardslib.library.view.p514a.AbstractC18152a;
/* renamed from: it.gmariotti.cardslib.library.view.listener.d */
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/listener/d.class */
public final class View$OnTouchListenerC18194d implements View.OnTouchListener {

    /* renamed from: a */
    private int f63288a;

    /* renamed from: b */
    private int f63289b;

    /* renamed from: c */
    private int f63290c;

    /* renamed from: d */
    private long f63291d;

    /* renamed from: e */
    private AbstractC18152a f63292e;

    /* renamed from: f */
    private AbstractC18198a f63293f;

    /* renamed from: g */
    private int f63294g = 1;

    /* renamed from: h */
    private float f63295h;

    /* renamed from: i */
    private float f63296i;

    /* renamed from: j */
    private C18073b f63297j;

    /* renamed from: k */
    private boolean f63298k;

    /* renamed from: l */
    private int f63299l;

    /* renamed from: m */
    private VelocityTracker f63300m;

    /* renamed from: n */
    private boolean f63301n;

    /* renamed from: o */
    private float f63302o;

    /* renamed from: p */
    private int f63303p;

    /* renamed from: it.gmariotti.cardslib.library.view.listener.d$a */
    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/listener/d$a.class */
    public interface AbstractC18198a {
        /* renamed from: a */
        void mo4317a(AbstractC18152a abstractC18152a, C18073b c18073b);

        /* renamed from: a */
        boolean mo4318a(C18073b c18073b);
    }

    public View$OnTouchListenerC18194d(AbstractC18152a abstractC18152a, C18073b c18073b, AbstractC18198a abstractC18198a) {
        this.f63303p = 2;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(abstractC18152a.getContext());
        this.f63288a = viewConfiguration.getScaledTouchSlop();
        this.f63289b = viewConfiguration.getScaledMinimumFlingVelocity() * 16;
        this.f63290c = viewConfiguration.getScaledMaximumFlingVelocity();
        this.f63291d = abstractC18152a.getContext().getResources().getInteger(17694720);
        this.f63292e = abstractC18152a;
        this.f63297j = c18073b;
        this.f63293f = abstractC18198a;
        this.f63303p = abstractC18152a.getContext().getResources().getInteger(C18061a.C18065d.list_card_swipe_distance_divisor);
    }

    /* renamed from: a */
    static /* synthetic */ void m4322a(View$OnTouchListenerC18194d view$OnTouchListenerC18194d) {
        final ViewGroup.LayoutParams layoutParams = ((View) view$OnTouchListenerC18194d.f63292e).getLayoutParams();
        final int height = ((View) view$OnTouchListenerC18194d.f63292e).getHeight();
        ValueAnimator duration = ValueAnimator.ofInt(height, 1).setDuration(view$OnTouchListenerC18194d.f63291d);
        duration.addListener(new AnimatorListenerAdapter() { // from class: it.gmariotti.cardslib.library.view.listener.d.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                View$OnTouchListenerC18194d.this.f63293f.mo4317a(View$OnTouchListenerC18194d.this.f63292e, View$OnTouchListenerC18194d.this.f63297j);
                ((View) View$OnTouchListenerC18194d.this.f63292e).setAlpha(1.0f);
                ((View) View$OnTouchListenerC18194d.this.f63292e).setTranslationX(BitmapDescriptorFactory.HUE_RED);
                layoutParams.height = height;
                ((View) View$OnTouchListenerC18194d.this.f63292e).setLayoutParams(layoutParams);
            }
        });
        duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: it.gmariotti.cardslib.library.view.listener.d.3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                layoutParams.height = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                ((View) View$OnTouchListenerC18194d.this.f63292e).setLayoutParams(layoutParams);
            }
        });
        duration.start();
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        boolean z;
        motionEvent.offsetLocation(this.f63302o, BitmapDescriptorFactory.HUE_RED);
        if (this.f63294g < 2) {
            this.f63294g = ((View) this.f63292e).getWidth();
        }
        int actionMasked = motionEvent.getActionMasked();
        boolean z2 = true;
        if (actionMasked == 0) {
            if (this.f63301n) {
                return false;
            }
            this.f63295h = motionEvent.getRawX();
            this.f63296i = motionEvent.getRawY();
            if (this.f63293f.mo4318a(this.f63297j)) {
                VelocityTracker obtain = VelocityTracker.obtain();
                this.f63300m = obtain;
                obtain.addMovement(motionEvent);
            }
            view.onTouchEvent(motionEvent);
            return true;
        } else if (actionMasked == 1) {
            if (this.f63300m == null) {
                return false;
            }
            float rawX = motionEvent.getRawX() - this.f63295h;
            this.f63300m.addMovement(motionEvent);
            this.f63300m.computeCurrentVelocity(1000);
            float xVelocity = this.f63300m.getXVelocity();
            float abs = Math.abs(xVelocity);
            float abs2 = Math.abs(this.f63300m.getYVelocity());
            if (Math.abs(rawX) > this.f63294g / this.f63303p && this.f63298k) {
                z = rawX > BitmapDescriptorFactory.HUE_RED;
            } else if (this.f63289b > abs || abs > this.f63290c || abs2 >= abs || !this.f63298k) {
                z = false;
                z2 = false;
            } else {
                z2 = ((xVelocity > BitmapDescriptorFactory.HUE_RED ? 1 : (xVelocity == BitmapDescriptorFactory.HUE_RED ? 0 : -1)) < 0) == ((rawX > BitmapDescriptorFactory.HUE_RED ? 1 : (rawX == BitmapDescriptorFactory.HUE_RED ? 0 : -1)) < 0);
                z = this.f63300m.getXVelocity() > BitmapDescriptorFactory.HUE_RED;
            }
            if (z2) {
                ((View) this.f63292e).animate().translationX(z ? this.f63294g : -this.f63294g).alpha(BitmapDescriptorFactory.HUE_RED).setDuration(this.f63291d).setListener(new AnimatorListenerAdapter() { // from class: it.gmariotti.cardslib.library.view.listener.d.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator) {
                        View$OnTouchListenerC18194d.m4322a(View$OnTouchListenerC18194d.this);
                    }
                });
            } else if (this.f63298k) {
                ((View) this.f63292e).animate().translationX(BitmapDescriptorFactory.HUE_RED).alpha(1.0f).setDuration(this.f63291d).setListener(null);
            }
            this.f63300m.recycle();
            this.f63300m = null;
            this.f63302o = BitmapDescriptorFactory.HUE_RED;
            this.f63295h = BitmapDescriptorFactory.HUE_RED;
            this.f63296i = BitmapDescriptorFactory.HUE_RED;
            this.f63298k = false;
            return false;
        } else if (actionMasked != 2) {
            if (actionMasked != 3 || this.f63300m == null) {
                return false;
            }
            ((View) this.f63292e).animate().translationX(BitmapDescriptorFactory.HUE_RED).alpha(1.0f).setDuration(this.f63291d).setListener(null);
            this.f63300m.recycle();
            this.f63300m = null;
            this.f63302o = BitmapDescriptorFactory.HUE_RED;
            this.f63295h = BitmapDescriptorFactory.HUE_RED;
            this.f63296i = BitmapDescriptorFactory.HUE_RED;
            this.f63298k = false;
            return false;
        } else {
            VelocityTracker velocityTracker = this.f63300m;
            if (velocityTracker == null || this.f63301n) {
                return false;
            }
            velocityTracker.addMovement(motionEvent);
            float rawX2 = motionEvent.getRawX() - this.f63295h;
            float rawY = motionEvent.getRawY();
            float f = this.f63296i;
            if (Math.abs(rawX2) > this.f63288a && Math.abs(rawY - f) < Math.abs(rawX2) / 2.0f) {
                this.f63298k = true;
                ((View) this.f63292e).getParent().requestDisallowInterceptTouchEvent(true);
                this.f63299l = rawX2 > BitmapDescriptorFactory.HUE_RED ? this.f63288a : -this.f63288a;
                MotionEvent obtain2 = MotionEvent.obtain(motionEvent);
                obtain2.setAction((motionEvent.getActionIndex() << 8) | 3);
                ((View) this.f63292e).onTouchEvent(obtain2);
                obtain2.recycle();
            }
            if (!this.f63298k) {
                return false;
            }
            this.f63302o = rawX2;
            ((View) this.f63292e).setTranslationX(rawX2 - this.f63299l);
            ((View) this.f63292e).setAlpha(Math.max((float) BitmapDescriptorFactory.HUE_RED, Math.min(1.0f, 1.0f - ((Math.abs(rawX2) * 2.0f) / this.f63294g))));
            return true;
        }
    }
}
