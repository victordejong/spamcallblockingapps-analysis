package com.callapp.contacts.widget.tutorial;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.lifecycle.j;
import androidx.lifecycle.o;
import androidx.lifecycle.v;
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
import com.callapp.contacts.widget.floatingwidget.ui.MinimizedArrangement;
import com.callapp.contacts.widget.floatingwidget.ui.callapp.CallAppInActivityChatHeadManager;
import com.callapp.contacts.widget.floatingwidget.ui.callapp.WelcomeTutorialWidgetManager;
import com.callapp.contacts.widget.tutorial.TutorialPopup;
import com.callapp.contacts.widget.tutorial.command.events.OnFinishedTutorialListener;
import com.skyfishjy.library.RippleBackground;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/tutorial/TutorialViewController.class */
public class TutorialViewController implements o, TutorialPopup.TutorialPopupListener, OnFinishedTutorialListener {

    /* renamed from: b  reason: collision with root package name */
    private final long f17002b = 4000;

    /* renamed from: c  reason: collision with root package name */
    private EventBus f17003c;

    /* renamed from: d  reason: collision with root package name */
    private TutorialPageManager f17004d;
    private OnWidgetAddedListener e;
    private WelcomeTutorialWidgetManager f;
    private List<TutorialPageModel> g;
    private boolean h;
    private TutorialPopup i;
    private FrameLayout j;
    private Runnable k;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/tutorial/TutorialViewController$OnWidgetAddedListener.class */
    public interface OnWidgetAddedListener {
        void a();
    }

