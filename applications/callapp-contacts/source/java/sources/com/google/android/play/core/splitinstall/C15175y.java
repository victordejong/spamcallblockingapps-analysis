package com.google.android.play.core.splitinstall;

import com.google.android.play.core.internal.AbstractC15041be;
import com.google.android.play.core.internal.C15039bc;
import com.google.android.play.core.splitinstall.p378a.C15124a;
import java.io.File;
/* renamed from: com.google.android.play.core.splitinstall.y */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitinstall/y.class */
public final class C15175y implements AbstractC15041be<C15174x> {

    /* renamed from: a */
    private final AbstractC15041be<C15145ak> f55001a;

    /* renamed from: b */
    private final AbstractC15041be<C15124a> f55002b;

    /* renamed from: c */
    private final AbstractC15041be<File> f55003c;

    public C15175y(AbstractC15041be<C15145ak> abstractC15041be, AbstractC15041be<C15124a> abstractC15041be2, AbstractC15041be<File> abstractC15041be3) {
        this.f55001a = abstractC15041be;
        this.f55002b = abstractC15041be2;
        this.f55003c = abstractC15041be3;
    }

    @Override // com.google.android.play.core.internal.AbstractC15041be
    /* renamed from: a */
    public final /* synthetic */ C15174x mo9335a() {
        return new C15174x(C15039bc.m9573b(this.f55001a), C15039bc.m9573b(this.f55002b), C15039bc.m9573b(this.f55003c));
    }
}
