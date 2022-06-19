package com.google.android.gms.common.api.internal;

import android.app.Activity;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.concurrent.CancellationException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zabw.class */
public final class zabw extends zap {
    private TaskCompletionSource<Void> zad = new TaskCompletionSource<>();

    private zabw(LifecycleFragment lifecycleFragment) {
        super(lifecycleFragment, GoogleApiAvailability.getInstance());
        this.mLifecycleFragment.addCallback("GmsAvailabilityHelper", this);
    }

    public static zabw zaa(Activity activity) {
        LifecycleFragment fragment = LifecycleCallback.getFragment(activity);
        zabw zabwVar = (zabw) fragment.getCallbackOrNull("GmsAvailabilityHelper", zabw.class);
        if (zabwVar != null) {
            if (zabwVar.zad.getTask().isComplete()) {
                zabwVar.zad = new TaskCompletionSource<>();
            }
            return zabwVar;
        }
        return new zabw(fragment);
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void onDestroy() {
        super.onDestroy();
        this.zad.trySetException(new CancellationException("Host activity was destroyed before Google Play services could be made available."));
    }

    public final Task<Void> zab() {
        return this.zad.getTask();
    }

    @Override // com.google.android.gms.common.api.internal.zap
    public final void zad(ConnectionResult connectionResult, int i) {
        String errorMessage = connectionResult.getErrorMessage();
        String str = errorMessage;
        if (errorMessage == null) {
            str = "Error connecting to Google Play services";
        }
        this.zad.setException(new ApiException(new Status(connectionResult, str, connectionResult.getErrorCode())));
    }

    @Override // com.google.android.gms.common.api.internal.zap
    public final void zae() {
        Activity lifecycleActivity = this.mLifecycleFragment.getLifecycleActivity();
        if (lifecycleActivity == null) {
            this.zad.trySetException(new ApiException(new Status(8)));
            return;
        }
        int isGooglePlayServicesAvailable = this.zac.isGooglePlayServicesAvailable(lifecycleActivity);
        if (isGooglePlayServicesAvailable == 0) {
            this.zad.trySetResult(null);
        } else if (this.zad.getTask().isComplete()) {
        } else {
            zaf(new ConnectionResult(isGooglePlayServicesAvailable, null), 0);
        }
    }
}