    public TutorialViewController(final TutorialPageManager tutorialPageManager, EventBus eventBus, ViewGroup viewGroup, final Activity activity, OnWidgetAddedListener onWidgetAddedListener) {
        this.f17004d = tutorialPageManager;
        this.e = onWidgetAddedListener;
        FrameLayout frameLayout = new FrameLayout(viewGroup.getContext());
        this.j = frameLayout;
        frameLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        viewGroup.addView(this.j);
        Runnable ___lambda_tutorialviewcontroller_hut4f_lo4powpx6mvoojh2vwkpq = new Runnable() { // from class: com.callapp.contacts.widget.tutorial._$$Lambda$TutorialViewController$huT4F_lo4PowPx6MVOOJh2VwKPQ
            @Override // java.lang.Runnable
            public final void run() {
                TutorialViewController.this.a(activity, tutorialPageManager);
            }
        };
        this.k = ___lambda_tutorialviewcontroller_hut4f_lo4powpx6mvoojh2vwkpq;
        this.j.postDelayed(___lambda_tutorialviewcontroller_hut4f_lo4powpx6mvoojh2vwkpq, 4000L);
        this.f17003c = eventBus;
        eventBus.a(OnFinishedTutorialListener.f17020a, this);
        this.g = this.f17004d.getTutorialPages();
        if (!this.f17004d.f16966a.a()) {
            TutorialPageManager tutorialPageManager2 = this.f17004d;
            tutorialPageManager2.f16966a.a(this.g);
            this.f17004d.setCurrentPage(this.g.get(0).getPageName());
            new Task() { // from class: com.callapp.contacts.widget.tutorial.TutorialViewController.1
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    StringBuilder sb = new StringBuilder();
                    for (TutorialPageModel tutorialPageModel : TutorialViewController.this.g.subList(1, TutorialViewController.this.g.size() - 1)) {
                        sb.append(tutorialPageModel.getId());
                        sb.append(",");
                    }
                    AnalyticsManager.get().a(Constants.CONTACT_LIST, "Tutorial Pages Picked", sb.substring(0, sb.lastIndexOf(",")));
                }
            }.execute();
        }
        this.h = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Activity activity, TutorialPageManager tutorialPageManager) {
        WelcomeTutorialWidgetManager welcomeTutorialWidgetManager = new WelcomeTutorialWidgetManager(activity, new FrameLayoutChatHeadContainer(this.j), tutorialPageManager, new WelcomeTutorialWidgetManager.OnWidgetAddedListener() { // from class: com.callapp.contacts.widget.tutorial._$$Lambda$TutorialViewController$_u79iw_3qNeY2vJDIboZ_Va3Jww
            @Override // com.callapp.contacts.widget.floatingwidget.ui.callapp.WelcomeTutorialWidgetManager.OnWidgetAddedListener
            public final void onWidgetAdded() {
                TutorialViewController.this.e();
            }
        });
        this.f = welcomeTutorialWidgetManager;
        welcomeTutorialWidgetManager.setOnWidgetClickedListener(new CallAppInActivityChatHeadManager.OnWidgetClickedListener() { // from class: com.callapp.contacts.widget.tutorial.TutorialViewController.2
            @Override // com.callapp.contacts.widget.floatingwidget.ui.callapp.CallAppInActivityChatHeadManager.OnWidgetClickedListener
            public final void a(Activity activity2) {
                AnalyticsManager.get().a(Constants.CONTACT_LIST, "Widget clicked");
                TutorialViewController.this.a(activity2);
            }
        });
        this.f.a(MinimizedArrangement.class, (Bundle) null);
        WelcomeTutorialWidgetManager welcomeTutorialWidgetManager2 = this.f;
        int intValue = Prefs.fY.get().intValue();
        if (intValue == 0) {
            welcomeTutorialWidgetManager2.a((WelcomeTutorialWidgetManager) "welcomeTutorial", false, true);
        } else if (intValue == 1) {
            welcomeTutorialWidgetManager2.a((WelcomeTutorialWidgetManager) "welcomeTutorialMinimized", false, true);
        }
        this.k = null;
    }

    static /* synthetic */ void b(TutorialViewController tutorialViewController) {
        boolean a2 = tutorialViewController.f17004d.a();
        tutorialViewController.h = a2;
        if (a2) {
            WelcomeTutorialWidgetManager welcomeTutorialWidgetManager = tutorialViewController.f;
            if (welcomeTutorialWidgetManager != null) {
                welcomeTutorialWidgetManager.k();
            }
            TutorialPageManager.b();
            return;
        }
        WelcomeTutorialWidgetManager welcomeTutorialWidgetManager2 = tutorialViewController.f;
        if (welcomeTutorialWidgetManager2 != null) {
            welcomeTutorialWidgetManager2.e();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e() {
        OnWidgetAddedListener onWidgetAddedListener = this.e;
        if (onWidgetAddedListener != null) {
            onWidgetAddedListener.a();
        }
    }

    @Override // com.callapp.contacts.widget.tutorial.TutorialPopup.TutorialPopupListener
    public final void a() {
        AnalyticsManager.get().a(Constants.CONTACT_LIST, "Widget tutorial dismissed from close button");
        this.i.dismiss();
    }

    public final void a(Activity activity) {
        if (this.h) {
            AnalyticsManager.get().a(Constants.CONTACT_LIST, "Showing tutorial popup");
            TutorialPopup tutorialPopup = new TutorialPopup(this, this.g, this.f17003c);
            this.i = tutorialPopup;
            tutorialPopup.setDialogCustomListener(new DialogPopup.IDialogSimpleListener() { // from class: com.callapp.contacts.widget.tutorial.TutorialViewController.3
                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener
                public final void a(DialogPopup dialogPopup) {
                    TutorialViewController.b(TutorialViewController.this);
                }

                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener
                public final void b(DialogPopup dialogPopup) {
                    TutorialViewController.b(TutorialViewController.this);
                }

                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener, android.content.DialogInterface.OnShowListener
                public void onShow(DialogInterface dialogInterface) {
                    TutorialViewController.this.h = false;
                    TutorialPopup tutorialPopup2 = TutorialViewController.this.i;
                    int a2 = TutorialViewController.this.f17004d.a(TutorialViewController.this.f17004d.getCurrentPage().getPageName());
                    if (tutorialPopup2.f16976a != null) {
                        tutorialPopup2.h = new TutorialPopup.TutorialAdapter(tutorialPopup2.f16977b);
                        tutorialPopup2.f16976a.setAdapter(tutorialPopup2.h);
                        tutorialPopup2.f.setViewPager(tutorialPopup2.f16976a);
                        tutorialPopup2.e = new ArrayList<>(tutorialPopup2.f16977b.size());
                        for (int i = 0; i < tutorialPopup2.f16977b.size(); i++) {
                            Context context = tutorialPopup2.f16978c.getContext();
                            TutorialPageModel tutorialPageModel = tutorialPopup2.f16977b.get(i);
                            TutorialStepMarker tutorialStepMarker = new TutorialStepMarker(context);
                            tutorialPopup2.f16979d.addView(tutorialStepMarker);
                            tutorialPopup2.e.add(tutorialStepMarker);
                            tutorialStepMarker.setImageResource(tutorialPageModel.getIconRes());
                            tutorialStepMarker.setText(tutorialPageModel.getTopTitle().toString());
                            if (i > 0) {
                                ((ViewGroup.MarginLayoutParams) tutorialStepMarker.getLayoutParams()).setMarginStart(CallAppApplication.get().getResources().getDimensionPixelOffset(2131165583));
                                tutorialStepMarker.setShouldResizeUponCurrentStep(true);
                                if (i == tutorialPopup2.f16977b.size() - 1) {
                                    tutorialPopup2.g = (RippleBackground) LayoutInflater.from(context).inflate(2131559120, (ViewGroup) tutorialStepMarker, false);
                                    RippleBackground rippleBackground = tutorialPopup2.g;
                                    ((ViewGroup) tutorialStepMarker.findViewById(2131363050)).addView(rippleBackground);
                                    ((FrameLayout.LayoutParams) rippleBackground.getLayoutParams()).gravity = 17;
                                }
                            }
                        }
                        tutorialPopup2.setCurrentItem(a2, false);
                    }
                    NotificationManager.get().a(4);
                }
            });
            PopupManager.get().a(activity, this.i);
            this.h = false;
        }
    }

    @Override // com.callapp.contacts.widget.tutorial.TutorialPopup.TutorialPopupListener
    public final void a(String str) {
        this.f17004d.setCurrentPage(str);
    }

    @Override // com.callapp.contacts.widget.tutorial.command.events.OnFinishedTutorialListener
    public final void b() {
        TutorialPopup tutorialPopup = this.i;
        if (tutorialPopup != null) {
            tutorialPopup.dismiss();
            this.i = null;
            this.h = false;
        }
    }

    public final void c() {
        WelcomeTutorialWidgetManager welcomeTutorialWidgetManager = this.f;
        if (welcomeTutorialWidgetManager != null) {
            welcomeTutorialWidgetManager.l();
        } else {
            this.j.removeCallbacks(this.k);
        }
    }

    public final void d() {
        WelcomeTutorialWidgetManager welcomeTutorialWidgetManager = this.f;
        if (welcomeTutorialWidgetManager != null) {
            welcomeTutorialWidgetManager.m();
            return;
        }
        this.j.removeCallbacks(this.k);
        this.j.postDelayed(this.k, 4000L);
    }

    @v(a = j.a.ON_DESTROY)
    public void onDestroy() {
        this.f17003c.b(OnFinishedTutorialListener.f17020a, this);
        this.e = null;
        WelcomeTutorialWidgetManager welcomeTutorialWidgetManager = this.f;
        if (welcomeTutorialWidgetManager != null) {
            welcomeTutorialWidgetManager.f16790a = null;
            welcomeTutorialWidgetManager.f16791b = null;
        }
        b();
        Runnable runnable = this.k;
        if (runnable != null) {
            this.j.removeCallbacks(runnable);
        }
    }
}
