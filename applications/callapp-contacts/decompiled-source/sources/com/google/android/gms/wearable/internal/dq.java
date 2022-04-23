package com.google.android.gms.wearable.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.g;
import com.google.android.gms.common.api.m;
import com.google.android.gms.wearable.a;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/dq.class */
final class dq extends Cdo<a.b> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ String f30132a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ int f30133b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dq(dp dpVar, g gVar, String str, int i) {
        super(gVar);
        this.f30132a = str;
        this.f30133b = i;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* synthetic */ m a(Status status) {
        return new ds(status, null);
    }

    @Override // com.google.android.gms.common.api.internal.d.a
    public final /* synthetic */ void a(db dbVar) throws RemoteException {
        ((bm) dbVar.getService()).a(new ct(this), this.f30132a, this.f30133b);
    }
}
