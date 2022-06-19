package com.callapp.contacts.widget.floatingwidget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import android.widget.TextView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.viewcontroller.ViewController;
import com.callapp.contacts.inCallService.AudioModeProvider;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.ImageUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController.class */
public class FloatingMenuActionViewController implements ViewController, AudioModeProvider.AudioModeListener {

    /* renamed from: a */
    public boolean f29034a;

    /* renamed from: b */
    public ViewGroup f29035b;

    /* renamed from: c */
    public WindowManager f29036c;

    /* renamed from: d */
    private LayoutInflater f29037d;

    /* renamed from: e */
    private ViewGroup f29038e = (ViewGroup) mo26540a(2131363707);

    /* renamed from: f */
    private final WindowManager.LayoutParams f29039f;

    public FloatingMenuActionViewController(LayoutInflater layoutInflater, WindowManager windowManager) {
        this.f29037d = layoutInflater;
        this.f29036c = windowManager;
        this.f29035b = (ViewGroup) layoutInflater.inflate(2131558816, (ViewGroup) null, false);
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-2, -2, Build.VERSION.SDK_INT >= 26 ? 2038 : 2002, 262152, -3);
        this.f29039f = layoutParams;
        layoutParams.gravity = 8388659;
        layoutParams.x = 100;
        layoutParams.y = 100;
        m26530e();
        windowManager.addView(this.f29035b, layoutParams);
        this.f29034a = true;
        this.f29035b.setPivotY(BitmapDescriptorFactory.HUE_RED);
    }

    /* renamed from: a */
    public /* synthetic */ void m26538a(ValueAnimator valueAnimator) {
        float animatedFraction = 1.0f - valueAnimator.getAnimatedFraction();
        this.f29035b.setScaleX(animatedFraction);
        this.f29035b.setScaleY(animatedFraction);
    }

    /* renamed from: a */
    public static /* synthetic */ void m26536a(FloatingMenuAction floatingMenuAction, View view) {
        AndroidUtils.m27630a(view, 1);
        floatingMenuAction.getAction().onClick(view);
    }

    /* renamed from: b */
    public /* synthetic */ void m26533b(ValueAnimator valueAnimator) {
        float animatedFraction = valueAnimator.getAnimatedFraction();
        this.f29035b.setScaleX(animatedFraction);
        this.f29035b.setScaleY(animatedFraction);
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    /* renamed from: a */
    public /* synthetic */ View mo26540a(int i) {
        View findViewById;
        findViewById = getRootView().findViewById(i);
        return findViewById;
    }

    /* renamed from: a */
    public final void m26541a() {
        this.f29035b.setPivotX(BitmapDescriptorFactory.HUE_RED);
        this.f29038e.setBackgroundResource(2131232198);
        mo26534b();
    }

    /* renamed from: a */
    public final void m26539a(int i, int i2) {
        this.f29039f.x = i;
        this.f29039f.y = i2;
        if (this.f29034a) {
            this.f29036c.updateViewLayout(this.f29035b, this.f29039f);
        }
    }

    /* renamed from: a */
    public final void m26537a(final FloatingMenuAction floatingMenuAction) {
        int i = 0;
        View inflate = this.f29037d.inflate(floatingMenuAction.getLayoutRes(), this.f29038e, false);
        inflate.setId(floatingMenuAction.getId());
        if (!floatingMenuAction.isVisibility()) {
            i = 8;
        }
        inflate.setVisibility(i);
        int color = getContext().getResources().getColor(floatingMenuAction.isEnabled() ? floatingMenuAction.getActionColorEnabled() : floatingMenuAction.getActionColorDisabled());
        TextView textView = (TextView) inflate.findViewById(2131364466);
        textView.setTextColor(color);
        textView.setText(floatingMenuAction.getActionText());
        ImageUtils.m27529a((ImageView) inflate.findViewById(2131363047), floatingMenuAction.getActionIcon(), new PorterDuffColorFilter(color, PorterDuff.Mode.SRC_IN));
        inflate.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.widget.floatingwidget._$$Lambda$FloatingMenuActionViewController$J8bAr0qzMtK1iQ9pRmhO6MvLDYw
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FloatingMenuActionViewController.m26536a(FloatingMenuAction.this, view);
            }
        });
        this.f29038e.addView(inflate);
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    /* renamed from: b */
    public final void mo26534b() {
        this.f29035b.setVisibility(0);
        ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        ofFloat.setInterpolator(new LinearInterpolator());
        ofFloat.setDuration(150L);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.widget.floatingwidget._$$Lambda$FloatingMenuActionViewController$6kSX2OuXwPBgkgmmuJZtCWGy7ec
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                FloatingMenuActionViewController.this.m26533b(valueAnimator);
            }
        });
        ofFloat.start();
    }

    /* renamed from: c */
    public final void m26532c() {
        this.f29035b.setPivotX(getResources().getDimensionPixelOffset(2131165774));
        this.f29038e.setBackgroundResource(2131232199);
        mo26534b();
    }

    /* renamed from: d */
    public final void m26531d() {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        ofFloat.setInterpolator(new LinearInterpolator());
        ofFloat.setDuration(150L);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.widget.floatingwidget._$$Lambda$FloatingMenuActionViewController$aUy5JpNBhXGJSXJKvm8Ef5m2IGg
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                FloatingMenuActionViewController.this.m26538a(valueAnimator);
            }
        });
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.callapp.contacts.widget.floatingwidget.FloatingMenuActionViewController.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                FloatingMenuActionViewController.this.m26530e();
            }
        });
        ofFloat.start();
    }

    /* renamed from: e */
    public final void m26530e() {
        this.f29035b.setVisibility(8);
        this.f29035b.setScaleX(BitmapDescriptorFactory.HUE_RED);
        this.f29035b.setScaleY(BitmapDescriptorFactory.HUE_RED);
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    public /* synthetic */ Context getContext() {
        Context context;
        context = getRootView().getContext();
        return context;
    }

    public int getMenuHeight() {
        return this.f29035b.getHeight();
    }

    public int getMenuWidth() {
        return getResources().getDimensionPixelOffset(2131165774);
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    public /* synthetic */ Resources getResources() {
        Resources resources;
        resources = getRootView().getResources();
        return resources;
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    public View getRootView() {
        return this.f29035b;
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    public /* synthetic */ boolean isViewShown() {
        boolean isShown;
        isShown = getRootView().isShown();
        return isShown;
    }

    @Override // com.callapp.contacts.inCallService.AudioModeProvider.AudioModeListener
    public void onAudioMode(final int i) {
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.widget.floatingwidget.FloatingMenuActionViewController.2
            @Override // java.lang.Runnable
            public void run() {
                View findViewById = FloatingMenuActionViewController.this.f29038e.findViewById(2131362844);
                ImageView imageView = (ImageView) findViewById.findViewById(2131363047);
                TextView textView = (TextView) findViewById.findViewById(2131364466);
                int i2 = i;
                if (i2 != 1) {
                    if (i2 == 2) {
                        ImageUtils.m27529a(imageView, 2131231478, new PorterDuffColorFilter(FloatingMenuActionViewController.this.getContext().getResources().getColor(2131099784), PorterDuff.Mode.SRC_IN));
                        textView.setTextColor(FloatingMenuActionViewController.this.getContext().getResources().getColor(2131099784));
                        textView.setText(Activities.getString(2131886360));
                        return;
                    } else if (i2 != 4) {
                        if (i2 != 8) {
                            return;
                        }
                        ImageUtils.m27529a(imageView, 2131231905, new PorterDuffColorFilter(FloatingMenuActionViewController.this.getContext().getResources().getColor(2131099784), PorterDuff.Mode.SRC_IN));
                        textView.setTextColor(FloatingMenuActionViewController.this.getContext().getResources().getColor(2131099784));
                        textView.setText(Activities.getString(2131887743));
                        return;
                    }
                }
                ImageUtils.m27529a(imageView, 2131231904, new PorterDuffColorFilter(FloatingMenuActionViewController.this.getContext().getResources().getColor(2131099918), PorterDuff.Mode.SRC_IN));
                textView.setTextColor(FloatingMenuActionViewController.this.getContext().getResources().getColor(2131099918));
                textView.setText(Activities.getString(2131887743));
            }
        });
    }

    @Override // com.callapp.contacts.inCallService.AudioModeProvider.AudioModeListener
    public void onMute(final boolean z) {
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.widget.floatingwidget.FloatingMenuActionViewController.3
            @Override // java.lang.Runnable
            public void run() {
                View findViewById = FloatingMenuActionViewController.this.f29038e.findViewById(2131362848);
                ImageView imageView = (ImageView) findViewById.findViewById(2131363047);
                TextView textView = (TextView) findViewById.findViewById(2131364466);
                imageView.setColorFilter(FloatingMenuActionViewController.this.getContext().getResources().getColor(z ? 2131099784 : 2131099918));
                textView.setTextColor(FloatingMenuActionViewController.this.getContext().getResources().getColor(z ? 2131099784 : 2131099918));
            }
        });
    }
}
