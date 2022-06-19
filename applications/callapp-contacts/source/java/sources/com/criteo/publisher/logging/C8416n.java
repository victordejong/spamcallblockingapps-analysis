package com.criteo.publisher.logging;

import com.criteo.publisher.AbstractRunnableC8529v;
import com.criteo.publisher.p246f.AbstractC8310p;
import com.criteo.publisher.p251j0.C8364g;
import com.criteo.publisher.p256m0.C8424b;
import com.criteo.publisher.p256m0.C8433g;
import java.util.List;
import java.util.concurrent.Executor;
import kotlin.jvm.internal.C18524p;
/* renamed from: com.criteo.publisher.logging.n */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/logging/n.class */
public class C8416n {

    /* renamed from: a */
    private final AbstractC8310p<RemoteLogRecords> f30156a;

    /* renamed from: b */
    private final C8364g f30157b;

    /* renamed from: c */
    private final C8433g f30158c;

    /* renamed from: d */
    private final C8424b f30159d;

    /* renamed from: e */
    private final Executor f30160e;

    /* renamed from: com.criteo.publisher.logging.n$a */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/logging/n$a.class */
    public static final class C8417a extends AbstractRunnableC8529v {

        /* renamed from: a */
        private final AbstractC8310p<RemoteLogRecords> f30161a;

        /* renamed from: b */
        private final C8364g f30162b;

        /* renamed from: c */
        private final C8433g f30163c;

        /* renamed from: d */
        private final C8424b f30164d;

        public C8417a(AbstractC8310p<RemoteLogRecords> sendingQueue, C8364g api, C8433g buildConfigWrapper, C8424b advertisingInfo) {
            C18524p.m3841c(sendingQueue, "sendingQueue");
            C18524p.m3841c(api, "api");
            C18524p.m3841c(buildConfigWrapper, "buildConfigWrapper");
            C18524p.m3841c(advertisingInfo, "advertisingInfo");
            this.f30161a = sendingQueue;
            this.f30162b = api;
            this.f30163c = buildConfigWrapper;
            this.f30164d = advertisingInfo;
        }

        @Override // com.criteo.publisher.AbstractRunnableC8529v
        /* renamed from: a */
        public final void mo25368a() {
            List<RemoteLogRecords> mo25721a = this.f30161a.mo25721a(200);
            if (mo25721a.isEmpty()) {
                return;
            }
            try {
                String m25705b = this.f30164d.m25705b();
                if (m25705b != null) {
                    for (RemoteLogRecords remoteLogRecords : mo25721a) {
                        if (remoteLogRecords.f30106a.f30108a == null) {
                            remoteLogRecords.f30106a.f30108a = m25705b;
                        }
                    }
                }
                this.f30162b.m25780a(mo25721a);
            } catch (Throwable th) {
                for (RemoteLogRecords remoteLogRecords2 : mo25721a) {
                    this.f30161a.mo25720a((AbstractC8310p<RemoteLogRecords>) remoteLogRecords2);
                }
                throw th;
            }
        }
    }

    public C8416n(AbstractC8310p<RemoteLogRecords> sendingQueue, C8364g api, C8433g buildConfigWrapper, C8424b advertisingInfo, Executor executor) {
        C18524p.m3841c(sendingQueue, "sendingQueue");
        C18524p.m3841c(api, "api");
        C18524p.m3841c(buildConfigWrapper, "buildConfigWrapper");
        C18524p.m3841c(advertisingInfo, "advertisingInfo");
        C18524p.m3841c(executor, "executor");
        this.f30156a = sendingQueue;
        this.f30157b = api;
        this.f30158c = buildConfigWrapper;
        this.f30159d = advertisingInfo;
        this.f30160e = executor;
    }

    /* renamed from: a */
    public final void m25715a() {
        this.f30160e.execute(new C8417a(this.f30156a, this.f30157b, this.f30158c, this.f30159d));
    }
}
