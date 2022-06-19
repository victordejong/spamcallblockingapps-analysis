package com.applovin.impl.communicator;

import android.content.Context;
import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.communicator.AppLovinCommunicatorMessagingService;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
/* loaded from: classes-dex2jar.jar:com/applovin/impl/communicator/MessagingServiceImpl.class */
public class MessagingServiceImpl implements AppLovinCommunicatorMessagingService {

    /* renamed from: a */
    private final Context f3721a;

    /* renamed from: c */
    private final Map<String, Queue<CommunicatorMessageImpl>> f3723c = new HashMap();

    /* renamed from: d */
    private final Object f3724d = new Object();

    /* renamed from: b */
    private final ScheduledThreadPoolExecutor f3722b = m6763a();

    public MessagingServiceImpl(Context context) {
        this.f3721a = context;
    }

    /* renamed from: a */
    private Queue<CommunicatorMessageImpl> m6759a(String str) {
        LinkedList linkedList;
        synchronized (this.f3724d) {
            Queue<CommunicatorMessageImpl> queue = this.f3723c.get(str);
            linkedList = queue != null ? new LinkedList(queue) : new LinkedList();
        }
        return linkedList;
    }

    /* renamed from: a */
    private ScheduledThreadPoolExecutor m6763a() {
        return new ScheduledThreadPoolExecutor(4, new ThreadFactory() { // from class: com.applovin.impl.communicator.MessagingServiceImpl.2
            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                Thread thread = new Thread(runnable, "AppLovinSdk:com.applovin.communicator");
                thread.setPriority(10);
                thread.setDaemon(true);
                return thread;
            }
        });
    }

    /* renamed from: a */
    private void m6762a(AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
        if (appLovinCommunicatorMessage.sticky) {
            synchronized (this.f3724d) {
                Queue<CommunicatorMessageImpl> queue = this.f3723c.get(appLovinCommunicatorMessage.getTopic());
                if (queue != null) {
                    queue.add(appLovinCommunicatorMessage);
                    if (queue.size() > 100) {
                        queue.remove();
                    }
                } else {
                    LinkedList linkedList = new LinkedList();
                    linkedList.add(appLovinCommunicatorMessage);
                    this.f3723c.put(appLovinCommunicatorMessage.getTopic(), linkedList);
                }
            }
        }
    }

    /* renamed from: a */
    private void m6761a(final CommunicatorMessageImpl communicatorMessageImpl) {
        this.f3722b.execute(new Runnable() { // from class: com.applovin.impl.communicator.MessagingServiceImpl.1
            @Override // java.lang.Runnable
            public void run() {
                AppLovinBroadcastManager.getInstance(MessagingServiceImpl.this.f3721a).sendBroadcastSync(communicatorMessageImpl, null);
            }
        });
    }

    public void maybeFlushStickyMessages(String str) {
        for (CommunicatorMessageImpl communicatorMessageImpl : m6759a(str)) {
            m6761a(communicatorMessageImpl);
        }
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorMessagingService
    public void publish(AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
        m6761a((CommunicatorMessageImpl) appLovinCommunicatorMessage);
        m6762a(appLovinCommunicatorMessage);
    }

    public String toString() {
        return "MessagingServiceImpl{}";
    }
}
