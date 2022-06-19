package com.callapp.contacts.activity.contact.details.presenter.bottombar;

import android.animation.ValueAnimator;
import android.view.View;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.activity.contact.details.presenter.BasePresenter;
import com.callapp.contacts.activity.contact.details.presenter.bottombar.BottomBarScrollListener;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.animation.CallappAnimationUtils;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/presenter/bottombar/BaseBottomBarPresenter.class */
public abstract class BaseBottomBarPresenter extends BasePresenter implements BottomBarScrollListener.Listener {

    /* renamed from: c */
    private ValueAnimator f22186c;

    /* renamed from: d */
    private View f22187d;

    /* renamed from: e */
    private List<CollapsingButtonViewController> f22188e;

    /* renamed from: f */
    private View f22189f;

    /* renamed from: g */
    private boolean f22190g;

    /* renamed from: b */
    protected final int f22185b = (int) Math.ceil(CallAppApplication.get().getResources().getDimension(2131165277));

    /* renamed from: a */
    private final int f22184a = (int) Math.ceil(CallAppApplication.get().getResources().getDimension(2131165276));

    /* renamed from: a */
    public /* synthetic */ void m30802a(int i, boolean z, ValueAnimator valueAnimator) {
        int i2;
        int i3;
        float animatedFraction = valueAnimator.getAnimatedFraction();
        float f = this.f22185b - this.f22184a;
        float f2 = (i - i3) / f;
        float f3 = z ? f2 + (((i2 - i) / f) * animatedFraction) : f2 - (((i - i3) / f) * animatedFraction);
        this.f22187d.getBackground().setAlpha((int) (((f3 * 0.2d) + 0.8d) * 255.0d));
        for (CollapsingButtonViewController collapsingButtonViewController : this.f22188e) {
            collapsingButtonViewController.setScale(f3);
        }
    }

    /* renamed from: a */
    public void mo30803a() {
        animateBottomActionBar(true, true);
    }

    /* renamed from: a */
    public final void m30801a(CollapsingButtonViewController collapsingButtonViewController) {
        this.f22188e.add(collapsingButtonViewController);
    }

    @Override // com.callapp.contacts.activity.contact.details.presenter.bottombar.BottomBarScrollListener.Listener
    public void animateBottomActionBar(boolean z, boolean z2) {
        if (this.f22190g) {
            return;
        }
        ValueAnimator valueAnimator = this.f22186c;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        final int height = this.f22187d.getHeight();
        int i = z ? this.f22185b : this.f22184a;
        if (height == i) {
            return;
        }
        final boolean z3 = i > height;
        ValueAnimator m27184a = CallappAnimationUtils.m27184a(this.f22187d, height, i, CallappAnimationUtils.f28093d, new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.activity.contact.details.presenter.bottombar._$$Lambda$BaseBottomBarPresenter$b3isoyWuAQXN9mehjxRg2lM6PxI
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                BaseBottomBarPresenter.this.m30802a(height, z3, valueAnimator2);
            }
        });
        this.f22186c = m27184a;
        if (!z2) {
            m27184a.setDuration(0L);
        }
        this.f22186c.start();
    }

    /* renamed from: b */
    public final void m30800b() {
        this.f22189f.setVisibility(8);
        this.f22190g = true;
    }

    /* renamed from: c */
    public final void m30799c() {
        this.f22189f.setVisibility(0);
        this.f22190g = false;
    }

    public List<CollapsingButtonViewController> getButtonViewControllers() {
        return this.f22188e;
    }

    @Override // com.callapp.contacts.activity.contact.details.presenter.BasePresenter
    public void onCreate(PresentersContainer presentersContainer) {
        View findViewById = presentersContainer.findViewById(2131362117);
        this.f22189f = findViewById;
        View findViewById2 = findViewById.findViewById(2131362116);
        this.f22187d = findViewById2;
        findViewById2.setBackgroundColor(ThemeUtils.m27386a(CallAppApplication.get(), 2131099878));
        ViewUtils.m27320a(this.f22189f.findViewById(2131363830), ThemeUtils.getDrawable(2131232196));
        this.f22188e = new ArrayList();
    }
}
