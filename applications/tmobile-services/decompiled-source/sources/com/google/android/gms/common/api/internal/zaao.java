package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaao.class */
final class zaao extends zabd {

    /* renamed from: b */
    private final /* synthetic */ ConnectionResult f7170b;

    /* renamed from: c */
    private final /* synthetic */ zaal f7171c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zaao(zaal zaalVar, zabb zabbVar, ConnectionResult connectionResult) {
        super(zabbVar);
        this.f7171c = zaalVar;
        this.f7170b = connectionResult;
    }

    @Override // com.google.android.gms.common.api.internal.zabd
    @GuardedBy
    /* renamed from: b */
    public final void mo14794b() {
        this.f7171c.f7165h.m14853A(this.f7170b);
    }
}
