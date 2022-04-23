package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.api.b;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.r;
import com.google.android.gms.internal.ar;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ap.class */
public final class ap extends r<ar> {
    public ap(Context context, Looper looper, n nVar, b.AbstractC0112b bVar, b.c cVar) {
        super(context, looper, 40, nVar, bVar, cVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.k
    public final /* synthetic */ IInterface a(IBinder iBinder) {
        return ar.a.a(iBinder);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.k
    public final String d() {
        return "com.google.android.gms.clearcut.service.START";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.k
    public final String e() {
        return "com.google.android.gms.clearcut.internal.IClearcutLoggerService";
    }
}
