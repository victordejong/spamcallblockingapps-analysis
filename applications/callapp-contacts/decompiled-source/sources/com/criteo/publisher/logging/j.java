package com.criteo.publisher.logging;

import com.criteo.publisher.f.p;
import com.criteo.publisher.model.t;
import com.criteo.publisher.v;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/logging/j.class */
public class j implements d {

    /* renamed from: a  reason: collision with root package name */
    private final k f17463a;

    /* renamed from: b  reason: collision with root package name */
    private final p<RemoteLogRecords> f17464b;

    /* renamed from: c  reason: collision with root package name */
    private final t f17465c;

    /* renamed from: d  reason: collision with root package name */
    private final Executor f17466d;
    private final com.criteo.publisher.k.a e;

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/logging/j$a.class */
    public static final class a extends v {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RemoteLogRecords f17467a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ j f17468b;

        a(RemoteLogRecords remoteLogRecords, j jVar) {
            this.f17467a = remoteLogRecords;
            this.f17468b = jVar;
        }

        @Override // com.criteo.publisher.v
        public final void a() {
            this.f17468b.f17464b.a((p) this.f17467a);
        }
    }

    public j(k remoteLogRecordsFactory, p<RemoteLogRecords> sendingQueue, t config, Executor executor, com.criteo.publisher.k.a consentData) {
        kotlin.jvm.internal.p.c(remoteLogRecordsFactory, "remoteLogRecordsFactory");
        kotlin.jvm.internal.p.c(sendingQueue, "sendingQueue");
        kotlin.jvm.internal.p.c(config, "config");
        kotlin.jvm.internal.p.c(executor, "executor");
        kotlin.jvm.internal.p.c(consentData, "consentData");
        this.f17463a = remoteLogRecordsFactory;
        this.f17464b = sendingQueue;
        this.f17465c = config;
        this.f17466d = executor;
        this.e = consentData;
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x01d7  */
    /* JADX WARN: Removed duplicated region for block: B:56:? A[RETURN, SYNTHETIC] */
    @Override // com.criteo.publisher.logging.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(java.lang.String r14, com.criteo.publisher.logging.e r15) {
        /*
            Method dump skipped, instructions count: 534
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.criteo.publisher.logging.j.a(java.lang.String, com.criteo.publisher.logging.e):void");
    }
}
