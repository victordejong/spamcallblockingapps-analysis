package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/internal/zaad.class */
public class zaad extends GoogleApiClient {

    /* renamed from: b */
    public final String f5784b = "Method is not supported by connectionless client. APIs supporting connectionless client must not call this method.";

    @Override // com.google.android.gms.common.api.GoogleApiClient
    /* renamed from: d */
    public final ConnectionResult mo39001d(long j, TimeUnit timeUnit) {
        throw new UnsupportedOperationException(this.f5784b);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    /* renamed from: e */
    public final void mo39000e() {
        throw new UnsupportedOperationException(this.f5784b);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    /* renamed from: f */
    public final void mo38999f() {
        throw new UnsupportedOperationException(this.f5784b);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    /* renamed from: g */
    public final void mo38998g(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        throw new UnsupportedOperationException(this.f5784b);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    /* renamed from: n */
    public final boolean mo38996n() {
        throw new UnsupportedOperationException(this.f5784b);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    /* renamed from: o */
    public final boolean mo38995o() {
        throw new UnsupportedOperationException(this.f5784b);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    /* renamed from: r */
    public final void mo38992r(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        throw new UnsupportedOperationException(this.f5784b);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    /* renamed from: s */
    public final void mo38991s(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        throw new UnsupportedOperationException(this.f5784b);
    }
}
