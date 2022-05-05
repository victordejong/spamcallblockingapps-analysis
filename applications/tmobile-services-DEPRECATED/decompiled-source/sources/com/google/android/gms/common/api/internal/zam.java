package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zam.class */
final class zam {

    /* renamed from: a */
    private final int f7315a;

    /* renamed from: b */
    private final ConnectionResult f7316b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zam(ConnectionResult connectionResult, int i) {
        Preconditions.m14523k(connectionResult);
        this.f7316b = connectionResult;
        this.f7315a = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final ConnectionResult m14718a() {
        return this.f7316b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final int m14717b() {
        return this.f7315a;
    }
}
