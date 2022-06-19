package com.callapp.contacts.widget.onboarding;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.callapp.contacts.manager.onboarding.welcome_stage.OnboardingDrawableAndTextPair;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/onboarding/OnboardingViewPagerContainer.class */
public class OnboardingViewPagerContainer extends RelativeLayout {

    /* renamed from: a */
    private OnboardingViewPagerViewHolder f29307a;

    public OnboardingViewPagerContainer(Context context) {
        this(context, null);
    }

    public OnboardingViewPagerContainer(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public OnboardingViewPagerContainer(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        LayoutInflater.from(context).inflate(2131558829, (ViewGroup) this, true);
    }

    /* renamed from: a */
    private void m26364a() {
        OnboardingViewPagerViewHolder onboardingViewPagerViewHolder = this.f29307a;
        if (onboardingViewPagerViewHolder != null) {
            onboardingViewPagerViewHolder.m26358d();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m26364a();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean onInterceptTouchEvent = super.onInterceptTouchEvent(motionEvent);
        m26364a();
        return onInterceptTouchEvent;
    }

    public void setData(List<OnboardingDrawableAndTextPair> list) {
        this.f29307a.m31114a(list);
    }
}
