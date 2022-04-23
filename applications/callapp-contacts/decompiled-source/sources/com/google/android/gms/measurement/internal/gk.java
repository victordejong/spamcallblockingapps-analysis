package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/gk.class */
public final class gk implements jt {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ gv f29700a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gk(gv gvVar) {
        this.f29700a = gvVar;
    }

    @Override // com.google.android.gms.measurement.internal.jt
    public final void a(String str, Bundle bundle) {
        if (!TextUtils.isEmpty(str)) {
            gv gvVar = this.f29700a;
            es.y();
            gvVar.b("auto", "_err", gvVar.t.j.a(), bundle, false, true, false, str);
            return;
        }
        this.f29700a.a("auto", "_err", bundle);
    }
}
