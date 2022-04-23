package com.callapp.contacts.activity.callappplus;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import com.callapp.contacts.activity.viewcontroller.ViewController;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.popup.PopupDoneListener;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.animation.AnimationListenerAdapter;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/callappplus/CallAppPlusTopHint.class */
public class CallAppPlusTopHint implements ViewController {

    /* renamed from: a  reason: collision with root package name */
    private final View f11288a;

    /* renamed from: b  reason: collision with root package name */
    private Runnable f11289b = null;

    /* renamed from: c  reason: collision with root package name */
    private WeakReference<FragmentActivity> f11290c;

    public CallAppPlusTopHint(WeakReference<FragmentActivity> weakReference) {
        this.f11290c = weakReference;
        final View inflate = LayoutInflater.from(weakReference.get()).inflate(2131558796, (ViewGroup) null);
        this.f11288a = inflate;
        inflate.setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.callappplus.CallAppPlusTopHint.1
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
            public final void a(View view) {
                CallAppPlusTopHint.a(CallAppPlusTopHint.this);
            }
        });
        RelativeLayout relativeLayout = (RelativeLayout) inflate.findViewById(2131364183);
        TextView textView = (TextView) inflate.findViewById(2131362973);
        TextView textView2 = (TextView) inflate.findViewById(2131362972);
        TextView textView3 = (TextView) inflate.findViewById(2131362005);
        ImageView imageView = (ImageView) inflate.findViewById(2131362966);
        imageView.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(2131099784), PorterDuff.Mode.SRC_IN));
        textView.setText(Activities.getString(2131886480));
        textView2.setText(Activities.getString(2131886479));
        textView2.setTextColor(ThemeUtils.getColor(2131100108));
        textView3.setText(Activities.getString(2131886231));
        textView3.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.callappplus.CallAppPlusTopHint.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CallAppPlusTopHint.a(CallAppPlusTopHint.this);
            }
        });
        ViewUtils.b(textView3, 2131230874, ThemeUtils.getColor(2131099784), ThemeUtils.getColor(2131099784), 0);
        if (ThemeUtils.isThemeLight()) {
            ViewUtils.b(relativeLayout, 2131230896, ThemeUtils.getColor(2131100144), ThemeUtils.getColor(2131099784), 3);
            textView.setTextColor(ThemeUtils.getColor(2131099784));
        } else {
            ViewUtils.b(relativeLayout, 2131230896, ThemeUtils.getColor(2131100143), ThemeUtils.getColor(2131099784), 3);
            textView.setTextColor(ThemeUtils.getColor(2131100228));
        }
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.callappplus._$$Lambda$CallAppPlusTopHint$CyRpretdsoV4U1e2g2ASoidRJA0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CallAppPlusTopHint.this.a(inflate, view);
            }
        });
        setOnClickAnimationEndAction(_$$Lambda$CallAppPlusTopHint$8MEMslAP0GI__y3Y4bQbam9uaFU.INSTANCE);
        AnalyticsManager.get().a(Constants.PERMISSIONS, "ViewPermissionToNotificationHint", Constants.CALLAPP_PLUS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a() {
        Prefs.fh.set(Boolean.FALSE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view, View view2) {
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, (float) BitmapDescriptorFactory.HUE_RED);
        alphaAnimation.setDuration(500L);
        alphaAnimation.setAnimationListener(new AnimationListenerAdapter() { // from class: com.callapp.contacts.activity.callappplus.CallAppPlusTopHint.3
            @Override // com.callapp.contacts.util.animation.AnimationListenerAdapter, android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                super.onAnimationEnd(animation);
                CallAppPlusTopHint.this.getRootView().setVisibility(8);
                if (CallAppPlusTopHint.this.f11289b != null) {
                    CallAppPlusTopHint.this.f11289b.run();
                }
            }
        });
        view.startAnimation(alphaAnimation);
    }

    static /* synthetic */ void a(CallAppPlusTopHint callAppPlusTopHint) {
        Activities.b(callAppPlusTopHint.f11290c.get(), (PopupDoneListener) null);
        AnalyticsManager.get().a(Constants.PERMISSIONS, "ClickPermissionToNotificationHint", Constants.CALLAPP_PLUS);
    }

    private void setOnClickAnimationEndAction(Runnable runnable) {
        this.f11289b = runnable;
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    public /* synthetic */ View a(int i) {
        View findViewById;
        findViewById = getRootView().findViewById(i);
        return findViewById;
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

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    public /* synthetic */ Resources getResources() {
        Resources resources;
        resources = getRootView().getResources();
        return resources;
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    public View getRootView() {
        return this.f11288a;
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    public /* synthetic */ boolean isViewShown() {
        boolean isShown;
        isShown = getRootView().isShown();
        return isShown;
    }
}
