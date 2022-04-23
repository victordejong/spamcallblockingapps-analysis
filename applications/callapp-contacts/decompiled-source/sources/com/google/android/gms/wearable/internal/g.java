package com.google.android.gms.wearable.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.internal.i;
import com.google.android.gms.common.api.internal.u;
import com.google.android.gms.wearable.b;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/g.class */
final class g extends u<db, b.a> {

    /* renamed from: b  reason: collision with root package name */
    private final b.a f30140b;

    private g(b.a aVar, i.a<b.a> aVar2) {
        super(aVar2);
        this.f30140b = aVar;
    }

    @Override // com.google.android.gms.common.api.internal.u
    public final /* synthetic */ void a(db dbVar, com.google.android.gms.tasks.i iVar) throws RemoteException {
        db dbVar2 = dbVar;
        dbVar2.f30111d.a(dbVar2, new cm(iVar), this.f30140b);
    }
}
