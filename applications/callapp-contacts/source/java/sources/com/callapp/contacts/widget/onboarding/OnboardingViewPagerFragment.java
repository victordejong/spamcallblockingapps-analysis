package com.callapp.contacts.widget.onboarding;

import android.graphics.ColorFilter;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.callapp.contacts.activity.contact.cards.framework.horizontal.pager.HorizontalPagerFragment;
import com.callapp.contacts.manager.onboarding.welcome_stage.OnboardingDrawableAndTextPair;
import com.callapp.contacts.util.ImageUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/onboarding/OnboardingViewPagerFragment.class */
public class OnboardingViewPagerFragment extends HorizontalPagerFragment<OnboardingItemViewHolder, OnboardingDrawableAndTextPair> {

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/onboarding/OnboardingViewPagerFragment$OnboardingItemViewHolder.class */
    static class OnboardingItemViewHolder {

        /* renamed from: a */
        ImageView f29308a;

        /* renamed from: b */
        TextView f29309b;

        OnboardingItemViewHolder(View view) {
            this.f29308a = (ImageView) view.findViewById(2131363407);
            this.f29309b = (TextView) view.findViewById(2131363408);
        }
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.pager.HorizontalPagerFragment
    /* renamed from: a */
    public final /* synthetic */ OnboardingItemViewHolder mo26363a(View view) {
        return new OnboardingItemViewHolder(view);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.pager.HorizontalPagerFragment
    /* renamed from: a */
    public final /* synthetic */ void mo26362a(OnboardingItemViewHolder onboardingItemViewHolder, OnboardingDrawableAndTextPair onboardingDrawableAndTextPair) {
        OnboardingItemViewHolder onboardingItemViewHolder2 = onboardingItemViewHolder;
        OnboardingDrawableAndTextPair onboardingDrawableAndTextPair2 = onboardingDrawableAndTextPair;
        if (onboardingDrawableAndTextPair2 != null) {
            ImageUtils.m27529a(onboardingItemViewHolder2.f29308a, onboardingDrawableAndTextPair2.getDrawableRes(), (ColorFilter) null);
            onboardingItemViewHolder2.f29309b.setText(onboardingDrawableAndTextPair2.getText());
        }
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.horizontal.pager.HorizontalPagerFragment
    public int getLayoutResId() {
        return 2131558779;
    }
}
