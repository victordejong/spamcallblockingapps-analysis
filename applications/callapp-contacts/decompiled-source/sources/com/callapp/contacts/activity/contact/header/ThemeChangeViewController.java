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
import androidx.lifecycle.j;
import androidx.lifecycle.o;
import androidx.lifecycle.v;
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
public class ThemeChangeViewController implements o, ViewController {

    /* renamed from: a  reason: collision with root package name */
    private View f12492a;

    /* renamed from: b  reason: collision with root package name */
    private final ImageView f12493b;

    /* renamed from: c  reason: collision with root package name */
    private final ImageView f12494c;

    /* renamed from: d  reason: collision with root package name */
    private final View f12495d;
    private final View e;
    private final View f;
    private contactDetailsThemeChangeListener g;
    private ThemeState h;
    private ValueAnimator i = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
    private Context j;
    private View k;
    private ImageView l;
    private View m;
    private TextView n;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/header/ThemeChangeViewController$contactDetailsThemeChangeListener.class */
    public interface contactDetailsThemeChangeListener {
        void onContactDetailedThemeChanged(ThemeState themeState);
    }

    public ThemeChangeViewController(Context context, ViewGroup viewGroup, boolean z, contactDetailsThemeChangeListener contactdetailsthemechangelistener) {
        LayoutInflater.from(context).inflate(2131558564, viewGroup, true);
        this.f12492a = viewGroup;
        this.g = contactdetailsthemechangelistener;
        this.j = context;
        this.f12495d = viewGroup.findViewById(2131362426);
        this.f12493b = (ImageView) this.f12492a.findViewById(2131362425);
        this.f12494c = (ImageView) this.f12492a.findViewById(2131362450);
        this.e = this.f12492a.findViewById(2131362428);
        this.f = this.f12492a.findViewById(2131362434);
        this.k = this.f12492a.findViewById(2131362431);
        ImageView imageView = (ImageView) this.f12492a.findViewById(2131364116);
        this.l = imageView;
        imageView.getDrawable().setColorFilter(ThemeUtils.getColor(2131100228), PorterDuff.Mode.SRC_IN);
        this.m = this.f12492a.findViewById(2131362430);
        TextView textView = (TextView) this.f12492a.findViewById(2131362433);
        this.n = textView;
        textView.setText(Activities.getString(2131886935));
        this.m.setVisibility(8);
        this.n.setVisibility(8);
        this.l.setVisibility(8);
        if (z) {
            setThirdButtonVisibility(false);
        }
        this.i.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.activity.contact.header.ThemeChangeViewController.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                ThemeChangeViewController.this.k.getLayoutParams().width = CallappAnimationUtils.a(ThemeChangeViewController.this.getResources().getDimensionPixelOffset(2131165551), ThemeChangeViewController.this.getResources().getDimensionPixelOffset(2131165561), valueAnimator.getAnimatedFraction());
                ThemeChangeViewController.this.k.requestLayout();
                ThemeChangeViewController.this.l.getLayoutParams().width = CallappAnimationUtils.a(ThemeChangeViewController.this.getResources().getDimensionPixelOffset(2131165551), ThemeChangeViewController.this.getResources().getDimensionPixelOffset(2131165561), valueAnimator.getAnimatedFraction());
                ThemeChangeViewController.this.l.requestLayout();
            }
        });
        this.i.setDuration(300L);
        this.i.addListener(new DefaultInterfaceImplUtils.AnimatorListenerImpl() { // from class: com.callapp.contacts.activity.contact.header.ThemeChangeViewController.2
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.AnimatorListenerImpl, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                ThemeChangeViewController.this.l.setVisibility(8);
                ThemeChangeViewController.this.m.setVisibility(8);
                ThemeChangeViewController.this.n.setVisibility(8);
            }
        });
        ThemeState themeState = (ThemeState) Prefs.di.get();
        this.h = themeState;
        setCirclesColor(themeState);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(ValueAnimator valueAnimator) {
        this.k.getLayoutParams().width = CallappAnimationUtils.a(getResources().getDimensionPixelOffset(2131165561), getResources().getDimensionPixelOffset(2131165551), valueAnimator.getAnimatedFraction());
        this.k.requestLayout();
        this.l.getLayoutParams().width = CallappAnimationUtils.a(getResources().getDimensionPixelOffset(2131165561), getResources().getDimensionPixelOffset(2131165551), valueAnimator.getAnimatedFraction());
        this.l.requestLayout();
    }

    private void setCirclesColor(ThemeState themeState) {
        this.f12493b.setColorFilter(ThemeUtils.getColor(themeState.getLeftThemeChangedEvent().getButtonColor()), PorterDuff.Mode.SRC_IN);
        this.f12494c.setColorFilter(ThemeUtils.getColor(themeState.getRightThemeChangedEvent().getButtonColor()), PorterDuff.Mode.SRC_IN);
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    public /* synthetic */ View a(int i) {
        View findViewById;
        findViewById = getRootView().findViewById(i);
        return findViewById;
    }

    public final void a() {
        if (this.m.getVisibility() == 0) {
            AnalyticsManager.get().a(Constants.CONTACT_DETAILS, "ClickOrangeStoreOpenButton");
            Activities.b(this.j, new Intent(this.j, MarketPlaceActivity.class));
            if (!this.i.isStarted() && !this.i.isRunning()) {
                this.i.setStartDelay(0L);
                this.i.start();
                return;
            }
            return;
        }
        AnalyticsManager.get().a(Constants.CONTACT_DETAILS, "ClickOrangeStoreButton");
        this.m.setVisibility(0);
        this.n.setVisibility(0);
        this.l.setVisibility(0);
        ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.activity.contact.header._$$Lambda$ThemeChangeViewController$UbCvKfYj1rS2Cw7Ru_vMV_RBY80
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                ThemeChangeViewController.this.a(valueAnimator);
            }
        });
        ofFloat.setInterpolator(new LinearInterpolator());
        ofFloat.setDuration(300L);
        ofFloat.addListener(new DefaultInterfaceImplUtils.AnimatorListenerImpl() { // from class: com.callapp.contacts.activity.contact.header.ThemeChangeViewController.3
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.AnimatorListenerImpl, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                if (!ThemeChangeViewController.this.i.isStarted() && !ThemeChangeViewController.this.i.isRunning()) {
                    ThemeChangeViewController.this.i.setStartDelay(3000L);
                    ThemeChangeViewController.this.i.start();
                }
            }
        });
        ofFloat.start();
    }

    public final void a(ThemeState themeState) {
        if (this.h != themeState) {
            this.h = themeState;
            contactDetailsThemeChangeListener contactdetailsthemechangelistener = this.g;
            if (contactdetailsthemechangelistener != null) {
                contactdetailsthemechangelistener.onContactDetailedThemeChanged(themeState);
            }
            setCirclesColor(themeState);
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

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    public /* synthetic */ Resources getResources() {
        Resources resources;
        resources = getRootView().getResources();
        return resources;
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    public View getRootView() {
        return this.f12492a;
    }

    public boolean isThemeDark() {
        return this.h == ThemeState.DARK || this.h == ThemeState.PRIMARYDARK;
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    public /* synthetic */ boolean isViewShown() {
        boolean isShown;
        isShown = getRootView().isShown();
        return isShown;
    }

    @v(a = j.a.ON_DESTROY)
    public void release() {
        this.g = null;
        ValueAnimator valueAnimator = this.i;
        if (valueAnimator != null) {
            valueAnimator.removeAllUpdateListeners();
            this.i.cancel();
        }
    }

    public void setAlpha(float f) {
        this.f12492a.setAlpha(f);
        double d2 = f;
        if (d2 < 0.9d && this.f12495d.isClickable()) {
            this.f12495d.setClickable(false);
            this.e.setClickable(false);
            this.f.setClickable(false);
        } else if (d2 >= 0.9d && !this.f12495d.isClickable()) {
            this.f12495d.setClickable(true);
            this.e.setClickable(true);
            this.f.setClickable(true);
        }
    }

    public void setThirdButtonVisibility(boolean z) {
        ViewUtils.a(this.e, z);
    }

    public void setTranslationY(float f) {
        this.f12492a.setTranslationY(f);
    }
}
