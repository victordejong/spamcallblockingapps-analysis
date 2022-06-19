package com.callapp.contacts.widget.tutorial.command;

import android.app.Activity;
import android.content.Intent;
import com.callapp.contacts.activity.base.BaseActivity;
import com.callapp.contacts.event.bus.EventBus;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.manager.popup.ActivityResult;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.callappRomHelper.romHelper.miui.MIUIHelper;
import com.callapp.contacts.widget.tutorial.command.TutorialCommand;
import com.callapp.contacts.widget.tutorial.command.events.OnCommandDoneListener;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/tutorial/command/MIUIAppBatterSaverCommand.class */
public class MIUIAppBatterSaverCommand extends TutorialCommand {
    public MIUIAppBatterSaverCommand(EventBus eventBus) {
        super(eventBus);
    }

    @Override // com.callapp.contacts.widget.tutorial.command.TutorialCommand
    /* renamed from: a */
    protected final void mo26199a(BaseActivity baseActivity) {
        Activities.m27683a(baseActivity, MIUIHelper.getMIUIBatterSaverIntent(), new ActivityResult() { // from class: com.callapp.contacts.widget.tutorial.command.MIUIAppBatterSaverCommand.1
            @Override // com.callapp.contacts.manager.popup.ActivityResult
            public void onActivityResult(Activity activity, int i, int i2, Intent intent) {
                MIUIAppBatterSaverCommand.this.getEventBus().m29046a((EventType<L, EventType<OnCommandDoneListener, TutorialCommand.COMMAND_TYPE>>) OnCommandDoneListener.f29565i, (EventType<OnCommandDoneListener, TutorialCommand.COMMAND_TYPE>) MIUIAppBatterSaverCommand.this.getCommandType(), false);
            }
        });
    }

    @Override // com.callapp.contacts.widget.tutorial.command.TutorialCommand
    public TutorialCommand.COMMAND_TYPE getCommandType() {
        return TutorialCommand.COMMAND_TYPE.NOT_MANDATORY;
    }
}
