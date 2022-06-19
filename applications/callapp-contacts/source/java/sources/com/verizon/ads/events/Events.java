package com.verizon.ads.events;

import android.os.Handler;
import android.os.HandlerThread;
import com.verizon.ads.Logger;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/events/Events.class */
public class Events {

    /* renamed from: b */
    private static final HandlerThread f61306b;

    /* renamed from: c */
    private static final Handler f61307c;

    /* renamed from: a */
    private static final Logger f61305a = Logger.getInstance(Events.class);

    /* renamed from: d */
    private static final Map<String, Set<Subscription>> f61308d = new HashMap();

    /* renamed from: com.verizon.ads.events.Events$4 */
    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/events/Events$4.class */
    static final class RunnableC173424 implements Runnable {

        /* renamed from: a */
        final /* synthetic */ Map f61317a;

        /* renamed from: b */
        final /* synthetic */ CountDownLatch f61318b;

        RunnableC173424(Map map, CountDownLatch countDownLatch) {
            this.f61317a = map;
            this.f61318b = countDownLatch;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f61317a.putAll(Events.f61308d);
            this.f61318b.countDown();
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/events/Events$Subscription.class */
    public static final class Subscription {

        /* renamed from: a */
        final EventReceiver f61319a;

        /* renamed from: b */
        final EventMatcher f61320b;

        Subscription(EventReceiver eventReceiver, EventMatcher eventMatcher) {
            this.f61319a = eventReceiver;
            this.f61320b = eventMatcher;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Subscription)) {
                return false;
            }
            Subscription subscription = (Subscription) obj;
            return this.f61319a == subscription.f61319a && this.f61320b == subscription.f61320b;
        }

        public final int hashCode() {
            int hashCode = this.f61319a.hashCode() + 527;
            EventMatcher eventMatcher = this.f61320b;
            int i = hashCode;
            if (eventMatcher != null) {
                i = (hashCode * 31) + eventMatcher.hashCode();
            }
            return i;
        }

        public final String toString() {
            return "receiver: " + this.f61319a + ", matcher: " + this.f61320b;
        }
    }

    static {
        HandlerThread handlerThread = new HandlerThread(Events.class.getName());
        f61306b = handlerThread;
        handlerThread.start();
        f61307c = new Handler(handlerThread.getLooper());
    }

    /* renamed from: a */
    static /* synthetic */ void m5509a(EventReceiver eventReceiver, String str, EventMatcher eventMatcher) {
        if (eventReceiver == null) {
            f61305a.m5565e("eventReceiver cannot be null");
            return;
        }
        Map<String, Set<Subscription>> map = f61308d;
        Set<Subscription> set = map.get(str);
        HashSet hashSet = set;
        if (set == null) {
            hashSet = new HashSet();
            map.put(str, hashSet);
        }
        Subscription subscription = new Subscription(eventReceiver, eventMatcher);
        if (!hashSet.add(subscription)) {
            Logger logger = f61305a;
            logger.m5559w("Already subscribed for topic: " + str + ", " + subscription);
        } else if (!Logger.isLogLevelEnabled(3)) {
        } else {
            Logger logger2 = f61305a;
            logger2.m5567d("Subscribed to topic: " + str + ", " + subscription);
        }
    }

    /* renamed from: a */
    static /* synthetic */ void m5508a(Set set, final String str, final Object obj) {
        if (set != null) {
            Iterator it2 = set.iterator();
            while (it2.hasNext()) {
                Subscription subscription = (Subscription) it2.next();
                final EventReceiver eventReceiver = subscription.f61319a;
                final EventMatcher eventMatcher = subscription.f61320b;
                eventReceiver.f61299a.post(new Runnable() { // from class: com.verizon.ads.events.EventReceiver.1
                    @Override // java.lang.Runnable
                    public void run() {
                        EventMatcher eventMatcher2 = eventMatcher;
                        if (eventMatcher2 != null) {
                            try {
                                if (!eventMatcher2.matches(str, obj)) {
                                    return;
                                }
                            } catch (Throwable th) {
                                EventReceiver.f61298b.m5564e("Event exception", th);
                                return;
                            }
                        }
                        if (Logger.isLogLevelEnabled(3)) {
                            Logger logger = EventReceiver.f61298b;
                            logger.m5567d("Calling receiver onEvent topic: " + str + ", data: " + obj + " (receiver: " + this + ")");
                        }
                        try {
                            eventReceiver.onEvent$645b3fe5(obj);
                        } catch (Throwable th2) {
                            EventReceiver.f61298b.m5564e("onEvent error", th2);
                        }
                    }
                });
            }
        }
    }

    /* renamed from: b */
    static /* synthetic */ void m5507b(EventReceiver eventReceiver, String str, EventMatcher eventMatcher) {
        if (eventReceiver == null) {
            f61305a.m5565e("eventReceiver cannot be null");
            return;
        }
        Map<String, Set<Subscription>> map = f61308d;
        Set<Subscription> set = map.get(str);
        boolean z = false;
        Subscription subscription = new Subscription(eventReceiver, eventMatcher);
        if (set != null) {
            boolean remove = set.remove(subscription);
            z = remove;
            if (set.isEmpty()) {
                map.remove(str);
                z = remove;
            }
        }
        if (!z) {
            f61305a.m5559w("Not subscribed to topic: " + str + ", " + subscription);
        } else if (!Logger.isLogLevelEnabled(3)) {
        } else {
            f61305a.m5567d("Unsubscribed from topic: " + str + ", " + subscription);
        }
    }

    public static void sendEvent(final String str, final Object obj) {
        if (Logger.isLogLevelEnabled(3)) {
            Logger logger = f61305a;
            logger.m5567d("Send event topic: " + str + " data: " + obj);
        }
        if (str == null) {
            f61305a.m5565e("Topic cannot be null or empty");
        } else {
            f61307c.post(new Runnable() { // from class: com.verizon.ads.events.Events.3
                @Override // java.lang.Runnable
                public final void run() {
                    Events.m5508a((Set) Events.f61308d.get(str), str, obj);
                    Events.m5508a((Set) Events.f61308d.get(null), str, obj);
                }
            });
        }
    }

    public static void subscribe(EventReceiver eventReceiver, String str) {
        subscribe(eventReceiver, str, null);
    }

    public static void subscribe(final EventReceiver eventReceiver, final String str, final EventMatcher eventMatcher) {
        f61307c.post(new Runnable() { // from class: com.verizon.ads.events.Events.1
            @Override // java.lang.Runnable
            public final void run() {
                Events.m5509a(eventReceiver, str, eventMatcher);
            }
        });
    }

    public static void unsubscribe(EventReceiver eventReceiver, String str) {
        unsubscribe(eventReceiver, str, null);
    }

    public static void unsubscribe(final EventReceiver eventReceiver, final String str, final EventMatcher eventMatcher) {
        f61307c.post(new Runnable() { // from class: com.verizon.ads.events.Events.2
            @Override // java.lang.Runnable
            public final void run() {
                Events.m5507b(eventReceiver, str, eventMatcher);
            }
        });
    }
}
