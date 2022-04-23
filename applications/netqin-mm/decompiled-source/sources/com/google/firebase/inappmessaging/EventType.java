package com.google.firebase.inappmessaging;

import p131c.p161d.p367h.C6381y;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/inappmessaging/EventType.class */
public enum EventType implements C6381y.AbstractC6384c {
    UNKNOWN_EVENT_TYPE(0),
    IMPRESSION_EVENT_TYPE(1),
    CLICK_EVENT_TYPE(2);
    
    public static final int CLICK_EVENT_TYPE_VALUE = 2;
    public static final int IMPRESSION_EVENT_TYPE_VALUE = 1;
    public static final int UNKNOWN_EVENT_TYPE_VALUE = 0;
    public static final C6381y.AbstractC6385d<EventType> internalValueMap = new C6381y.AbstractC6385d<EventType>() { // from class: com.google.firebase.inappmessaging.EventType.a
        @Override // p131c.p161d.p367h.C6381y.AbstractC6385d
        /* renamed from: a  reason: avoid collision after fix types in other method */
        public EventType mo6797a(int i) {
            return EventType.forNumber(i);
        }
    };
    public final int value;

    /* renamed from: com.google.firebase.inappmessaging.EventType$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/inappmessaging/EventType$b.class */
    public static final class C7833b implements C6381y.AbstractC6386e {

        /* renamed from: a */
        public static final C6381y.AbstractC6386e f30960a = new C7833b();

        @Override // p131c.p161d.p367h.C6381y.AbstractC6386e
        /* renamed from: a */
        public boolean mo6796a(int i) {
            return EventType.forNumber(i) != null;
        }
    }

    EventType(int i) {
        this.value = i;
    }

    public static EventType forNumber(int i) {
        if (i == 0) {
            return UNKNOWN_EVENT_TYPE;
        }
        if (i == 1) {
            return IMPRESSION_EVENT_TYPE;
        }
        if (i != 2) {
            return null;
        }
        return CLICK_EVENT_TYPE;
    }

    public static C6381y.AbstractC6385d<EventType> internalGetValueMap() {
        return internalValueMap;
    }

    public static C6381y.AbstractC6386e internalGetVerifier() {
        return C7833b.f30960a;
    }

    @Deprecated
    public static EventType valueOf(int i) {
        return forNumber(i);
    }

    @Override // p131c.p161d.p367h.C6381y.AbstractC6384c
    public final int getNumber() {
        return this.value;
    }
}
