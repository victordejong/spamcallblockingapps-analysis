package com.criteo.publisher.logging;

import com.criteo.publisher.f.p;
import com.criteo.publisher.j0.g;
import com.criteo.publisher.m0.b;
import com.criteo.publisher.v;
import java.util.List;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/logging/n.class */
public class n {

    /* renamed from: a  reason: collision with root package name */
    private final p<RemoteLogRecords> f17476a;

    /* renamed from: b  reason: collision with root package name */
    private final g f17477b;

    /* renamed from: c  reason: collision with root package name */
    private final com.criteo.publisher.m0.g f17478c;

    /* renamed from: d  reason: collision with root package name */
    private final b f17479d;
    private final Executor e;

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/logging/n$a.class */
    public static final class a extends v {

        /* renamed from: a  reason: collision with root package name */
        private final p<RemoteLogRecords> f17480a;

        /* renamed from: b  reason: collision with root package name */
        private final g f17481b;

        /* renamed from: c  reason: collision with root package name */
        private final com.criteo.publisher.m0.g f17482c;

        /* renamed from: d  reason: collision with root package name */
        private final b f17483d;

        public a(p<RemoteLogRecords> sendingQueue, g api, com.criteo.publisher.m0.g buildConfigWrapper, b advertisingInfo) {
            kotlin.jvm.internal.p.c(sendingQueue, "sendingQueue");
            kotlin.jvm.internal.p.c(api, "api");
            kotlin.jvm.internal.p.c(buildConfigWrapper, "buildConfigWrapper");
            kotlin.jvm.internal.p.c(advertisingInfo, "advertisingInfo");
            this.f17480a = sendingQueue;
            this.f17481b = api;
            this.f17482c = buildConfigWrapper;
            this.f17483d = advertisingInfo;
        }

        @Override // com.criteo.publisher.v
        public final void a() {
            List<RemoteLogRecords> a2 = this.f17480a.a(200);
            if (!a2.isEmpty()) {
                try {
                    String b2 = this.f17483d.b();
                    if (b2 != null) {
                        for (RemoteLogRecords remoteLogRecords : a2) {
                            if (remoteLogRecords.f17435a.f17437a == null) {
                                remoteLogRecords.f17435a.f17437a = b2;
                            }
                        }
                    }
                    this.f17481b.a(a2);
                } catch (Throwable th) {
                    for (RemoteLogRecords remoteLogRecords2 : a2) {
                        this.f17480a.a((p<RemoteLogRecords>) remoteLogRecords2);
                    }
                    throw th;
                }
            }
        }
    }

    public n(p<RemoteLogRecords> sendingQueue, g api, com.criteo.publisher.m0.g buildConfigWrapper, b advertisingInfo, Executor executor) {
        kotlin.jvm.internal.p.c(sendingQueue, "sendingQueue");
        kotlin.jvm.internal.p.c(api, "api");
        kotlin.jvm.internal.p.c(buildConfigWrapper, "buildConfigWrapper");
        kotlin.jvm.internal.p.c(advertisingInfo, "advertisingInfo");
        kotlin.jvm.internal.p.c(executor, "executor");
        this.f17476a = sendingQueue;
        this.f17477b = api;
        this.f17478c = buildConfigWrapper;
        this.f17479d = advertisingInfo;
        this.e = executor;
    }

    public final void a() {
        this.e.execute(new a(this.f17476a, this.f17477b, this.f17478c, this.f17479d));
    }
}
