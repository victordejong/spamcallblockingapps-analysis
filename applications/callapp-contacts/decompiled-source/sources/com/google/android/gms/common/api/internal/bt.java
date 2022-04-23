package com.google.android.gms.common.api.internal;

import android.app.Dialog;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/bt.class */
final class bt extends ak {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Dialog f22706a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ bu f22707b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bt(bu buVar, Dialog dialog) {
        this.f22707b = buVar;
        this.f22706a = dialog;
    }

    @Override // com.google.android.gms.common.api.internal.ak
    public final void a() {
        this.f22707b.f22708a.f();
        if (this.f22706a.isShowing()) {
            this.f22706a.dismiss();
        }
    }
}
