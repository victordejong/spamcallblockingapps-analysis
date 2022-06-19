package com.google.android.gms.common.api.internal;

import android.app.Activity;
import androidx.collection.ArraySet;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaab.class */
public final class zaab extends zap {
    private final ArraySet<ApiKey<?>> zad = new ArraySet<>();
    private final GoogleApiManager zae;

    zaab(LifecycleFragment lifecycleFragment, GoogleApiManager googleApiManager, GoogleApiAvailability googleApiAvailability) {
        super(lifecycleFragment, googleApiAvailability);
        this.zae = googleApiManager;
        this.mLifecycleFragment.addCallback("ConnectionlessLifecycleHelper", this);
    }

    public static void zaa(Activity activity, GoogleApiManager googleApiManager, ApiKey<?> apiKey) {
        LifecycleFragment fragment = getFragment(activity);
        zaab zaabVar = (zaab) fragment.getCallbackOrNull("ConnectionlessLifecycleHelper", zaab.class);
        zaab zaabVar2 = zaabVar;
        if (zaabVar == null) {
            zaabVar2 = new zaab(fragment, googleApiManager, GoogleApiAvailability.getInstance());
        }
        Preconditions.checkNotNull(apiKey, "ApiKey cannot be null");
        zaabVar2.zad.add(apiKey);
        googleApiManager.zae(zaabVar2);
    }

    private final void zac() {
        if (!this.zad.isEmpty()) {
            this.zae.zae(this);
        }
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void onResume() {
        super.onResume();
        zac();
    }

    @Override // com.google.android.gms.common.api.internal.zap, com.google.android.gms.common.api.internal.LifecycleCallback
    public final void onStart() {
        super.onStart();
        zac();
    }

    @Override // com.google.android.gms.common.api.internal.zap, com.google.android.gms.common.api.internal.LifecycleCallback
    public final void onStop() {
        super.onStop();
        this.zae.zaf(this);
    }

    public final ArraySet<ApiKey<?>> zab() {
        return this.zad;
    }

    @Override // com.google.android.gms.common.api.internal.zap
    protected final void zad(ConnectionResult connectionResult, int i) {
        this.zae.zaq(connectionResult, i);
    }

    @Override // com.google.android.gms.common.api.internal.zap
    protected final void zae() {
        this.zae.zai();
    }
}
