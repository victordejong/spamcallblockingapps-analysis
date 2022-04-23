package com.google.android.gms.wearable.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.g;
import com.google.android.gms.common.api.m;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.wearable.f;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/j.class */
final class j extends Cdo<Status> {

    /* renamed from: a  reason: collision with root package name */
    private final String f30141a;

    /* renamed from: b  reason: collision with root package name */
    private f.a f30142b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(g gVar, f.a aVar, String str) {
        super(gVar);
        this.f30142b = (f.a) o.a(aVar);
        this.f30141a = str;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* synthetic */ m a(Status status) {
        this.f30142b = null;
        return status;
    }

    @Override // com.google.android.gms.common.api.internal.d.a
    public final /* synthetic */ void a(db dbVar) throws RemoteException {
        db dbVar2 = dbVar;
        f.a aVar = this.f30142b;
        String str = this.f30141a;
        if (str == null) {
            dbVar2.f30109b.a(dbVar2, this, aVar);
        } else {
            dbVar2.f30109b.a(dbVar2, this, new cj(str, aVar));
        }
        this.f30142b = null;
    }
}
