package p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.internal.zaba;
import com.google.android.gms.common.internal.BaseGmsClient;
/* renamed from: e.m.a.f.e.a.a.g */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/e/a/a/g.class */
public final class C24919g extends AbstractC24939q {

    /* renamed from: b */
    public final /* synthetic */ BaseGmsClient.ConnectionProgressReportCallbacks f69837b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C24919g(zaba zabaVar, BaseGmsClient.ConnectionProgressReportCallbacks connectionProgressReportCallbacks) {
        super(zabaVar);
        this.f69837b = connectionProgressReportCallbacks;
    }

    @Override // p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a.AbstractC24939q
    /* renamed from: a */
    public final void mo4282a() {
        this.f69837b.mo4289a(new ConnectionResult(16, null));
    }
}
