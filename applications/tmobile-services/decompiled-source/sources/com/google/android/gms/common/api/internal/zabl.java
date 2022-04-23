package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Api;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zabl.class */
final class zabl implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ zabm f7238f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zabl(zabm zabmVar) {
        this.f7238f = zabmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Api.Client client;
        client = this.f7238f.f7239a.f7082b;
        client.disconnect();
    }
}
