package com.callapp.contacts.widget.tutorial.command;

import com.callapp.contacts.activity.base.BaseActivity;
import com.callapp.contacts.event.bus.EventBus;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.util.PowerUtils;
import com.callapp.contacts.widget.tutorial.command.TutorialCommand;
import com.callapp.contacts.widget.tutorial.command.events.OnCommandDoneListener;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/tutorial/command/RunInBackgroundCommand.class */
public class RunInBackgroundCommand extends TutorialCommand {
    public RunInBackgroundCommand(EventBus eventBus) {
        super(eventBus);
    }

    /* renamed from: a */
    public /* synthetic */ void m26200a() {
        getEventBus().m29046a((EventType<L, EventType<OnCommandDoneListener, TutorialCommand.COMMAND_TYPE>>) OnCommandDoneListener.f29565i, (EventType<OnCommandDoneListener, TutorialCommand.COMMAND_TYPE>) getCommandType(), false);
    }

    @Override // com.callapp.contacts.widget.tutorial.command.TutorialCommand
    /* renamed from: a */
    protected final void mo26199a(BaseActivity baseActivity) {
        PowerUtils.m27429a(baseActivity, new Task.DoneListener() { // from class: com.callapp.contacts.widget.tutorial.command._$$Lambda$RunInBackgroundCommand$3DosD7sw5k0WSnJuaRZGsz8N_4I
            @Override // com.callapp.contacts.manager.task.Task.DoneListener
            public final void onDone() {
                RunInBackgroundCommand.this.m26200a();
            }
        });
    }

    @Override // com.callapp.contacts.widget.tutorial.command.TutorialCommand
    public TutorialCommand.COMMAND_TYPE getCommandType() {
        return TutorialCommand.COMMAND_TYPE.MANDATORY;
    }
}
