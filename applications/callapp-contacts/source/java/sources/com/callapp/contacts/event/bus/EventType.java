package com.callapp.contacts.event.bus;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/event/bus/EventType.class */
public interface EventType<L, E> {
    void fire(L l, E e);
}
