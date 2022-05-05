package com.google.android.gms.internal.icing;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.search.GoogleNowAuthState;
import com.google.android.gms.search.SearchAuthApi;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzay.class */
final class zzay implements SearchAuthApi.GoogleNowAuthResult {

    /* renamed from: f */
    private final Status f7893f;

    /* renamed from: g */
    private final GoogleNowAuthState f7894g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzay(Status status, GoogleNowAuthState googleNowAuthState) {
        this.f7893f = status;
        this.f7894g = googleNowAuthState;
    }

    @Override // com.google.android.gms.common.api.Result
    /* renamed from: k */
    public final Status mo10851k() {
        return this.f7893f;
    }
}
