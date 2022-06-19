package com.callapp.contacts.widget.tutorial.command;

import com.callapp.contacts.activity.base.BaseActivity;
import com.callapp.contacts.event.bus.EventBus;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.permission.PermissionManager;
import com.callapp.contacts.manager.popup.PopupDoneListener;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.widget.tutorial.command.TutorialCommand;
import com.callapp.contacts.widget.tutorial.command.events.OnCommandDoneListener;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/tutorial/command/CallAppPlusTutorialCommand.class */
public class CallAppPlusTutorialCommand extends TutorialCommand {

    /* renamed from: a */
    private boolean f29553a = true;

    public CallAppPlusTutorialCommand(EventBus eventBus) {
        super(eventBus);
    }

    @Override // com.callapp.contacts.widget.tutorial.command.TutorialCommand
    /* renamed from: a */
    protected final void mo26199a(final BaseActivity baseActivity) {
        if (Activities.getNotificationListenersSettingsScreenIntent() == null || Activities.m27661b()) {
            return;
        }
        Runnable runnable = new Runnable() { // from class: com.callapp.contacts.widget.tutorial.command.CallAppPlusTutorialCommand.1
            @Override // java.lang.Runnable
            public void run() {
                AnalyticsManager.get().m28449a(Constants.PERMISSIONS, "ClickAllowPermissionToNotification", "TutorialCallAppPlus");
                Activities.m27658b(baseActivity, new PopupDoneListener() { // from class: com.callapp.contacts.widget.tutorial.command.CallAppPlusTutorialCommand.1.1
                    @Override // com.callapp.contacts.manager.popup.PopupDoneListener
                    public void popupDone(boolean z) {
                        CallAppPlusTutorialCommand.this.getEventBus().m29046a((EventType<L, EventType<OnCommandDoneListener, TutorialCommand.COMMAND_TYPE>>) OnCommandDoneListener.f29565i, (EventType<OnCommandDoneListener, TutorialCommand.COMMAND_TYPE>) CallAppPlusTutorialCommand.this.getCommandType(), false);
                    }
                });
            }
        };
        if (!this.f29553a) {
            runnable.run();
            return;
        }
        this.f29553a = false;
        PermissionManager.get().m28254a(baseActivity, runnable, runnable, PermissionManager.PermissionGroup.SMS);
    }

    @Override // com.callapp.contacts.widget.tutorial.command.TutorialCommand
    public TutorialCommand.COMMAND_TYPE getCommandType() {
        return TutorialCommand.COMMAND_TYPE.NOT_MANDATORY;
    }
}
