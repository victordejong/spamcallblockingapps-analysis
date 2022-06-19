package com.callapp.contacts.activity.contact.header;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.lifecycle.AbstractC1253j;
import androidx.lifecycle.AbstractC1262o;
import androidx.lifecycle.AbstractC1269v;
import com.callapp.contacts.activity.marketplace.MarketPlaceActivity;
import com.callapp.contacts.activity.viewcontroller.ViewController;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.animation.CallappAnimationUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/header/ThemeChangeViewController.class */
public class ThemeChangeViewController implements AbstractC1262o, ViewController {

    /* renamed from: a */
    private View f22372a;

    /* renamed from: b */
    private final ImageView f22373b;

    /* renamed from: c */
    private final ImageView f22374c;

    /* renamed from: d */
    private final View f22375d;

    /* renamed from: e */
    private final View f22376e;

    /* renamed from: f */
    private final View f22377f;

    /* renamed from: g */
    private contactDetailsThemeChangeListener f22378g;

    /* renamed from: h */
    private ThemeState f22379h;

    /* renamed from: i */
    private ValueAnimator f22380i = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);

    /* renamed from: j */
    private Context f22381j;

    /* renamed from: k */
    private View f22382k;

    /* renamed from: l */
    private ImageView f22383l;

    /* renamed from: m */
    private View f22384m;

    /* renamed from: n */
    private TextView f22385n;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/header/ThemeChangeViewController$contactDetailsThemeChangeListener.class */
    public interface contactDetailsThemeChangeListener {
        void onContactDetailedThemeChanged(ThemeState themeState);
    }

    public ThemeChangeViewController(Context context, ViewGroup viewGroup, boolean z, contactDetailsThemeChangeListener contactdetailsthemechangelistener) {
        LayoutInflater.from(context).inflate(2131558564, viewGroup, true);
        this.f22372a = viewGroup;
        this.f22378g = contactdetailsthemechangelistener;
        this.f22381j = context;
        this.f22375d = viewGroup.findViewById(2131362426);
        this.f22373b = (ImageView) this.f22372a.findViewById(2131362425);
        this.f22374c = (ImageView) this.f22372a.findViewById(2131362450);
        this.f22376e = this.f22372a.findViewById(2131362428);
        this.f22377f = this.f22372a.findViewById(2131362434);
        this.f22382k = this.f22372a.findViewById(2131362431);
        ImageView imageView = (ImageView) this.f22372a.findViewById(2131364116);
        this.f22383l = imageView;
        imageView.getDrawable().setColorFilter(ThemeUtils.getColor(2131100228), PorterDuff.Mode.SRC_IN);
        this.f22384m = this.f22372a.findViewById(2131362430);
        TextView textView = (TextView) this.f22372a.findViewById(2131362433);
        this.f22385n = textView;
        textView.setText(Activities.getString(2131886935));
        this.f22384m.setVisibility(8);
        this.f22385n.setVisibility(8);
        this.f22383l.setVisibility(8);
        if (z) {
            setThirdButtonVisibility(false);
        }
        this.f22380i.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.activity.contact.header.ThemeChangeViewController.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                ThemeChangeViewController.this.f22382k.getLayoutParams().width = CallappAnimationUtils.m27192a(ThemeChangeViewController.this.getResources().getDimensionPixelOffset(2131165551), ThemeChangeViewController.this.getResources().getDimensionPixelOffset(2131165561), valueAnimator.getAnimatedFraction());
                ThemeChangeViewController.this.f22382k.requestLayout();
                ThemeChangeViewController.this.f22383l.getLayoutParams().width = CallappAnimationUtils.m27192a(ThemeChangeViewController.this.getResources().getDimensionPixelOffset(2131165551), ThemeChangeViewController.this.getResources().getDimensionPixelOffset(2131165561), valueAnimator.getAnimatedFraction());
                ThemeChangeViewController.this.f22383l.requestLayout();
            }
        });
        this.f22380i.setDuration(300L);
        this.f22380i.addListener(new DefaultInterfaceImplUtils.AnimatorListenerImpl() { // from class: com.callapp.contacts.activity.contact.header.ThemeChangeViewController.2
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.AnimatorListenerImpl, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                ThemeChangeViewController.this.f22383l.setVisibility(8);
                ThemeChangeViewController.this.f22384m.setVisibility(8);
                ThemeChangeViewController.this.f22385n.setVisibility(8);
            }
        });
        ThemeState themeState = (ThemeState) Prefs.f26417di.get();
        this.f22379h = themeState;
        setCirclesColor(themeState);
    }

    /* renamed from: a */
    public /* synthetic */ void m30705a(ValueAnimator valueAnimator) {
        this.f22382k.getLayoutParams().width = CallappAnimationUtils.m27192a(getResources().getDimensionPixelOffset(2131165561), getResources().getDimensionPixelOffset(2131165551), valueAnimator.getAnimatedFraction());
        this.f22382k.requestLayout();
        this.f22383l.getLayoutParams().width = CallappAnimationUtils.m27192a(getResources().getDimensionPixelOffset(2131165561), getResources().getDimensionPixelOffset(2131165551), valueAnimator.getAnimatedFraction());
        this.f22383l.requestLayout();
    }

    private void setCirclesColor(ThemeState themeState) {
        this.f22373b.setColorFilter(ThemeUtils.getColor(themeState.getLeftThemeChangedEvent().getButtonColor()), PorterDuff.Mode.SRC_IN);
        this.f22374c.setColorFilter(ThemeUtils.getColor(themeState.getRightThemeChangedEvent().getButtonColor()), PorterDuff.Mode.SRC_IN);
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    /* renamed from: a */
    public /* synthetic */ View mo26540a(int i) {
        View findViewById;
        findViewById = getRootView().findViewById(i);
        return findViewById;
    }

    /* renamed from: a */
    public final void m30706a() {
        if (this.f22384m.getVisibility() == 0) {
            AnalyticsManager.get().m28450a(Constants.CONTACT_DETAILS, "ClickOrangeStoreOpenButton");
            Activities.m27656b(this.f22381j, new Intent(this.f22381j, MarketPlaceActivity.class));
            if (this.f22380i.isStarted() || this.f22380i.isRunning()) {
                return;
            }
            this.f22380i.setStartDelay(0L);
            this.f22380i.start();
            return;
        }
        AnalyticsManager.get().m28450a(Constants.CONTACT_DETAILS, "ClickOrangeStoreButton");
        this.f22384m.setVisibility(0);
        this.f22385n.setVisibility(0);
        this.f22383l.setVisibility(0);
        ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.activity.contact.header._$$Lambda$ThemeChangeViewController$UbCvKfYj1rS2Cw7Ru_vMV_RBY80
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                ThemeChangeViewController.this.m30705a(valueAnimator);
            }
        });
        ofFloat.setInterpolator(new LinearInterpolator());
        ofFloat.setDuration(300L);
        ofFloat.addListener(new DefaultInterfaceImplUtils.AnimatorListenerImpl() { // from class: com.callapp.contacts.activity.contact.header.ThemeChangeViewController.3
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.AnimatorListenerImpl, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                if (ThemeChangeViewController.this.f22380i.isStarted() || ThemeChangeViewController.this.f22380i.isRunning()) {
                    return;
                }
                ThemeChangeViewController.this.f22380i.setStartDelay(3000L);
                ThemeChangeViewController.this.f22380i.start();
            }
        });
        ofFloat.start();
    }

    /* renamed from: a */
    public final void m30703a(ThemeState themeState) {
        if (this.f22379h != themeState) {
            this.f22379h = themeState;
            contactDetailsThemeChangeListener contactdetailsthemechangelistener = this.f22378g;
            if (contactdetailsthemechangelistener != null) {
                contactdetailsthemechangelistener.onContactDetailedThemeChanged(themeState);
            }
            setCirclesColor(themeState);
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

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    public /* synthetic */ Resources getResources() {
        Resources resources;
        resources = getRootView().getResources();
        return resources;
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    public View getRootView() {
        return this.f22372a;
    }

    public boolean isThemeDark() {
        return this.f22379h == ThemeState.DARK || this.f22379h == ThemeState.PRIMARYDARK;
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    public /* synthetic */ boolean isViewShown() {
        boolean isShown;
        isShown = getRootView().isShown();
        return isShown;
    }

    @AbstractC1269v(m43285a = AbstractC1253j.EnumC1255a.ON_DESTROY)
    public void release() {
        this.f22378g = null;
        ValueAnimator valueAnimator = this.f22380i;
        if (valueAnimator != null) {
            valueAnimator.removeAllUpdateListeners();
            this.f22380i.cancel();
        }
    }

    public void setAlpha(float f) {
        this.f22372a.setAlpha(f);
        double d = f;
        if (d < 0.9d && this.f22375d.isClickable()) {
            this.f22375d.setClickable(false);
            this.f22376e.setClickable(false);
            this.f22377f.setClickable(false);
        } else if (d < 0.9d || this.f22375d.isClickable()) {
        } else {
            this.f22375d.setClickable(true);
            this.f22376e.setClickable(true);
            this.f22377f.setClickable(true);
        }
    }

    public void setThirdButtonVisibility(boolean z) {
        ViewUtils.m27314a(this.f22376e, z);
    }

    public void setTranslationY(float f) {
        this.f22372a.setTranslationY(f);
    }
}
