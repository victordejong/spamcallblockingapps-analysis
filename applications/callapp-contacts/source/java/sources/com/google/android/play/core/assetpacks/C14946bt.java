package com.google.android.play.core.assetpacks;

import android.content.Context;
import com.google.android.play.core.common.C15002c;
import com.google.android.play.core.internal.AbstractC15041be;
import com.google.android.play.core.internal.C15039bc;
import java.io.File;
import java.util.concurrent.Executor;
/* renamed from: com.google.android.play.core.assetpacks.bt */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/bt.class */
public final class C14946bt implements AbstractC15041be<C14945bs> {

    /* renamed from: a */
    private final AbstractC15041be f54558a;

    /* renamed from: b */
    private final AbstractC15041be f54559b;

    /* renamed from: c */
    private final AbstractC15041be f54560c;

    /* renamed from: d */
    private final AbstractC15041be f54561d;

    /* renamed from: e */
    private final AbstractC15041be f54562e;

    /* renamed from: f */
    private final AbstractC15041be f54563f;

    /* renamed from: g */
    private final /* synthetic */ int f54564g = 0;

    public C14946bt(AbstractC15041be<C14996w> abstractC15041be, AbstractC15041be<AbstractC14972cs> abstractC15041be2, AbstractC15041be<C14928bb> abstractC15041be3, AbstractC15041be<Executor> abstractC15041be4, AbstractC15041be<C14915ap> abstractC15041be5, AbstractC15041be<C15002c> abstractC15041be6) {
        this.f54558a = abstractC15041be;
        this.f54559b = abstractC15041be2;
        this.f54560c = abstractC15041be3;
        this.f54561d = abstractC15041be4;
        this.f54562e = abstractC15041be5;
        this.f54563f = abstractC15041be6;
    }

    public C14946bt(AbstractC15041be<String> abstractC15041be, AbstractC15041be<C14993t> abstractC15041be2, AbstractC15041be<C14915ap> abstractC15041be3, AbstractC15041be<Context> abstractC15041be4, AbstractC15041be<C14947bu> abstractC15041be5, AbstractC15041be<Executor> abstractC15041be6, byte[] bArr) {
        this.f54563f = abstractC15041be;
        this.f54559b = abstractC15041be2;
        this.f54562e = abstractC15041be3;
        this.f54561d = abstractC15041be4;
        this.f54560c = abstractC15041be5;
        this.f54558a = abstractC15041be6;
    }

    /* JADX WARN: Type inference failed for: r0v50, types: [com.google.android.play.core.assetpacks.bi, com.google.android.play.core.assetpacks.bs] */
    @Override // com.google.android.play.core.internal.AbstractC15041be
    /* renamed from: a */
    public final /* synthetic */ C14945bs mo9335a() {
        if (this.f54564g == 0) {
            Object mo9335a = this.f54558a.mo9335a();
            return new C14945bs((C14996w) mo9335a, C15039bc.m9573b(this.f54559b), (C14928bb) this.f54560c.mo9335a(), C15039bc.m9573b(this.f54561d), (C14915ap) this.f54562e.mo9335a(), (C15002c) this.f54563f.mo9335a());
        }
        String str = (String) this.f54563f.mo9335a();
        Object mo9335a2 = this.f54559b.mo9335a();
        Object mo9335a3 = this.f54562e.mo9335a();
        Context m9701a = C14968co.m9701a(((C14968co) this.f54561d).f54641a);
        Object mo9335a4 = this.f54560c.mo9335a();
        return new C14935bi(str != null ? new File(m9701a.getExternalFilesDir(null), str) : m9701a.getExternalFilesDir(null), (C14993t) mo9335a2, (C14915ap) mo9335a3, m9701a, (C14947bu) mo9335a4, C15039bc.m9573b(this.f54558a));
    }
}
