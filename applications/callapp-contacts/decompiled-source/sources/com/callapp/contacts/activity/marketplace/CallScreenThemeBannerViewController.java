package com.callapp.contacts.activity.marketplace;

import android.animation.Animator;
import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.callapp.contacts.activity.viewcontroller.ViewController;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import com.callapp.contacts.util.date.DateUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Date;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController.class */
public class CallScreenThemeBannerViewController implements ViewController {

    /* renamed from: a  reason: collision with root package name */
    public final TextView f13048a;

    /* renamed from: b  reason: collision with root package name */
    private final View f13049b;

    /* renamed from: c  reason: collision with root package name */
    private final TextView f13050c;

    /* renamed from: d  reason: collision with root package name */
    private final TextView f13051d;
    private final TextView e;
    private final TextView f;
    private final View g;
    private boolean h = false;
    private View i;
    private Listener j;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController$Listener.class */
    public interface Listener {
        void onCloseCallScreenThemeBannerClicked();

        void onGetItNowCallScreenThemeBannerClicked();
    }

    public CallScreenThemeBannerViewController(Context context, ViewGroup viewGroup) {
        View inflate = LayoutInflater.from(context).inflate(2131558793, viewGroup, false);
        this.i = inflate;
        viewGroup.addView(inflate);
        View a2 = a(2131363064);
        this.f13049b = a2;
        TextView textView = (TextView) a(2131363061);
        this.f13050c = textView;
        TextView textView2 = (TextView) a(2131363060);
        this.f13051d = textView2;
        TextView textView3 = (TextView) a(2131363059);
        this.e = textView3;
        TextView textView4 = (TextView) a(2131362156);
        this.f13048a = textView4;
        TextView textView5 = (TextView) a(2131362162);
        this.f = textView5;
        View a3 = a(2131362362);
        this.g = a3;
        a2.setAlpha(BitmapDescriptorFactory.HUE_RED);
        textView.setAlpha(BitmapDescriptorFactory.HUE_RED);
        textView.setText(Activities.getString(2131886462));
        textView2.setText(Activities.getString(2131886461));
        textView2.setAlpha(BitmapDescriptorFactory.HUE_RED);
        textView3.setText(Activities.getString(2131886460));
        textView3.setAlpha(BitmapDescriptorFactory.HUE_RED);
        textView4.setText(Activities.getString(2131886563));
        textView4.setAlpha(BitmapDescriptorFactory.HUE_RED);
        textView5.setText(Activities.getString(2131886932));
        textView5.setAlpha(BitmapDescriptorFactory.HUE_RED);
        a3.setScaleX(BitmapDescriptorFactory.HUE_RED);
        a3.setScaleY(BitmapDescriptorFactory.HUE_RED);
        this.i.setAlpha(BitmapDescriptorFactory.HUE_RED);
        AnalyticsManager.get().a(Constants.PERMISSIONS, "Call Screen Theme", "Banner View Shown");
        textView4.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.marketplace.CallScreenThemeBannerViewController.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (!CallScreenThemeBannerViewController.this.h) {
                    CallScreenThemeBannerViewController.this.h = true;
                    CallScreenThemeBannerViewController.this.i.animate().alpha(BitmapDescriptorFactory.HUE_RED).setDuration(100L).setListener(new DefaultInterfaceImplUtils.AnimatorListenerImpl() { // from class: com.callapp.contacts.activity.marketplace.CallScreenThemeBannerViewController.1.1
                        @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.AnimatorListenerImpl, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            super.onAnimationEnd(animator);
                            CallScreenThemeBannerViewController.this.h = false;
                            Listener listener = CallScreenThemeBannerViewController.this.getListener();
                            if (listener != null) {
                                listener.onCloseCallScreenThemeBannerClicked();
                            }
                        }
                    }).start();
                }
            }
        });
        textView5.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.marketplace.CallScreenThemeBannerViewController.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (!CallScreenThemeBannerViewController.this.h) {
                    CallScreenThemeBannerViewController.this.h = true;
                    CallScreenThemeBannerViewController.this.i.animate().alpha(BitmapDescriptorFactory.HUE_RED).setDuration(100L).setListener(new DefaultInterfaceImplUtils.AnimatorListenerImpl() { // from class: com.callapp.contacts.activity.marketplace.CallScreenThemeBannerViewController.2.1
                        @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.AnimatorListenerImpl, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            AnalyticsManager.get().a(Constants.PERMISSIONS, "Call Screen Theme", "Get It Now Clicked");
                            CallScreenThemeBannerViewController.this.h = false;
                            Listener listener = CallScreenThemeBannerViewController.this.getListener();
                            if (listener != null) {
                                listener.onGetItNowCallScreenThemeBannerClicked();
                            }
                        }
                    }).start();
                }
            }
        });
    }

    public static boolean c() {
        if (Prefs.cJ.get().booleanValue() || Prefs.du.get().booleanValue() || !Prefs.dF.get().booleanValue()) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 23 && PhoneManager.get().isDefaultPhoneApp() && Prefs.dE.get().intValue() >= 10) {
            return true;
        }
        return Build.VERSION.SDK_INT >= 23 && !PhoneManager.get().isDefaultPhoneApp() && (DateUtils.a(Prefs.dD.get(), new Date(), TimeUnit.DAYS) > 4L ? 1 : (DateUtils.a(Prefs.dD.get(), new Date(), TimeUnit.DAYS) == 4L ? 0 : -1)) >= 0;
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    public /* synthetic */ View a(int i) {
        View findViewById;
        findViewById = getRootView().findViewById(i);
        return findViewById;
    }

    public final void a() {
        this.i.animate().alpha(1.0f).setDuration(200L).start();
        this.g.animate().scaleX(1.0f).scaleY(1.0f).setDuration(200L).start();
        View view = this.f13049b;
        TextView textView = this.f13050c;
        TextView textView2 = this.f13051d;
        TextView textView3 = this.e;
        TextView textView4 = this.f;
        TextView textView5 = this.f13048a;
        for (int i = 0; i < 6; i++) {
            new View[]{view, textView, textView2, textView3, textView4, textView5}[i].animate().setStartDelay(180L).setDuration(200L).alpha(1.0f).start();
        }
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    public /* synthetic */ void b() {
        getRootView().setVisibility(0);
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    public /* synthetic */ Context getContext() {
        Context context;
        context = getRootView().getContext();
        return context;
    }

    public Listener getListener() {
        return this.j;
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    public /* synthetic */ Resources getResources() {
        Resources resources;
        resources = getRootView().getResources();
        return resources;
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    public View getRootView() {
        return this.i;
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    public /* synthetic */ boolean isViewShown() {
        boolean isShown;
        isShown = getRootView().isShown();
        return isShown;
    }

    public void setListener(Listener listener) {
        this.j = listener;
    }
}
