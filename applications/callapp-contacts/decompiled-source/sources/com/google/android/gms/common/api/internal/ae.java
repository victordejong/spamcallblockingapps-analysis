package com.google.android.gms.common.api.internal;

import android.os.Handler;
import com.google.android.gms.common.internal.d;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/ae.class */
public final class ae implements d.e {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ af f22633a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ae(af afVar) {
        this.f22633a = afVar;
    }

    @Override // com.google.android.gms.common.internal.d.e
    public final void a() {
        Handler handler;
        handler = this.f22633a.i.g;
        handler.post(new ad(this));
    }
}
