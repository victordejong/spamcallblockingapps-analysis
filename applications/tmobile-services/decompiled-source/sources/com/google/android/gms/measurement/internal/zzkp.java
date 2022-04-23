package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzkp.class */
public final class zzkp implements zzkv {

    /* renamed from: a */
    final /* synthetic */ zzki f9697a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzkp(zzki zzkiVar) {
        this.f9697a = zzkiVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzkv
    /* renamed from: a */
    public final void mo11004a(String str, Bundle bundle) {
        zzfv zzfvVar;
        if (TextUtils.isEmpty(str)) {
            zzfvVar = this.f9697a.f9665j;
            zzfvVar.mo11081c().m11560D().m11540a("AppId not known when logging error event");
            return;
        }
        this.f9697a.mo11083b().m11409x(new zzko(this, str, bundle));
    }
}
