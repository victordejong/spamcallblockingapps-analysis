package com.callapp.contacts.event.listener;

import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.event.listener.-$;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/event/listener/_$$Lambda$PauseListener$PYokDSVeBBqXQ1JgrsDGpD3bqWk.class */
public final /* synthetic */ class _$$Lambda$PauseListener$PYokDSVeBBqXQ1JgrsDGpD3bqWk implements EventType {
    public static final /* synthetic */ -$.Lambda.PauseListener.PYokDSVeBBqXQ1JgrsDGpD3bqWk INSTANCE = new _$$Lambda$PauseListener$PYokDSVeBBqXQ1JgrsDGpD3bqWk();

    private /* synthetic */ _$$Lambda$PauseListener$PYokDSVeBBqXQ1JgrsDGpD3bqWk() {
    }

    @Override // com.callapp.contacts.event.bus.EventType
    public final void fire(Object obj, Object obj2) {
        ((PauseListener) obj).onPause();
    }
}
