package p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a;

import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BasePendingResult;
import com.google.android.gms.common.api.internal.zaaa;
/* renamed from: e.m.a.f.e.a.a.y0 */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/e/a/a/y0.class */
public final class C24956y0 implements PendingResult.StatusListener {

    /* renamed from: a */
    public final /* synthetic */ BasePendingResult f69897a;

    /* renamed from: b */
    public final /* synthetic */ zaaa f69898b;

    public C24956y0(zaaa zaaaVar, BasePendingResult basePendingResult) {
        this.f69898b = zaaaVar;
        this.f69897a = basePendingResult;
    }

    @Override // com.google.android.gms.common.api.PendingResult.StatusListener
    /* renamed from: a */
    public final void mo4256a(Status status) {
        this.f69898b.f5780a.remove(this.f69897a);
    }
}
