package com.google.android.play.core.assetpacks;

import com.google.android.play.core.common.C15002c;
import com.google.android.play.core.internal.AbstractC15037ba;
import com.google.android.play.core.internal.AbstractC15041be;
import com.google.android.play.core.internal.C15039bc;
import com.google.android.play.core.splitinstall.C15139ae;
import java.util.concurrent.Executor;
/* renamed from: com.google.android.play.core.assetpacks.ci */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/ci.class */
public final class C14962ci implements AbstractC15041be<C14961ch> {

    /* renamed from: a */
    private final AbstractC15041be<C14996w> f54621a;

    /* renamed from: b */
    private final AbstractC15041be<AbstractC14972cs> f54622b;

    /* renamed from: c */
    private final AbstractC15041be<C14993t> f54623c;

    /* renamed from: d */
    private final AbstractC15041be<C15139ae> f54624d;

    /* renamed from: e */
    private final AbstractC15041be<C14928bb> f54625e;

    /* renamed from: f */
    private final AbstractC15041be<C14915ap> f54626f;

    /* renamed from: g */
    private final AbstractC15041be<C14905af> f54627g;

    /* renamed from: h */
    private final AbstractC15041be<Executor> f54628h;

    /* renamed from: i */
    private final AbstractC15041be<C15002c> f54629i;

    public C14962ci(AbstractC15041be<C14996w> abstractC15041be, AbstractC15041be<AbstractC14972cs> abstractC15041be2, AbstractC15041be<C14993t> abstractC15041be3, AbstractC15041be<C15139ae> abstractC15041be4, AbstractC15041be<C14928bb> abstractC15041be5, AbstractC15041be<C14915ap> abstractC15041be6, AbstractC15041be<C14905af> abstractC15041be7, AbstractC15041be<Executor> abstractC15041be8, AbstractC15041be<C15002c> abstractC15041be9) {
        this.f54621a = abstractC15041be;
        this.f54622b = abstractC15041be2;
        this.f54623c = abstractC15041be3;
        this.f54624d = abstractC15041be4;
        this.f54625e = abstractC15041be5;
        this.f54626f = abstractC15041be6;
        this.f54627g = abstractC15041be7;
        this.f54628h = abstractC15041be8;
        this.f54629i = abstractC15041be9;
    }

    @Override // com.google.android.play.core.internal.AbstractC15041be
    /* renamed from: a */
    public final /* synthetic */ C14961ch mo9335a() {
        C14996w mo9335a = this.f54621a.mo9335a();
        AbstractC15037ba m9573b = C15039bc.m9573b(this.f54622b);
        C14993t mo9335a2 = this.f54623c.mo9335a();
        C15139ae mo9335a3 = this.f54624d.mo9335a();
        C14928bb mo9335a4 = this.f54625e.mo9335a();
        C14915ap mo9335a5 = this.f54626f.mo9335a();
        return new C14961ch(mo9335a, m9573b, mo9335a2, mo9335a3, mo9335a4, mo9335a5, this.f54627g.mo9335a(), C15039bc.m9573b(this.f54628h), this.f54629i.mo9335a());
    }
}
