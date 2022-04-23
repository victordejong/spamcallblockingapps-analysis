package com.callapp.contacts.widget.floatingwidget.ui.callapp;

import android.app.Activity;
import android.content.Context;
import android.graphics.Point;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.widget.floatingwidget.ui.ChatHead;
import com.callapp.contacts.widget.floatingwidget.ui.ChatHeadCloseButton;
import com.callapp.contacts.widget.floatingwidget.ui.ChatHeadConfig;
import com.callapp.contacts.widget.floatingwidget.ui.ChatHeadContainer;
import com.callapp.contacts.widget.floatingwidget.ui.ChatHeadDefaultConfig;
import com.callapp.contacts.widget.floatingwidget.ui.container.DefaultChatHeadManager;
import com.callapp.framework.util.CollectionUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppInActivityChatHeadManager.class */
public abstract class CallAppInActivityChatHeadManager extends DefaultChatHeadManager<String> {

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppInActivityChatHeadManager$OnWidgetClickedListener.class */
    public interface OnWidgetClickedListener {
        void a(Activity activity);
    }

    public CallAppInActivityChatHeadManager(Activity activity, ChatHeadContainer chatHeadContainer) {
        super(activity, chatHeadContainer);
        getLeftCloseButton().setChatHeadCloseButtonData(new ChatHeadCloseButton.ChatHeadCloseButtonStruct(Activities.getString(2131886777), 2131231602, new Runnable() { // from class: com.callapp.contacts.widget.floatingwidget.ui.callapp._$$Lambda$CallAppInActivityChatHeadManager$U3R7Tm61dG6kOMn4UAAAdFBgvsA
            @Override // java.lang.Runnable
            public final void run() {
                CallAppInActivityChatHeadManager.this.b();
            }
        }));
        getCloseButtonShadow().setImageResource(2131230934);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b() {
        getListener().a(1);
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.container.DefaultChatHeadManager
    public ChatHeadConfig a(Context context) {
        ChatHeadDefaultConfig chatHeadDefaultConfig = new ChatHeadDefaultConfig(context);
        chatHeadDefaultConfig.setHeadHeight(CallAppApplication.get().getResources().getDimensionPixelOffset(2131166073));
        chatHeadDefaultConfig.setHeadWidth(CallAppApplication.get().getResources().getDimensionPixelOffset(2131166073));
        chatHeadDefaultConfig.setInitialPosition(new Point(getMaxWidth() - chatHeadDefaultConfig.getHeadWidth(), getMaxHeight() / 8));
        return chatHeadDefaultConfig;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.container.DefaultChatHeadManager, com.callapp.contacts.widget.floatingwidget.ui.ChatHeadManager
    public final void a(int i, int i2) {
        super.a(i, i2);
        if (CollectionUtils.b(getChatHeads())) {
            setChatHeadToDefaultPosition$6fde7147(getChatHeads().get(0));
            getCloseButtonShadow().bringToFront();
        }
    }

    public Activity getActivity() {
        return (Activity) getContext();
    }

    public void k() {
        if (CollectionUtils.b(getChatHeads())) {
            for (ChatHead<String> chatHead : getChatHeads()) {
                chatHead.c();
            }
        }
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.container.DefaultChatHeadManager
    public void setCloseButtons(int i, int i2) {
        getLeftCloseButton().e();
        getLeftCloseButton().setCenter((int) (i2 * 0.5f), (int) (i * 0.9f));
        getRightCloseButton().setVisibility(8);
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.container.DefaultChatHeadManager
    public void setupPosition(ChatHead<String> chatHead) {
        chatHead.getVerticalSpring().a(getConfig().getInitialPosition().y, true);
        chatHead.getHorizontalSpring().a(getConfig().getInitialPosition().x, true);
    }
}
