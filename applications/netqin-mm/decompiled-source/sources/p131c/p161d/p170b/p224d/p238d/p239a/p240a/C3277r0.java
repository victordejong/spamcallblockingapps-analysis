package p131c.p161d.p170b.p224d.p238d.p239a.p240a;

import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BasePendingResult;
import com.google.android.gms.common.api.internal.zav;
import java.util.Map;
/* renamed from: c.d.b.d.d.a.a.r0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/d/a/a/r0.class */
public final class C3277r0 implements PendingResult.StatusListener {

    /* renamed from: a */
    public final /* synthetic */ BasePendingResult f11985a;

    /* renamed from: b */
    public final /* synthetic */ zav f11986b;

    public C3277r0(zav zavVar, BasePendingResult basePendingResult) {
        this.f11986b = zavVar;
        this.f11985a = basePendingResult;
    }

    @Override // com.google.android.gms.common.api.PendingResult.StatusListener
    /* renamed from: a */
    public final void mo17754a(Status status) {
        Map map;
        map = this.f11986b.f23298a;
        map.remove(this.f11985a);
    }
}
