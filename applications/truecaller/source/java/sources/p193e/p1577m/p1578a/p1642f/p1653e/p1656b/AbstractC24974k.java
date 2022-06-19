package p193e.p1577m.p1578a.p1642f.p1653e.p1656b;

import android.app.PendingIntent;
import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.zzc;
/* renamed from: e.m.a.f.e.b.k */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/e/b/k.class */
public abstract class AbstractC24974k extends zzc<Boolean> {

    /* renamed from: d */
    public final int f69921d;

    /* renamed from: e */
    public final Bundle f69922e;

    /* renamed from: f */
    public final /* synthetic */ BaseGmsClient f69923f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractC24974k(BaseGmsClient baseGmsClient, int i, Bundle bundle) {
        super(baseGmsClient, Boolean.TRUE);
        this.f69923f = baseGmsClient;
        this.f69921d = i;
        this.f69922e = bundle;
    }

    @Override // com.google.android.gms.common.internal.zzc
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo4254a(Boolean bool) {
        PendingIntent pendingIntent = null;
        if (this.f69921d == 0) {
            if (mo4251e()) {
                return;
            }
            this.f69923f.zzp(1, null);
            mo4252d(new ConnectionResult(8, null));
            return;
        }
        this.f69923f.zzp(1, null);
        Bundle bundle = this.f69922e;
        if (bundle != null) {
            pendingIntent = (PendingIntent) bundle.getParcelable(BaseGmsClient.KEY_PENDING_INTENT);
        }
        mo4252d(new ConnectionResult(this.f69921d, pendingIntent));
    }

    @Override // com.google.android.gms.common.internal.zzc
    /* renamed from: b */
    public final void mo4253b() {
    }

    /* renamed from: d */
    public abstract void mo4252d(ConnectionResult connectionResult);

    /* renamed from: e */
    public abstract boolean mo4251e();
}
