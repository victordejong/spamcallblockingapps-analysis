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

    /* renamed from: c  reason: collision with root package name */
    private ValueAnimator f12367c;

    /* renamed from: d  reason: collision with root package name */
    private View f12368d;
    private List<CollapsingButtonViewController> e;
    private View f;
    private boolean g;

    /* renamed from: b  reason: collision with root package name */
    protected final int f12366b = (int) Math.ceil(CallAppApplication.get().getResources().getDimension(2131165277));

    /* renamed from: a  reason: collision with root package name */
    private final int f12365a = (int) Math.ceil(CallAppApplication.get().getResources().getDimension(2131165276));

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i, boolean z, ValueAnimator valueAnimator) {
        int i2;
        int i3;
        float animatedFraction = valueAnimator.getAnimatedFraction();
        float f = this.f12366b - this.f12365a;
        float f2 = (i - i3) / f;
        float f3 = z ? f2 + (((i2 - i) / f) * animatedFraction) : f2 - (((i - i3) / f) * animatedFraction);
        this.f12368d.getBackground().setAlpha((int) (((f3 * 0.2d) + 0.8d) * 255.0d));
        for (CollapsingButtonViewController collapsingButtonViewController : this.e) {
            collapsingButtonViewController.setScale(f3);
        }
    }

    public void a() {
        animateBottomActionBar(true, true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(CollapsingButtonViewController collapsingButtonViewController) {
        this.e.add(collapsingButtonViewController);
    }

    @Override // com.callapp.contacts.activity.contact.details.presenter.bottombar.BottomBarScrollListener.Listener
    public void animateBottomActionBar(boolean z, boolean z2) {
        if (!this.g) {
            ValueAnimator valueAnimator = this.f12367c;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            final int height = this.f12368d.getHeight();
            int i = z ? this.f12366b : this.f12365a;
            if (height != i) {
                final boolean z3 = i > height;
                ValueAnimator a2 = CallappAnimationUtils.a(this.f12368d, height, i, CallappAnimationUtils.f16119d, new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.activity.contact.details.presenter.bottombar._$$Lambda$BaseBottomBarPresenter$b3isoyWuAQXN9mehjxRg2lM6PxI
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        BaseBottomBarPresenter.this.a(height, z3, valueAnimator2);
                    }
                });
                this.f12367c = a2;
                if (!z2) {
                    a2.setDuration(0L);
                }
                this.f12367c.start();
            }
        }
    }

    public final void b() {
        this.f.setVisibility(8);
        this.g = true;
    }

    public final void c() {
        this.f.setVisibility(0);
        this.g = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public List<CollapsingButtonViewController> getButtonViewControllers() {
        return this.e;
    }

    @Override // com.callapp.contacts.activity.contact.details.presenter.BasePresenter
    public void onCreate(PresentersContainer presentersContainer) {
        View findViewById = presentersContainer.findViewById(2131362117);
        this.f = findViewById;
        View findViewById2 = findViewById.findViewById(2131362116);
        this.f12368d = findViewById2;
        findViewById2.setBackgroundColor(ThemeUtils.a(CallAppApplication.get(), 2131099878));
        ViewUtils.a(this.f.findViewById(2131363830), ThemeUtils.getDrawable(2131232196));
        this.e = new ArrayList();
    }
}
