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

    /* renamed from: a  reason: collision with root package name */
    private RippleBackground f12376a;

    /* renamed from: b  reason: collision with root package name */
    private Predicate f12377b = _$$Lambda$StoreButtonViewController$sOHVwsxy4d3e4WNEdbdu_5TcZ8o.INSTANCE;

    /* renamed from: c  reason: collision with root package name */
    private Runnable f12378c = new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.bottombar._$$Lambda$StoreButtonViewController$h5OP8ezn4ItDFxsyGdzyIqNQZ8Q
        @Override // java.lang.Runnable
        public final void run() {
            StoreButtonViewController.this.f();
        }
    };

    public StoreButtonViewController(Context context, int i, String str, int i2, float f, Runnable runnable, BaseNotificationBadgeViewController baseNotificationBadgeViewController, EventBusManager.CallAppDataType callAppDataType) {
        super(context, i, str, i2, f, runnable, baseNotificationBadgeViewController, callAppDataType);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f() {
        RippleBackground rippleBackground = this.f12376a;
        if (rippleBackground != null) {
            rippleBackground.animate().alpha(BitmapDescriptorFactory.HUE_RED).setDuration(250L).setListener(new AnimatorListenerAdapter() { // from class: com.callapp.contacts.activity.contact.details.presenter.bottombar.StoreButtonViewController.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    StoreButtonViewController.this.f12376a.b();
                }
            }).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean g() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.callapp.contacts.activity.contact.details.presenter.bottombar.CollapsingButtonViewController
    public final void a() {
        super.a();
        RippleBackground rippleBackground = this.f12376a;
        if (rippleBackground != null) {
            rippleBackground.b();
        }
    }

    @Override // com.callapp.contacts.activity.contact.details.presenter.bottombar.CollapsingButtonViewController
    public final void b() {
        super.b();
        if (this.f12377b.accept()) {
            if (this.f12376a == null) {
                this.f12376a = (RippleBackground) LayoutInflater.from(getRootView().getContext()).inflate(2131559036, (ViewGroup) null);
                ((ViewGroup) getRootView()).addView(this.f12376a, 0);
                ((FrameLayout.LayoutParams) this.f12376a.getLayoutParams()).gravity = 17;
            }
            e();
        }
    }

    @Override // com.callapp.contacts.activity.contact.details.presenter.bottombar.CollapsingButtonViewController
    public final void d() {
        super.d();
        RippleBackground rippleBackground = this.f12376a;
        if (rippleBackground != null) {
            rippleBackground.b();
            this.f12376a.removeCallbacks(this.f12378c);
        }
    }

    public final void e() {
        RippleBackground rippleBackground;
        if (this.f12377b.accept() && (rippleBackground = this.f12376a) != null && !rippleBackground.f34998a) {
            this.f12376a.animate().setDuration(200L).alpha(0.3f).setListener(new AnimatorListenerAdapter() { // from class: com.callapp.contacts.activity.contact.details.presenter.bottombar.StoreButtonViewController.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    StoreButtonViewController.this.f12376a.b();
                    StoreButtonViewController.this.f12376a.a();
                    StoreButtonViewController.this.f12376a.postDelayed(StoreButtonViewController.this.f12378c, 3500L);
                }
            }).start();
        }
    }

    public boolean isShowingLoyaltyGesture() {
        return this.f12377b.accept();
    }

    @Override // com.callapp.contacts.activity.contact.details.presenter.bottombar.CollapsingButtonViewController
    public void setScale(float f) {
        super.setScale(f);
        RippleBackground rippleBackground = this.f12376a;
        if (rippleBackground != null) {
            rippleBackground.setScaleX(f);
            this.f12376a.setScaleY(f);
        }
    }

    public void setShouldPlayAnimation(Predicate predicate) {
        this.f12377b = predicate;
    }
}
