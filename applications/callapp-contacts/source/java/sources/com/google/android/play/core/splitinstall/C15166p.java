package com.google.android.play.core.splitinstall;

import android.content.Context;
import com.google.android.play.core.internal.AbstractC15041be;
/* renamed from: com.google.android.play.core.splitinstall.p */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitinstall/p.class */
public final class C15166p implements AbstractC15041be<C15165o> {

    /* renamed from: a */
    private final AbstractC15041be f54983a;

    /* renamed from: b */
    private final /* synthetic */ int f54984b = 0;

    public C15166p(AbstractC15041be<Context> abstractC15041be) {
        this.f54983a = abstractC15041be;
    }

    public C15166p(AbstractC15041be<Context> abstractC15041be, byte[] bArr) {
        this.f54983a = abstractC15041be;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [com.google.android.play.core.splitinstall.n, com.google.android.play.core.splitinstall.o] */
    @Override // com.google.android.play.core.internal.AbstractC15041be
    /* renamed from: a */
    public final /* synthetic */ C15165o mo9335a() {
        return this.f54984b != 0 ? new C15164n(((C15148an) this.f54983a).mo9335a()) : new C15165o(((C15148an) this.f54983a).mo9335a());
    }
}
