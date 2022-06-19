package com.callapp.contacts.widget.floatingwidget.p240ui.callapp;

import android.app.Activity;
import android.content.Context;
import android.graphics.Point;
import android.util.DisplayMetrics;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.CallAppRemoteConfigManager;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.widget.floatingwidget.p240ui.ChatHead;
import com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadCloseButton;
import com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadConfig;
import com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadContainer;
import com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadListener;
import com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadManager;
import com.callapp.contacts.widget.floatingwidget.p240ui.callapp.CallAppInActivityChatHeadManager;
import com.callapp.contacts.widget.tutorial.TutorialPageManager;
import com.callapp.framework.util.CollectionUtils;
/* renamed from: com.callapp.contacts.widget.floatingwidget.ui.callapp.WelcomeTutorialWidgetManager */
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager.class */
public class WelcomeTutorialWidgetManager extends CallAppInActivityChatHeadManager implements ChatHeadListener<String>, ChatHeadManager.OnItemSelectedListener<String> {

    /* renamed from: a */
    public OnWidgetAddedListener f29236a;

    /* renamed from: b */
    public CallAppInActivityChatHeadManager.OnWidgetClickedListener f29237b;

    /* renamed from: d */
    private final TutorialPageManager f29238d;

    /* renamed from: com.callapp.contacts.widget.floatingwidget.ui.callapp.WelcomeTutorialWidgetManager$OnWidgetAddedListener */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager$OnWidgetAddedListener.class */
    public interface OnWidgetAddedListener {
        void onWidgetAdded();
    }

    public WelcomeTutorialWidgetManager(Activity activity, ChatHeadContainer chatHeadContainer, TutorialPageManager tutorialPageManager, OnWidgetAddedListener onWidgetAddedListener) {
        super(activity, chatHeadContainer);
        this.f29238d = tutorialPageManager;
        this.f29236a = onWidgetAddedListener;
        setListener(this);
        setOnItemSelectedListener(this);
    }

    /* renamed from: n */
    public /* synthetic */ void m26431n() {
        getListener().mo26438a(0);
    }

