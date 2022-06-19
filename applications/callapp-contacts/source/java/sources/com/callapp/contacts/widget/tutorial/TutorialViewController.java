package com.callapp.contacts.widget.tutorial;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.lifecycle.AbstractC1253j;
import androidx.lifecycle.AbstractC1262o;
import androidx.lifecycle.AbstractC1269v;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.event.bus.EventBus;
import com.callapp.contacts.manager.NotificationManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.widget.floatingwidget.FrameLayoutChatHeadContainer;
import com.callapp.contacts.widget.floatingwidget.p240ui.MinimizedArrangement;
import com.callapp.contacts.widget.floatingwidget.p240ui.callapp.CallAppInActivityChatHeadManager;
import com.callapp.contacts.widget.floatingwidget.p240ui.callapp.WelcomeTutorialWidgetManager;
import com.callapp.contacts.widget.tutorial.TutorialPopup;
import com.callapp.contacts.widget.tutorial.command.events.OnFinishedTutorialListener;
import com.skyfishjy.library.RippleBackground;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/tutorial/TutorialViewController.class */
public class TutorialViewController implements AbstractC1262o, TutorialPopup.TutorialPopupListener, OnFinishedTutorialListener {

    /* renamed from: b */
    private final long f29540b = 4000;

    /* renamed from: c */
    private EventBus f29541c;

    /* renamed from: d */
    private TutorialPageManager f29542d;

    /* renamed from: e */
    private OnWidgetAddedListener f29543e;

    /* renamed from: f */
    private WelcomeTutorialWidgetManager f29544f;

    /* renamed from: g */
    private List<TutorialPageModel> f29545g;

    /* renamed from: h */
    private boolean f29546h;

    /* renamed from: i */
    private TutorialPopup f29547i;

    /* renamed from: j */
    private FrameLayout f29548j;

    /* renamed from: k */
    private Runnable f29549k;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/tutorial/TutorialViewController$OnWidgetAddedListener.class */
    public interface OnWidgetAddedListener {
        /* renamed from: a */
        void mo26207a();
    }

