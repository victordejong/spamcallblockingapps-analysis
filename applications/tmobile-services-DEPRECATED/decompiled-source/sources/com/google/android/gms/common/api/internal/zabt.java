package com.google.android.gms.common.api.internal;

import android.app.Activity;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.ApiExceptionUtil;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.concurrent.CancellationException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zabt.class */
public class zabt extends zak {

    /* renamed from: k */
    private TaskCompletionSource<Void> f7245k;

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: g */
    public void mo14779g() {
        super.mo14779g();
        this.f7245k.m10827d(new CancellationException("Host activity was destroyed before Google Play services could be made available."));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.api.internal.zak
    /* renamed from: m */
    public final void mo14722m(ConnectionResult connectionResult, int i) {
        this.f7245k.m10829b(ApiExceptionUtil.m14597a(new Status(connectionResult.m15094B(), connectionResult.m15093I(), connectionResult.m15092W())));
    }

    @Override // com.google.android.gms.common.api.internal.zak
    /* renamed from: o */
    protected final void mo14720o() {
        Activity L = this.f7108f.mo14642L();
        if (L == null) {
            this.f7245k.m10827d(new ApiException(new Status(8)));
            return;
        }
        int i = this.f7312j.mo15063i(L);
        if (i == 0) {
            this.f7245k.m10826e(null);
        } else if (!this.f7245k.m10830a().mo10783m()) {
            m14721n(new ConnectionResult(i, null), 0);
        }
    }
}
