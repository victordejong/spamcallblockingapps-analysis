package com.google.android.play.core.appupdate;

import android.content.Context;
import com.google.android.play.core.internal.AbstractC15041be;
/* renamed from: com.google.android.play.core.appupdate.s */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/appupdate/s.class */
public final class C14891s implements AbstractC15041be<C14890r> {

    /* renamed from: a */
    private final AbstractC15041be<Context> f54335a;

    /* renamed from: b */
    private final AbstractC15041be<C14892t> f54336b;

    public C14891s(AbstractC15041be<Context> abstractC15041be, AbstractC15041be<C14892t> abstractC15041be2) {
        this.f54335a = abstractC15041be;
        this.f54336b = abstractC15041be2;
    }

    @Override // com.google.android.play.core.internal.AbstractC15041be
    /* renamed from: a */
    public final /* synthetic */ C14890r mo9335a() {
        return new C14890r(((C14883k) this.f54335a).mo9335a(), this.f54336b.mo9335a());
    }
}
