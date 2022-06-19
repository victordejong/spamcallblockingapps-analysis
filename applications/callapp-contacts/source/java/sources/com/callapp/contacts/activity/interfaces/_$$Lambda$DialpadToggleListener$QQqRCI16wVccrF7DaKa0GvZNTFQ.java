package com.callapp.contacts.activity.interfaces;

import com.callapp.contacts.activity.interfaces.-$;
import com.callapp.contacts.activity.interfaces.DialpadToggleListener;
import com.callapp.contacts.event.bus.EventType;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/interfaces/_$$Lambda$DialpadToggleListener$QQqRCI16wVccrF7DaKa0GvZNTFQ.class */
public final /* synthetic */ class _$$Lambda$DialpadToggleListener$QQqRCI16wVccrF7DaKa0GvZNTFQ implements EventType {
    public static final /* synthetic */ -$.Lambda.DialpadToggleListener.QQqRCI16wVccrF7DaKa0GvZNTFQ INSTANCE = new _$$Lambda$DialpadToggleListener$QQqRCI16wVccrF7DaKa0GvZNTFQ();

    private /* synthetic */ _$$Lambda$DialpadToggleListener$QQqRCI16wVccrF7DaKa0GvZNTFQ() {
    }

    @Override // com.callapp.contacts.event.bus.EventType
    public final void fire(Object obj, Object obj2) {
        DialpadToggleListener._CC.m30216a((DialpadToggleListener) obj, (DialpadToggleListener.ToggleDialpadEvent) obj2);
    }
}
