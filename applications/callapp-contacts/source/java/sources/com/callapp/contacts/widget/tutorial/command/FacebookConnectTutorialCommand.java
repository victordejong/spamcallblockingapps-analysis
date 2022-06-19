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
    /* renamed from: a */
    public final void mo26206a() {
        getEventBus().m29046a((EventType<L, EventType<OnCommandDoneListener, TutorialCommand.COMMAND_TYPE>>) OnCommandDoneListener.f29565i, (EventType<OnCommandDoneListener, TutorialCommand.COMMAND_TYPE>) getCommandType(), false);
    }

    @Override // com.callapp.contacts.widget.tutorial.command.TutorialCommand
    /* renamed from: a */
    protected final void mo26199a(BaseActivity baseActivity) {
        FacebookHelper.get().setLoginListener(this);
        FacebookHelper.get().m29241b(baseActivity);
    }

    @Override // com.callapp.contacts.api.helper.common.LoginListener
    /* renamed from: b */
    public final void mo26205b() {
        getEventBus().m29046a((EventType<L, EventType<OnCommandDoneListener, TutorialCommand.COMMAND_TYPE>>) OnCommandDoneListener.f29565i, (EventType<OnCommandDoneListener, TutorialCommand.COMMAND_TYPE>) getCommandType(), false);
    }

    @Override // com.callapp.contacts.api.helper.common.LoginListener
    /* renamed from: b */
    public final void mo26204b(String str) {
    }

    @Override // com.callapp.contacts.api.helper.common.LoginListener
    /* renamed from: c */
    public final void mo26203c() {
        mo26205b();
    }

    @Override // com.callapp.contacts.widget.tutorial.command.TutorialCommand
    public TutorialCommand.COMMAND_TYPE getCommandType() {
        return TutorialCommand.COMMAND_TYPE.INFORMATIVE;
    }
}
