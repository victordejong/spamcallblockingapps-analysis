package com.callapp.contacts.activity.interfaces;

import com.callapp.contacts.activity.interfaces.-$;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.recorder.recordertest.RecorderTestManager;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/interfaces/_$$Lambda$fHS8wNYwxfGUOOrQQ2vBdKoKuUY.class */
public final /* synthetic */ class _$$Lambda$fHS8wNYwxfGUOOrQQ2vBdKoKuUY implements EventType {
    public static final /* synthetic */ -$.Lambda.fHS8wNYwxfGUOOrQQ2vBdKoKuUY INSTANCE = new _$$Lambda$fHS8wNYwxfGUOOrQQ2vBdKoKuUY();

    private /* synthetic */ _$$Lambda$fHS8wNYwxfGUOOrQQ2vBdKoKuUY() {
    }

    @Override // com.callapp.contacts.event.bus.EventType
    public final void fire(Object obj, Object obj2) {
        ((RecorderTestChangedListener) obj).onRecorderTestStatusChanged((RecorderTestManager.RecorderTestManagerStatus) obj2);
    }
}
