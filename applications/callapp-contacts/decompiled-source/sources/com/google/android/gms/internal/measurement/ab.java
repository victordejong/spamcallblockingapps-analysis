package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import com.google.android.gms.measurement.internal.fu;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ab.class */
final class ab extends ne {

    /* renamed from: a  reason: collision with root package name */
    private final fu f28912a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ab(fu fuVar) {
        this.f28912a = fuVar;
    }

    @Override // com.google.android.gms.internal.measurement.nf
    public final int O_() {
        return System.identityHashCode(this.f28912a);
    }

    @Override // com.google.android.gms.internal.measurement.nf
    public final void a(String str, String str2, Bundle bundle, long j) {
        this.f28912a.a(str, str2, bundle, j);
    }
}
