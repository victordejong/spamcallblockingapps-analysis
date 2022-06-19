package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import com.google.android.gms.measurement.internal.AbstractC7881u5;
/* renamed from: com.google.android.gms.internal.measurement.a0 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/a0.class */
public final class BinderC7289a0 extends AbstractBinderC7469mc {

    /* renamed from: d */
    private final AbstractC7881u5 f34327d;

    public BinderC7289a0(AbstractC7881u5 abstractC7881u5) {
        this.f34327d = abstractC7881u5;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7483nc
    /* renamed from: A1 */
    public final void mo7065A1(String str, String str2, Bundle bundle, long j) {
        this.f34327d.mo2542a(str, str2, bundle, j);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7483nc
    /* renamed from: a */
    public final int mo7064a() {
        return System.identityHashCode(this.f34327d);
    }
}
