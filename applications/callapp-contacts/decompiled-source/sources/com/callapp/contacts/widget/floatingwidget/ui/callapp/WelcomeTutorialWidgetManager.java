package com.callapp.contacts.widget.floatingwidget.ui.callapp;

import android.app.Activity;
import android.content.Context;
import android.graphics.Point;
import android.util.DisplayMetrics;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.CallAppRemoteConfigManager;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.widget.floatingwidget.ui.ChatHead;
import com.callapp.contacts.widget.floatingwidget.ui.ChatHeadCloseButton;
import com.callapp.contacts.widget.floatingwidget.ui.ChatHeadConfig;
import com.callapp.contacts.widget.floatingwidget.ui.ChatHeadContainer;
import com.callapp.contacts.widget.floatingwidget.ui.ChatHeadListener;
import com.callapp.contacts.widget.floatingwidget.ui.ChatHeadManager;
import com.callapp.contacts.widget.floatingwidget.ui.callapp.CallAppInActivityChatHeadManager;
import com.callapp.contacts.widget.tutorial.TutorialPageManager;
import com.callapp.framework.util.CollectionUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager.class */
public class WelcomeTutorialWidgetManager extends CallAppInActivityChatHeadManager implements ChatHeadListener<String>, ChatHeadManager.OnItemSelectedListener<String> {

    /* renamed from: a  reason: collision with root package name */
    public OnWidgetAddedListener f16790a;

    /* renamed from: b  reason: collision with root package name */
    public CallAppInActivityChatHeadManager.OnWidgetClickedListener f16791b;

    /* renamed from: d  reason: collision with root package name */
    private final TutorialPageManager f16792d;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidgetManager$OnWidgetAddedListener.class */
    public interface OnWidgetAddedListener {
        void onWidgetAdded();
    }

