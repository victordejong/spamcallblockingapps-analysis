package com.callapp.contacts.activity.contact.details.presenter.bottombar;

import android.content.Context;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.details.presenter.bottombar.notification.BaseNotificationBadgeViewController;
import com.callapp.contacts.activity.contact.header.ThemeState;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.ImageUtils;
import com.callapp.contacts.util.ThemeUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/presenter/bottombar/CollapsingButtonViewController.class */
public class CollapsingButtonViewController {

    /* renamed from: a */
    private Runnable f22194a;

    /* renamed from: b */
    private final ImageView f22195b;

    /* renamed from: c */
    private final ImageView f22196c;

    /* renamed from: d */
    private final RelativeLayout f22197d;

    /* renamed from: e */
    private final View f22198e;

    /* renamed from: f */
    private final EventBusManager.CallAppDataType f22199f;

    /* renamed from: g */
    private final BaseNotificationBadgeViewController f22200g;

    public CollapsingButtonViewController(Context context, int i, String str, int i2, float f, Runnable runnable, BaseNotificationBadgeViewController baseNotificationBadgeViewController, EventBusManager.CallAppDataType callAppDataType) {
        View inflate = LayoutInflater.from(context).inflate(2131558799, (ViewGroup) null);
        this.f22198e = inflate;
        this.f22199f = callAppDataType;
        float dimension = inflate.getResources().getDimension(2131165278);
        float f2 = dimension / 2.0f;
        int i3 = (int) (f2 - ((f - dimension) / 2.0f));
        int i4 = (int) f2;
        this.f22194a = runnable;
        ImageView imageView = (ImageView) inflate.findViewById(2131362132);
        this.f22195b = imageView;
        ImageView imageView2 = (ImageView) inflate.findViewById(2131362134);
        this.f22196c = imageView2;
        RelativeLayout relativeLayout = (RelativeLayout) inflate.findViewById(2131362128);
        this.f22197d = relativeLayout;
        TextView textView = (TextView) inflate.findViewById(2131362135);
        textView.setText(str);
        if (ThemeUtils.isThemeLight()) {
            textView.setTextColor(ThemeUtils.getColor(2131099918));
        } else {
            textView.setTextColor(ThemeUtils.getColor(2131099921));
        }
        if (runnable != null) {
            inflate.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.details.presenter.bottombar._$$Lambda$CollapsingButtonViewController$_3E131VXHbW7CIAIIfutZF_yuu4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    CollapsingButtonViewController.this.m30797b(view);
                }
            });
        } else {
            inflate.setOnClickListener(View$OnClickListenerC6360x3d87a76b.INSTANCE);
        }
        imageView.setColorFilter(i2, PorterDuff.Mode.SRC_ATOP);
        ImageUtils.m27529a(imageView2, i, (ColorFilter) null);
        imageView2.setPivotX(i4);
        imageView2.setPivotY(i3);
        if (!((ThemeState) Prefs.f26417di.get()).isLightTheme()) {
            imageView2.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(2131099921), PorterDuff.Mode.SRC_ATOP));
        }
        this.f22200g = baseNotificationBadgeViewController;
        View rootView = baseNotificationBadgeViewController.getRootView();
        ImageView imageView3 = (ImageView) rootView.findViewById(2131362130);
        int dimensionPixelOffset = CallAppApplication.get().getResources().getDimensionPixelOffset(2131165554);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(dimensionPixelOffset, dimensionPixelOffset);
        layoutParams.addRule(6, 2131362128);
        layoutParams.addRule(11);
        layoutParams.addRule(21);
        layoutParams.setMargins(0, 0, (int) Activities.m27699a(12.0f), 0);
        rootView.setLayoutParams(layoutParams);
        relativeLayout.addView(rootView);
        imageView3.setColorFilter(ThemeUtils.getColor(2131100066));
        setScale(1.0f);
    }

    /* renamed from: a */
    public static /* synthetic */ void m30798a(View view) {
        AndroidUtils.m27630a(view, 1);
        FeedbackManager.get().m28670a("Stop that!", 80);
    }

    /* renamed from: b */
    public /* synthetic */ void m30797b(View view) {
        AndroidUtils.m27630a(view, 1);
        m30796c();
        this.f22194a.run();
        mo30795a();
    }

    /* renamed from: a */
    public void mo30795a() {
    }

    /* renamed from: b */
    public void mo30793b() {
        m30796c();
    }

    /* renamed from: c */
    public final void m30796c() {
        BaseNotificationBadgeViewController baseNotificationBadgeViewController = this.f22200g;
        if (baseNotificationBadgeViewController != null) {
            baseNotificationBadgeViewController.m30787a();
        }
    }

    /* renamed from: d */
    public void mo30791d() {
    }

    public EventBusManager.CallAppDataType getDataType() {
        return this.f22199f;
    }

    public View getRootView() {
        return this.f22198e;
    }

    public void setScale(float f) {
        this.f22196c.setScaleY(f);
        this.f22196c.setScaleX(f);
        BaseNotificationBadgeViewController baseNotificationBadgeViewController = this.f22200g;
        if (baseNotificationBadgeViewController != null) {
            baseNotificationBadgeViewController.getRootView().setAlpha(f);
        }
        this.f22195b.setAlpha(1.0f - f);
    }
}
