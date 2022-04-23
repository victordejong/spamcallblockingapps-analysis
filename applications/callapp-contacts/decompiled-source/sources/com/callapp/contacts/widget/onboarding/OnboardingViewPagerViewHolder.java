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

    /* renamed from: b  reason: collision with root package name */
    private DurationAffectedScroller f16836b;

    /* renamed from: c  reason: collision with root package name */
    private final Runnable f16837c = new Runnable() { // from class: com.callapp.contacts.widget.onboarding.OnboardingViewPagerViewHolder.1

        /* renamed from: b  reason: collision with root package name */
        private int f16840b = 0;

        @Override // java.lang.Runnable
        public void run() {
            int i = this.f16840b + 1;
            this.f16840b = i;
            if (i < OnboardingViewPagerViewHolder.this.getAdapter().getCount() - 1) {
                OnboardingViewPagerViewHolder.this.getPager().setCurrentItem(this.f16840b, true);
                OnboardingViewPagerViewHolder.this.getPager().postDelayed(this, 1500L);
                return;
            }
            this.f16840b = 0;
            OnboardingViewPagerViewHolder.this.getPager().postDelayed(OnboardingViewPagerViewHolder.this.f16838d, 1500L);
        }
    };

    /* renamed from: d  reason: collision with root package name */
    private final Runnable f16838d = new Runnable() { // from class: com.callapp.contacts.widget.onboarding.OnboardingViewPagerViewHolder.2

        /* renamed from: b  reason: collision with root package name */
        private int f16842b = 4;

        @Override // java.lang.Runnable
        public void run() {
            int i = this.f16842b - 1;
            this.f16842b = i;
            if (i >= 0) {
                OnboardingViewPagerViewHolder.this.getPager().setCurrentItem(this.f16842b, true);
                OnboardingViewPagerViewHolder.this.getPager().postDelayed(this, 1500L);
                return;
            }
            this.f16842b = 4;
            OnboardingViewPagerViewHolder.this.getPager().postDelayed(OnboardingViewPagerViewHolder.this.f16837c, 1500L);
        }
    };

    OnboardingViewPagerViewHolder(ViewGroup viewGroup, FragmentManager fragmentManager) {
        super(viewGroup, new HorizontalPagerAdapter(fragmentManager, OnboardingViewPagerFragment.class));
        ViewUtils.a(getPager(), new ContextRunnable() { // from class: com.callapp.contacts.widget.onboarding._$$Lambda$OnboardingViewPagerViewHolder$dx35WFG_cpTpQtlDB8iSGtEmJL8
            @Override // com.callapp.contacts.api.ContextRunnable
            public final void run(Object obj) {
                OnboardingViewPagerViewHolder.this.a((View) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        try {
            DurationAffectedScroller durationAffectedScroller = new DurationAffectedScroller(view.getContext(), new LinearInterpolator(), 700);
            this.f16836b = durationAffectedScroller;
            ReflectionUtils.a(view, "mScroller", durationAffectedScroller);
        } catch (Exception e) {
        } catch (Throwable th) {
            view.postDelayed(this.f16837c, 1500L);
            throw th;
        }
        view.postDelayed(this.f16837c, 1500L);
    }

    public final void d() {
        getPager().removeCallbacks(this.f16838d);
        getPager().removeCallbacks(this.f16837c);
    }
}
