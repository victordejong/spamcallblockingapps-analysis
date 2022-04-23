package com.callapp.contacts.activity.interfaces;

import com.callapp.contacts.activity.interfaces.-$;
import com.callapp.contacts.event.bus.EventType;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/interfaces/_$$Lambda$Ym9i31uEq6saIcmjR20cewzkND8.class */
public final /* synthetic */ class _$$Lambda$Ym9i31uEq6saIcmjR20cewzkND8 implements EventType {
    public static final /* synthetic */ -$.Lambda.Ym9i31uEq6saIcmjR20cewzkND8 INSTANCE = new _$$Lambda$Ym9i31uEq6saIcmjR20cewzkND8();

    private /* synthetic */ _$$Lambda$Ym9i31uEq6saIcmjR20cewzkND8() {
    }

    @Override // com.callapp.contacts.event.bus.EventType
    public final void fire(Object obj, Object obj2) {
        ((FinishActivityListener) obj).finishActivity((Boolean) obj2);
    }
}
