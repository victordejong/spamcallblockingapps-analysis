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

    /* renamed from: a  reason: collision with root package name */
    private Runnable f12372a;

    /* renamed from: b  reason: collision with root package name */
    private final ImageView f12373b;

    /* renamed from: c  reason: collision with root package name */
    private final ImageView f12374c;

    /* renamed from: d  reason: collision with root package name */
    private final RelativeLayout f12375d;
    private final View e;
    private final EventBusManager.CallAppDataType f;
    private final BaseNotificationBadgeViewController g;

    public CollapsingButtonViewController(Context context, int i, String str, int i2, float f, Runnable runnable, BaseNotificationBadgeViewController baseNotificationBadgeViewController, EventBusManager.CallAppDataType callAppDataType) {
        View inflate = LayoutInflater.from(context).inflate(2131558799, (ViewGroup) null);
        this.e = inflate;
        this.f = callAppDataType;
        float dimension = inflate.getResources().getDimension(2131165278);
        float f2 = dimension / 2.0f;
        int i3 = (int) (f2 - ((f - dimension) / 2.0f));
        int i4 = (int) f2;
        this.f12372a = runnable;
        ImageView imageView = (ImageView) inflate.findViewById(2131362132);
        this.f12373b = imageView;
        ImageView imageView2 = (ImageView) inflate.findViewById(2131362134);
        this.f12374c = imageView2;
        RelativeLayout relativeLayout = (RelativeLayout) inflate.findViewById(2131362128);
        this.f12375d = relativeLayout;
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
                    CollapsingButtonViewController.this.b(view);
                }
            });
        } else {
            inflate.setOnClickListener(_$$Lambda$CollapsingButtonViewController$mIR_UVYreVY7G4rzjF6CN3FTMf0.INSTANCE);
        }
        imageView.setColorFilter(i2, PorterDuff.Mode.SRC_ATOP);
        ImageUtils.a(imageView2, i, (ColorFilter) null);
        imageView2.setPivotX(i4);
        imageView2.setPivotY(i3);
        if (!((ThemeState) Prefs.di.get()).isLightTheme()) {
            imageView2.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(2131099921), PorterDuff.Mode.SRC_ATOP));
        }
        this.g = baseNotificationBadgeViewController;
        View rootView = baseNotificationBadgeViewController.getRootView();
        ImageView imageView3 = (ImageView) rootView.findViewById(2131362130);
        int dimensionPixelOffset = CallAppApplication.get().getResources().getDimensionPixelOffset(2131165554);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(dimensionPixelOffset, dimensionPixelOffset);
        layoutParams.addRule(6, 2131362128);
        layoutParams.addRule(11);
        layoutParams.addRule(21);
        layoutParams.setMargins(0, 0, (int) Activities.a(12.0f), 0);
        rootView.setLayoutParams(layoutParams);
        relativeLayout.addView(rootView);
        imageView3.setColorFilter(ThemeUtils.getColor(2131100066));
        setScale(1.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(View view) {
        AndroidUtils.a(view, 1);
        FeedbackManager.get().a("Stop that!", 80);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(View view) {
        AndroidUtils.a(view, 1);
        c();
        this.f12372a.run();
        a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a() {
    }

    public void b() {
        c();
    }

    public final void c() {
        BaseNotificationBadgeViewController baseNotificationBadgeViewController = this.g;
        if (baseNotificationBadgeViewController != null) {
            baseNotificationBadgeViewController.a();
        }
    }

    public void d() {
    }

    public EventBusManager.CallAppDataType getDataType() {
        return this.f;
    }

    public View getRootView() {
        return this.e;
    }

    public void setScale(float f) {
        this.f12374c.setScaleY(f);
        this.f12374c.setScaleX(f);
        BaseNotificationBadgeViewController baseNotificationBadgeViewController = this.g;
        if (baseNotificationBadgeViewController != null) {
            baseNotificationBadgeViewController.getRootView().setAlpha(f);
        }
        this.f12373b.setAlpha(1.0f - f);
    }
}
