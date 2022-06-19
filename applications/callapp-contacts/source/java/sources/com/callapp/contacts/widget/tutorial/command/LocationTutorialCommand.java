package com.callapp.contacts.widget.tutorial.command;

import com.callapp.contacts.activity.base.BaseActivity;
import com.callapp.contacts.event.bus.EventBus;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.permission.PermissionManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.widget.tutorial.command.TutorialCommand;
import com.callapp.contacts.widget.tutorial.command.events.OnCommandDoneListener;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/tutorial/command/LocationTutorialCommand.class */
public class LocationTutorialCommand extends TutorialCommand {
    public LocationTutorialCommand(EventBus eventBus) {
        super(eventBus);
    }

    /* renamed from: a */
    public /* synthetic */ void m26202a() {
        getEventBus().m29046a((EventType<L, EventType<OnCommandDoneListener, TutorialCommand.COMMAND_TYPE>>) OnCommandDoneListener.f29565i, (EventType<OnCommandDoneListener, TutorialCommand.COMMAND_TYPE>) getCommandType(), false);
        AnalyticsManager.get().m28449a(Constants.PERMISSIONS, "location - permission", com.mopub.common.Constants.TAS_DENIED);
    }

    /* renamed from: b */
    public /* synthetic */ void m26201b() {
        getEventBus().m29046a((EventType<L, EventType<OnCommandDoneListener, TutorialCommand.COMMAND_TYPE>>) OnCommandDoneListener.f29565i, (EventType<OnCommandDoneListener, TutorialCommand.COMMAND_TYPE>) getCommandType(), false);
        AnalyticsManager.get().m28449a(Constants.PERMISSIONS, "location - permission", "granted");
    }

    @Override // com.callapp.contacts.widget.tutorial.command.TutorialCommand
    /* renamed from: a */
    protected final void mo26199a(BaseActivity baseActivity) {
        PermissionManager.get().m28254a(baseActivity, new Runnable() { // from class: com.callapp.contacts.widget.tutorial.command._$$Lambda$LocationTutorialCommand$kzkOJQrEI5tXt9kVpm7Ng_Y7ZVM
            @Override // java.lang.Runnable
            public final void run() {
                LocationTutorialCommand.this.m26201b();
            }
        }, new Runnable() { // from class: com.callapp.contacts.widget.tutorial.command._$$Lambda$LocationTutorialCommand$XjRh26QqIVptDDjmIc092JfqP5g
            @Override // java.lang.Runnable
            public final void run() {
                LocationTutorialCommand.this.m26202a();
            }
        }, PermissionManager.PermissionGroup.LOCATION);
    }

    @Override // com.callapp.contacts.widget.tutorial.command.TutorialCommand
    public TutorialCommand.COMMAND_TYPE getCommandType() {
        return TutorialCommand.COMMAND_TYPE.MANDATORY;
    }
}
