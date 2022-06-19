package com.callapp.contacts.activity.interfaces;

import com.callapp.contacts.activity.interfaces.-$;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.model.contact.ContactData;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/interfaces/_$$Lambda$RJfvGg2ammD0WYY2sneV2JN2ZgA.class */
public final /* synthetic */ class _$$Lambda$RJfvGg2ammD0WYY2sneV2JN2ZgA implements EventType {
    public static final /* synthetic */ -$.Lambda.RJfvGg2ammD0WYY2sneV2JN2ZgA INSTANCE = new _$$Lambda$RJfvGg2ammD0WYY2sneV2JN2ZgA();

    private /* synthetic */ _$$Lambda$RJfvGg2ammD0WYY2sneV2JN2ZgA() {
    }

    @Override // com.callapp.contacts.event.bus.EventType
    public final void fire(Object obj, Object obj2) {
        ((FastCacheChangedListener) obj).mo30215a((ContactData) obj2);
    }
}
