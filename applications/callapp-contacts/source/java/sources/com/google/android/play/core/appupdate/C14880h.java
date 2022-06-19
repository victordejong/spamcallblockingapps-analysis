package com.google.android.play.core.appupdate;

import android.content.Context;
import com.google.android.play.core.internal.AbstractC15041be;
/* renamed from: com.google.android.play.core.appupdate.h */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/appupdate/h.class */
public final class C14880h implements AbstractC15041be<C14879g> {

    /* renamed from: a */
    private final AbstractC15041be<C14890r> f54310a;

    /* renamed from: b */
    private final AbstractC15041be<C14877e> f54311b;

    /* renamed from: c */
    private final AbstractC15041be<Context> f54312c;

    public C14880h(AbstractC15041be<C14890r> abstractC15041be, AbstractC15041be<C14877e> abstractC15041be2, AbstractC15041be<Context> abstractC15041be3) {
        this.f54310a = abstractC15041be;
        this.f54311b = abstractC15041be2;
        this.f54312c = abstractC15041be3;
    }

    @Override // com.google.android.play.core.internal.AbstractC15041be
    /* renamed from: a */
    public final /* synthetic */ C14879g mo9335a() {
        return new C14879g(this.f54310a.mo9335a(), this.f54311b.mo9335a(), ((C14883k) this.f54312c).mo9335a());
    }
}
