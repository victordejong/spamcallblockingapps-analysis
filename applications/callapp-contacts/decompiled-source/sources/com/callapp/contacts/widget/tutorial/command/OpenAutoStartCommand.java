package com.callapp.contacts.widget.tutorial.command;

import android.app.Activity;
import android.content.Intent;
import com.callapp.contacts.activity.base.BaseActivity;
import com.callapp.contacts.event.bus.EventBus;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.manager.popup.ActivityResult;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.util.callappRomHelper.AutoStartPermissionHelper;
import com.callapp.contacts.widget.tutorial.command.TutorialCommand;
import com.callapp.contacts.widget.tutorial.command.events.OnCommandDoneListener;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/tutorial/command/OpenAutoStartCommand.class */
public class OpenAutoStartCommand extends TutorialCommand {
    public OpenAutoStartCommand(EventBus eventBus) {
        super(eventBus);
    }

    @Override // com.callapp.contacts.widget.tutorial.command.TutorialCommand
    protected final void a(BaseActivity baseActivity) {
        AutoStartPermissionHelper.getInstance().a(baseActivity, new ActivityResult() { // from class: com.callapp.contacts.widget.tutorial.command.OpenAutoStartCommand.1
            @Override // com.callapp.contacts.manager.popup.ActivityResult
            public void onActivityResult(Activity activity, int i, int i2, Intent intent) {
                OpenAutoStartCommand.this.getEventBus().a((EventType<L, EventType<OnCommandDoneListener, TutorialCommand.COMMAND_TYPE>>) OnCommandDoneListener.i, (EventType<OnCommandDoneListener, TutorialCommand.COMMAND_TYPE>) OpenAutoStartCommand.this.getCommandType(), false);
            }
        });
        Prefs.cc.set(Boolean.TRUE);
    }

    @Override // com.callapp.contacts.widget.tutorial.command.TutorialCommand
    public TutorialCommand.COMMAND_TYPE getCommandType() {
        return TutorialCommand.COMMAND_TYPE.NOT_MANDATORY;
    }
}
