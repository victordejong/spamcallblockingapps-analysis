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

    /* renamed from: a  reason: collision with root package name */
    private boolean f17008a = true;

    public CallAppPlusTutorialCommand(EventBus eventBus) {
        super(eventBus);
    }

    @Override // com.callapp.contacts.widget.tutorial.command.TutorialCommand
    protected final void a(final BaseActivity baseActivity) {
        if (Activities.getNotificationListenersSettingsScreenIntent() != null && !Activities.b()) {
            Runnable runnable = new Runnable() { // from class: com.callapp.contacts.widget.tutorial.command.CallAppPlusTutorialCommand.1
                @Override // java.lang.Runnable
                public void run() {
                    AnalyticsManager.get().a(Constants.PERMISSIONS, "ClickAllowPermissionToNotification", "TutorialCallAppPlus");
                    Activities.b(baseActivity, new PopupDoneListener() { // from class: com.callapp.contacts.widget.tutorial.command.CallAppPlusTutorialCommand.1.1
                        @Override // com.callapp.contacts.manager.popup.PopupDoneListener
                        public void popupDone(boolean z) {
                            CallAppPlusTutorialCommand.this.getEventBus().a((EventType<L, EventType<OnCommandDoneListener, TutorialCommand.COMMAND_TYPE>>) OnCommandDoneListener.i, (EventType<OnCommandDoneListener, TutorialCommand.COMMAND_TYPE>) CallAppPlusTutorialCommand.this.getCommandType(), false);
                        }
                    });
                }
            };
            if (this.f17008a) {
                this.f17008a = false;
                PermissionManager.get().a(baseActivity, runnable, runnable, PermissionManager.PermissionGroup.SMS);
                return;
            }
            runnable.run();
        }
    }

    @Override // com.callapp.contacts.widget.tutorial.command.TutorialCommand
    public TutorialCommand.COMMAND_TYPE getCommandType() {
        return TutorialCommand.COMMAND_TYPE.NOT_MANDATORY;
    }
}
