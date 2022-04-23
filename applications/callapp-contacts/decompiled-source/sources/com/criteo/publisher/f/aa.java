package com.criteo.publisher.f;

import com.criteo.publisher.m0.g;
import kotlin.jvm.internal.p;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/aa.class */
public class aa implements b<s> {

    /* renamed from: a  reason: collision with root package name */
    private final Class<s> f17241a = s.class;

    /* renamed from: b  reason: collision with root package name */
    private final g f17242b;

    public aa(g buildConfigWrapper) {
        p.c(buildConfigWrapper, "buildConfigWrapper");
        this.f17242b = buildConfigWrapper;
    }

    @Override // com.criteo.publisher.f.b
    public final int a() {
        return 61440;
    }

    @Override // com.criteo.publisher.f.b
    public final String b() {
        String d2 = g.d();
        p.a((Object) d2, "buildConfigWrapper.csmQueueFilename");
        return d2;
    }

    @Override // com.criteo.publisher.f.b
    public final Class<s> c() {
        return this.f17241a;
    }

    @Override // com.criteo.publisher.f.b
    public final int d() {
        return 170;
    }
}
