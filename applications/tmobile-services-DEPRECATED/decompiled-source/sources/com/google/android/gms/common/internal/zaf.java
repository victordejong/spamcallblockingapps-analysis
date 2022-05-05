package com.google.android.gms.common.internal;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.internal.ConnectionCallbacks;
import com.google.android.gms.common.internal.BaseGmsClient;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zaf.class */
final class zaf implements BaseGmsClient.BaseConnectionCallbacks {

    /* renamed from: a */
    private final /* synthetic */ ConnectionCallbacks f7547a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zaf(ConnectionCallbacks connectionCallbacks) {
        this.f7547a = connectionCallbacks;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    /* renamed from: a */
    public final void mo11170a(int i) {
        this.f7547a.mo14715a(i);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    /* renamed from: b */
    public final void mo11169b(@Nullable Bundle bundle) {
        this.f7547a.mo14714b(bundle);
    }
}
