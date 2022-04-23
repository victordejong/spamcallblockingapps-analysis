package com.callapp.contacts.event.bus;

import com.callapp.contacts.framework.util.MultiTaskRunner;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.util.CLog;
import com.callapp.framework.util.CollectionUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/event/bus/EventBus.class */
public class EventBus {

    /* renamed from: a  reason: collision with root package name */
    private final Object f14369a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private final Map<EventType, List<Object>> f14370b = new HashMap();

    /* JADX INFO: Access modifiers changed from: private */
    public static <L, E> void b(EventType<L, E> eventType, E e, L l) {
        try {
            long currentTimeMillis = System.currentTimeMillis();
            eventType.fire(l, e);
            CLog.a(EventBus.class, "listener: " + l + " Type: " + eventType + " Event: " + e + " took " + (System.currentTimeMillis() - currentTimeMillis));
        } catch (RuntimeException e2) {
            CLog.b(EventBus.class, e2);
        }
    }

    public final void a() {
        synchronized (this.f14369a) {
            this.f14370b.clear();
        }
    }

    public final <L> void a(EventType<L, ?> eventType) {
        synchronized (this.f14369a) {
            this.f14370b.remove(eventType);
        }
    }

    public final <L> void a(EventType<L, ?> eventType, L l) {
        synchronized (this.f14369a) {
            List<Object> list = this.f14370b.get(eventType);
            List<Object> list2 = list;
            if (list == null) {
                list2 = new ArrayList<>();
                this.f14370b.put(eventType, list2);
            }
            list2.add(l);
        }
    }

    public final <L, E> void a(final EventType<L, E> eventType, final E e, boolean z) {
        ArrayList<E> arrayList;
        synchronized (this.f14369a) {
            List<Object> list = this.f14370b.get(eventType);
            arrayList = list != null ? new ArrayList(list) : null;
        }
        CLog.a(EventBus.class, "fire(" + eventType + ", " + e + ", " + z + ")");
        if (!CollectionUtils.b(arrayList)) {
            return;
        }
        if (!z || arrayList.size() == 1) {
            for (E e2 : arrayList) {
                b(eventType, e, e2);
            }
            return;
        }
        MultiTaskRunner multiTaskRunner = new MultiTaskRunner();
        for (final E e3 : arrayList) {
            multiTaskRunner.a(new Task() { // from class: com.callapp.contacts.event.bus.EventBus.1
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    EventBus.b(eventType, e, e3);
                }
            });
        }
        multiTaskRunner.a();
    }

    public final <L> void b(EventType<L, ?> eventType, L l) {
        synchronized (this.f14369a) {
            List<Object> list = this.f14370b.get(eventType);
            if (list != null) {
                list.remove(l);
            }
        }
    }

    public final <L, E> void c(EventType<L, E> eventType, E e) {
        a((EventType<L, EventType<L, E>>) eventType, (EventType<L, E>) e, false);
    }
}
