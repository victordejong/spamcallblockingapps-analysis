package com.callapp.contacts.widget.tutorial.command.events;

import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.widget.tutorial.command.TutorialCommand;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/tutorial/command/events/OnCommandDoneListener.class */
public interface OnCommandDoneListener {
    public static final EventType<OnCommandDoneListener, TutorialCommand.COMMAND_TYPE> i = _$$Lambda$OnCommandDoneListener$M4XOEMxdkbnuQD__7wpzecTQ1aY.INSTANCE;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/tutorial/command/events/OnCommandDoneListener$_CC.class */
    public final /* synthetic */ class _CC {
    }

    void a(TutorialCommand.COMMAND_TYPE command_type);
}
