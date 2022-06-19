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
/* renamed from: it.gmariotti.cardslib.library.view.listener.b */
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/listener/b.class */
public final class View$OnTouchListenerC18184b implements View.OnTouchListener {

    /* renamed from: b */
    private int f63248b;

    /* renamed from: c */
    private int f63249c;

    /* renamed from: d */
    private long f63250d;

    /* renamed from: e */
    private View f63251e;

    /* renamed from: f */
    private AbstractC18188a f63252f;

    /* renamed from: h */
    private float f63254h;

    /* renamed from: i */
    private float f63255i;

    /* renamed from: j */
    private boolean f63256j;

    /* renamed from: k */
    private int f63257k;

    /* renamed from: l */
    private Object f63258l;

    /* renamed from: m */
    private VelocityTracker f63259m;

    /* renamed from: n */
    private float f63260n;

    /* renamed from: o */
    private float f63261o;

    /* renamed from: g */
    private int f63253g = 1;

    /* renamed from: a */
    private int f63247a = 0;

    /* renamed from: it.gmariotti.cardslib.library.view.listener.b$a */
    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/listener/b$a.class */
    public interface AbstractC18188a {
        /* renamed from: a */
        boolean mo4313a();

        /* renamed from: b */
        void mo4312b();
    }

    public View$OnTouchListenerC18184b(View view, Object obj, AbstractC18188a abstractC18188a) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(view.getContext());
        this.f63248b = viewConfiguration.getScaledMinimumFlingVelocity() * 16;
        this.f63249c = viewConfiguration.getScaledMaximumFlingVelocity();
        this.f63250d = view.getContext().getResources().getInteger(17694720);
        this.f63251e = view;
        this.f63258l = obj;
        this.f63252f = abstractC18188a;
    }

    /* renamed from: a */
    static /* synthetic */ void m4330a(View$OnTouchListenerC18184b view$OnTouchListenerC18184b) {
        final ViewGroup.LayoutParams layoutParams = view$OnTouchListenerC18184b.f63251e.getLayoutParams();
        final int height = view$OnTouchListenerC18184b.f63251e.getHeight();
        ValueAnimator duration = ValueAnimator.ofInt(height, 1).setDuration(view$OnTouchListenerC18184b.f63250d);
        duration.addListener(new AnimatorListenerAdapter() { // from class: it.gmariotti.cardslib.library.view.listener.b.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                AbstractC18188a abstractC18188a = View$OnTouchListenerC18184b.this.f63252f;
                View unused = View$OnTouchListenerC18184b.this.f63251e;
                Object unused2 = View$OnTouchListenerC18184b.this.f63258l;
                abstractC18188a.mo4312b();
                View$OnTouchListenerC18184b.this.f63251e.setAlpha(1.0f);
                View$OnTouchListenerC18184b.this.f63251e.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                layoutParams.height = height;
                View$OnTouchListenerC18184b.this.f63251e.setLayoutParams(layoutParams);
            }
        });
        duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: it.gmariotti.cardslib.library.view.listener.b.3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                layoutParams.height = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                View$OnTouchListenerC18184b.this.f63251e.setLayoutParams(layoutParams);
            }
        });
        duration.start();
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        boolean z;
        motionEvent.offsetLocation(BitmapDescriptorFactory.HUE_RED, this.f63260n);
        if (this.f63253g < 2) {
            this.f63253g = this.f63251e.getHeight();
        }
        if (this.f63261o == BitmapDescriptorFactory.HUE_RED) {
            this.f63261o = this.f63251e.getY();
        }
        int actionMasked = motionEvent.getActionMasked();
        boolean z2 = true;
        if (actionMasked == 0) {
            this.f63254h = motionEvent.getRawX();
            this.f63255i = motionEvent.getRawY();
            if (this.f63252f.mo4313a()) {
                VelocityTracker obtain = VelocityTracker.obtain();
                this.f63259m = obtain;
                obtain.addMovement(motionEvent);
            }
            view.onTouchEvent(motionEvent);
            return true;
        } else if (actionMasked == 1) {
            if (this.f63259m == null) {
                return false;
            }
            float rawY = motionEvent.getRawY() - this.f63255i;
            this.f63259m.addMovement(motionEvent);
            this.f63259m.computeCurrentVelocity(1000);
            float xVelocity = this.f63259m.getXVelocity();
            float abs = Math.abs(xVelocity);
            float abs2 = Math.abs(this.f63259m.getYVelocity());
            if (Math.abs(rawY) > (this.f63253g * 2) / 3 && this.f63256j) {
                z = rawY > BitmapDescriptorFactory.HUE_RED;
            } else if (this.f63248b > abs || abs > this.f63249c || abs2 >= abs || !this.f63256j) {
                z = false;
                z2 = false;
            } else {
                z2 = ((xVelocity > BitmapDescriptorFactory.HUE_RED ? 1 : (xVelocity == BitmapDescriptorFactory.HUE_RED ? 0 : -1)) < 0) == ((rawY > BitmapDescriptorFactory.HUE_RED ? 1 : (rawY == BitmapDescriptorFactory.HUE_RED ? 0 : -1)) < 0);
                z = this.f63259m.getXVelocity() > BitmapDescriptorFactory.HUE_RED;
            }
            if (z2) {
                this.f63251e.animate().translationY(z ? this.f63253g : -this.f63253g).alpha(BitmapDescriptorFactory.HUE_RED).setDuration(this.f63250d).setListener(new AnimatorListenerAdapter() { // from class: it.gmariotti.cardslib.library.view.listener.b.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator) {
                        View$OnTouchListenerC18184b.m4330a(View$OnTouchListenerC18184b.this);
                    }
                });
            } else if (this.f63256j) {
                this.f63251e.animate().translationY(BitmapDescriptorFactory.HUE_RED).alpha(1.0f).setDuration(this.f63250d).setListener(null);
            }
            this.f63259m.recycle();
            this.f63259m = null;
            this.f63260n = BitmapDescriptorFactory.HUE_RED;
            this.f63254h = BitmapDescriptorFactory.HUE_RED;
            this.f63255i = BitmapDescriptorFactory.HUE_RED;
            this.f63256j = false;
            return false;
        } else if (actionMasked != 2) {
            if (actionMasked != 3 || this.f63259m == null) {
                return false;
            }
            this.f63251e.animate().translationY(BitmapDescriptorFactory.HUE_RED).alpha(1.0f).setDuration(this.f63250d).setListener(null);
            this.f63259m.recycle();
            this.f63259m = null;
            this.f63260n = BitmapDescriptorFactory.HUE_RED;
            this.f63254h = BitmapDescriptorFactory.HUE_RED;
            this.f63255i = BitmapDescriptorFactory.HUE_RED;
            this.f63256j = false;
            return false;
        } else {
            VelocityTracker velocityTracker = this.f63259m;
            if (velocityTracker == null) {
                return false;
            }
            velocityTracker.addMovement(motionEvent);
            float rawX = motionEvent.getRawX();
            float f = this.f63254h;
            float rawY2 = motionEvent.getRawY() - this.f63255i;
            if (Math.abs(rawY2) > this.f63247a) {
                boolean z3 = Math.abs(rawX - f) < Math.abs(rawY2) / 2.0f;
                int i = (rawY2 > BitmapDescriptorFactory.HUE_RED ? 1 : (rawY2 == BitmapDescriptorFactory.HUE_RED ? 0 : -1));
                if (z3 & (i > 0)) {
                    this.f63256j = true;
                    this.f63257k = i > 0 ? this.f63247a : 0;
                    this.f63251e.getParent().requestDisallowInterceptTouchEvent(true);
                    MotionEvent obtain2 = MotionEvent.obtain(motionEvent);
                    obtain2.setAction(3 | (motionEvent.getActionIndex() << 8));
                    this.f63251e.onTouchEvent(obtain2);
                    obtain2.recycle();
                }
            }
            if (!this.f63256j) {
                return false;
            }
            int i2 = (rawY2 > BitmapDescriptorFactory.HUE_RED ? 1 : (rawY2 == BitmapDescriptorFactory.HUE_RED ? 0 : -1));
            this.f63260n = i2 >= 0 ? rawY2 : 0.0f;
            this.f63251e.setTranslationY(i2 >= 0 ? rawY2 - this.f63257k : 0.0f);
            View view2 = this.f63251e;
            float f2 = 1.0f;
            if (i2 >= 0) {
                f2 = Math.max((float) BitmapDescriptorFactory.HUE_RED, Math.min(1.0f, 1.0f - ((Math.abs(rawY2) * 1.5f) / this.f63253g)));
            }
            view2.setAlpha(f2);
            return true;
        }
    }
}
