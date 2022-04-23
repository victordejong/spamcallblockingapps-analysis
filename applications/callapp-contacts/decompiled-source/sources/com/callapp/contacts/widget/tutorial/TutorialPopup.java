package com.callapp.contacts.widget.tutorial;

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.Window;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.LinearInterpolator;
import android.view.animation.OvershootInterpolator;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import androidx.core.content.b;
import androidx.viewpager.widget.ViewPager;
import androidx.viewpager.widget.a;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.api.ContextRunnable;
import com.callapp.contacts.event.bus.EventBus;
import com.callapp.contacts.manager.inAppBilling.BillingManager;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.popup.contact.DialogSimpleMessage;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.Predicate;
import com.callapp.contacts.util.ReflectionUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.animation.AnimationListenerAdapter;
import com.callapp.contacts.widget.CallAppAnimatedViewPagerIndicator;
import com.callapp.contacts.widget.DurationAffectedScroller;
import com.callapp.contacts.widget.PagingTogglableViewPager;
import com.callapp.contacts.widget.tutorial.TutorialPopup;
import com.callapp.contacts.widget.tutorial.command.TutorialCommand;
import com.callapp.contacts.widget.tutorial.command.events.OnCommandDoneListener;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.skyfishjy.library.RippleBackground;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/tutorial/TutorialPopup.class */
public class TutorialPopup extends DialogPopup implements OnCommandDoneListener {

    /* renamed from: a  reason: collision with root package name */
    PagingTogglableViewPager f16976a;

    /* renamed from: b  reason: collision with root package name */
    List<TutorialPageModel> f16977b;

    /* renamed from: c  reason: collision with root package name */
    ViewGroup f16978c;

    /* renamed from: d  reason: collision with root package name */
    LinearLayout f16979d;
    ArrayList<TutorialStepMarker> e;
    CallAppAnimatedViewPagerIndicator f;
    RippleBackground g;
    TutorialAdapter h;
    private TutorialPopupListener j;
    private EventBus k;
    private Runnable l = new Runnable() { // from class: com.callapp.contacts.widget.tutorial._$$Lambda$TutorialPopup$csEeLPOxkwdG9XQthZ1skCRUGlc
        @Override // java.lang.Runnable
        public final void run() {
            TutorialPopup.this.b();
        }
    };
    private HorizontalScrollView m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter.class */
    public class TutorialAdapter extends a {

        /* renamed from: b  reason: collision with root package name */
        private List<TutorialPageModel> f16985b;

        /* renamed from: c  reason: collision with root package name */
        private Map<Integer, TutorialView> f16986c;

