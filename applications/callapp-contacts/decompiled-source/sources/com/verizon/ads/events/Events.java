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

    /* renamed from: b  reason: collision with root package name */
    private static final HandlerThread f35370b;

    /* renamed from: c  reason: collision with root package name */
    private static final Handler f35371c;

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f35369a = Logger.getInstance(Events.class);

    /* renamed from: d  reason: collision with root package name */
    private static final Map<String, Set<Subscription>> f35372d = new HashMap();

    /* renamed from: com.verizon.ads.events.Events$4  reason: invalid class name */
    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/events/Events$4.class */
    static final class AnonymousClass4 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Map f35381a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ CountDownLatch f35382b;

        AnonymousClass4(Map map, CountDownLatch countDownLatch) {
            this.f35381a = map;
            this.f35382b = countDownLatch;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f35381a.putAll(Events.f35372d);
            this.f35382b.countDown();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/events/Events$Subscription.class */
    public static final class Subscription {

        /* renamed from: a  reason: collision with root package name */
        final EventReceiver f35383a;

        /* renamed from: b  reason: collision with root package name */
        final EventMatcher f35384b;

        Subscription(EventReceiver eventReceiver, EventMatcher eventMatcher) {
            this.f35383a = eventReceiver;
            this.f35384b = eventMatcher;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Subscription)) {
                return false;
            }
            Subscription subscription = (Subscription) obj;
            return this.f35383a == subscription.f35383a && this.f35384b == subscription.f35384b;
        }

        public final int hashCode() {
            int hashCode = this.f35383a.hashCode() + 527;
            EventMatcher eventMatcher = this.f35384b;
            int i = hashCode;
            if (eventMatcher != null) {
                i = (hashCode * 31) + eventMatcher.hashCode();
            }
            return i;
        }

        public final String toString() {
            return "receiver: " + this.f35383a + ", matcher: " + this.f35384b;
        }
    }

    static {
        HandlerThread handlerThread = new HandlerThread(Events.class.getName());
        f35370b = handlerThread;
        handlerThread.start();
        f35371c = new Handler(handlerThread.getLooper());
    }

    static /* synthetic */ void a(EventReceiver eventReceiver, String str, EventMatcher eventMatcher) {
        if (eventReceiver == null) {
            f35369a.e("eventReceiver cannot be null");
            return;
        }
        Map<String, Set<Subscription>> map = f35372d;
        Set<Subscription> set = map.get(str);
        Set<Subscription> set2 = set;
        if (set == null) {
            set2 = new HashSet<>();
            map.put(str, set2);
        }
        Subscription subscription = new Subscription(eventReceiver, eventMatcher);
        if (!set2.add(subscription)) {
            Logger logger = f35369a;
            logger.w("Already subscribed for topic: " + str + ", " + subscription);
        } else if (Logger.isLogLevelEnabled(3)) {
            Logger logger2 = f35369a;
            logger2.d("Subscribed to topic: " + str + ", " + subscription);
        }
    }

    static /* synthetic */ void a(Set set, final String str, final Object obj) {
        if (set != null) {
            Iterator it2 = set.iterator();
            while (it2.hasNext()) {
                Subscription subscription = (Subscription) it2.next();
                final EventReceiver eventReceiver = subscription.f35383a;
                final EventMatcher eventMatcher = subscription.f35384b;
                eventReceiver.f35363a.post(new Runnable() { // from class: com.verizon.ads.events.EventReceiver.1
                    @Override // java.lang.Runnable
                    public void run() {
                        EventMatcher eventMatcher2 = eventMatcher;
                        if (eventMatcher2 != null) {
                            try {
                                if (!eventMatcher2.matches(str, obj)) {
                                    return;
                                }
                            } catch (Throwable th) {
                                EventReceiver.f35362b.e("Event exception", th);
                                return;
                            }
                        }
                        if (Logger.isLogLevelEnabled(3)) {
                            Logger logger = EventReceiver.f35362b;
                            logger.d("Calling receiver onEvent topic: " + str + ", data: " + obj + " (receiver: " + this + ")");
                        }
                        try {
                            eventReceiver.onEvent$645b3fe5(obj);
                        } catch (Throwable th2) {
                            EventReceiver.f35362b.e("onEvent error", th2);
                        }
                    }
                });
            }
        }
    }

    static /* synthetic */ void b(EventReceiver eventReceiver, String str, EventMatcher eventMatcher) {
        if (eventReceiver == null) {
            f35369a.e("eventReceiver cannot be null");
            return;
        }
        Map<String, Set<Subscription>> map = f35372d;
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
            Logger logger = f35369a;
            logger.w("Not subscribed to topic: " + str + ", " + subscription);
        } else if (Logger.isLogLevelEnabled(3)) {
            Logger logger2 = f35369a;
            logger2.d("Unsubscribed from topic: " + str + ", " + subscription);
        }
    }

    public static void sendEvent(final String str, final Object obj) {
        if (Logger.isLogLevelEnabled(3)) {
            Logger logger = f35369a;
            logger.d("Send event topic: " + str + " data: " + obj);
        }
        if (str == null) {
            f35369a.e("Topic cannot be null or empty");
        } else {
            f35371c.post(new Runnable() { // from class: com.verizon.ads.events.Events.3
                @Override // java.lang.Runnable
                public final void run() {
                    Events.a((Set) Events.f35372d.get(str), str, obj);
                    Events.a((Set) Events.f35372d.get(null), str, obj);
                }
            });
        }
    }

    public static void subscribe(EventReceiver eventReceiver, String str) {
        subscribe(eventReceiver, str, null);
    }

    public static void subscribe(final EventReceiver eventReceiver, final String str, final EventMatcher eventMatcher) {
        f35371c.post(new Runnable() { // from class: com.verizon.ads.events.Events.1
            @Override // java.lang.Runnable
            public final void run() {
                Events.a(EventReceiver.this, str, eventMatcher);
            }
        });
    }

    public static void unsubscribe(EventReceiver eventReceiver, String str) {
        unsubscribe(eventReceiver, str, null);
    }

    public static void unsubscribe(final EventReceiver eventReceiver, final String str, final EventMatcher eventMatcher) {
        f35371c.post(new Runnable() { // from class: com.verizon.ads.events.Events.2
            @Override // java.lang.Runnable
            public final void run() {
                Events.b(EventReceiver.this, str, eventMatcher);
            }
        });
    }
}
