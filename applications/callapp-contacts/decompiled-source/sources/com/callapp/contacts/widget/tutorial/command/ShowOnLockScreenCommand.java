package com.callapp.contacts.widget.tutorial.command;

import android.app.Activity;
import android.content.Intent;
import com.callapp.contacts.activity.base.BaseActivity;
import com.callapp.contacts.event.bus.EventBus;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.popup.ActivityResult;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.callappRomHelper.romHelper.miui.MIUIHelper;
import com.callapp.contacts.widget.tutorial.command.TutorialCommand;
import com.callapp.contacts.widget.tutorial.command.events.OnCommandDoneListener;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/tutorial/command/ShowOnLockScreenCommand.class */
public class ShowOnLockScreenCommand extends TutorialCommand {
    public ShowOnLockScreenCommand(EventBus eventBus) {
        super(eventBus);
    }

    @Override // com.callapp.contacts.widget.tutorial.command.TutorialCommand
    protected final void a(BaseActivity baseActivity) {
        Activities.a(baseActivity, MIUIHelper.c(baseActivity), new ActivityResult() { // from class: com.callapp.contacts.widget.tutorial.command.ShowOnLockScreenCommand.1
            @Override // com.callapp.contacts.manager.popup.ActivityResult
            public void onActivityResult(Activity activity, int i, int i2, Intent intent) {
                ShowOnLockScreenCommand.this.getEventBus().a((EventType<L, EventType<OnCommandDoneListener, TutorialCommand.COMMAND_TYPE>>) OnCommandDoneListener.i, (EventType<OnCommandDoneListener, TutorialCommand.COMMAND_TYPE>) ShowOnLockScreenCommand.this.getCommandType(), false);
            }
        });
        new Task() { // from class: com.callapp.contacts.widget.tutorial.command.ShowOnLockScreenCommand.2
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                FeedbackManager.get().a(Activities.getString(2131886817), (Integer) 16, 3);
            }
        }.schedule(2000);
    }

    @Override // com.callapp.contacts.widget.tutorial.command.TutorialCommand
    public TutorialCommand.COMMAND_TYPE getCommandType() {
        return TutorialCommand.COMMAND_TYPE.NOT_MANDATORY;
    }
}