        private TutorialAdapter(List<TutorialPageModel> list) {
            this.f16986c = new HashMap();
            this.f16985b = list;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(int i, View view) {
            TutorialPopup.this.f16976a.setCurrentItem(i + 1);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(View view) {
            TutorialPopup.this.dismiss();
        }

        @Override // androidx.viewpager.widget.a
        public final Object a(ViewGroup viewGroup, final int i) {
            TutorialView tutorialView;
            if (i == 0) {
                tutorialView = new BeginningTutorialView(TutorialPopup.this.getActivity());
                tutorialView.a(this.f16985b.get(i), new View.OnClickListener() { // from class: com.callapp.contacts.widget.tutorial._$$Lambda$TutorialPopup$TutorialAdapter$hVR141ylRcedi5H7zJKxX7zJf6c
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        TutorialPopup.TutorialAdapter.this.a(i, view);
                    }
                }, TutorialCommand.COMMAND_TYPE.INFORMATIVE);
            } else if (i == TutorialPopup.this.f16977b.size() - 1) {
                tutorialView = new EndingTutorialView(TutorialPopup.this.getActivity());
                tutorialView.a(this.f16985b.get(i), new View.OnClickListener() { // from class: com.callapp.contacts.widget.tutorial._$$Lambda$TutorialPopup$TutorialAdapter$j4xXVRCwOo3Z_f4NYk02bVnVOkI
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        TutorialPopup.TutorialAdapter.this.a(view);
                    }
                }, TutorialCommand.COMMAND_TYPE.INFORMATIVE);
            } else {
                TutorialView tutorialView2 = new TutorialView(TutorialPopup.this.getActivity());
                tutorialView2.a(this.f16985b.get(i), new View.OnClickListener() { // from class: com.callapp.contacts.widget.tutorial.TutorialPopup.TutorialAdapter.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        if (TutorialAdapter.this.f16985b.get(i) == null || ((TutorialPageModel) TutorialAdapter.this.f16985b.get(i)).getCommand() == null || !((TutorialPageModel) TutorialAdapter.this.f16985b.get(i)).a() || !((TutorialPageModel) TutorialAdapter.this.f16985b.get(i)).getCommand().getCommandType().equals(TutorialCommand.COMMAND_TYPE.MANDATORY)) {
                            TutorialPopup.this.f16976a.setCurrentItem(i + 1);
                        } else {
                            TutorialPopup.c(TutorialPopup.this);
                        }
                    }
                }, (this.f16985b.get(i) == null || this.f16985b.get(i).getCommand() == null) ? TutorialCommand.COMMAND_TYPE.NOT_MANDATORY : this.f16985b.get(i).getCommand().getCommandType());
                tutorialView = tutorialView2;
            }
            tutorialView.setTag(Integer.valueOf(i));
            viewGroup.addView(tutorialView, 0);
            this.f16986c.put(Integer.valueOf(i), tutorialView);
            return Integer.valueOf(i);
        }

        @Override // androidx.viewpager.widget.a
        public final void a(ViewGroup viewGroup, int i, Object obj) {
            viewGroup.removeView((TutorialView) viewGroup.getChildAt(i));
        }

        @Override // androidx.viewpager.widget.a
        public final boolean a(View view, Object obj) {
            return view.getTag().equals(obj);
        }

        @Override // androidx.viewpager.widget.a
        public int getCount() {
            return this.f16985b.size();
        }

        public TutorialView getTutorialViewAtPosition(int i) {
            return this.f16986c.get(Integer.valueOf(i));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/tutorial/TutorialPopup$TutorialPageListener.class */
    public class TutorialPageListener implements ViewPager.e {

        /* renamed from: b  reason: collision with root package name */
        private List<TutorialPageModel> f16990b;

        /* renamed from: c  reason: collision with root package name */
        private TutorialPopupListener f16991c;

        private TutorialPageListener(List<TutorialPageModel> list, TutorialPopupListener tutorialPopupListener) {
            this.f16990b = list;
            this.f16991c = tutorialPopupListener;
        }

        @Override // androidx.viewpager.widget.ViewPager.e
        public void onPageScrollStateChanged(int i) {
        }

        @Override // androidx.viewpager.widget.ViewPager.e
        public void onPageScrolled(int i, float f, int i2) {
        }

        @Override // androidx.viewpager.widget.ViewPager.e
        public void onPageSelected(int i) {
            TutorialPopup.this.setCurrentItem(i, true);
            TutorialPopupListener tutorialPopupListener = this.f16991c;
            if (tutorialPopupListener != null) {
                tutorialPopupListener.a(this.f16990b.get(i).getPageName());
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/tutorial/TutorialPopup$TutorialPopupListener.class */
    public interface TutorialPopupListener {
        void a();

        void a(String str);
    }

    public TutorialPopup(TutorialPopupListener tutorialPopupListener, List<TutorialPageModel> list, EventBus eventBus) {
        this.j = tutorialPopupListener;
        this.f16977b = list;
        this.k = eventBus;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a() {
        this.m.fullScroll(66);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        try {
            ReflectionUtils.a(view, "mScroller", new DurationAffectedScroller(getActivity(), new LinearInterpolator(), 200));
        } catch (Exception e) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean a(boolean z) {
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b() {
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.85f, (float) BitmapDescriptorFactory.HUE_RED);
        alphaAnimation.setDuration(1000L);
        alphaAnimation.setFillAfter(true);
        alphaAnimation.setAnimationListener(new AnimationListenerAdapter() { // from class: com.callapp.contacts.widget.tutorial.TutorialPopup.1
            @Override // com.callapp.contacts.util.animation.AnimationListenerAdapter, android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                super.onAnimationEnd(animation);
                TutorialPopup.this.g.b();
            }
        });
        this.g.startAnimation(alphaAnimation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(View view) {
        this.j.a();
    }

    static /* synthetic */ void c(TutorialPopup tutorialPopup) {
        PopupManager.get().a(tutorialPopup.getActivity(), new DialogSimpleMessage(Activities.getString(BillingManager.isBillingAvailable() ? 2131887915 : 2131887914), Activities.getString(2131887913), null, Activities.getString(2131886563), null, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.widget.tutorial.TutorialPopup.3
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public void onClickListener(Activity activity) {
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Predicate getTutorialViewPredicate(int i) {
        return this.h.getTutorialViewAtPosition(i).getData().getShouldBeDisplayed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setNextButtonState(int i, final boolean z) {
        this.h.getTutorialViewAtPosition(i).setNextButtonState(new Predicate() { // from class: com.callapp.contacts.widget.tutorial._$$Lambda$TutorialPopup$Hv0Cu6cRKYk_9jA9mo4sUn_rF6g
            @Override // com.callapp.contacts.util.Predicate
            public final boolean accept() {
                boolean a2;
                a2 = TutorialPopup.a(z);
                return a2;
            }
        });
    }

    private void setupViewPager(View view) {
        PagingTogglableViewPager pagingTogglableViewPager = (PagingTogglableViewPager) view.findViewById(2131364520);
        this.f16976a = pagingTogglableViewPager;
        pagingTogglableViewPager.addOnPageChangeListener(new TutorialPageListener(this.f16977b, this.j));
        this.f16976a.setOffscreenPageLimit(this.f16977b.size());
        this.f16976a.setPagingEnabled(false);
        ViewUtils.a(this.f16976a, new ContextRunnable() { // from class: com.callapp.contacts.widget.tutorial._$$Lambda$TutorialPopup$XVrR5Z5OJU_fNZQ3LBYc7ePZA_o
            @Override // com.callapp.contacts.api.ContextRunnable
            public final void run(Object obj) {
                TutorialPopup.this.a((View) obj);
            }
        });
    }

    private void setupViews(View view) {
        this.f16978c = (ViewGroup) view.findViewById(2131363534);
        this.f16979d = (LinearLayout) view.findViewById(2131363535);
        this.m = (HorizontalScrollView) view.findViewById(2131362953);
        this.f16978c.findViewById(2131362156).setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.widget.tutorial._$$Lambda$TutorialPopup$2bCf2ksRAMTdqC_XxCP5RcjLbnI
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                TutorialPopup.this.b(view2);
            }
        });
        setupViewPager(this.f16978c);
        CallAppAnimatedViewPagerIndicator callAppAnimatedViewPagerIndicator = (CallAppAnimatedViewPagerIndicator) view.findViewById(2131363096);
        this.f = callAppAnimatedViewPagerIndicator;
        callAppAnimatedViewPagerIndicator.setPageColor(view.getResources().getColor(2131100228));
        this.f.setFillColor(view.getResources().getColor(2131099784));
        this.f.setStrokeColor(view.getResources().getColor(2131099919));
        this.f.setSeparationLineLength(view.getResources().getDimensionPixelOffset(2131166107));
        this.f.setDotAnimationDuration(200L);
        this.f.setRadius(view.getResources().getDimensionPixelOffset(2131165577));
        this.f.setStrokeWidth(view.getResources().getDimensionPixelOffset(2131165562));
    }

    @Override // com.callapp.contacts.widget.tutorial.command.events.OnCommandDoneListener
    public final void a(final TutorialCommand.COMMAND_TYPE command_type) {
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.widget.tutorial.TutorialPopup.2
            @Override // java.lang.Runnable
            public void run() {
                TutorialPopup tutorialPopup = TutorialPopup.this;
                boolean z = true;
                if (!tutorialPopup.getTutorialViewPredicate(tutorialPopup.f16976a.getCurrentItem()).accept()) {
                    TutorialPopup tutorialPopup2 = TutorialPopup.this;
                    tutorialPopup2.setCurrentItem(tutorialPopup2.f16976a.getCurrentItem() + 1, true);
                    return;
                }
                if (command_type == TutorialCommand.COMMAND_TYPE.MANDATORY) {
                    z = false;
                }
                TutorialPopup tutorialPopup3 = TutorialPopup.this;
                tutorialPopup3.setNextButtonState(tutorialPopup3.f16976a.getCurrentItem(), z);
            }
        });
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public void dismiss() {
        RippleBackground rippleBackground = this.g;
        if (rippleBackground != null) {
            rippleBackground.b();
            this.g.removeCallbacks(this.l);
        }
        this.k.b(OnCommandDoneListener.i, this);
        super.dismiss();
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(2131558833, (ViewGroup) null);
        setupViews(inflate);
        this.k.a(OnCommandDoneListener.i, this);
        return inflate;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setCurrentItem(int i, boolean z) {
        for (int i2 = 0; i2 < this.e.size(); i2++) {
            if (i2 < i) {
                TutorialStepMarker tutorialStepMarker = this.e.get(i2);
                if (z) {
                    tutorialStepMarker.f16993b.animate().scaleX(1.0f).scaleY(1.0f).alpha(0.6f).setDuration(200L).start();
                } else {
                    tutorialStepMarker.a(1.0f, 1.0f, 0.6f);
                }
            } else if (i2 > i) {
                TutorialStepMarker tutorialStepMarker2 = this.e.get(i2);
                if (z) {
                    tutorialStepMarker2.f16993b.animate().scaleX(1.0f).scaleY(1.0f).alpha(0.2f).setDuration(200L).start();
                } else {
                    tutorialStepMarker2.a(1.0f, 1.0f, 0.2f);
                }
            } else {
                TutorialStepMarker tutorialStepMarker3 = this.e.get(i2);
                if (z) {
                    ViewPropertyAnimator duration = tutorialStepMarker3.f16993b.animate().alpha(1.0f).setDuration(200L);
                    if (tutorialStepMarker3.f16992a) {
                        duration.setInterpolator(new OvershootInterpolator()).scaleX(1.3f).scaleY(1.3f);
                    }
                    duration.start();
                } else if (tutorialStepMarker3.f16992a) {
                    tutorialStepMarker3.a(1.3f, 1.3f, 1.0f);
                } else {
                    tutorialStepMarker3.a(1.0f, 1.0f, 1.0f);
                }
            }
        }
        this.f.setCurrentItem(i);
        if (i > 0 && i < this.e.size() - 1) {
            this.g.b();
            this.g.removeCallbacks(this.l);
            this.g.a();
            this.g.post(this.l);
        }
        if (i >= this.f16977b.size() / 2) {
            this.m.post(new Runnable() { // from class: com.callapp.contacts.widget.tutorial._$$Lambda$TutorialPopup$tvmWpFYiUmwGNWmJHBy00V4YJV8
                @Override // java.lang.Runnable
                public final void run() {
                    TutorialPopup.this.a();
                }
            });
        }
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public void setDialogWindowSize(Window window) {
        window.setLayout(-1, -2);
        window.setBackgroundDrawable(b.a(CallAppApplication.get(), 2131231000));
    }
}
