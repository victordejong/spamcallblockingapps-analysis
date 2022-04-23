package com.callapp.contacts.widget.tutorial.command.events;

import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.widget.tutorial.command.TutorialCommand;
import com.callapp.contacts.widget.tutorial.command.events.-$;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/tutorial/command/events/_$$Lambda$OnCommandDoneListener$M4XOEMxdkbnuQD__7wpzecTQ1aY.class */
public final /* synthetic */ class _$$Lambda$OnCommandDoneListener$M4XOEMxdkbnuQD__7wpzecTQ1aY implements EventType {
    public static final /* synthetic */ -$.Lambda.OnCommandDoneListener.M4XOEMxdkbnuQD_-7wpzecTQ1aY INSTANCE = new _$$Lambda$OnCommandDoneListener$M4XOEMxdkbnuQD__7wpzecTQ1aY();

    private /* synthetic */ _$$Lambda$OnCommandDoneListener$M4XOEMxdkbnuQD__7wpzecTQ1aY() {
    }

    @Override // com.callapp.contacts.event.bus.EventType
    public final void fire(Object obj, Object obj2) {
        ((OnCommandDoneListener) obj).a((TutorialCommand.COMMAND_TYPE) obj2);
    }
}
