package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.amh;
import com.google.android.gms.internal.ads.aoz;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cee.class */
public final class cee<R extends aoz<AdT>, AdT extends amh> implements cev<R, cei<AdT>> {

    /* renamed from: a */
    private final cir f12820a;

    /* renamed from: b */
    private final Executor f12821b;

    /* renamed from: c */
    private crh<Void> f12822c = new cej(this);

    public cee(cir cirVar, Executor executor) {
        this.f12820a = cirVar;
        this.f12821b = executor;
    }

    @Override // com.google.android.gms.internal.ads.cev
    /* renamed from: a */
    public final crt<cei<AdT>> mo11429a(cew cewVar, cex<R> cexVar) {
        return crb.m10789c((crt) new cep(this.f12820a, cewVar.f12844b, cexVar, this.f12821b).m11435a()).m10791a(new cqt(this, cewVar, cexVar) { // from class: com.google.android.gms.internal.ads.ceh

            /* renamed from: a */
            private final cee f12824a;

            /* renamed from: b */
            private final cew f12825b;

            /* renamed from: c */
            private final cex f12826c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f12824a = this;
                this.f12825b = cewVar;
                this.f12826c = cexVar;
            }

            @Override // com.google.android.gms.internal.ads.cqt
            /* renamed from: a */
            public final crt mo7012a(Object obj) {
                return this.f12824a.m11440a(this.f12825b, this.f12826c, (cet) obj);
            }
        }, this.f12821b).m10790a(Exception.class, new ceg(this), this.f12821b);
    }

    /* renamed from: a */
    public final /* synthetic */ crt m11440a(cew cewVar, cex cexVar, cet cetVar) {
        crt m10778a;
        cjb cjbVar = cetVar.f12842b;
        C3423pw c3423pw = cetVar.f12841a;
        ciy<?> mo11232a = cjbVar != null ? this.f12820a.mo11232a(cjbVar) : null;
        if (cjbVar == null) {
            m10778a = crg.m10778a((Object) null);
        } else {
            if (mo11232a != null && c3423pw != null) {
                crg.m10781a(((aoz) cexVar.mo11387a(cewVar.f12844b).mo12850b()).mo12051c().m12887c(c3423pw), this.f12822c, this.f12821b);
            }
            m10778a = crg.m10778a(new cei(cjbVar, c3423pw, mo11232a));
        }
        return m10778a;
    }

    @Override // com.google.android.gms.internal.ads.cev
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo11430a() {
        return null;
    }
}
