package com.google.android.play.core.assetpacks;

import android.content.Context;
import com.google.android.play.core.internal.AbstractC15037ba;
import com.google.android.play.core.internal.AbstractC15041be;
import com.google.android.play.core.internal.C15039bc;
import java.util.concurrent.Executor;
/* renamed from: com.google.android.play.core.assetpacks.an */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/an.class */
public final class C14913an implements AbstractC15041be<C14912am> {

    /* renamed from: a */
    private final AbstractC15041be f54446a;

    /* renamed from: b */
    private final AbstractC15041be f54447b;

    /* renamed from: c */
    private final AbstractC15041be f54448c;

    /* renamed from: d */
    private final AbstractC15041be f54449d;

    /* renamed from: e */
    private final AbstractC15041be f54450e;

    /* renamed from: f */
    private final AbstractC15041be f54451f;

    /* renamed from: g */
    private final AbstractC15041be f54452g;

    /* renamed from: h */
    private final AbstractC15041be f54453h;

    /* renamed from: i */
    private final /* synthetic */ int f54454i = 0;

    public C14913an(AbstractC15041be<C14928bb> abstractC15041be, AbstractC15041be<AbstractC14972cs> abstractC15041be2, AbstractC15041be<C14910ak> abstractC15041be3, AbstractC15041be<C14956cc> abstractC15041be4, AbstractC15041be<C14940bn> abstractC15041be5, AbstractC15041be<C14945bs> abstractC15041be6, AbstractC15041be<C14949bw> abstractC15041be7, AbstractC15041be<C14931be> abstractC15041be8) {
        this.f54446a = abstractC15041be;
        this.f54447b = abstractC15041be2;
        this.f54448c = abstractC15041be3;
        this.f54449d = abstractC15041be4;
        this.f54450e = abstractC15041be5;
        this.f54451f = abstractC15041be6;
        this.f54452g = abstractC15041be7;
        this.f54453h = abstractC15041be8;
    }

    public C14913an(AbstractC15041be<Context> abstractC15041be, AbstractC15041be<C14928bb> abstractC15041be2, AbstractC15041be<C14912am> abstractC15041be3, AbstractC15041be<AbstractC14972cs> abstractC15041be4, AbstractC15041be<C14915ap> abstractC15041be5, AbstractC15041be<C14905af> abstractC15041be6, AbstractC15041be<Executor> abstractC15041be7, AbstractC15041be<Executor> abstractC15041be8, byte[] bArr) {
        this.f54446a = abstractC15041be;
        this.f54452g = abstractC15041be2;
        this.f54453h = abstractC15041be3;
        this.f54447b = abstractC15041be4;
        this.f54450e = abstractC15041be5;
        this.f54451f = abstractC15041be6;
        this.f54448c = abstractC15041be7;
        this.f54449d = abstractC15041be8;
    }

    /* JADX WARN: Type inference failed for: r0v53, types: [com.google.android.play.core.assetpacks.am, com.google.android.play.core.assetpacks.t] */
    @Override // com.google.android.play.core.internal.AbstractC15041be
    /* renamed from: a */
    public final /* synthetic */ C14912am mo9335a() {
        if (this.f54454i == 0) {
            Object mo9335a = this.f54446a.mo9335a();
            return new C14912am((C14928bb) mo9335a, C15039bc.m9573b(this.f54447b), (C14910ak) this.f54448c.mo9335a(), (C14956cc) this.f54449d.mo9335a(), (C14940bn) this.f54450e.mo9335a(), (C14945bs) this.f54451f.mo9335a(), (C14949bw) this.f54452g.mo9335a(), (C14931be) this.f54453h.mo9335a());
        }
        Context m9701a = C14968co.m9701a(((C14968co) this.f54446a).f54641a);
        Object mo9335a2 = this.f54452g.mo9335a();
        Object mo9335a3 = this.f54453h.mo9335a();
        AbstractC15037ba m9573b = C15039bc.m9573b(this.f54447b);
        Object mo9335a4 = this.f54450e.mo9335a();
        return new C14993t(m9701a, (C14928bb) mo9335a2, (C14912am) mo9335a3, m9573b, (C14915ap) mo9335a4, (C14905af) this.f54451f.mo9335a(), C15039bc.m9573b(this.f54448c), C15039bc.m9573b(this.f54449d));
    }
}