    /* renamed from: o */
    public /* synthetic */ void m26430o() {
        getListener().mo26438a(1);
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.container.DefaultChatHeadManager
    /* renamed from: a */
    public final /* synthetic */ ChatHead<String> mo26418a(String str, boolean z) {
        if (str.equals("welcomeTutorial")) {
            return new WelcomeTutorialWidget(this, getSpringSystem(), getContext(), z);
        }
        ChatHeadConfig chatHeadConfig = new ChatHeadConfig();
        chatHeadConfig.setHeadWidth((int) CallAppApplication.get().getResources().getDimension(2131166141));
        chatHeadConfig.setHeadHeight((int) CallAppApplication.get().getResources().getDimension(2131166141));
        chatHeadConfig.setInitialPosition(new Point(getMaxWidth() - chatHeadConfig.getHeadWidth(), (int) (getMaxHeight() * 0.1d)));
        chatHeadConfig.setMaxChatHeads(1);
        setConfig(chatHeadConfig);
        return new WelcomeTutorialMinimizedWidget(this, getSpringSystem(), getContext(), z);
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.callapp.CallAppInActivityChatHeadManager, com.callapp.contacts.widget.floatingwidget.p240ui.container.DefaultChatHeadManager
    /* renamed from: a */
    public final ChatHeadConfig mo26424a(Context context) {
        ChatHeadConfig mo26424a = super.mo26424a(context);
        if (Prefs.f26511fW.get().intValue() == -1) {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            getActivity().getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
            int i = displayMetrics.heightPixels;
            Prefs.f26511fW.set(Integer.valueOf(displayMetrics.widthPixels - mo26424a.getHeadWidth()));
            Prefs.f26512fX.set(Integer.valueOf(i / 2));
        }
        mo26424a.setInitialPosition(new Point(Prefs.f26511fW.get().intValue(), Prefs.f26512fX.get().intValue()));
        return mo26424a;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.container.DefaultChatHeadManager, com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadManager
    /* renamed from: a */
    public final void mo26427a(double d, double d2) {
        if (((InActivityWidget) getChatHeads().get(0)).getIconOrientation() == 1) {
            Prefs.f26511fW.set(Integer.valueOf(getMaxWidth() - getConfig().getHeadWidth()));
        } else {
            Prefs.f26511fW.set(0);
        }
        if (d2 < 0.0d) {
            Prefs.f26512fX.set(0);
        } else if (getConfig().getHeadWidth() + d2 > getMaxHeight()) {
            Prefs.f26512fX.set(Integer.valueOf(getMaxHeight()));
        } else {
            Prefs.f26512fX.set(Integer.valueOf((int) d2));
        }
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadListener
    /* renamed from: a */
    public final void mo26438a(int i) {
        mo26407e();
        if (i != 1) {
            Prefs.f26513fY.set(2);
            mo26407e();
            return;
        }
        mo26417a((WelcomeTutorialWidgetManager) "welcomeTutorialMinimized", false, true);
        Prefs.f26513fY.set(1);
        FeedbackManager.get().m28669a(Activities.getString(2131888251), (Integer) null);
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadManager.OnItemSelectedListener
    /* renamed from: a */
    public final /* synthetic */ boolean mo26437a(ChatHead chatHead) {
        CallAppInActivityChatHeadManager.OnWidgetClickedListener onWidgetClickedListener = this.f29237b;
        if (onWidgetClickedListener != null) {
            onWidgetClickedListener.mo26210a(getActivity());
            return false;
        }
        return false;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadListener
    /* renamed from: b */
    public final void mo26436b() {
    }

    public float getTutorialProgress() {
        int m28699b = (int) CallAppRemoteConfigManager.get().m28699b("tutorialPagesNumber");
        TutorialPageManager tutorialPageManager = this.f29238d;
        int m26271a = tutorialPageManager.m26271a(tutorialPageManager.getCurrentPage().getPageName());
        if (m26271a > m28699b) {
            return 1.0f;
        }
        return m26271a / m28699b;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadManager
    /* renamed from: j */
    public final boolean mo26435j() {
        return true;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.callapp.CallAppInActivityChatHeadManager
    /* renamed from: k */
    public final void mo26434k() {
        mo26407e();
        mo26417a((WelcomeTutorialWidgetManager) "welcomeTutorialMinimized", false, true);
        Prefs.f26513fY.set(1);
        FeedbackManager.get().m28669a(Activities.getString(2131888251), (Integer) null);
    }

    /* renamed from: l */
    public final void m26433l() {
        for (ChatHead<String> chatHead : getChatHeads()) {
            mo26427a(chatHead.getHorizontalSpring().f34074d.f34085a, chatHead.getVerticalSpring().f34074d.f34085a);
            chatHead.setVisibility(8);
        }
    }

    /* renamed from: m */
    public final void m26432m() {
        if (CollectionUtils.m26068b(getChatHeads())) {
            ChatHead<String> chatHead = getChatHeads().get(0);
            if (chatHead.getVisibility() == 0) {
                return;
            }
            ((InActivityWidget) chatHead).m26469c(false);
            chatHead.getHorizontalSpring().m22845a(Prefs.f26511fW.get().intValue(), true);
            chatHead.getVerticalSpring().m22845a(Prefs.f26512fX.get().intValue(), true);
            chatHead.setVisibility(0);
        }
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadListener
    /* renamed from: s_ */
    public final /* synthetic */ void mo26429s_() {
        OnWidgetAddedListener onWidgetAddedListener = this.f29236a;
        if (onWidgetAddedListener != null) {
            onWidgetAddedListener.onWidgetAdded();
        }
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.container.DefaultChatHeadManager
    public final void setChatHeadToDefaultPosition$6fde7147(ChatHead chatHead) {
        chatHead.setChatHeadToDefaultPosition(false);
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.callapp.CallAppInActivityChatHeadManager, com.callapp.contacts.widget.floatingwidget.p240ui.container.DefaultChatHeadManager
    public void setCloseButtons(int i, int i2) {
        getLeftCloseButton().setChatHeadCloseButtonData(new ChatHeadCloseButton.ChatHeadCloseButtonStruct(Activities.getString(2131887104), -1, new Runnable() { // from class: com.callapp.contacts.widget.floatingwidget.ui.callapp._$$Lambda$WelcomeTutorialWidgetManager$dymk9pxNYIIsNxDTLt5pAO9VaOY
            @Override // java.lang.Runnable
            public final void run() {
                WelcomeTutorialWidgetManager.this.m26430o();
            }
        }));
        getRightCloseButton().setChatHeadCloseButtonData(new ChatHeadCloseButton.ChatHeadCloseButtonStruct(Activities.getString(2131886785), -1, new Runnable() { // from class: com.callapp.contacts.widget.floatingwidget.ui.callapp._$$Lambda$WelcomeTutorialWidgetManager$B6CbIi0oP_dhjOCKvk12UoKqFxc
            @Override // java.lang.Runnable
            public final void run() {
                WelcomeTutorialWidgetManager.this.m26431n();
            }
        }));
        getCloseButtonShadow().setImageResource(2131230934);
        getLeftCloseButton().m26520e();
        float f = i2;
        int i3 = (int) (0.3f * f);
        int i4 = (int) (i * 0.9f);
        getLeftCloseButton().setCenter(i3, i4);
        getRightCloseButton().m26520e();
        getRightCloseButton().setCenter((int) (f * 0.8f), i4);
        getRightCloseButton().getLayoutParams().height = -2;
    }

    public void setOnWidgetClickedListener(CallAppInActivityChatHeadManager.OnWidgetClickedListener onWidgetClickedListener) {
        this.f29237b = onWidgetClickedListener;
    }
}
