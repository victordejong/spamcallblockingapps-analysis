package io.reactivex.internal.subscribers;

import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/subscribers/QueueDrainSubscriberPad3.class */
class QueueDrainSubscriberPad3 extends QueueDrainSubscriberPad2 {
    final AtomicLong requested = new AtomicLong();
}
