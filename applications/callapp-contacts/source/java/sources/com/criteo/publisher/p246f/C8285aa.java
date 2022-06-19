package com.criteo.publisher.p246f;

import com.criteo.publisher.p256m0.C8433g;
import kotlin.jvm.internal.C18524p;
/* renamed from: com.criteo.publisher.f.aa */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/aa.class */
public class C8285aa implements AbstractC8292b<AbstractC8320s> {

    /* renamed from: a */
    private final Class<AbstractC8320s> f29873a = AbstractC8320s.class;

    /* renamed from: b */
    private final C8433g f29874b;

    public C8285aa(C8433g buildConfigWrapper) {
        C18524p.m3841c(buildConfigWrapper, "buildConfigWrapper");
        this.f29874b = buildConfigWrapper;
    }

    @Override // com.criteo.publisher.p246f.AbstractC8292b
    /* renamed from: a */
    public final int mo25719a() {
        return 61440;
    }

    @Override // com.criteo.publisher.p246f.AbstractC8292b
    /* renamed from: b */
    public final String mo25718b() {
        String m25691d = C8433g.m25691d();
        C18524p.m3849a((Object) m25691d, "buildConfigWrapper.csmQueueFilename");
        return m25691d;
    }

    @Override // com.criteo.publisher.p246f.AbstractC8292b
    /* renamed from: c */
    public final Class<AbstractC8320s> mo25717c() {
        return this.f29873a;
    }

    @Override // com.criteo.publisher.p246f.AbstractC8292b
    /* renamed from: d */
    public final int mo25716d() {
        return 170;
    }
}
