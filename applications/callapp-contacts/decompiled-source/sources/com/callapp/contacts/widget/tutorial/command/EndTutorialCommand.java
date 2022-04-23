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
    protected final void a(BaseActivity baseActivity) {
        Prefs.cO.b(1);
        Prefs.fY.set(2);
        Prefs.fT.set("");
        getEventBus().a((EventType<L, EventType<OnFinishedTutorialListener, Object>>) OnFinishedTutorialListener.f17020a, (EventType<OnFinishedTutorialListener, Object>) null, false);
        if (BillingManager.isBillingAvailable()) {
            Activities.b(baseActivity, new Intent(baseActivity, MarketPlaceActivity.class));
            AnalyticsManager.get().a(Constants.REGISTRATION, "Tutorial Ended", "User finished tutorial and got a gift token", 0.0d);
        }
        AnalyticsManager.get().d();
    }

    @Override // com.callapp.contacts.widget.tutorial.command.TutorialCommand
    public TutorialCommand.COMMAND_TYPE getCommandType() {
        return TutorialCommand.COMMAND_TYPE.INFORMATIVE;
    }
}
