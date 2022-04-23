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

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a() {
        getEventBus().a((EventType<L, EventType<OnCommandDoneListener, TutorialCommand.COMMAND_TYPE>>) OnCommandDoneListener.i, (EventType<OnCommandDoneListener, TutorialCommand.COMMAND_TYPE>) getCommandType(), false);
        AnalyticsManager.get().a(Constants.PERMISSIONS, "location - permission", com.mopub.common.Constants.TAS_DENIED);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b() {
        getEventBus().a((EventType<L, EventType<OnCommandDoneListener, TutorialCommand.COMMAND_TYPE>>) OnCommandDoneListener.i, (EventType<OnCommandDoneListener, TutorialCommand.COMMAND_TYPE>) getCommandType(), false);
        AnalyticsManager.get().a(Constants.PERMISSIONS, "location - permission", "granted");
    }

    @Override // com.callapp.contacts.widget.tutorial.command.TutorialCommand
    protected final void a(BaseActivity baseActivity) {
        PermissionManager.get().a(baseActivity, new Runnable() { // from class: com.callapp.contacts.widget.tutorial.command._$$Lambda$LocationTutorialCommand$kzkOJQrEI5tXt9kVpm7Ng_Y7ZVM
            @Override // java.lang.Runnable
            public final void run() {
                LocationTutorialCommand.this.b();
            }
        }, new Runnable() { // from class: com.callapp.contacts.widget.tutorial.command._$$Lambda$LocationTutorialCommand$XjRh26QqIVptDDjmIc092JfqP5g
            @Override // java.lang.Runnable
            public final void run() {
                LocationTutorialCommand.this.a();
            }
        }, PermissionManager.PermissionGroup.LOCATION);
    }

    @Override // com.callapp.contacts.widget.tutorial.command.TutorialCommand
    public TutorialCommand.COMMAND_TYPE getCommandType() {
        return TutorialCommand.COMMAND_TYPE.MANDATORY;
    }
}
