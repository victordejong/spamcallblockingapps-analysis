package com.callapp.contacts.activity.contact.details.presenter.bottombar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.callapp.contacts.activity.contact.details.presenter.bottombar.notification.BaseNotificationBadgeViewController;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.util.Predicate;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.skyfishjy.library.RippleBackground;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController.class */
public class StoreButtonViewController extends CollapsingButtonViewController {

    /* renamed from: a */
    private RippleBackground f22201a;

    /* renamed from: b */
    private Predicate f22202b = _$$Lambda$StoreButtonViewController$sOHVwsxy4d3e4WNEdbdu_5TcZ8o.INSTANCE;

    /* renamed from: c */
    private Runnable f22203c = new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.bottombar._$$Lambda$StoreButtonViewController$h5OP8ezn4ItDFxsyGdzyIqNQZ8Q
        @Override // java.lang.Runnable
        public final void run() {
            StoreButtonViewController.this.m30789f();
        }
    };

    public StoreButtonViewController(Context context, int i, String str, int i2, float f, Runnable runnable, BaseNotificationBadgeViewController baseNotificationBadgeViewController, EventBusManager.CallAppDataType callAppDataType) {
        super(context, i, str, i2, f, runnable, baseNotificationBadgeViewController, callAppDataType);
    }

    /* renamed from: f */
    public /* synthetic */ void m30789f() {
        RippleBackground rippleBackground = this.f22201a;
        if (rippleBackground != null) {
            rippleBackground.animate().alpha(BitmapDescriptorFactory.HUE_RED).setDuration(250L).setListener(new AnimatorListenerAdapter() { // from class: com.callapp.contacts.activity.contact.details.presenter.bottombar.StoreButtonViewController.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    StoreButtonViewController.this.f22201a.m5863b();
                }
            }).start();
        }
    }

    /* renamed from: g */
    public static /* synthetic */ boolean m30788g() {
        return true;
    }

    @Override // com.callapp.contacts.activity.contact.details.presenter.bottombar.CollapsingButtonViewController
    /* renamed from: a */
    public final void mo30795a() {
        super.mo30795a();
        RippleBackground rippleBackground = this.f22201a;
        if (rippleBackground != null) {
            rippleBackground.m5863b();
        }
    }

    @Override // com.callapp.contacts.activity.contact.details.presenter.bottombar.CollapsingButtonViewController
    /* renamed from: b */
    public final void mo30793b() {
        super.mo30793b();
        if (this.f22202b.accept()) {
            if (this.f22201a == null) {
                this.f22201a = (RippleBackground) LayoutInflater.from(getRootView().getContext()).inflate(2131559036, (ViewGroup) null);
                ((ViewGroup) getRootView()).addView(this.f22201a, 0);
                ((FrameLayout.LayoutParams) this.f22201a.getLayoutParams()).gravity = 17;
            }
            m30790e();
        }
    }

    @Override // com.callapp.contacts.activity.contact.details.presenter.bottombar.CollapsingButtonViewController
    /* renamed from: d */
    public final void mo30791d() {
        super.mo30791d();
        RippleBackground rippleBackground = this.f22201a;
        if (rippleBackground != null) {
            rippleBackground.m5863b();
            this.f22201a.removeCallbacks(this.f22203c);
        }
    }

    /* renamed from: e */
    public final void m30790e() {
        RippleBackground rippleBackground;
        if (!this.f22202b.accept() || (rippleBackground = this.f22201a) == null || rippleBackground.f60707a) {
            return;
        }
        this.f22201a.animate().setDuration(200L).alpha(0.3f).setListener(new AnimatorListenerAdapter() { // from class: com.callapp.contacts.activity.contact.details.presenter.bottombar.StoreButtonViewController.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                StoreButtonViewController.this.f22201a.m5863b();
                StoreButtonViewController.this.f22201a.m5866a();
                StoreButtonViewController.this.f22201a.postDelayed(StoreButtonViewController.this.f22203c, 3500L);
            }
        }).start();
    }

    public boolean isShowingLoyaltyGesture() {
        return this.f22202b.accept();
    }

    @Override // com.callapp.contacts.activity.contact.details.presenter.bottombar.CollapsingButtonViewController
    public void setScale(float f) {
        super.setScale(f);
        RippleBackground rippleBackground = this.f22201a;
        if (rippleBackground != null) {
            rippleBackground.setScaleX(f);
            this.f22201a.setScaleY(f);
        }
    }

    public void setShouldPlayAnimation(Predicate predicate) {
        this.f22202b = predicate;
    }
}
