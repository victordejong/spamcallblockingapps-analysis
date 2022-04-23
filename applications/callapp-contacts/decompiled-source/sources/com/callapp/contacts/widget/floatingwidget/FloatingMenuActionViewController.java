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
import com.facebook.ads.AdError;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController.class */
public class FloatingMenuActionViewController implements ViewController, AudioModeProvider.AudioModeListener {

    /* renamed from: a  reason: collision with root package name */
    public boolean f16685a;

    /* renamed from: b  reason: collision with root package name */
    public ViewGroup f16686b;

    /* renamed from: c  reason: collision with root package name */
    public WindowManager f16687c;

    /* renamed from: d  reason: collision with root package name */
    private LayoutInflater f16688d;
    private ViewGroup e = (ViewGroup) a(2131363707);
    private final WindowManager.LayoutParams f;

    public FloatingMenuActionViewController(LayoutInflater layoutInflater, WindowManager windowManager) {
        this.f16688d = layoutInflater;
        this.f16687c = windowManager;
        this.f16686b = (ViewGroup) layoutInflater.inflate(2131558816, (ViewGroup) null, false);
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-2, -2, Build.VERSION.SDK_INT >= 26 ? 2038 : AdError.CACHE_ERROR_CODE, 262152, -3);
        this.f = layoutParams;
        layoutParams.gravity = 8388659;
        layoutParams.x = 100;
        layoutParams.y = 100;
        e();
        windowManager.addView(this.f16686b, layoutParams);
        this.f16685a = true;
        this.f16686b.setPivotY(BitmapDescriptorFactory.HUE_RED);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(ValueAnimator valueAnimator) {
        float animatedFraction = 1.0f - valueAnimator.getAnimatedFraction();
        this.f16686b.setScaleX(animatedFraction);
        this.f16686b.setScaleY(animatedFraction);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(FloatingMenuAction floatingMenuAction, View view) {
        AndroidUtils.a(view, 1);
        floatingMenuAction.getAction().onClick(view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(ValueAnimator valueAnimator) {
        float animatedFraction = valueAnimator.getAnimatedFraction();
        this.f16686b.setScaleX(animatedFraction);
        this.f16686b.setScaleY(animatedFraction);
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    public /* synthetic */ View a(int i) {
        View findViewById;
        findViewById = getRootView().findViewById(i);
        return findViewById;
    }

    public final void a() {
        this.f16686b.setPivotX(BitmapDescriptorFactory.HUE_RED);
        this.e.setBackgroundResource(2131232198);
        b();
    }

    public final void a(int i, int i2) {
        this.f.x = i;
        this.f.y = i2;
        if (this.f16685a) {
            this.f16687c.updateViewLayout(this.f16686b, this.f);
        }
    }

    public final void a(final FloatingMenuAction floatingMenuAction) {
        int i = 0;
        View inflate = this.f16688d.inflate(floatingMenuAction.getLayoutRes(), this.e, false);
        inflate.setId(floatingMenuAction.getId());
        if (!floatingMenuAction.isVisibility()) {
            i = 8;
        }
        inflate.setVisibility(i);
        int color = getContext().getResources().getColor(floatingMenuAction.isEnabled() ? floatingMenuAction.getActionColorEnabled() : floatingMenuAction.getActionColorDisabled());
        TextView textView = (TextView) inflate.findViewById(2131364466);
        textView.setTextColor(color);
        textView.setText(floatingMenuAction.getActionText());
        ImageUtils.a((ImageView) inflate.findViewById(2131363047), floatingMenuAction.getActionIcon(), new PorterDuffColorFilter(color, PorterDuff.Mode.SRC_IN));
        inflate.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.widget.floatingwidget._$$Lambda$FloatingMenuActionViewController$J8bAr0qzMtK1iQ9pRmhO6MvLDYw
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FloatingMenuActionViewController.a(FloatingMenuAction.this, view);
            }
        });
        this.e.addView(inflate);
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    public final void b() {
        this.f16686b.setVisibility(0);
        ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        ofFloat.setInterpolator(new LinearInterpolator());
        ofFloat.setDuration(150L);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.widget.floatingwidget._$$Lambda$FloatingMenuActionViewController$6kSX2OuXwPBgkgmmuJZtCWGy7ec
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                FloatingMenuActionViewController.this.b(valueAnimator);
            }
        });
        ofFloat.start();
    }

    public final void c() {
        this.f16686b.setPivotX(getResources().getDimensionPixelOffset(2131165774));
        this.e.setBackgroundResource(2131232199);
        b();
    }

    public final void d() {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        ofFloat.setInterpolator(new LinearInterpolator());
        ofFloat.setDuration(150L);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.widget.floatingwidget._$$Lambda$FloatingMenuActionViewController$aUy5JpNBhXGJSXJKvm8Ef5m2IGg
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                FloatingMenuActionViewController.this.a(valueAnimator);
            }
        });
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.callapp.contacts.widget.floatingwidget.FloatingMenuActionViewController.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                FloatingMenuActionViewController.this.e();
            }
        });
        ofFloat.start();
    }

    public final void e() {
        this.f16686b.setVisibility(8);
        this.f16686b.setScaleX(BitmapDescriptorFactory.HUE_RED);
        this.f16686b.setScaleY(BitmapDescriptorFactory.HUE_RED);
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    public /* synthetic */ Context getContext() {
        Context context;
        context = getRootView().getContext();
        return context;
    }

    public int getMenuHeight() {
        return this.f16686b.getHeight();
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
        return this.f16686b;
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    public /* synthetic */ boolean isViewShown() {
        boolean isShown;
        isShown = getRootView().isShown();
        return isShown;
    }

    @Override // com.callapp.contacts.inCallService.AudioModeProvider.AudioModeListener
    public void onAudioMode(final int i) {
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.widget.floatingwidget.FloatingMenuActionViewController.2
            @Override // java.lang.Runnable
            public void run() {
                View findViewById = FloatingMenuActionViewController.this.e.findViewById(2131362844);
                ImageView imageView = (ImageView) findViewById.findViewById(2131363047);
                TextView textView = (TextView) findViewById.findViewById(2131364466);
                int i2 = i;
                if (i2 != 1) {
                    if (i2 == 2) {
                        ImageUtils.a(imageView, 2131231478, new PorterDuffColorFilter(FloatingMenuActionViewController.this.getContext().getResources().getColor(2131099784), PorterDuff.Mode.SRC_IN));
                        textView.setTextColor(FloatingMenuActionViewController.this.getContext().getResources().getColor(2131099784));
                        textView.setText(Activities.getString(2131886360));
                        return;
                    } else if (i2 != 4) {
                        if (i2 == 8) {
                            ImageUtils.a(imageView, 2131231905, new PorterDuffColorFilter(FloatingMenuActionViewController.this.getContext().getResources().getColor(2131099784), PorterDuff.Mode.SRC_IN));
                            textView.setTextColor(FloatingMenuActionViewController.this.getContext().getResources().getColor(2131099784));
                            textView.setText(Activities.getString(2131887743));
                            return;
                        }
                        return;
                    }
                }
                ImageUtils.a(imageView, 2131231904, new PorterDuffColorFilter(FloatingMenuActionViewController.this.getContext().getResources().getColor(2131099918), PorterDuff.Mode.SRC_IN));
                textView.setTextColor(FloatingMenuActionViewController.this.getContext().getResources().getColor(2131099918));
                textView.setText(Activities.getString(2131887743));
            }
        });
    }

    @Override // com.callapp.contacts.inCallService.AudioModeProvider.AudioModeListener
    public void onMute(final boolean z) {
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.widget.floatingwidget.FloatingMenuActionViewController.3
            @Override // java.lang.Runnable
            public void run() {
                View findViewById = FloatingMenuActionViewController.this.e.findViewById(2131362848);
                ImageView imageView = (ImageView) findViewById.findViewById(2131363047);
                TextView textView = (TextView) findViewById.findViewById(2131364466);
                int i = 2131099784;
                imageView.setColorFilter(FloatingMenuActionViewController.this.getContext().getResources().getColor(z ? 2131099784 : 2131099918));
                Resources resources = FloatingMenuActionViewController.this.getContext().getResources();
                if (!z) {
                    i = 2131099918;
                }
                textView.setTextColor(resources.getColor(i));
            }
        });
    }
}
