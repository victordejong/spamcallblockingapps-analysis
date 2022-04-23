package com.google.android.gms.wearable.internal;

import android.content.IntentFilter;
import android.os.RemoteException;
import com.google.android.gms.common.api.internal.i;
import com.google.android.gms.common.api.internal.n;
import com.google.android.gms.wearable.k;
import com.google.android.gms.wearable.l;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/bx.class */
final class bx extends n<db, l.a> {
    private final l.a e;
    private final IntentFilter[] f;
    private final i<k.a> g;

    private bx(l.a aVar, IntentFilter[] intentFilterArr, i<l.a> iVar) {
        super(iVar);
        this.e = aVar;
        this.f = intentFilterArr;
        this.g = iVar;
    }

    @Override // com.google.android.gms.common.api.internal.n
    public final /* synthetic */ void a(db dbVar, com.google.android.gms.tasks.i iVar) throws RemoteException {
        db dbVar2 = dbVar;
        dbVar2.f30110c.a(dbVar2, new cn(iVar), this.e, de.a(this.g, this.f));
    }
}
