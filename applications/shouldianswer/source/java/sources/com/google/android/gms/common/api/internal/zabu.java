package com.google.android.gms.common.api.internal;

import android.app.Activity;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.ApiExceptionUtil;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.concurrent.CancellationException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zabu.class */
public class zabu extends zal {
    private TaskCompletionSource<Void> zajp = new TaskCompletionSource<>();

    private zabu(LifecycleFragment lifecycleFragment) {
        super(lifecycleFragment);
        this.mLifecycleFragment.addCallback("GmsAvailabilityHelper", this);
    }

    public static zabu zac(Activity activity) {
        LifecycleFragment fragment = getFragment(activity);
        zabu zabuVar = (zabu) fragment.getCallbackOrNull("GmsAvailabilityHelper", zabu.class);
        if (zabuVar != null) {
            if (zabuVar.zajp.getTask().isComplete()) {
                zabuVar.zajp = new TaskCompletionSource<>();
            }
            return zabuVar;
        }
        return new zabu(fragment);
    }

    public final Task<Void> getTask() {
        return this.zajp.getTask();
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public void onDestroy() {
        super.onDestroy();
        this.zajp.trySetException(new CancellationException("Host activity was destroyed before Google Play services could be made available."));
    }

    @Override // com.google.android.gms.common.api.internal.zal
    public final void zaa(ConnectionResult connectionResult, int i) {
        this.zajp.setException(ApiExceptionUtil.fromStatus(new Status(connectionResult.getErrorCode(), connectionResult.getErrorMessage(), connectionResult.getResolution())));
    }

    @Override // com.google.android.gms.common.api.internal.zal
    protected final void zao() {
        int isGooglePlayServicesAvailable = this.zacd.isGooglePlayServicesAvailable(this.mLifecycleFragment.getLifecycleActivity());
        if (isGooglePlayServicesAvailable == 0) {
            this.zajp.setResult(null);
        } else if (this.zajp.getTask().isComplete()) {
        } else {
            zab(new ConnectionResult(isGooglePlayServicesAvailable, null), 0);
        }
    }
}
