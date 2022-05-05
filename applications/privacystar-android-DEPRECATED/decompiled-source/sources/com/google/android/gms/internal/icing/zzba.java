package com.google.android.gms.internal.icing;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.search.GoogleNowAuthState;
import com.google.android.gms.search.SearchAuthApi;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzba.class */
final class zzba implements SearchAuthApi.GoogleNowAuthResult {
    private final GoogleNowAuthState zzbt;
    private final Status zzv;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzba(Status status, GoogleNowAuthState googleNowAuthState) {
        this.zzv = status;
        this.zzbt = googleNowAuthState;
    }

    @Override // com.google.android.gms.search.SearchAuthApi.GoogleNowAuthResult
    public final GoogleNowAuthState getGoogleNowAuthState() {
        return this.zzbt;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status getStatus() {
        return this.zzv;
    }
}
