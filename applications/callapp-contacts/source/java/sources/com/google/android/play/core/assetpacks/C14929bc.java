package com.google.android.play.core.assetpacks;

import com.google.android.play.core.common.C15002c;
import com.google.android.play.core.internal.AbstractC15041be;
import com.google.android.play.core.internal.C15039bc;
import java.util.concurrent.Executor;
/* renamed from: com.google.android.play.core.assetpacks.bc */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/bc.class */
public final class C14929bc implements AbstractC15041be<C14928bb> {

    /* renamed from: a */
    private final AbstractC15041be f54501a;

    /* renamed from: b */
    private final AbstractC15041be f54502b;

    /* renamed from: c */
    private final AbstractC15041be f54503c;

    /* renamed from: d */
    private final AbstractC15041be f54504d;

    /* renamed from: e */
    private final /* synthetic */ int f54505e = 0;

    public C14929bc(AbstractC15041be<C14996w> abstractC15041be, AbstractC15041be<AbstractC14972cs> abstractC15041be2, AbstractC15041be<C14915ap> abstractC15041be3, AbstractC15041be<Executor> abstractC15041be4) {
        this.f54501a = abstractC15041be;
        this.f54502b = abstractC15041be2;
        this.f54503c = abstractC15041be3;
        this.f54504d = abstractC15041be4;
    }

    public C14929bc(AbstractC15041be<C14996w> abstractC15041be, AbstractC15041be<AbstractC14972cs> abstractC15041be2, AbstractC15041be<C14993t> abstractC15041be3, AbstractC15041be<C14915ap> abstractC15041be4, byte[] bArr) {
        this.f54501a = abstractC15041be;
        this.f54502b = abstractC15041be2;
        this.f54503c = abstractC15041be3;
        this.f54504d = abstractC15041be4;
    }

    public C14929bc(AbstractC15041be<C14928bb> abstractC15041be, AbstractC15041be<C14996w> abstractC15041be2, AbstractC15041be<C14903ad> abstractC15041be3, AbstractC15041be<C15002c> abstractC15041be4, char[] cArr) {
        this.f54503c = abstractC15041be;
        this.f54502b = abstractC15041be2;
        this.f54501a = abstractC15041be3;
        this.f54504d = abstractC15041be4;
    }

    /* JADX WARN: Type inference failed for: r0v29, types: [com.google.android.play.core.assetpacks.ak, com.google.android.play.core.assetpacks.bb] */
    /* JADX WARN: Type inference failed for: r0v43, types: [com.google.android.play.core.assetpacks.bb, com.google.android.play.core.assetpacks.be] */
    @Override // com.google.android.play.core.internal.AbstractC15041be
    /* renamed from: a */
    public final /* synthetic */ C14928bb mo9335a() {
        int i = this.f54505e;
        if (i == 0) {
            Object mo9335a = this.f54501a.mo9335a();
            return new C14928bb((C14996w) mo9335a, C15039bc.m9573b(this.f54502b), (C14915ap) this.f54503c.mo9335a(), C15039bc.m9573b(this.f54504d));
        } else if (i == 1) {
            return new C14910ak((C14996w) this.f54501a.mo9335a(), C15039bc.m9573b(this.f54502b), C15039bc.m9573b(this.f54503c), (C14915ap) this.f54504d.mo9335a());
        } else {
            Object mo9335a2 = this.f54503c.mo9335a();
            Object mo9335a3 = this.f54502b.mo9335a();
            return new C14931be((C14928bb) mo9335a2, (C14996w) mo9335a3, (C14903ad) this.f54501a.mo9335a(), (C15002c) this.f54504d.mo9335a());
        }
    }
}