    public WelcomeTutorialWidgetManager(Activity activity, ChatHeadContainer chatHeadContainer, TutorialPageManager tutorialPageManager, OnWidgetAddedListener onWidgetAddedListener) {
        super(activity, chatHeadContainer);
        this.f16792d = tutorialPageManager;
        this.f16790a = onWidgetAddedListener;
        setListener(this);
        setOnItemSelectedListener(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void n() {
        getListener().a(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void o() {
        getListener().a(1);
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.container.DefaultChatHeadManager
    public final /* synthetic */ ChatHead<String> a(String str, boolean z) {
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

    @Override // com.callapp.contacts.widget.floatingwidget.ui.callapp.CallAppInActivityChatHeadManager, com.callapp.contacts.widget.floatingwidget.ui.container.DefaultChatHeadManager
    public final ChatHeadConfig a(Context context) {
        ChatHeadConfig a2 = super.a(context);
        if (Prefs.fW.get().intValue() == -1) {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            getActivity().getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
            int i = displayMetrics.heightPixels;
            Prefs.fW.set(Integer.valueOf(displayMetrics.widthPixels - a2.getHeadWidth()));
            Prefs.fX.set(Integer.valueOf(i / 2));
        }
        a2.setInitialPosition(new Point(Prefs.fW.get().intValue(), Prefs.fX.get().intValue()));
        return a2;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.container.DefaultChatHeadManager, com.callapp.contacts.widget.floatingwidget.ui.ChatHeadManager
    public final void a(double d2, double d3) {
        if (((InActivityWidget) getChatHeads().get(0)).getIconOrientation() == 1) {
            Prefs.fW.set(Integer.valueOf(getMaxWidth() - getConfig().getHeadWidth()));
        } else {
            Prefs.fW.set(0);
        }
        if (d3 < 0.0d) {
            Prefs.fX.set(0);
        } else if (getConfig().getHeadWidth() + d3 > getMaxHeight()) {
            Prefs.fX.set(Integer.valueOf(getMaxHeight()));
        } else {
            Prefs.fX.set(Integer.valueOf((int) d3));
        }
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHeadListener
    public final void a(int i) {
        e();
        if (i == 1) {
            a((WelcomeTutorialWidgetManager) "welcomeTutorialMinimized", false, true);
            Prefs.fY.set(1);
            FeedbackManager.get().a(Activities.getString(2131888251), (Integer) null);
            return;
        }
        Prefs.fY.set(2);
        e();
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHeadManager.OnItemSelectedListener
    public final /* synthetic */ boolean a(ChatHead chatHead) {
        CallAppInActivityChatHeadManager.OnWidgetClickedListener onWidgetClickedListener = this.f16791b;
        if (onWidgetClickedListener == null) {
            return false;
        }
        onWidgetClickedListener.a(getActivity());
        return false;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHeadListener
    public final void b() {
    }

    public float getTutorialProgress() {
        int b2 = (int) CallAppRemoteConfigManager.get().b("tutorialPagesNumber");
        TutorialPageManager tutorialPageManager = this.f16792d;
        int a2 = tutorialPageManager.a(tutorialPageManager.getCurrentPage().getPageName());
        if (a2 > b2) {
            return 1.0f;
        }
        return a2 / b2;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHeadManager
    public final boolean j() {
        return true;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.callapp.CallAppInActivityChatHeadManager
    public final void k() {
        e();
        a((WelcomeTutorialWidgetManager) "welcomeTutorialMinimized", false, true);
        Prefs.fY.set(1);
        FeedbackManager.get().a(Activities.getString(2131888251), (Integer) null);
    }

    public final void l() {
        for (ChatHead<String> chatHead : getChatHeads()) {
            a(chatHead.getHorizontalSpring().f20128d.f20129a, chatHead.getVerticalSpring().f20128d.f20129a);
            chatHead.setVisibility(8);
        }
    }

    public final void m() {
        if (CollectionUtils.b(getChatHeads())) {
            ChatHead<String> chatHead = getChatHeads().get(0);
            if (chatHead.getVisibility() != 0) {
                ((InActivityWidget) chatHead).c(false);
                chatHead.getHorizontalSpring().a(Prefs.fW.get().intValue(), true);
                chatHead.getVerticalSpring().a(Prefs.fX.get().intValue(), true);
                chatHead.setVisibility(0);
            }
        }
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHeadListener
    public final /* synthetic */ void s_() {
        OnWidgetAddedListener onWidgetAddedListener = this.f16790a;
        if (onWidgetAddedListener != null) {
            onWidgetAddedListener.onWidgetAdded();
        }
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.container.DefaultChatHeadManager
    public final void setChatHeadToDefaultPosition$6fde7147(ChatHead chatHead) {
        chatHead.setChatHeadToDefaultPosition(false);
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.callapp.CallAppInActivityChatHeadManager, com.callapp.contacts.widget.floatingwidget.ui.container.DefaultChatHeadManager
    public void setCloseButtons(int i, int i2) {
        getLeftCloseButton().setChatHeadCloseButtonData(new ChatHeadCloseButton.ChatHeadCloseButtonStruct(Activities.getString(2131887104), -1, new Runnable() { // from class: com.callapp.contacts.widget.floatingwidget.ui.callapp._$$Lambda$WelcomeTutorialWidgetManager$dymk9pxNYIIsNxDTLt5pAO9VaOY
            @Override // java.lang.Runnable
            public final void run() {
                WelcomeTutorialWidgetManager.this.o();
            }
        }));
        getRightCloseButton().setChatHeadCloseButtonData(new ChatHeadCloseButton.ChatHeadCloseButtonStruct(Activities.getString(2131886785), -1, new Runnable() { // from class: com.callapp.contacts.widget.floatingwidget.ui.callapp._$$Lambda$WelcomeTutorialWidgetManager$B6CbIi0oP_dhjOCKvk12UoKqFxc
            @Override // java.lang.Runnable
            public final void run() {
                WelcomeTutorialWidgetManager.this.n();
            }
        }));
        getCloseButtonShadow().setImageResource(2131230934);
        getLeftCloseButton().e();
        float f = i2;
        int i3 = (int) (0.3f * f);
        int i4 = (int) (i * 0.9f);
        getLeftCloseButton().setCenter(i3, i4);
        getRightCloseButton().e();
        getRightCloseButton().setCenter((int) (f * 0.8f), i4);
        getRightCloseButton().getLayoutParams().height = -2;
    }

    public void setOnWidgetClickedListener(CallAppInActivityChatHeadManager.OnWidgetClickedListener onWidgetClickedListener) {
        this.f16791b = onWidgetClickedListener;
    }
}
