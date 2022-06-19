package com.truecaller.bizmon.newBusiness.components;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ProgressBar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import com.razorpay.AnalyticsConstants;
import com.truecaller.bizmon.C3478R;
import com.truecaller.common.p156ui.TcxPagerIndicator;
import java.util.Objects;
import kotlin.Metadata;
import p1727n3.p1825k0.p1826a.AbstractC26640a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p294b.p295a.p308b.C7644d;
import p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7745r;
import p193e.p194a.p294b.p295a.p312c.p313a.C7749v;
import p193e.p194a.p294b.p355m.C8070h1;
import s1.s;
import s1.z.b.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\u00020\u0001:\u0001$J\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00042\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\u000b\u001a\u00020\u00042\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\u000b\u0010\nJ\u0017\u0010\u000e\u001a\u00020\u00042\b\b\u0001\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0010\u001a\u00020\u00042\b\b\u0001\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u0010\u0010\u000fJ\u001f\u0010\u0014\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\f¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0016\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0013\u001a\u00020\f¢\u0006\u0004\b\u0016\u0010\u0017R$\u0010\u001f\u001a\u0004\u0018\u00010\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u0016\u0010#\u001a\u00020 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"¨\u0006%"}, d2 = {"Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Le/a/b/a/c/a/v;", "pagerAdapter", "Ls1/s;", "setAdapter", "(Le/a/b/a/c/a/v;)V", "", "isVisible", "setNextButtonVisible", "(Z)V", "setPreviousButtonVisible", "", "stringResId", "setNextButtonText", "(I)V", "setPreviousButtonText", "Landroidx/fragment/app/Fragment;", "fragment", "position", "g1", "(Landroidx/fragment/app/Fragment;I)Ls1/s;", "f1", "(I)Ls1/s;", "Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator$a;", "t", "Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator$a;", "getNavigatorListener", "()Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator$a;", "setNavigatorListener", "(Lcom/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator$a;)V", "navigatorListener", "Le/a/b/m/h1;", "u", "Le/a/b/m/h1;", "binding", "a", "bizmon_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator.class */
public final class OnboardingViewPagerWithNavigator extends ConstraintLayout {

    /* renamed from: v */
    public static final /* synthetic */ int f10304v = 0;

    /* renamed from: t */
    public AbstractC3494a f10305t;

    /* renamed from: u */
    public C8070h1 f10306u;

    /* renamed from: com.truecaller.bizmon.newBusiness.components.OnboardingViewPagerWithNavigator$a */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator$a.class */
    public interface AbstractC3494a {
        /* renamed from: E6 */
        void mo29452E6();

        /* renamed from: xy */
        void mo29450xy();
    }

    /* renamed from: com.truecaller.bizmon.newBusiness.components.OnboardingViewPagerWithNavigator$b */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/newBusiness/components/OnboardingViewPagerWithNavigator$b.class */
    public static final class C3495b extends m implements l<Integer, s> {

        /* renamed from: b */
        public final /* synthetic */ C8070h1 f10307b;

        /* renamed from: c */
        public final /* synthetic */ OnboardingViewPagerWithNavigator f10308c;

        /* renamed from: d */
        public final /* synthetic */ C7749v f10309d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3495b(C8070h1 c8070h1, OnboardingViewPagerWithNavigator onboardingViewPagerWithNavigator, C7749v c7749v) {
            super(1);
            this.f10307b = c8070h1;
            this.f10308c = onboardingViewPagerWithNavigator;
            this.f10309d = c7749v;
        }

