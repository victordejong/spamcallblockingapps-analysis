package com.callapp.contacts.widget.tutorial.command;

import com.callapp.contacts.activity.base.BaseActivity;
import com.callapp.contacts.api.ContextRunnable;
import com.callapp.contacts.event.bus.EventBus;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/tutorial/command/TutorialCommand.class */
public abstract class TutorialCommand implements ContextRunnable<BaseActivity> {

    /* renamed from: a  reason: collision with root package name */
    private EventBus f17019a;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE.class */
    public enum COMMAND_TYPE {
        MANDATORY,
        NOT_MANDATORY,
        INFORMATIVE
    }

    public TutorialCommand() {
        this.f17019a = null;
    }

    public TutorialCommand(EventBus eventBus) {
        this.f17019a = null;
        this.f17019a = eventBus;
    }

    protected abstract void a(BaseActivity baseActivity);

    /* renamed from: b */
    public final void run(BaseActivity baseActivity) {
        if (baseActivity != null) {
            a(baseActivity);
        }
    }

    public abstract COMMAND_TYPE getCommandType();

    /* JADX INFO: Access modifiers changed from: protected */
    public EventBus getEventBus() {
        return this.f17019a;
    }
}
