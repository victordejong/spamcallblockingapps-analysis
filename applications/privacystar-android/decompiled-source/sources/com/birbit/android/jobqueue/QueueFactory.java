package com.birbit.android.jobqueue;

import com.birbit.android.jobqueue.config.Configuration;
/* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/QueueFactory.class */
public interface QueueFactory {
    JobQueue createNonPersistent(Configuration configuration, long j);

    JobQueue createPersistentQueue(Configuration configuration, long j);
}
