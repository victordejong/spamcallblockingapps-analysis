package p131c.p161d.p170b.p224d.p238d.p239a.p240a;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.internal.zaaw;
import com.google.android.gms.common.internal.BaseGmsClient;
/* renamed from: c.d.b.d.d.a.a.f */
/* loaded from: classes-dex2jar.jar:c/d/b/d/d/a/a/f.class */
public final class C3252f extends AbstractC3272p {

    /* renamed from: b */
    public final /* synthetic */ BaseGmsClient.ConnectionProgressReportCallbacks f11943b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3252f(C3248d dVar, zaaw zaawVar, BaseGmsClient.ConnectionProgressReportCallbacks connectionProgressReportCallbacks) {
        super(zaawVar);
        this.f11943b = connectionProgressReportCallbacks;
    }

    @Override // p131c.p161d.p170b.p224d.p238d.p239a.p240a.AbstractC3272p
    /* renamed from: a */
    public final void mo27276a() {
        this.f11943b.mo17343b(new ConnectionResult(16, null));
    }
}
