package p660rx.internal.producers;

import p660rx.Producer;
/* renamed from: rx.internal.producers.ProducerArbiter */
/* loaded from: classes3-dex2jar.jar:rx/internal/producers/ProducerArbiter.class */
public final class ProducerArbiter implements Producer {
    public static final Producer NULL_PRODUCER = new Producer() { // from class: rx.internal.producers.ProducerArbiter.1
        @Override // p660rx.Producer
        public void request(long j) {
        }
    };
    public Producer currentProducer;
    public boolean emitting;
    public long missedProduced;
    public Producer missedProducer;
    public long missedRequested;
    public long requested;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Type inference failed for: r14v5 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void emitLoop() {
        /*
            Method dump skipped, instructions count: 225
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p660rx.internal.producers.ProducerArbiter.emitLoop():void");
    }

    public void produced(long j) {
        if (j > 0) {
            synchronized (this) {
                if (this.emitting) {
                    this.missedProduced += j;
                    return;
                }
                this.emitting = true;
                try {
                    long j2 = this.requested;
                    if (j2 != Long.MAX_VALUE) {
                        long j3 = j2 - j;
                        if (j3 >= 0) {
                            this.requested = j3;
                        } else {
                            throw new IllegalStateException("more items arrived than were requested");
                        }
                    }
                    emitLoop();
                } catch (Throwable th) {
                    synchronized (this) {
                        this.emitting = false;
                        throw th;
                    }
                }
            }
        } else {
            throw new IllegalArgumentException("n > 0 required");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // p660rx.Producer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void request(long r7) {
        /*
            r6 = this;
            r0 = r7
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            r9 = r0
            r0 = r9
            if (r0 < 0) goto L_0x007c
            r0 = r9
            if (r0 != 0) goto L_0x000d
            return
        L_0x000d:
            r0 = r6
            monitor-enter(r0)
            r0 = r6
            boolean r0 = r0.emitting     // Catch: all -> 0x0075
            if (r0 == 0) goto L_0x0023
            r0 = r6
            r1 = r6
            long r1 = r1.missedRequested     // Catch: all -> 0x0075
            r2 = r7
            long r1 = r1 + r2
            r0.missedRequested = r1     // Catch: all -> 0x0075
            r0 = r6
            monitor-exit(r0)     // Catch: all -> 0x0075
            return
        L_0x0023:
            r0 = r6
            r1 = 1
            r0.emitting = r1     // Catch: all -> 0x0075
            r0 = r6
            monitor-exit(r0)     // Catch: all -> 0x0075
            r0 = r6
            long r0 = r0.requested     // Catch: all -> 0x0060
            r1 = r7
            long r0 = r0 + r1
            r10 = r0
            r0 = r10
            r12 = r0
            r0 = r10
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0042
            r0 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            r12 = r0
        L_0x0042:
            r0 = r6
            r1 = r12
            r0.requested = r1     // Catch: all -> 0x0060
            r0 = r6
            rx.Producer r0 = r0.currentProducer     // Catch: all -> 0x0060
            r14 = r0
            r0 = r14
            if (r0 == 0) goto L_0x005b
            r0 = r14
            r1 = r7
            r0.request(r1)     // Catch: all -> 0x0060
        L_0x005b:
            r0 = r6
            r0.emitLoop()     // Catch: all -> 0x0060
            return
        L_0x0060:
            r14 = move-exception
            r0 = r6
            monitor-enter(r0)
            r0 = r6
            r1 = 0
            r0.emitting = r1     // Catch: all -> 0x006e
            r0 = r6
            monitor-exit(r0)     // Catch: all -> 0x006e
            r0 = r14
            throw r0
        L_0x006e:
            r14 = move-exception
            r0 = r6
            monitor-exit(r0)     // Catch: all -> 0x006e
            r0 = r14
            throw r0
        L_0x0075:
            r14 = move-exception
            r0 = r6
            monitor-exit(r0)     // Catch: all -> 0x0075
            r0 = r14
            throw r0
        L_0x007c:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            java.lang.String r2 = "n >= 0 required"
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p660rx.internal.producers.ProducerArbiter.request(long):void");
    }

    public void setProducer(Producer producer) {
        synchronized (this) {
            if (this.emitting) {
                Producer producer2 = producer;
                if (producer == null) {
                    producer2 = NULL_PRODUCER;
                }
                this.missedProducer = producer2;
                return;
            }
            this.emitting = true;
            try {
                this.currentProducer = producer;
                if (producer != null) {
                    producer.request(this.requested);
                }
                emitLoop();
            } catch (Throwable th) {
                synchronized (this) {
                    this.emitting = false;
                    throw th;
                }
            }
        }
    }
}
