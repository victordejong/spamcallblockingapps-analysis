package com.callapp.contacts.widget.floatingwidget.ui.callapp;

import android.app.Activity;
import com.callapp.contacts.widget.floatingwidget.ui.ChatHead;
import com.callapp.contacts.widget.floatingwidget.ui.ChatHeadContainer;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/floatingwidget/ui/callapp/MarketplaceWidgetManager.class */
public class MarketplaceWidgetManager extends CallAppInActivityChatHeadManager {
    public MarketplaceWidgetManager(Activity activity, ChatHeadContainer chatHeadContainer) {
        super(activity, chatHeadContainer);
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.container.DefaultChatHeadManager
    public final /* synthetic */ ChatHead<String> a(String str, boolean z) {
        return new MarketPlaceInActivityWidget(this, getSpringSystem(), getContext(), false);
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHeadManager
    public final boolean j() {
        return false;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.container.DefaultChatHeadManager
    public final void setChatHeadToDefaultPosition$6fde7147(ChatHead chatHead) {
        chatHead.getHorizontalSpring().c(100.0d);
        chatHead.getHorizontalSpring().b(getMaxWidth() - getConfig().getHeadWidth());
        chatHead.getVerticalSpring().c(100.0d);
        chatHead.getVerticalSpring().b(getMaxHeight() / 3);
    }
}
