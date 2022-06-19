package com.google.android.play.core.splitinstall.p378a;

import android.content.Context;
import com.google.android.play.core.internal.AbstractC15041be;
import com.google.android.play.core.splitinstall.C15139ae;
import com.google.android.play.core.splitinstall.C15148an;
import java.io.File;
/* renamed from: com.google.android.play.core.splitinstall.a.k */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitinstall/a/k.class */
public final class C15134k implements AbstractC15041be<C15124a> {

    /* renamed from: a */
    private final AbstractC15041be<Context> f54914a;

    /* renamed from: b */
    private final AbstractC15041be<File> f54915b;

    /* renamed from: c */
    private final AbstractC15041be<C15139ae> f54916c;

    public C15134k(AbstractC15041be<Context> abstractC15041be, AbstractC15041be<File> abstractC15041be2, AbstractC15041be<C15139ae> abstractC15041be3) {
        this.f54914a = abstractC15041be;
        this.f54915b = abstractC15041be2;
        this.f54916c = abstractC15041be3;
    }

    @Override // com.google.android.play.core.internal.AbstractC15041be
    /* renamed from: a */
    public final /* synthetic */ C15124a mo9335a() {
        return new C15124a(((C15148an) this.f54914a).mo9335a(), this.f54915b.mo9335a(), this.f54916c.mo9335a());
    }
}
