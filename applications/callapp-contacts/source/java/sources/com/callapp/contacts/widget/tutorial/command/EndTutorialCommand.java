package com.callapp.contacts.widget.tutorial.command;

import android.content.Intent;
import com.callapp.contacts.activity.base.BaseActivity;
import com.callapp.contacts.activity.marketplace.MarketPlaceActivity;
import com.callapp.contacts.event.bus.EventBus;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.inAppBilling.BillingManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.widget.tutorial.command.TutorialCommand;
import com.callapp.contacts.widget.tutorial.command.events.OnFinishedTutorialListener;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/tutorial/command/EndTutorialCommand.class */
public class EndTutorialCommand extends TutorialCommand {
    public EndTutorialCommand(EventBus eventBus) {
        super(eventBus);
    }

    @Override // com.callapp.contacts.widget.tutorial.command.TutorialCommand
    /* renamed from: a */
    protected final void mo26199a(BaseActivity baseActivity) {
        Prefs.f26344cO.m28169b(1);
        Prefs.f26513fY.set(2);
        Prefs.f26508fT.set("");
        getEventBus().m29046a((EventType<L, EventType<OnFinishedTutorialListener, Object>>) OnFinishedTutorialListener.f29566a, (EventType<OnFinishedTutorialListener, Object>) null, false);
        if (BillingManager.isBillingAvailable()) {
            Activities.m27656b(baseActivity, new Intent(baseActivity, MarketPlaceActivity.class));
            AnalyticsManager.get().mo28446a(Constants.REGISTRATION, "Tutorial Ended", "User finished tutorial and got a gift token", 0.0d);
        }
        AnalyticsManager.get().mo28422d();
    }

    @Override // com.callapp.contacts.widget.tutorial.command.TutorialCommand
    public TutorialCommand.COMMAND_TYPE getCommandType() {
        return TutorialCommand.COMMAND_TYPE.INFORMATIVE;
    }
}
