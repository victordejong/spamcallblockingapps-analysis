package com.criteo.publisher.logging;

import com.criteo.publisher.AbstractRunnableC8529v;
import com.criteo.publisher.model.C8507t;
import com.criteo.publisher.p246f.AbstractC8310p;
import com.criteo.publisher.p252k.C8368a;
import java.util.concurrent.Executor;
import kotlin.jvm.internal.C18524p;
/* renamed from: com.criteo.publisher.logging.j */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/logging/j.class */
public class C8410j implements AbstractC8399d {

    /* renamed from: a */
    private final C8412k f30138a;

    /* renamed from: b */
    private final AbstractC8310p<RemoteLogRecords> f30139b;

    /* renamed from: c */
    private final C8507t f30140c;

    /* renamed from: d */
    private final Executor f30141d;

    /* renamed from: e */
    private final C8368a f30142e;

    /* renamed from: com.criteo.publisher.logging.j$a */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/logging/j$a.class */
    public static final class C8411a extends AbstractRunnableC8529v {

        /* renamed from: a */
        final /* synthetic */ RemoteLogRecords f30143a;

        /* renamed from: b */
        final /* synthetic */ C8410j f30144b;

        C8411a(RemoteLogRecords remoteLogRecords, C8410j c8410j) {
            this.f30143a = remoteLogRecords;
            this.f30144b = c8410j;
        }

        @Override // com.criteo.publisher.AbstractRunnableC8529v
        /* renamed from: a */
        public final void mo25368a() {
            this.f30144b.f30139b.mo25720a((AbstractC8310p) this.f30143a);
        }
    }

    public C8410j(C8412k remoteLogRecordsFactory, AbstractC8310p<RemoteLogRecords> sendingQueue, C8507t config, Executor executor, C8368a consentData) {
        C18524p.m3841c(remoteLogRecordsFactory, "remoteLogRecordsFactory");
        C18524p.m3841c(sendingQueue, "sendingQueue");
        C18524p.m3841c(config, "config");
        C18524p.m3841c(executor, "executor");
        C18524p.m3841c(consentData, "consentData");
        this.f30138a = remoteLogRecordsFactory;
        this.f30139b = sendingQueue;
        this.f30140c = config;
        this.f30141d = executor;
        this.f30142e = consentData;
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x01d7  */
    /* JADX WARN: Removed duplicated region for block: B:56:? A[RETURN, SYNTHETIC] */
    @Override // com.criteo.publisher.logging.AbstractC8399d
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo25725a(java.lang.String r14, com.criteo.publisher.logging.C8400e r15) {
        /*
            Method dump skipped, instructions count: 534
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.criteo.publisher.logging.C8410j.mo25725a(java.lang.String, com.criteo.publisher.logging.e):void");
    }
}
