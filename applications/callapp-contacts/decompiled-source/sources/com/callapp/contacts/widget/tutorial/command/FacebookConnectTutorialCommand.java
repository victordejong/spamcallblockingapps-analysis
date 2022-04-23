package com.callapp.contacts.widget.tutorial.command;

import com.callapp.contacts.activity.base.BaseActivity;
import com.callapp.contacts.api.helper.common.LoginListener;
import com.callapp.contacts.api.helper.facebook.FacebookHelper;
import com.callapp.contacts.event.bus.EventBus;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.widget.tutorial.command.TutorialCommand;
import com.callapp.contacts.widget.tutorial.command.events.OnCommandDoneListener;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/tutorial/command/FacebookConnectTutorialCommand.class */
public class FacebookConnectTutorialCommand extends TutorialCommand implements LoginListener {
    public FacebookConnectTutorialCommand(EventBus eventBus) {
        super(eventBus);
    }

    @Override // com.callapp.contacts.api.helper.common.LoginListener
    public final void a() {
        getEventBus().a((EventType<L, EventType<OnCommandDoneListener, TutorialCommand.COMMAND_TYPE>>) OnCommandDoneListener.i, (EventType<OnCommandDoneListener, TutorialCommand.COMMAND_TYPE>) getCommandType(), false);
    }

    @Override // com.callapp.contacts.widget.tutorial.command.TutorialCommand
    protected final void a(BaseActivity baseActivity) {
        FacebookHelper.get().setLoginListener(this);
        FacebookHelper.get().b(baseActivity);
    }

    @Override // com.callapp.contacts.api.helper.common.LoginListener
    public final void b() {
        getEventBus().a((EventType<L, EventType<OnCommandDoneListener, TutorialCommand.COMMAND_TYPE>>) OnCommandDoneListener.i, (EventType<OnCommandDoneListener, TutorialCommand.COMMAND_TYPE>) getCommandType(), false);
    }

    @Override // com.callapp.contacts.api.helper.common.LoginListener
    public final void b(String str) {
    }

    @Override // com.callapp.contacts.api.helper.common.LoginListener
    public final void c() {
        b();
    }

    @Override // com.callapp.contacts.widget.tutorial.command.TutorialCommand
    public TutorialCommand.COMMAND_TYPE getCommandType() {
        return TutorialCommand.COMMAND_TYPE.INFORMATIVE;
    }
}
