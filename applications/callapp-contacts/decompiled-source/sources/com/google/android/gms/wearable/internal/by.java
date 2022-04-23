package com.google.android.gms.wearable.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.internal.i;
import com.google.android.gms.common.api.internal.u;
import com.google.android.gms.wearable.l;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/by.class */
final class by extends u<db, l.a> {

    /* renamed from: b  reason: collision with root package name */
    private final l.a f30099b;

    private by(l.a aVar, i.a<l.a> aVar2) {
        super(aVar2);
        this.f30099b = aVar;
    }

    @Override // com.google.android.gms.common.api.internal.u
    public final /* synthetic */ void a(db dbVar, com.google.android.gms.tasks.i iVar) throws RemoteException {
        db dbVar2 = dbVar;
        dbVar2.f30110c.a(dbVar2, new cm(iVar), this.f30099b);
    }
}
