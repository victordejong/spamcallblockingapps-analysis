package com.criteo.publisher.logging;

import com.criteo.publisher.p246f.AbstractC8292b;
import com.criteo.publisher.p256m0.C8433g;
import kotlin.jvm.internal.C18524p;
/* renamed from: com.criteo.publisher.logging.m */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/logging/m.class */
public final class C8415m implements AbstractC8292b<RemoteLogRecords> {

    /* renamed from: a */
    private final Class<RemoteLogRecords> f30154a = RemoteLogRecords.class;

    /* renamed from: b */
    private final C8433g f30155b;

    public C8415m(C8433g buildConfigWrapper) {
        C18524p.m3841c(buildConfigWrapper, "buildConfigWrapper");
        this.f30155b = buildConfigWrapper;
    }

    @Override // com.criteo.publisher.p246f.AbstractC8292b
    /* renamed from: a */
    public final int mo25719a() {
        return 256000;
    }

    @Override // com.criteo.publisher.p246f.AbstractC8292b
    /* renamed from: b */
    public final String mo25718b() {
        String m25689f = C8433g.m25689f();
        C18524p.m3849a((Object) m25689f, "buildConfigWrapper.remoteLogQueueFilename");
        return m25689f;
    }

    @Override // com.criteo.publisher.p246f.AbstractC8292b
    /* renamed from: c */
    public final Class<RemoteLogRecords> mo25717c() {
        return this.f30154a;
    }

    @Override // com.criteo.publisher.p246f.AbstractC8292b
    /* renamed from: d */
    public final int mo25716d() {
        return 5000;
    }
}
