package com.birbit.android.jobqueue.messaging;

import com.birbit.android.jobqueue.log.JqLog;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/messaging/MessageFactory.class */
public class MessageFactory {
    private static final int CACHE_LIMIT = 20;
    Message[] pools = new Message[Type.values().length];
    int[] counts = new int[this.pools.length];

    public MessageFactory() {
        Arrays.fill(this.counts, 0);
    }

    public <T extends Message> T obtain(Class<T> cls) {
        Type type = Type.mapping.get(cls);
        synchronized (type) {
            T t = (T) this.pools[type.ordinal()];
            if (t != null) {
                this.pools[type.ordinal()] = t.next;
                int[] iArr = this.counts;
                int ordinal = type.ordinal();
                iArr[ordinal] = iArr[ordinal] - 1;
                t.next = null;
                return t;
            }
            try {
                return cls.newInstance();
            } catch (IllegalAccessException e) {
                JqLog.m390e(e, "Cannot create an instance of " + cls + ". Make sure it has a public empty constructor.", new Object[0]);
                return null;
            } catch (InstantiationException e2) {
                JqLog.m390e(e2, "Cannot create an instance of " + cls + ". Make sure it has a empty constructor.", new Object[0]);
                return null;
            }
        }
    }

    public void release(Message message) {
        Type type = message.type;
        message.recycle();
        synchronized (type) {
            if (this.counts[type.ordinal()] < 20) {
                message.next = this.pools[type.ordinal()];
                this.pools[type.ordinal()] = message;
                int[] iArr = this.counts;
                int ordinal = type.ordinal();
                iArr[ordinal] = iArr[ordinal] + 1;
            }
        }
    }
}
