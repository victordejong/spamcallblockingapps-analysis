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

    /* renamed from: a */
    private final View f20555a;

    /* renamed from: b */
    private Runnable f20556b = null;

    /* renamed from: c */
    private WeakReference<FragmentActivity> f20557c;

    public CallAppPlusTopHint(WeakReference<FragmentActivity> weakReference) {
        this.f20557c = weakReference;
        final View inflate = LayoutInflater.from(weakReference.get()).inflate(2131558796, (ViewGroup) null);
        this.f20555a = inflate;
        inflate.setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.callappplus.CallAppPlusTopHint.1
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
            /* renamed from: a */
            public final void mo26371a(View view) {
                CallAppPlusTopHint.m31405a(CallAppPlusTopHint.this);
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
                CallAppPlusTopHint.m31405a(CallAppPlusTopHint.this);
            }
        });
        ViewUtils.m27299b(textView3, 2131230874, ThemeUtils.getColor(2131099784), ThemeUtils.getColor(2131099784), 0);
        if (ThemeUtils.isThemeLight()) {
            ViewUtils.m27299b(relativeLayout, 2131230896, ThemeUtils.getColor(2131100144), ThemeUtils.getColor(2131099784), 3);
            textView.setTextColor(ThemeUtils.getColor(2131099784));
        } else {
            ViewUtils.m27299b(relativeLayout, 2131230896, ThemeUtils.getColor(2131100143), ThemeUtils.getColor(2131099784), 3);
            textView.setTextColor(ThemeUtils.getColor(2131100228));
        }
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.callappplus._$$Lambda$CallAppPlusTopHint$CyRpretdsoV4U1e2g2ASoidRJA0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CallAppPlusTopHint.this.m31406a(inflate, view);
            }
        });
        setOnClickAnimationEndAction(_$$Lambda$CallAppPlusTopHint$8MEMslAP0GI__y3Y4bQbam9uaFU.INSTANCE);
        AnalyticsManager.get().m28449a(Constants.PERMISSIONS, "ViewPermissionToNotificationHint", Constants.CALLAPP_PLUS);
    }

    /* renamed from: a */
    public static /* synthetic */ void m31407a() {
        Prefs.f26522fh.set(Boolean.FALSE);
    }

    /* renamed from: a */
    public /* synthetic */ void m31406a(View view, View view2) {
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, (float) BitmapDescriptorFactory.HUE_RED);
        alphaAnimation.setDuration(500L);
        alphaAnimation.setAnimationListener(new AnimationListenerAdapter() { // from class: com.callapp.contacts.activity.callappplus.CallAppPlusTopHint.3
            @Override // com.callapp.contacts.util.animation.AnimationListenerAdapter, android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                super.onAnimationEnd(animation);
                CallAppPlusTopHint.this.getRootView().setVisibility(8);
                if (CallAppPlusTopHint.this.f20556b != null) {
                    CallAppPlusTopHint.this.f20556b.run();
                }
            }
        });
        view.startAnimation(alphaAnimation);
    }

    /* renamed from: a */
    static /* synthetic */ void m31405a(CallAppPlusTopHint callAppPlusTopHint) {
        Activities.m27658b(callAppPlusTopHint.f20557c.get(), (PopupDoneListener) null);
        AnalyticsManager.get().m28449a(Constants.PERMISSIONS, "ClickPermissionToNotificationHint", Constants.CALLAPP_PLUS);
    }

    private void setOnClickAnimationEndAction(Runnable runnable) {
        this.f20556b = runnable;
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    /* renamed from: a */
    public /* synthetic */ View mo26540a(int i) {
        View findViewById;
        findViewById = getRootView().findViewById(i);
        return findViewById;
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

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    public /* synthetic */ Resources getResources() {
        Resources resources;
        resources = getRootView().getResources();
        return resources;
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    public View getRootView() {
        return this.f20555a;
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    public /* synthetic */ boolean isViewShown() {
        boolean isShown;
        isShown = getRootView().isShown();
        return isShown;
    }
}
