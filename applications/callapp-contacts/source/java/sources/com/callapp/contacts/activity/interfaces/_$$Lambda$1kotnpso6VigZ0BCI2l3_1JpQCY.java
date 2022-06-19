package com.callapp.contacts.activity.interfaces;

import com.callapp.contacts.activity.interfaces.-$;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.model.DataChangedInfo;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/interfaces/_$$Lambda$1kotnpso6VigZ0BCI2l3_1JpQCY.class */
public final /* synthetic */ class _$$Lambda$1kotnpso6VigZ0BCI2l3_1JpQCY implements EventType {
    public static final /* synthetic */ -$.Lambda.1kotnpso6VigZ0BCI2l3_1JpQCY INSTANCE = new _$$Lambda$1kotnpso6VigZ0BCI2l3_1JpQCY();

    private /* synthetic */ _$$Lambda$1kotnpso6VigZ0BCI2l3_1JpQCY() {
    }

    @Override // com.callapp.contacts.event.bus.EventType
    public final void fire(Object obj, Object obj2) {
        ((NotifyDataChangedListener) obj).mo30204a((DataChangedInfo) obj2);
    }
}
