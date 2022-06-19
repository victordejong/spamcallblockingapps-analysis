package com.callapp.contacts.widget.onboarding;

import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import androidx.fragment.app.FragmentManager;
import com.callapp.contacts.activity.contact.cards.framework.horizontal.pager.HorizontalPagerAdapter;
import com.callapp.contacts.activity.contact.cards.framework.horizontal.pager.HorizontalPagerLayoutViewHolder;
import com.callapp.contacts.api.ContextRunnable;
import com.callapp.contacts.manager.onboarding.welcome_stage.OnboardingDrawableAndTextPair;
import com.callapp.contacts.util.ReflectionUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.widget.DurationAffectedScroller;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/onboarding/OnboardingViewPagerViewHolder.class */
public class OnboardingViewPagerViewHolder extends HorizontalPagerLayoutViewHolder<OnboardingDrawableAndTextPair> {

    /* renamed from: b */
    private DurationAffectedScroller f29310b;

    /* renamed from: c */
    private final Runnable f29311c = new Runnable() { // from class: com.callapp.contacts.widget.onboarding.OnboardingViewPagerViewHolder.1

        /* renamed from: b */
        private int f29314b = 0;

        @Override // java.lang.Runnable
        public void run() {
            int i = this.f29314b + 1;
            this.f29314b = i;
            if (i < OnboardingViewPagerViewHolder.this.getAdapter().getCount() - 1) {
                OnboardingViewPagerViewHolder.this.getPager().setCurrentItem(this.f29314b, true);
                OnboardingViewPagerViewHolder.this.getPager().postDelayed(this, 1500L);
                return;
            }
            this.f29314b = 0;
            OnboardingViewPagerViewHolder.this.getPager().postDelayed(OnboardingViewPagerViewHolder.this.f29312d, 1500L);
        }
    };

    /* renamed from: d */
    private final Runnable f29312d = new Runnable() { // from class: com.callapp.contacts.widget.onboarding.OnboardingViewPagerViewHolder.2

        /* renamed from: b */
        private int f29316b = 4;

        @Override // java.lang.Runnable
        public void run() {
            int i = this.f29316b - 1;
            this.f29316b = i;
            if (i >= 0) {
                OnboardingViewPagerViewHolder.this.getPager().setCurrentItem(this.f29316b, true);
                OnboardingViewPagerViewHolder.this.getPager().postDelayed(this, 1500L);
                return;
            }
            this.f29316b = 4;
            OnboardingViewPagerViewHolder.this.getPager().postDelayed(OnboardingViewPagerViewHolder.this.f29311c, 1500L);
        }
    };

    OnboardingViewPagerViewHolder(ViewGroup viewGroup, FragmentManager fragmentManager) {
        super(viewGroup, new HorizontalPagerAdapter(fragmentManager, OnboardingViewPagerFragment.class));
        ViewUtils.m27317a(getPager(), new ContextRunnable() { // from class: com.callapp.contacts.widget.onboarding._$$Lambda$OnboardingViewPagerViewHolder$dx35WFG_cpTpQtlDB8iSGtEmJL8
            @Override // com.callapp.contacts.api.ContextRunnable
            public final void run(Object obj) {
                OnboardingViewPagerViewHolder.this.m26361a((View) obj);
            }
        });
    }

    /* renamed from: a */
    public /* synthetic */ void m26361a(View view) {
        try {
            DurationAffectedScroller durationAffectedScroller = new DurationAffectedScroller(view.getContext(), new LinearInterpolator(), 700);
            this.f29310b = durationAffectedScroller;
            ReflectionUtils.m27422a(view, "mScroller", durationAffectedScroller);
        } catch (Exception e) {
        } catch (Throwable th) {
            view.postDelayed(this.f29311c, 1500L);
            throw th;
        }
        view.postDelayed(this.f29311c, 1500L);
    }

    /* renamed from: d */
    public final void m26358d() {
        getPager().removeCallbacks(this.f29312d);
        getPager().removeCallbacks(this.f29311c);
    }
}
