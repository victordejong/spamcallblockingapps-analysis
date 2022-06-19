package com.callapp.contacts.widget.tutorial.command;

import com.callapp.contacts.activity.base.BaseActivity;
import com.callapp.contacts.event.bus.EventBus;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.manager.popup.PopupDoneListener;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.widget.tutorial.command.TutorialCommand;
import com.callapp.contacts.widget.tutorial.command.events.OnCommandDoneListener;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/tutorial/command/DrawOverAppsCommand.class */
public class DrawOverAppsCommand extends TutorialCommand {
    public DrawOverAppsCommand(EventBus eventBus) {
        super(eventBus);
    }

    @Override // com.callapp.contacts.widget.tutorial.command.TutorialCommand
    /* renamed from: a */
    protected final void mo26199a(BaseActivity baseActivity) {
        Activities.m27649c(baseActivity, new PopupDoneListener() { // from class: com.callapp.contacts.widget.tutorial.command.DrawOverAppsCommand.1
            @Override // com.callapp.contacts.manager.popup.PopupDoneListener
            public void popupDone(boolean z) {
                DrawOverAppsCommand.this.getEventBus().m29046a((EventType<L, EventType<OnCommandDoneListener, TutorialCommand.COMMAND_TYPE>>) OnCommandDoneListener.f29565i, (EventType<OnCommandDoneListener, TutorialCommand.COMMAND_TYPE>) DrawOverAppsCommand.this.getCommandType(), false);
            }
        });
    }

    @Override // com.callapp.contacts.widget.tutorial.command.TutorialCommand
    public TutorialCommand.COMMAND_TYPE getCommandType() {
        return TutorialCommand.COMMAND_TYPE.NOT_MANDATORY;
    }
}
