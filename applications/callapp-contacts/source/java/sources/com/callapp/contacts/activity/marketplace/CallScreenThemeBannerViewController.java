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

    /* renamed from: a */
    public final TextView f23280a;

    /* renamed from: b */
    private final View f23281b;

    /* renamed from: c */
    private final TextView f23282c;

    /* renamed from: d */
    private final TextView f23283d;

    /* renamed from: e */
    private final TextView f23284e;

    /* renamed from: f */
    private final TextView f23285f;

    /* renamed from: g */
    private final View f23286g;

    /* renamed from: h */
    private boolean f23287h = false;

    /* renamed from: i */
    private View f23288i;

    /* renamed from: j */
    private Listener f23289j;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController$Listener.class */
    public interface Listener {
        void onCloseCallScreenThemeBannerClicked();

        void onGetItNowCallScreenThemeBannerClicked();
    }

    public CallScreenThemeBannerViewController(Context context, ViewGroup viewGroup) {
        View inflate = LayoutInflater.from(context).inflate(2131558793, viewGroup, false);
        this.f23288i = inflate;
        viewGroup.addView(inflate);
        View mo26540a = mo26540a(2131363064);
        this.f23281b = mo26540a;
        TextView textView = (TextView) mo26540a(2131363061);
        this.f23282c = textView;
        TextView textView2 = (TextView) mo26540a(2131363060);
        this.f23283d = textView2;
        TextView textView3 = (TextView) mo26540a(2131363059);
        this.f23284e = textView3;
        TextView textView4 = (TextView) mo26540a(2131362156);
        this.f23280a = textView4;
        TextView textView5 = (TextView) mo26540a(2131362162);
        this.f23285f = textView5;
        View mo26540a2 = mo26540a(2131362362);
        this.f23286g = mo26540a2;
        mo26540a.setAlpha(BitmapDescriptorFactory.HUE_RED);
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
        mo26540a2.setScaleX(BitmapDescriptorFactory.HUE_RED);
        mo26540a2.setScaleY(BitmapDescriptorFactory.HUE_RED);
        this.f23288i.setAlpha(BitmapDescriptorFactory.HUE_RED);
        AnalyticsManager.get().m28449a(Constants.PERMISSIONS, "Call Screen Theme", "Banner View Shown");
        textView4.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.marketplace.CallScreenThemeBannerViewController.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (!CallScreenThemeBannerViewController.this.f23287h) {
                    CallScreenThemeBannerViewController.this.f23287h = true;
                    CallScreenThemeBannerViewController.this.f23288i.animate().alpha(BitmapDescriptorFactory.HUE_RED).setDuration(100L).setListener(new DefaultInterfaceImplUtils.AnimatorListenerImpl() { // from class: com.callapp.contacts.activity.marketplace.CallScreenThemeBannerViewController.1.1
                        @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.AnimatorListenerImpl, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            super.onAnimationEnd(animator);
                            CallScreenThemeBannerViewController.this.f23287h = false;
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
                if (!CallScreenThemeBannerViewController.this.f23287h) {
                    CallScreenThemeBannerViewController.this.f23287h = true;
                    CallScreenThemeBannerViewController.this.f23288i.animate().alpha(BitmapDescriptorFactory.HUE_RED).setDuration(100L).setListener(new DefaultInterfaceImplUtils.AnimatorListenerImpl() { // from class: com.callapp.contacts.activity.marketplace.CallScreenThemeBannerViewController.2.1
                        @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.AnimatorListenerImpl, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            AnalyticsManager.get().m28449a(Constants.PERMISSIONS, "Call Screen Theme", "Get It Now Clicked");
                            CallScreenThemeBannerViewController.this.f23287h = false;
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

    /* renamed from: c */
    public static boolean m30148c() {
        if (Prefs.f26339cJ.get().booleanValue() || Prefs.f26429du.get().booleanValue() || !Prefs.f26388dF.get().booleanValue()) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 23 && PhoneManager.get().isDefaultPhoneApp() && Prefs.f26387dE.get().intValue() >= 10) {
            return true;
        }
        return Build.VERSION.SDK_INT >= 23 && !PhoneManager.get().isDefaultPhoneApp() && (DateUtils.m27124a(Prefs.f26386dD.get(), new Date(), TimeUnit.DAYS) > 4L ? 1 : (DateUtils.m27124a(Prefs.f26386dD.get(), new Date(), TimeUnit.DAYS) == 4L ? 0 : -1)) >= 0;
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    /* renamed from: a */
    public /* synthetic */ View mo26540a(int i) {
        View findViewById;
        findViewById = getRootView().findViewById(i);
        return findViewById;
    }

    /* renamed from: a */
    public final void m30152a() {
        this.f23288i.animate().alpha(1.0f).setDuration(200L).start();
        this.f23286g.animate().scaleX(1.0f).scaleY(1.0f).setDuration(200L).start();
        View view = this.f23281b;
        TextView textView = this.f23282c;
        TextView textView2 = this.f23283d;
        TextView textView3 = this.f23284e;
        TextView textView4 = this.f23285f;
        TextView textView5 = this.f23280a;
        for (int i = 0; i < 6; i++) {
            new View[]{view, textView, textView2, textView3, textView4, textView5}[i].animate().setStartDelay(180L).setDuration(200L).alpha(1.0f).start();
        }
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    /* renamed from: b */
    public /* synthetic */ void mo26534b() {
        getRootView().setVisibility(0);
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    public /* synthetic */ Context getContext() {
        Context context;
        context = getRootView().getContext();
        return context;
    }

    public Listener getListener() {
        return this.f23289j;
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    public /* synthetic */ Resources getResources() {
        Resources resources;
        resources = getRootView().getResources();
        return resources;
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    public View getRootView() {
        return this.f23288i;
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    public /* synthetic */ boolean isViewShown() {
        boolean isShown;
        isShown = getRootView().isShown();
        return isShown;
    }

    public void setListener(Listener listener) {
        this.f23289j = listener;
    }
}
