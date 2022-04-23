package com.callapp.contacts.widget.floatingwidget.ui.callapp;

import android.content.Context;
import com.callapp.contacts.widget.floatingwidget.ui.ChatHeadManager;
import com.facebook.rebound.k;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/floatingwidget/ui/callapp/MarketPlaceInActivityWidget.class */
public class MarketPlaceInActivityWidget extends InActivityWidget {
    public MarketPlaceInActivityWidget(ChatHeadManager chatHeadManager, k kVar, Context context, boolean z) {
        super(chatHeadManager, kVar, context, z);
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.callapp.InActivityWidget
    protected final boolean e() {
        return true;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.callapp.InActivityWidget
    int getIconResId() {
        return 2131232214;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.callapp.InActivityWidget
    protected int getLayoutResource() {
        return 2131558850;
    }
}
