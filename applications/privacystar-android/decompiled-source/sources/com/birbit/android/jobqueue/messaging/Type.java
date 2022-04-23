package com.birbit.android.jobqueue.messaging;

import com.birbit.android.jobqueue.messaging.message.AddJobMessage;
import com.birbit.android.jobqueue.messaging.message.CallbackMessage;
import com.birbit.android.jobqueue.messaging.message.CancelMessage;
import com.birbit.android.jobqueue.messaging.message.CancelResultMessage;
import com.birbit.android.jobqueue.messaging.message.CommandMessage;
import com.birbit.android.jobqueue.messaging.message.ConstraintChangeMessage;
import com.birbit.android.jobqueue.messaging.message.JobConsumerIdleMessage;
import com.birbit.android.jobqueue.messaging.message.PublicQueryMessage;
import com.birbit.android.jobqueue.messaging.message.RunJobMessage;
import com.birbit.android.jobqueue.messaging.message.RunJobResultMessage;
import com.birbit.android.jobqueue.messaging.message.SchedulerMessage;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/messaging/Type.class */
public enum Type {
    CALLBACK(CallbackMessage.class, 0),
    CANCEL_RESULT_CALLBACK(CancelResultMessage.class, 0),
    RUN_JOB(RunJobMessage.class, 0),
    COMMAND(CommandMessage.class, 0),
    PUBLIC_QUERY(PublicQueryMessage.class, 0),
    JOB_CONSUMER_IDLE(JobConsumerIdleMessage.class, 0),
    ADD_JOB(AddJobMessage.class, 1),
    CANCEL(CancelMessage.class, 1),
    CONSTRAINT_CHANGE(ConstraintChangeMessage.class, 2),
    RUN_JOB_RESULT(RunJobResultMessage.class, 3),
    SCHEDULER(SchedulerMessage.class, 4);
    
    static final int MAX_PRIORITY;
    static final Map<Class<? extends Message>, Type> mapping = new HashMap();
    final Class<? extends Message> klass;
    final int priority;

    static {
        Type[] values;
        int i = 0;
        for (Type type : values()) {
            mapping.put(type.klass, type);
            i = i;
            if (type.priority > i) {
                i = type.priority;
            }
        }
        MAX_PRIORITY = i;
    }

    Type(Class cls, int i) {
        this.klass = cls;
        this.priority = i;
    }
}
