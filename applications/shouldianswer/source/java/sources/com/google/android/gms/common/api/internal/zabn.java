package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Api;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zabn.class */
final class zabn implements Runnable {
    private final /* synthetic */ zabm zaja;

    public zabn(zabm zabmVar) {
        this.zaja = zabmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Api.Client client;
        client = this.zaja.zaiy.zaio;
        client.disconnect();
    }
}
