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
import androidx.core.content.C0790b;
import androidx.viewpager.widget.AbstractC2941a;
import androidx.viewpager.widget.ViewPager;
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

    /* renamed from: a */
    PagingTogglableViewPager f29500a;

    /* renamed from: b */
    List<TutorialPageModel> f29501b;

    /* renamed from: c */
    ViewGroup f29502c;

    /* renamed from: d */
    LinearLayout f29503d;

    /* renamed from: e */
    ArrayList<TutorialStepMarker> f29504e;

    /* renamed from: f */
    CallAppAnimatedViewPagerIndicator f29505f;

    /* renamed from: g */
    RippleBackground f29506g;

    /* renamed from: h */
    TutorialAdapter f29507h;

    /* renamed from: j */
    private TutorialPopupListener f29508j;

    /* renamed from: k */
    private EventBus f29509k;

    /* renamed from: l */
    private Runnable f29510l = new Runnable() { // from class: com.callapp.contacts.widget.tutorial._$$Lambda$TutorialPopup$csEeLPOxkwdG9XQthZ1skCRUGlc
        @Override // java.lang.Runnable
        public final void run() {
            TutorialPopup.this.m26240b();
        }
    };

    /* renamed from: m */
    private HorizontalScrollView f29511m;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter.class */
    public class TutorialAdapter extends AbstractC2941a {

        /* renamed from: b */
        private List<TutorialPageModel> f29517b;

        /* renamed from: c */
        private Map<Integer, TutorialView> f29518c;

        /* JADX INFO: Access modifiers changed from: private */
        public TutorialAdapter(List<TutorialPageModel> list) {
            TutorialPopup.this = r5;
            this.f29518c = new HashMap();
            this.f29517b = list;
        }

        /* renamed from: a */
        public /* synthetic */ void m26234a(int i, View view) {
            TutorialPopup.this.f29500a.setCurrentItem(i + 1);
        }

        /* renamed from: a */
        public /* synthetic */ void m26233a(View view) {
            TutorialPopup.this.dismiss();
        }

        @Override // androidx.viewpager.widget.AbstractC2941a
        /* renamed from: a */
        public final Object mo26231a(ViewGroup viewGroup, final int i) {
            BeginningTutorialView beginningTutorialView;
            if (i == 0) {
                beginningTutorialView = new BeginningTutorialView(TutorialPopup.this.getActivity());
                beginningTutorialView.mo26226a(this.f29517b.get(i), new View.OnClickListener() { // from class: com.callapp.contacts.widget.tutorial._$$Lambda$TutorialPopup$TutorialAdapter$hVR141ylRcedi5H7zJKxX7zJf6c
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        TutorialPopup.TutorialAdapter.this.m26234a(i, view);
                    }
                }, TutorialCommand.COMMAND_TYPE.INFORMATIVE);
            } else if (i == TutorialPopup.this.f29501b.size() - 1) {
                beginningTutorialView = new EndingTutorialView(TutorialPopup.this.getActivity());
                beginningTutorialView.mo26226a(this.f29517b.get(i), new View.OnClickListener() { // from class: com.callapp.contacts.widget.tutorial._$$Lambda$TutorialPopup$TutorialAdapter$j4xXVRCwOo3Z_f4NYk02bVnVOkI
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        TutorialPopup.TutorialAdapter.this.m26233a(view);
                    }
                }, TutorialCommand.COMMAND_TYPE.INFORMATIVE);
            } else {
                TutorialView tutorialView = new TutorialView(TutorialPopup.this.getActivity());
                tutorialView.mo26226a(this.f29517b.get(i), new View.OnClickListener() { // from class: com.callapp.contacts.widget.tutorial.TutorialPopup.TutorialAdapter.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        if (TutorialAdapter.this.f29517b.get(i) == null || ((TutorialPageModel) TutorialAdapter.this.f29517b.get(i)).getCommand() == null || !((TutorialPageModel) TutorialAdapter.this.f29517b.get(i)).m26269a() || !((TutorialPageModel) TutorialAdapter.this.f29517b.get(i)).getCommand().getCommandType().equals(TutorialCommand.COMMAND_TYPE.MANDATORY)) {
                            TutorialPopup.this.f29500a.setCurrentItem(i + 1);
                        } else {
                            TutorialPopup.m26236c(TutorialPopup.this);
                        }
                    }
                }, (this.f29517b.get(i) == null || this.f29517b.get(i).getCommand() == null) ? TutorialCommand.COMMAND_TYPE.NOT_MANDATORY : this.f29517b.get(i).getCommand().getCommandType());
                beginningTutorialView = tutorialView;
            }
            beginningTutorialView.setTag(Integer.valueOf(i));
            viewGroup.addView(beginningTutorialView, 0);
            this.f29518c.put(Integer.valueOf(i), beginningTutorialView);
            return Integer.valueOf(i);
        }

        @Override // androidx.viewpager.widget.AbstractC2941a
        /* renamed from: a */
        public final void mo26230a(ViewGroup viewGroup, int i, Object obj) {
            viewGroup.removeView((TutorialView) viewGroup.getChildAt(i));
        }

        @Override // androidx.viewpager.widget.AbstractC2941a
        /* renamed from: a */
        public final boolean mo26232a(View view, Object obj) {
            return view.getTag().equals(obj);
        }

        @Override // androidx.viewpager.widget.AbstractC2941a
        public int getCount() {
            return this.f29517b.size();
        }

        public TutorialView getTutorialViewAtPosition(int i) {
            return this.f29518c.get(Integer.valueOf(i));
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/tutorial/TutorialPopup$TutorialPageListener.class */
    public class TutorialPageListener implements ViewPager.AbstractC2936e {

        /* renamed from: b */
        private List<TutorialPageModel> f29522b;

        /* renamed from: c */
        private TutorialPopupListener f29523c;

        private TutorialPageListener(List<TutorialPageModel> list, TutorialPopupListener tutorialPopupListener) {
            TutorialPopup.this = r4;
            this.f29522b = list;
            this.f29523c = tutorialPopupListener;
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC2936e
        public void onPageScrollStateChanged(int i) {
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC2936e
        public void onPageScrolled(int i, float f, int i2) {
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC2936e
        public void onPageSelected(int i) {
            TutorialPopup.this.setCurrentItem(i, true);
            TutorialPopupListener tutorialPopupListener = this.f29523c;
            if (tutorialPopupListener != null) {
                tutorialPopupListener.mo26218a(this.f29522b.get(i).getPageName());
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/tutorial/TutorialPopup$TutorialPopupListener.class */
    public interface TutorialPopupListener {
        /* renamed from: a */
        void mo26222a();

        /* renamed from: a */
        void mo26218a(String str);
    }

    public TutorialPopup(TutorialPopupListener tutorialPopupListener, List<TutorialPageModel> list, EventBus eventBus) {
        this.f29508j = tutorialPopupListener;
        this.f29501b = list;
        this.f29509k = eventBus;
    }

    /* renamed from: a */
    public /* synthetic */ void m26246a() {
        this.f29511m.fullScroll(66);
    }

    /* renamed from: a */
    public /* synthetic */ void m26245a(View view) {
        try {
            ReflectionUtils.m27422a(view, "mScroller", new DurationAffectedScroller(getActivity(), new LinearInterpolator(), 200));
        } catch (Exception e) {
        }
    }

    /* renamed from: a */
    public static /* synthetic */ boolean m26241a(boolean z) {
        return z;
    }

    /* renamed from: b */
    public /* synthetic */ void m26240b() {
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.85f, (float) BitmapDescriptorFactory.HUE_RED);
        alphaAnimation.setDuration(1000L);
        alphaAnimation.setFillAfter(true);
        alphaAnimation.setAnimationListener(new AnimationListenerAdapter() { // from class: com.callapp.contacts.widget.tutorial.TutorialPopup.1
            @Override // com.callapp.contacts.util.animation.AnimationListenerAdapter, android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                super.onAnimationEnd(animation);
                TutorialPopup.this.f29506g.m5863b();
            }
        });
        this.f29506g.startAnimation(alphaAnimation);
    }

    /* renamed from: b */
    public /* synthetic */ void m26239b(View view) {
        this.f29508j.mo26222a();
    }

    /* renamed from: c */
    static /* synthetic */ void m26236c(TutorialPopup tutorialPopup) {
        PopupManager.get().m28209a(tutorialPopup.getActivity(), new DialogSimpleMessage(Activities.getString(BillingManager.isBillingAvailable() ? 2131887915 : 2131887914), Activities.getString(2131887913), null, Activities.getString(2131886563), null, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.widget.tutorial.TutorialPopup.3
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public void onClickListener(Activity activity) {
            }
        }));
    }

    public Predicate getTutorialViewPredicate(int i) {
        return this.f29507h.getTutorialViewAtPosition(i).getData().getShouldBeDisplayed();
    }

    public void setNextButtonState(int i, final boolean z) {
        this.f29507h.getTutorialViewAtPosition(i).setNextButtonState(new Predicate() { // from class: com.callapp.contacts.widget.tutorial._$$Lambda$TutorialPopup$Hv0Cu6cRKYk_9jA9mo4sUn_rF6g
            @Override // com.callapp.contacts.util.Predicate
            public final boolean accept() {
                boolean m26241a;
                m26241a = TutorialPopup.m26241a(z);
                return m26241a;
            }
        });
    }

    private void setupViewPager(View view) {
        PagingTogglableViewPager pagingTogglableViewPager = (PagingTogglableViewPager) view.findViewById(2131364520);
        this.f29500a = pagingTogglableViewPager;
        pagingTogglableViewPager.addOnPageChangeListener(new TutorialPageListener(this.f29501b, this.f29508j));
        this.f29500a.setOffscreenPageLimit(this.f29501b.size());
        this.f29500a.setPagingEnabled(false);
        ViewUtils.m27317a(this.f29500a, new ContextRunnable() { // from class: com.callapp.contacts.widget.tutorial._$$Lambda$TutorialPopup$XVrR5Z5OJU_fNZQ3LBYc7ePZA_o
            @Override // com.callapp.contacts.api.ContextRunnable
            public final void run(Object obj) {
                TutorialPopup.this.m26245a((View) obj);
            }
        });
    }

    private void setupViews(View view) {
        this.f29502c = (ViewGroup) view.findViewById(2131363534);
        this.f29503d = (LinearLayout) view.findViewById(2131363535);
        this.f29511m = (HorizontalScrollView) view.findViewById(2131362953);
        this.f29502c.findViewById(2131362156).setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.widget.tutorial._$$Lambda$TutorialPopup$2bCf2ksRAMTdqC_XxCP5RcjLbnI
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                TutorialPopup.this.m26239b(view2);
            }
        });
        setupViewPager(this.f29502c);
        CallAppAnimatedViewPagerIndicator callAppAnimatedViewPagerIndicator = (CallAppAnimatedViewPagerIndicator) view.findViewById(2131363096);
        this.f29505f = callAppAnimatedViewPagerIndicator;
        callAppAnimatedViewPagerIndicator.setPageColor(view.getResources().getColor(2131100228));
        this.f29505f.setFillColor(view.getResources().getColor(2131099784));
        this.f29505f.setStrokeColor(view.getResources().getColor(2131099919));
        this.f29505f.setSeparationLineLength(view.getResources().getDimensionPixelOffset(2131166107));
        this.f29505f.setDotAnimationDuration(200L);
        this.f29505f.setRadius(view.getResources().getDimensionPixelOffset(2131165577));
        this.f29505f.setStrokeWidth(view.getResources().getDimensionPixelOffset(2131165562));
    }

    @Override // com.callapp.contacts.widget.tutorial.command.events.OnCommandDoneListener
    /* renamed from: a */
    public final void mo26197a(final TutorialCommand.COMMAND_TYPE command_type) {
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.widget.tutorial.TutorialPopup.2
            @Override // java.lang.Runnable
            public void run() {
                TutorialPopup tutorialPopup = TutorialPopup.this;
                boolean z = true;
                if (!tutorialPopup.getTutorialViewPredicate(tutorialPopup.f29500a.getCurrentItem()).accept()) {
                    TutorialPopup tutorialPopup2 = TutorialPopup.this;
                    tutorialPopup2.setCurrentItem(tutorialPopup2.f29500a.getCurrentItem() + 1, true);
                    return;
                }
                if (command_type == TutorialCommand.COMMAND_TYPE.MANDATORY) {
                    z = false;
                }
                TutorialPopup tutorialPopup3 = TutorialPopup.this;
                tutorialPopup3.setNextButtonState(tutorialPopup3.f29500a.getCurrentItem(), z);
            }
        });
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public void dismiss() {
        RippleBackground rippleBackground = this.f29506g;
        if (rippleBackground != null) {
            rippleBackground.m5863b();
            this.f29506g.removeCallbacks(this.f29510l);
        }
        this.f29509k.m29045b(OnCommandDoneListener.f29565i, this);
        super.dismiss();
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(2131558833, (ViewGroup) null);
        setupViews(inflate);
        this.f29509k.m29048a(OnCommandDoneListener.f29565i, this);
        return inflate;
    }

    public void setCurrentItem(int i, boolean z) {
        for (int i2 = 0; i2 < this.f29504e.size(); i2++) {
            if (i2 < i) {
                TutorialStepMarker tutorialStepMarker = this.f29504e.get(i2);
                if (z) {
                    tutorialStepMarker.f29525b.animate().scaleX(1.0f).scaleY(1.0f).alpha(0.6f).setDuration(200L).start();
                } else {
                    tutorialStepMarker.m26228a(1.0f, 1.0f, 0.6f);
                }
            } else if (i2 > i) {
                TutorialStepMarker tutorialStepMarker2 = this.f29504e.get(i2);
                if (z) {
                    tutorialStepMarker2.f29525b.animate().scaleX(1.0f).scaleY(1.0f).alpha(0.2f).setDuration(200L).start();
                } else {
                    tutorialStepMarker2.m26228a(1.0f, 1.0f, 0.2f);
                }
            } else {
                TutorialStepMarker tutorialStepMarker3 = this.f29504e.get(i2);
                if (z) {
                    ViewPropertyAnimator duration = tutorialStepMarker3.f29525b.animate().alpha(1.0f).setDuration(200L);
                    if (tutorialStepMarker3.f29524a) {
                        duration.setInterpolator(new OvershootInterpolator()).scaleX(1.3f).scaleY(1.3f);
                    }
                    duration.start();
                } else if (tutorialStepMarker3.f29524a) {
                    tutorialStepMarker3.m26228a(1.3f, 1.3f, 1.0f);
                } else {
                    tutorialStepMarker3.m26228a(1.0f, 1.0f, 1.0f);
                }
            }
        }
        this.f29505f.setCurrentItem(i);
        if (i > 0 && i < this.f29504e.size() - 1) {
            this.f29506g.m5863b();
            this.f29506g.removeCallbacks(this.f29510l);
            this.f29506g.m5866a();
            this.f29506g.post(this.f29510l);
        }
        if (i >= this.f29501b.size() / 2) {
            this.f29511m.post(new Runnable() { // from class: com.callapp.contacts.widget.tutorial._$$Lambda$TutorialPopup$tvmWpFYiUmwGNWmJHBy00V4YJV8
                @Override // java.lang.Runnable
                public final void run() {
                    TutorialPopup.this.m26246a();
                }
            });
        }
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public void setDialogWindowSize(Window window) {
        window.setLayout(-1, -2);
        window.setBackgroundDrawable(C0790b.m44502a(CallAppApplication.get(), 2131231000));
    }
}
