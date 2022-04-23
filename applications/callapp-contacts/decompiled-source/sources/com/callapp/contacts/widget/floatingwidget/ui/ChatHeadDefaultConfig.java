package com.callapp.contacts.widget.floatingwidget.ui;

import android.content.Context;
import android.graphics.Point;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.widget.floatingwidget.ChatHeadUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/floatingwidget/ui/ChatHeadDefaultConfig.class */
public class ChatHeadDefaultConfig extends ChatHeadConfig {
    public ChatHeadDefaultConfig(Context context) {
        setHeadHeight(CallAppApplication.get().getResources().getDimensionPixelOffset(2131165662));
        setHeadWidth(CallAppApplication.get().getResources().getDimensionPixelOffset(2131165662));
        setHeadHorizontalSpacing(ChatHeadUtils.a(context, 10));
        setHeadVerticalSpacing(ChatHeadUtils.a(context, 5));
        setInitialPosition(new Point(Prefs.fB.get().intValue(), Prefs.fC.get().intValue()));
        setCloseButtonHidden(false);
        setCloseButtonWidth(ChatHeadUtils.a(context, 170));
        setCloseButtonHeight(ChatHeadUtils.a(context, 60));
        setCloseButtonBottomMargin(ChatHeadUtils.a(context, 50));
        setCircularRingHeight(0);
        setCircularRingWidth(0);
        setMaxChatHeads(1);
    }
}
