package com.callapp.contacts.widget.floatingwidget.p240ui.callapp;

import android.app.Activity;
import android.content.Context;
import android.graphics.Point;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.widget.floatingwidget.p240ui.ChatHead;
import com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadCloseButton;
import com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadConfig;
import com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadContainer;
import com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadDefaultConfig;
import com.callapp.contacts.widget.floatingwidget.p240ui.container.DefaultChatHeadManager;
import com.callapp.framework.util.CollectionUtils;
/* renamed from: com.callapp.contacts.widget.floatingwidget.ui.callapp.CallAppInActivityChatHeadManager */
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppInActivityChatHeadManager.class */
public abstract class CallAppInActivityChatHeadManager extends DefaultChatHeadManager<String> {

    /* renamed from: com.callapp.contacts.widget.floatingwidget.ui.callapp.CallAppInActivityChatHeadManager$OnWidgetClickedListener */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppInActivityChatHeadManager$OnWidgetClickedListener.class */
    public interface OnWidgetClickedListener {
        /* renamed from: a */
        void mo26210a(Activity activity);
    }

    public CallAppInActivityChatHeadManager(Activity activity, ChatHeadContainer chatHeadContainer) {
        super(activity, chatHeadContainer);
        getLeftCloseButton().setChatHeadCloseButtonData(new ChatHeadCloseButton.ChatHeadCloseButtonStruct(Activities.getString(2131886777), 2131231602, new Runnable() { // from class: com.callapp.contacts.widget.floatingwidget.ui.callapp._$$Lambda$CallAppInActivityChatHeadManager$U3R7Tm61dG6kOMn4UAAAdFBgvsA
            @Override // java.lang.Runnable
            public final void run() {
                CallAppInActivityChatHeadManager.this.m26476b();
            }
        }));
        getCloseButtonShadow().setImageResource(2131230934);
    }

    /* renamed from: b */
    public /* synthetic */ void m26476b() {
        getListener().mo26438a(1);
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.container.DefaultChatHeadManager
    /* renamed from: a */
    public ChatHeadConfig mo26424a(Context context) {
        ChatHeadDefaultConfig chatHeadDefaultConfig = new ChatHeadDefaultConfig(context);
        chatHeadDefaultConfig.setHeadHeight(CallAppApplication.get().getResources().getDimensionPixelOffset(2131166073));
        chatHeadDefaultConfig.setHeadWidth(CallAppApplication.get().getResources().getDimensionPixelOffset(2131166073));
        chatHeadDefaultConfig.setInitialPosition(new Point(getMaxWidth() - chatHeadDefaultConfig.getHeadWidth(), getMaxHeight() / 8));
        return chatHeadDefaultConfig;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.container.DefaultChatHeadManager, com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadManager
    /* renamed from: a */
    public final void mo26425a(int i, int i2) {
        super.mo26425a(i, i2);
        if (CollectionUtils.m26068b(getChatHeads())) {
            setChatHeadToDefaultPosition$6fde7147(getChatHeads().get(0));
            getCloseButtonShadow().bringToFront();
        }
    }

    public Activity getActivity() {
        return (Activity) getContext();
    }

    /* renamed from: k */
    public void mo26434k() {
        if (CollectionUtils.m26068b(getChatHeads())) {
            for (ChatHead<String> chatHead : getChatHeads()) {
                chatHead.mo26456c();
            }
        }
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.container.DefaultChatHeadManager
    public void setCloseButtons(int i, int i2) {
        getLeftCloseButton().m26520e();
        getLeftCloseButton().setCenter((int) (i2 * 0.5f), (int) (i * 0.9f));
        getRightCloseButton().setVisibility(8);
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.container.DefaultChatHeadManager
    public void setupPosition(ChatHead<String> chatHead) {
        chatHead.getVerticalSpring().m22845a(getConfig().getInitialPosition().y, true);
        chatHead.getHorizontalSpring().m22845a(getConfig().getInitialPosition().x, true);
    }
}
