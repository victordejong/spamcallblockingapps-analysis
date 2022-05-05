package com.birbit.android.jobqueue;

import com.birbit.android.jobqueue.cachedQueue.CachedJobQueue;
import com.birbit.android.jobqueue.config.Configuration;
import com.birbit.android.jobqueue.inMemoryQueue.SimpleInMemoryPriorityQueue;
import com.birbit.android.jobqueue.persistentQueue.sqlite.SqliteJobQueue;
/* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/DefaultQueueFactory.class */
public class DefaultQueueFactory implements QueueFactory {
    SqliteJobQueue.JobSerializer jobSerializer;

    public DefaultQueueFactory() {
        this.jobSerializer = new SqliteJobQueue.JavaSerializer();
    }

    public DefaultQueueFactory(SqliteJobQueue.JobSerializer jobSerializer) {
        this.jobSerializer = jobSerializer;
    }

    @Override // com.birbit.android.jobqueue.QueueFactory
    public JobQueue createNonPersistent(Configuration configuration, long j) {
        return new CachedJobQueue(new SimpleInMemoryPriorityQueue(configuration, j));
    }

    @Override // com.birbit.android.jobqueue.QueueFactory
    public JobQueue createPersistentQueue(Configuration configuration, long j) {
        return new CachedJobQueue(new SqliteJobQueue(configuration, j, this.jobSerializer));
    }
}
