package com.google.android.gms.wearable.internal;

import android.content.IntentFilter;
import android.os.RemoteException;
import com.google.android.gms.common.api.internal.i;
import com.google.android.gms.common.api.internal.n;
import com.google.android.gms.wearable.a;
import com.google.android.gms.wearable.b;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/f.class */
final class f extends n<db, b.a> {
    private final b.a e;
    private final IntentFilter[] f;
    private final i<a.AbstractC0483a> g;

    private f(b.a aVar, IntentFilter[] intentFilterArr, i<b.a> iVar) {
        super(iVar);
        this.e = aVar;
        this.f = intentFilterArr;
        this.g = iVar;
    }

    @Override // com.google.android.gms.common.api.internal.n
    public final /* synthetic */ void a(db dbVar, com.google.android.gms.tasks.i iVar) throws RemoteException {
        db dbVar2 = dbVar;
        dbVar2.f30111d.a(dbVar2, new cn(iVar), this.e, de.c(this.g, this.f));
    }
}
