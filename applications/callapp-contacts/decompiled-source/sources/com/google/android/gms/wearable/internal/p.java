package com.google.android.gms.wearable.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.g;
import com.google.android.gms.common.api.internal.i;
import com.google.android.gms.common.api.j;
import com.google.android.gms.common.api.m;
import com.google.android.gms.common.internal.o;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/p.class */
final class p<T> extends Cdo<Status> {

    /* renamed from: a  reason: collision with root package name */
    private T f30147a;

    /* renamed from: b  reason: collision with root package name */
    private i<T> f30148b;
    private ak<T> g;

    private p(g gVar, T t, i<T> iVar, ak<T> akVar) {
        super(gVar);
        this.f30147a = (T) o.a(t);
        this.f30148b = (i) o.a(iVar);
        this.g = (ak) o.a(akVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> j<Status> a(g gVar, ak<T> akVar, T t) {
        return gVar.a(new p(gVar, t, g.b(), akVar));
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* synthetic */ m a(Status status) {
        this.f30147a = null;
        this.f30148b = null;
        return status;
    }

    @Override // com.google.android.gms.common.api.internal.d.a
    public final /* synthetic */ void a(db dbVar) throws RemoteException {
        this.g.a(dbVar, this, this.f30147a, this.f30148b);
        this.f30147a = null;
        this.f30148b = null;
    }
}