        /* renamed from: d */
        public Object m35870d(Object obj) {
            int intValue = ((Number) obj).intValue();
            OnboardingViewPagerWithNavigator onboardingViewPagerWithNavigator = this.f10308c;
            NonSwipeViewPager nonSwipeViewPager = this.f10307b.f24920f;
            s1.z.c.l.d(nonSwipeViewPager, "viewPager");
            AbstractC26640a adapter = nonSwipeViewPager.getAdapter();
            Objects.requireNonNull(adapter, "null cannot be cast to non-null type com.truecaller.bizmon.newBusiness.onboarding.ui.OnboardingPagerAdapter");
            C7749v c7749v = (C7749v) adapter;
            int i = OnboardingViewPagerWithNavigator.f10304v;
            Objects.requireNonNull(onboardingViewPagerWithNavigator);
            Fragment fragment = c7749v.f24209j.get(intValue);
            s1.z.c.l.d(fragment, "initiatedFragments[position]");
            if (fragment instanceof AbstractC3494a) {
                AbstractC3494a abstractC3494a = c7749v.f24209j.get(intValue);
                s1.z.c.l.d(abstractC3494a, "initiatedFragments[position]");
                onboardingViewPagerWithNavigator.f10305t = (Fragment) abstractC3494a;
            }
            OnboardingViewPagerWithNavigator onboardingViewPagerWithNavigator2 = this.f10308c;
            C7749v c7749v2 = this.f10309d;
            Objects.requireNonNull(onboardingViewPagerWithNavigator2);
            Fragment fragment2 = c7749v2.f24209j.get(intValue);
            s1.z.c.l.d(fragment2, "initiatedFragments[position]");
            if (fragment2 instanceof AbstractC7745r) {
                AbstractC7745r abstractC7745r = c7749v2.f24209j.get(intValue);
                s1.z.c.l.d(abstractC7745r, "initiatedFragments[position]");
                AbstractC7745r abstractC7745r2 = (Fragment) abstractC7745r;
                if (!abstractC7745r2.mo29327pt()) {
                    abstractC7745r2 = null;
                }
                if (abstractC7745r2 != null) {
                    abstractC7745r2.mo29335Gb();
                }
            }
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OnboardingViewPagerWithNavigator(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
        LayoutInflater from = LayoutInflater.from(context);
        s1.z.c.l.d(from, "LayoutInflater.from(context)");
        View inflate = C17422k.m16050u0(from, true).inflate(C3478R.layout.layout_navigator, (ViewGroup) this, false);
        addView(inflate);
        int i = C3478R.C3480id.bottomBarBackgroundView;
        View findViewById = inflate.findViewById(i);
        if (findViewById != null) {
            ConstraintLayout constraintLayout = (ConstraintLayout) inflate;
            i = C3478R.C3480id.pageNextBtn;
            Button button = (Button) inflate.findViewById(i);
            if (button != null) {
                i = C3478R.C3480id.pagePrevBtn;
                Button button2 = (Button) inflate.findViewById(i);
                if (button2 != null) {
                    i = C3478R.C3480id.pagerIndicator;
                    TcxPagerIndicator tcxPagerIndicator = (TcxPagerIndicator) inflate.findViewById(i);
                    if (tcxPagerIndicator != null) {
                        i = C3478R.C3480id.progressBar;
                        ProgressBar progressBar = (ProgressBar) inflate.findViewById(i);
                        if (progressBar != null) {
                            i = C3478R.C3480id.viewPager;
                            NonSwipeViewPager nonSwipeViewPager = (NonSwipeViewPager) inflate.findViewById(i);
                            if (nonSwipeViewPager != null) {
                                C8070h1 c8070h1 = new C8070h1(constraintLayout, findViewById, constraintLayout, button, button2, tcxPagerIndicator, progressBar, nonSwipeViewPager);
                                s1.z.c.l.d(c8070h1, "LayoutNavigatorBinding.i…emeX = true), this, true)");
                                this.f10306u = c8070h1;
                                c8070h1.f24916b.setOnClickListener(new v(0, this));
                                c8070h1.f24917c.setOnClickListener(new v(1, this));
                                return;
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
    }

    /* renamed from: f1 */
    public final s m35872f1(int i) {
        s sVar;
        C8070h1 c8070h1 = this.f10306u;
        NonSwipeViewPager nonSwipeViewPager = c8070h1.f24920f;
        s1.z.c.l.d(nonSwipeViewPager, "viewPager");
        AbstractC26640a adapter = nonSwipeViewPager.getAdapter();
        if (adapter != null) {
            s1.z.c.l.d(adapter, "it");
            int mo1537c = adapter.mo1537c();
            if (i >= 0 && mo1537c > i) {
                NonSwipeViewPager nonSwipeViewPager2 = c8070h1.f24920f;
                nonSwipeViewPager2.f1482v = false;
                nonSwipeViewPager2.m42634x(i, true, false, 0);
            }
            sVar = s.a;
        } else {
            sVar = null;
        }
        return sVar;
    }

    /* renamed from: g1 */
    public final s m35871g1(Fragment fragment, int i) {
        s sVar;
        s1.z.c.l.e(fragment, "fragment");
        C8070h1 c8070h1 = this.f10306u;
        NonSwipeViewPager nonSwipeViewPager = c8070h1.f24920f;
        s1.z.c.l.d(nonSwipeViewPager, "viewPager");
        AbstractC26640a adapter = nonSwipeViewPager.getAdapter();
        Objects.requireNonNull(adapter, "null cannot be cast to non-null type com.truecaller.bizmon.newBusiness.onboarding.ui.OnboardingPagerAdapter");
        C7749v c7749v = (C7749v) adapter;
        s1.z.c.l.e(fragment, "fragment");
        c7749v.f24210k.set(i, fragment);
        NonSwipeViewPager nonSwipeViewPager2 = c8070h1.f24920f;
        s1.z.c.l.d(nonSwipeViewPager2, "viewPager");
        nonSwipeViewPager2.setAdapter(c7749v);
        NonSwipeViewPager nonSwipeViewPager3 = c8070h1.f24920f;
        s1.z.c.l.d(nonSwipeViewPager3, "viewPager");
        AbstractC26640a adapter2 = nonSwipeViewPager3.getAdapter();
        if (adapter2 != null) {
            adapter2.m1533h();
            sVar = s.a;
        } else {
            sVar = null;
        }
        return sVar;
    }

    public final AbstractC3494a getNavigatorListener() {
        return this.f10305t;
    }

    public final void setAdapter(C7749v c7749v) {
        s1.z.c.l.e(c7749v, "pagerAdapter");
        C8070h1 c8070h1 = this.f10306u;
        int mo1537c = c7749v.mo1537c();
        NonSwipeViewPager nonSwipeViewPager = c8070h1.f24920f;
        s1.z.c.l.d(nonSwipeViewPager, "viewPager");
        nonSwipeViewPager.setAdapter(c7749v);
        c8070h1.f24920f.m42656b(c8070h1.f24918d);
        c8070h1.f24918d.setFirstPage(0);
        c8070h1.f24918d.setNumberOfPages(mo1537c);
        m35872f1(0);
        NonSwipeViewPager nonSwipeViewPager2 = c8070h1.f24920f;
        C3495b c3495b = new C3495b(c8070h1, this, c7749v);
        Objects.requireNonNull(nonSwipeViewPager2);
        s1.z.c.l.e(c3495b, "observer");
        nonSwipeViewPager2.m42656b(new C7644d(c3495b));
    }

    public final void setNavigatorListener(AbstractC3494a abstractC3494a) {
        this.f10305t = abstractC3494a;
    }

    public final void setNextButtonText(int i) {
        this.f10306u.f24916b.setText(i);
    }

    public final void setNextButtonVisible(boolean z) {
        Button button = this.f10306u.f24916b;
        s1.z.c.l.d(button, "binding.pageNextBtn");
        C19286f.m13683U(button, z);
    }

    public final void setPreviousButtonText(int i) {
        this.f10306u.f24917c.setText(i);
    }

    public final void setPreviousButtonVisible(boolean z) {
        Button button = this.f10306u.f24917c;
        s1.z.c.l.d(button, "binding.pagePrevBtn");
        C19286f.m13683U(button, z);
    }
}
