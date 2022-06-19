package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import com.google.android.gms.measurement.internal.AbstractC14008fu;
/* renamed from: com.google.android.gms.internal.measurement.ab */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ab.class */
final class BinderC13354ab extends AbstractBinderC13708ne {

    /* renamed from: a */
    private final AbstractC14008fu f50578a;

    public BinderC13354ab(AbstractC14008fu abstractC14008fu) {
        this.f50578a = abstractC14008fu;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13709nf
    /* renamed from: O_ */
    public final int mo12293O_() {
        return System.identityHashCode(this.f50578a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13709nf
    /* renamed from: a */
    public final void mo12292a(String str, String str2, Bundle bundle, long j) {
        this.f50578a.mo8584a(str, str2, bundle, j);
    }
}