    public TutorialViewController(final TutorialPageManager tutorialPageManager, EventBus eventBus, ViewGroup viewGroup, final Activity activity, OnWidgetAddedListener onWidgetAddedListener) {
        this.f29542d = tutorialPageManager;
        this.f29543e = onWidgetAddedListener;
        FrameLayout frameLayout = new FrameLayout(viewGroup.getContext());
        this.f29548j = frameLayout;
        frameLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        viewGroup.addView(this.f29548j);
        Runnable runnable = new Runnable() { // from class: com.callapp.contacts.widget.tutorial._$$Lambda$TutorialViewController$huT4F_lo4PowPx6MVOOJh2VwKPQ
            @Override // java.lang.Runnable
            public final void run() {
                TutorialViewController.this.m26220a(activity, tutorialPageManager);
            }
        };
        this.f29549k = runnable;
        this.f29548j.postDelayed(runnable, 4000L);
        this.f29541c = eventBus;
        eventBus.m29048a(OnFinishedTutorialListener.f29566a, this);
        this.f29545g = this.f29542d.getTutorialPages();
        if (!this.f29542d.f29484a.mo26268a()) {
            TutorialPageManager tutorialPageManager2 = this.f29542d;
            tutorialPageManager2.f29484a.mo26263a(this.f29545g);
            this.f29542d.setCurrentPage(this.f29545g.get(0).getPageName());
            new Task() { // from class: com.callapp.contacts.widget.tutorial.TutorialViewController.1
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    StringBuilder sb = new StringBuilder();
                    for (TutorialPageModel tutorialPageModel : TutorialViewController.this.f29545g.subList(1, TutorialViewController.this.f29545g.size() - 1)) {
                        sb.append(tutorialPageModel.getId());
                        sb.append(",");
                    }
                    AnalyticsManager.get().m28449a(Constants.CONTACT_LIST, "Tutorial Pages Picked", sb.substring(0, sb.lastIndexOf(",")));
                }
            }.execute();
        }
        this.f29546h = true;
    }

    /* renamed from: a */
    public /* synthetic */ void m26220a(Activity activity, TutorialPageManager tutorialPageManager) {
        WelcomeTutorialWidgetManager welcomeTutorialWidgetManager = new WelcomeTutorialWidgetManager(activity, new FrameLayoutChatHeadContainer(this.f29548j), tutorialPageManager, new WelcomeTutorialWidgetManager.OnWidgetAddedListener() { // from class: com.callapp.contacts.widget.tutorial._$$Lambda$TutorialViewController$_u79iw_3qNeY2vJDIboZ_Va3Jww
            @Override // com.callapp.contacts.widget.floatingwidget.p240ui.callapp.WelcomeTutorialWidgetManager.OnWidgetAddedListener
            public final void onWidgetAdded() {
                TutorialViewController.this.m26212e();
            }
        });
        this.f29544f = welcomeTutorialWidgetManager;
        welcomeTutorialWidgetManager.setOnWidgetClickedListener(new CallAppInActivityChatHeadManager.OnWidgetClickedListener() { // from class: com.callapp.contacts.widget.tutorial.TutorialViewController.2
            @Override // com.callapp.contacts.widget.floatingwidget.p240ui.callapp.CallAppInActivityChatHeadManager.OnWidgetClickedListener
            /* renamed from: a */
            public final void mo26210a(Activity activity2) {
                AnalyticsManager.get().m28450a(Constants.CONTACT_LIST, "Widget clicked");
                TutorialViewController.this.m26221a(activity2);
            }
        });
        this.f29544f.mo26416a(MinimizedArrangement.class, (Bundle) null);
        WelcomeTutorialWidgetManager welcomeTutorialWidgetManager2 = this.f29544f;
        int intValue = Prefs.f26513fY.get().intValue();
        if (intValue == 0) {
            welcomeTutorialWidgetManager2.mo26417a((WelcomeTutorialWidgetManager) "welcomeTutorial", false, true);
        } else if (intValue == 1) {
            welcomeTutorialWidgetManager2.mo26417a((WelcomeTutorialWidgetManager) "welcomeTutorialMinimized", false, true);
        }
        this.f29549k = null;
    }

    /* renamed from: b */
    static /* synthetic */ void m26217b(TutorialViewController tutorialViewController) {
        boolean m26272a = tutorialViewController.f29542d.m26272a();
        tutorialViewController.f29546h = m26272a;
        if (m26272a) {
            WelcomeTutorialWidgetManager welcomeTutorialWidgetManager = tutorialViewController.f29544f;
            if (welcomeTutorialWidgetManager != null) {
                welcomeTutorialWidgetManager.mo26434k();
            }
            TutorialPageManager.m26270b();
            return;
        }
        WelcomeTutorialWidgetManager welcomeTutorialWidgetManager2 = tutorialViewController.f29544f;
        if (welcomeTutorialWidgetManager2 == null) {
            return;
        }
        welcomeTutorialWidgetManager2.mo26407e();
    }

    /* renamed from: e */
    public /* synthetic */ void m26212e() {
        OnWidgetAddedListener onWidgetAddedListener = this.f29543e;
        if (onWidgetAddedListener != null) {
            onWidgetAddedListener.mo26207a();
        }
    }

    @Override // com.callapp.contacts.widget.tutorial.TutorialPopup.TutorialPopupListener
    /* renamed from: a */
    public final void mo26222a() {
        AnalyticsManager.get().m28450a(Constants.CONTACT_LIST, "Widget tutorial dismissed from close button");
        this.f29547i.dismiss();
    }

    /* renamed from: a */
    public final void m26221a(Activity activity) {
        if (this.f29546h) {
            AnalyticsManager.get().m28450a(Constants.CONTACT_LIST, "Showing tutorial popup");
            TutorialPopup tutorialPopup = new TutorialPopup(this, this.f29545g, this.f29541c);
            this.f29547i = tutorialPopup;
            tutorialPopup.setDialogCustomListener(new DialogPopup.IDialogSimpleListener() { // from class: com.callapp.contacts.widget.tutorial.TutorialViewController.3
                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener
                /* renamed from: a */
                public final void mo26209a(DialogPopup dialogPopup) {
                    TutorialViewController.m26217b(TutorialViewController.this);
                }

                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener
                /* renamed from: b */
                public final void mo26208b(DialogPopup dialogPopup) {
                    TutorialViewController.m26217b(TutorialViewController.this);
                }

                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener, android.content.DialogInterface.OnShowListener
                public void onShow(DialogInterface dialogInterface) {
                    TutorialViewController.this.f29546h = false;
                    TutorialPopup tutorialPopup2 = TutorialViewController.this.f29547i;
                    int m26271a = TutorialViewController.this.f29542d.m26271a(TutorialViewController.this.f29542d.getCurrentPage().getPageName());
                    if (tutorialPopup2.f29500a != null) {
                        tutorialPopup2.f29507h = new TutorialPopup.TutorialAdapter(tutorialPopup2.f29501b);
                        tutorialPopup2.f29500a.setAdapter(tutorialPopup2.f29507h);
                        tutorialPopup2.f29505f.setViewPager(tutorialPopup2.f29500a);
                        tutorialPopup2.f29504e = new ArrayList<>(tutorialPopup2.f29501b.size());
                        for (int i = 0; i < tutorialPopup2.f29501b.size(); i++) {
                            Context context = tutorialPopup2.f29502c.getContext();
                            TutorialPageModel tutorialPageModel = tutorialPopup2.f29501b.get(i);
                            TutorialStepMarker tutorialStepMarker = new TutorialStepMarker(context);
                            tutorialPopup2.f29503d.addView(tutorialStepMarker);
                            tutorialPopup2.f29504e.add(tutorialStepMarker);
                            tutorialStepMarker.setImageResource(tutorialPageModel.getIconRes());
                            tutorialStepMarker.setText(tutorialPageModel.getTopTitle().toString());
                            if (i > 0) {
                                ((ViewGroup.MarginLayoutParams) tutorialStepMarker.getLayoutParams()).setMarginStart(CallAppApplication.get().getResources().getDimensionPixelOffset(2131165583));
                                tutorialStepMarker.setShouldResizeUponCurrentStep(true);
                                if (i == tutorialPopup2.f29501b.size() - 1) {
                                    tutorialPopup2.f29506g = (RippleBackground) LayoutInflater.from(context).inflate(2131559120, (ViewGroup) tutorialStepMarker, false);
                                    RippleBackground rippleBackground = tutorialPopup2.f29506g;
                                    ((ViewGroup) tutorialStepMarker.findViewById(2131363050)).addView(rippleBackground);
                                    ((FrameLayout.LayoutParams) rippleBackground.getLayoutParams()).gravity = 17;
                                }
                            }
                        }
                        tutorialPopup2.setCurrentItem(m26271a, false);
                    }
                    NotificationManager.get().m28578a(4);
                }
            });
            PopupManager.get().m28209a(activity, this.f29547i);
            this.f29546h = false;
        }
    }

    @Override // com.callapp.contacts.widget.tutorial.TutorialPopup.TutorialPopupListener
    /* renamed from: a */
    public final void mo26218a(String str) {
        this.f29542d.setCurrentPage(str);
    }

    @Override // com.callapp.contacts.widget.tutorial.command.events.OnFinishedTutorialListener
    /* renamed from: b */
    public final void mo26195b() {
        TutorialPopup tutorialPopup = this.f29547i;
        if (tutorialPopup != null) {
            tutorialPopup.dismiss();
            this.f29547i = null;
            this.f29546h = false;
        }
    }

    /* renamed from: c */
    public final void m26216c() {
        WelcomeTutorialWidgetManager welcomeTutorialWidgetManager = this.f29544f;
        if (welcomeTutorialWidgetManager != null) {
            welcomeTutorialWidgetManager.m26433l();
        } else {
            this.f29548j.removeCallbacks(this.f29549k);
        }
    }

    /* renamed from: d */
    public final void m26214d() {
        WelcomeTutorialWidgetManager welcomeTutorialWidgetManager = this.f29544f;
        if (welcomeTutorialWidgetManager != null) {
            welcomeTutorialWidgetManager.m26432m();
            return;
        }
        this.f29548j.removeCallbacks(this.f29549k);
        this.f29548j.postDelayed(this.f29549k, 4000L);
    }

    @AbstractC1269v(m43285a = AbstractC1253j.EnumC1255a.ON_DESTROY)
    public void onDestroy() {
        this.f29541c.m29045b(OnFinishedTutorialListener.f29566a, this);
        this.f29543e = null;
        WelcomeTutorialWidgetManager welcomeTutorialWidgetManager = this.f29544f;
        if (welcomeTutorialWidgetManager != null) {
            welcomeTutorialWidgetManager.f29236a = null;
            welcomeTutorialWidgetManager.f29237b = null;
        }
        mo26195b();
        Runnable runnable = this.f29549k;
        if (runnable != null) {
            this.f29548j.removeCallbacks(runnable);
        }
    }
}
