package com.callapp.contacts.activity.interfaces;

import com.callapp.contacts.activity.interfaces.-$;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.event.bus.EventType;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/interfaces/_$$Lambda$RefreshSearchListener$aOx3iyOIN1SZrvo_bB1JypBNhYo.class */
public final /* synthetic */ class _$$Lambda$RefreshSearchListener$aOx3iyOIN1SZrvo_bB1JypBNhYo implements EventType {
    public static final /* synthetic */ -$.Lambda.RefreshSearchListener.aOx3iyOIN1SZrvo-bB1JypBNhYo INSTANCE = new _$$Lambda$RefreshSearchListener$aOx3iyOIN1SZrvo_bB1JypBNhYo();

    private /* synthetic */ _$$Lambda$RefreshSearchListener$aOx3iyOIN1SZrvo_bB1JypBNhYo() {
    }

    @Override // com.callapp.contacts.event.bus.EventType
    public final void fire(Object obj, Object obj2) {
        EventBusManager.CallAppDataType callAppDataType = (EventBusManager.CallAppDataType) obj2;
        ((RefreshSearchListener) obj).mo30196a();
    }
}
