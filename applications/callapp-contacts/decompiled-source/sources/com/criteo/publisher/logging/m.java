package com.criteo.publisher.logging;

import com.criteo.publisher.f.b;
import com.criteo.publisher.m0.g;
import kotlin.jvm.internal.p;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/logging/m.class */
public final class m implements b<RemoteLogRecords> {

    /* renamed from: a  reason: collision with root package name */
    private final Class<RemoteLogRecords> f17474a = RemoteLogRecords.class;

    /* renamed from: b  reason: collision with root package name */
    private final g f17475b;

    public m(g buildConfigWrapper) {
        p.c(buildConfigWrapper, "buildConfigWrapper");
        this.f17475b = buildConfigWrapper;
    }

    @Override // com.criteo.publisher.f.b
    public final int a() {
        return 256000;
    }

    @Override // com.criteo.publisher.f.b
    public final String b() {
        String f = g.f();
        p.a((Object) f, "buildConfigWrapper.remoteLogQueueFilename");
        return f;
    }

    @Override // com.criteo.publisher.f.b
    public final Class<RemoteLogRecords> c() {
        return this.f17474a;
    }

    @Override // com.criteo.publisher.f.b
    public final int d() {
        return 5000;
    }
}
