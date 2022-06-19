package com.callapp.contacts.widget.floatingwidget.p240ui.callapp;

import android.app.Activity;
import com.callapp.contacts.widget.floatingwidget.p240ui.ChatHead;
import com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadContainer;
/* renamed from: com.callapp.contacts.widget.floatingwidget.ui.callapp.MarketplaceWidgetManager */
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/floatingwidget/ui/callapp/MarketplaceWidgetManager.class */
public class MarketplaceWidgetManager extends CallAppInActivityChatHeadManager {
    public MarketplaceWidgetManager(Activity activity, ChatHeadContainer chatHeadContainer) {
        super(activity, chatHeadContainer);
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.container.DefaultChatHeadManager
    /* renamed from: a */
    public final /* synthetic */ ChatHead<String> mo26418a(String str, boolean z) {
        return new MarketPlaceInActivityWidget(this, getSpringSystem(), getContext(), false);
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadManager
    /* renamed from: j */
    public final boolean mo26435j() {
        return false;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.container.DefaultChatHeadManager
    public final void setChatHeadToDefaultPosition$6fde7147(ChatHead chatHead) {
        chatHead.getHorizontalSpring().m22837c(100.0d);
        chatHead.getHorizontalSpring().m22840b(getMaxWidth() - getConfig().getHeadWidth());
        chatHead.getVerticalSpring().m22837c(100.0d);
        chatHead.getVerticalSpring().m22840b(getMaxHeight() / 3);
    }
}
