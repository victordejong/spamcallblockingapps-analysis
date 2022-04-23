package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/jm.class */
public final class jm implements jt {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ jo f29899a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public jm(jo joVar) {
        this.f29899a = joVar;
    }

    @Override // com.google.android.gms.measurement.internal.jt
    public final void a(String str, Bundle bundle) {
        es esVar;
        es esVar2;
        if (TextUtils.isEmpty(str)) {
            esVar = this.f29899a.f;
            if (esVar != null) {
                esVar2 = this.f29899a.f;
                esVar2.c().f29506c.a("AppId not known when logging event", "_err");
                return;
            }
            return;
        }
        this.f29899a.d().a(new jl(this, str, "_err", bundle));
    }
}
