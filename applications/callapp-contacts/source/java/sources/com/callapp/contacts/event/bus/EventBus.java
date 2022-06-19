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

    /* renamed from: a */
    private final Object f25139a = new Object();

    /* renamed from: b */
    private final Map<EventType, List<Object>> f25140b = new HashMap();

    /* renamed from: b */
    public static <L, E> void m29044b(EventType<L, E> eventType, E e, L l) {
        try {
            long currentTimeMillis = System.currentTimeMillis();
            eventType.fire(l, e);
            CLog.m27611a(EventBus.class, "listener: " + l + " Type: " + eventType + " Event: " + e + " took " + (System.currentTimeMillis() - currentTimeMillis));
        } catch (RuntimeException e2) {
            CLog.m27596b(EventBus.class, e2);
        }
    }

    /* renamed from: a */
    public final void m29050a() {
        synchronized (this.f25139a) {
            this.f25140b.clear();
        }
    }

    /* renamed from: a */
    public final <L> void m29049a(EventType<L, ?> eventType) {
        synchronized (this.f25139a) {
            this.f25140b.remove(eventType);
        }
    }

    /* renamed from: a */
    public final <L> void m29048a(EventType<L, ?> eventType, L l) {
        synchronized (this.f25139a) {
            List<Object> list = this.f25140b.get(eventType);
            List<Object> list2 = list;
            if (list == null) {
                list2 = new ArrayList<>();
                this.f25140b.put(eventType, list2);
            }
            list2.add(l);
        }
    }

    /* renamed from: a */
    public final <L, E> void m29046a(final EventType<L, E> eventType, final E e, boolean z) {
        ArrayList<E> arrayList;
        synchronized (this.f25139a) {
            List<Object> list = this.f25140b.get(eventType);
            arrayList = list != null ? new ArrayList(list) : null;
        }
        CLog.m27611a(EventBus.class, "fire(" + eventType + ", " + e + ", " + z + ")");
        if (CollectionUtils.m26068b(arrayList)) {
            if (!z || arrayList.size() == 1) {
                for (E e2 : arrayList) {
                    m29044b(eventType, e, e2);
                }
                return;
            }
            MultiTaskRunner multiTaskRunner = new MultiTaskRunner();
            for (final E e3 : arrayList) {
                multiTaskRunner.m28974a(new Task() { // from class: com.callapp.contacts.event.bus.EventBus.1
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        EventBus.m29044b(eventType, e, e3);
                    }
                });
            }
            multiTaskRunner.m28975a();
        }
    }

    /* renamed from: b */
    public final <L> void m29045b(EventType<L, ?> eventType, L l) {
        synchronized (this.f25139a) {
            List<Object> list = this.f25140b.get(eventType);
            if (list != null) {
                list.remove(l);
            }
        }
    }

    /* renamed from: c */
    public final <L, E> void m29043c(EventType<L, E> eventType, E e) {
        m29046a((EventType<L, EventType<L, E>>) eventType, (EventType<L, E>) e, false);
    }
}
