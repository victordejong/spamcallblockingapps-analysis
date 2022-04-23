package p081h.p203i.p204a.p224e.p259j.p274o;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.LocationSettingsRequest;
import com.google.android.gms.location.LocationSettingsResult;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6835k;
import p081h.p203i.p204a.p224e.p280k.C8827h;
/* renamed from: h.i.a.e.j.o.b0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/o/b0.class */
public final class C8498b0 extends C8827h.AbstractC8828a<LocationSettingsResult> {

    /* renamed from: s */
    public final /* synthetic */ LocationSettingsRequest f19534s;

    /* renamed from: t */
    public final /* synthetic */ String f19535t = null;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8498b0(C8496a0 a0Var, AbstractC6825f fVar, LocationSettingsRequest locationSettingsRequest, String str) {
        super(fVar);
        this.f19534s = locationSettingsRequest;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    /* renamed from: a */
    public final /* synthetic */ AbstractC6835k mo17894a(Status status) {
        return new LocationSettingsResult(status);
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6850c
    /* renamed from: a */
    public final /* synthetic */ void mo17881a(C8526t tVar) throws RemoteException {
        tVar.m17868a(this.f19534s, this, this.f19535t);
    }
}
