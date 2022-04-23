package com.callapp.contacts.manager.phone;

import com.callapp.contacts.event.bus.EventType;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/phone/CallDetailsListener.class */
public interface CallDetailsListener {

    /* renamed from: d  reason: collision with root package name */
    public static final EventType<CallDetailsListener, int[]> f15120d = new EventType<CallDetailsListener, int[]>() { // from class: com.callapp.contacts.manager.phone.CallDetailsListener.1
        @Override // com.callapp.contacts.event.bus.EventType
        public final /* synthetic */ void fire(CallDetailsListener callDetailsListener, int[] iArr) {
            callDetailsListener.onCallDetailsChanged(iArr);
        }
    };

    void onCallDetailsChanged(int[] iArr);
}
