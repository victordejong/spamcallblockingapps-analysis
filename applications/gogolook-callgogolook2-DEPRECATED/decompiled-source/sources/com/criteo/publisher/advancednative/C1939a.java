package com.criteo.publisher.advancednative;

import androidx.annotation.NonNull;
import com.criteo.publisher.p023p.AbstractC2089c;
import java.lang.ref.Reference;
import java.net.URI;
/* renamed from: com.criteo.publisher.advancednative.a */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/advancednative/a.class */
public class C1939a implements AbstractC1958l {
    @NonNull

    /* renamed from: a */
    public final URI f2066a;
    @NonNull

    /* renamed from: b */
    public final Reference<CriteoNativeAdListener> f2067b;
    @NonNull

    /* renamed from: c */
    public final C1947f f2068c;

    /* renamed from: com.criteo.publisher.advancednative.a$a */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/advancednative/a$a.class */
    public class C1940a implements AbstractC2089c {
        public C1940a() {
        }

        @Override // com.criteo.publisher.p023p.AbstractC2089c
        /* renamed from: a */
        public void mo35710a() {
            C1939a.this.f2068c.m35976b((CriteoNativeAdListener) C1939a.this.f2067b.get());
        }

        @Override // com.criteo.publisher.p023p.AbstractC2089c
        /* renamed from: b */
        public void mo35709b() {
            C1939a.this.f2068c.m35975c((CriteoNativeAdListener) C1939a.this.f2067b.get());
        }
    }

    public C1939a(@NonNull URI uri, @NonNull Reference<CriteoNativeAdListener> reference, @NonNull C1947f fVar) {
        this.f2066a = uri;
        this.f2067b = reference;
        this.f2068c = fVar;
    }

    @Override // com.criteo.publisher.advancednative.AbstractC1958l
    /* renamed from: a */
    public void mo35969a() {
        this.f2068c.m35977a(this.f2066a, new C1940a());
    }
}
