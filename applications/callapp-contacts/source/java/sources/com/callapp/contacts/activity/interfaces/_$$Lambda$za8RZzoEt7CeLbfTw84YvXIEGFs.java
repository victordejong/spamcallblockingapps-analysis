package com.callapp.contacts.activity.interfaces;

import com.callapp.contacts.activity.interfaces.-$;
import com.callapp.contacts.event.bus.EventType;
import kotlin.C18538n;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/interfaces/_$$Lambda$za8RZzoEt7CeLbfTw84YvXIEGFs.class */
public final /* synthetic */ class _$$Lambda$za8RZzoEt7CeLbfTw84YvXIEGFs implements EventType {
    public static final /* synthetic */ -$.Lambda.za8RZzoEt7CeLbfTw84YvXIEGFs INSTANCE = new _$$Lambda$za8RZzoEt7CeLbfTw84YvXIEGFs();

    private /* synthetic */ _$$Lambda$za8RZzoEt7CeLbfTw84YvXIEGFs() {
    }

    @Override // com.callapp.contacts.event.bus.EventType
    public final void fire(Object obj, Object obj2) {
        ((RecorderTestChangedListener) obj).onRecorderTestProgressChanged((C18538n) obj2);
    }
}
