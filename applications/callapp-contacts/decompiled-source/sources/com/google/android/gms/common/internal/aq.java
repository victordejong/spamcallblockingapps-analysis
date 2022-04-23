package com.google.android.gms.common.internal;

import android.app.PendingIntent;
import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/aq.class */
abstract class aq extends bb<Boolean> {

    /* renamed from: a  reason: collision with root package name */
    public final int f22845a;

    /* renamed from: b  reason: collision with root package name */
    public final Bundle f22846b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ d f22847c;

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public aq(d dVar, int i, Bundle bundle) {
        super(dVar, Boolean.TRUE);
        this.f22847c = dVar;
        this.f22845a = i;
        this.f22846b = bundle;
    }

    protected abstract void a(ConnectionResult connectionResult);

    protected abstract boolean a();

    @Override // com.google.android.gms.common.internal.bb
    protected final /* synthetic */ void b() {
        ConnectionResult connectionResult;
        PendingIntent pendingIntent = null;
        if (this.f22845a != 0) {
            this.f22847c.zzp(1, null);
            Bundle bundle = this.f22846b;
            if (bundle != null) {
                pendingIntent = (PendingIntent) bundle.getParcelable(d.KEY_PENDING_INTENT);
            }
            connectionResult = new ConnectionResult(this.f22845a, pendingIntent);
        } else if (!a()) {
            this.f22847c.zzp(1, null);
            connectionResult = new ConnectionResult(8, null);
        } else {
            return;
        }
        a(connectionResult);
    }
}
