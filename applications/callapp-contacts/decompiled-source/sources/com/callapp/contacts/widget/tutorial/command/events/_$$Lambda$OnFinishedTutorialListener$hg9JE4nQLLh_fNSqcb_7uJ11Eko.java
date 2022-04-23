package com.callapp.contacts.widget.tutorial.command.events;

import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.widget.tutorial.command.events.-$;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/tutorial/command/events/_$$Lambda$OnFinishedTutorialListener$hg9JE4nQLLh_fNSqcb_7uJ11Eko.class */
public final /* synthetic */ class _$$Lambda$OnFinishedTutorialListener$hg9JE4nQLLh_fNSqcb_7uJ11Eko implements EventType {
    public static final /* synthetic */ -$.Lambda.OnFinishedTutorialListener.hg9JE4nQLLh-fNSqcb-7uJ11Eko INSTANCE = new _$$Lambda$OnFinishedTutorialListener$hg9JE4nQLLh_fNSqcb_7uJ11Eko();

    private /* synthetic */ _$$Lambda$OnFinishedTutorialListener$hg9JE4nQLLh_fNSqcb_7uJ11Eko() {
    }

    @Override // com.callapp.contacts.event.bus.EventType
    public final void fire(Object obj, Object obj2) {
        ((OnFinishedTutorialListener) obj).b();
    }
}
