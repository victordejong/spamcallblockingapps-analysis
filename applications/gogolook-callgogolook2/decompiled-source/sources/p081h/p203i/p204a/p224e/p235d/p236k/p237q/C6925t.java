package p081h.p203i.p204a.p224e.p235d.p236k.p237q;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BasePendingResult;
import java.util.Map;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6829g;
/* renamed from: h.i.a.e.d.k.q.t */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/q/t.class */
public final class C6925t implements AbstractC6829g.AbstractC6830a {

    /* renamed from: a */
    public final /* synthetic */ BasePendingResult f16959a;

    /* renamed from: b */
    public final /* synthetic */ C6921s f16960b;

    public C6925t(C6921s sVar, BasePendingResult basePendingResult) {
        this.f16960b = sVar;
        this.f16959a = basePendingResult;
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6829g.AbstractC6830a
    /* renamed from: a */
    public final void mo21567a(Status status) {
        Map map;
        map = this.f16960b.f16949a;
        map.remove(this.f16959a);
    }
}
