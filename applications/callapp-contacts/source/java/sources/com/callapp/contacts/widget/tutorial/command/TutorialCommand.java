package com.callapp.contacts.widget.tutorial.command;

import com.callapp.contacts.activity.base.BaseActivity;
import com.callapp.contacts.api.ContextRunnable;
import com.callapp.contacts.event.bus.EventBus;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/tutorial/command/TutorialCommand.class */
public abstract class TutorialCommand implements ContextRunnable<BaseActivity> {

    /* renamed from: a */
    private EventBus f29564a;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE.class */
    public enum COMMAND_TYPE {
        MANDATORY,
        NOT_MANDATORY,
        INFORMATIVE
    }

    public TutorialCommand() {
        this.f29564a = null;
    }

    public TutorialCommand(EventBus eventBus) {
        this.f29564a = null;
        this.f29564a = eventBus;
    }

    /* renamed from: a */
    protected abstract void mo26199a(BaseActivity baseActivity);

    /* renamed from: b */
    public final void run(BaseActivity baseActivity) {
        if (baseActivity != null) {
            mo26199a(baseActivity);
        }
    }

    public abstract COMMAND_TYPE getCommandType();

    public EventBus getEventBus() {
        return this.f29564a;
    }
}
