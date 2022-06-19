package p193e.p1577m.p1578a.p1642f.p1644b.p1646b.p1649c.p1650a;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.internal.zbe;
import com.google.android.gms.auth.api.signin.internal.zbs;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.auth_api.zbc;
/* renamed from: e.m.a.f.b.b.c.a.b */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/b/b/c/a/b.class */
public final class C24884b extends AbstractC24887e<Status> {
    public C24884b(GoogleApiClient googleApiClient) {
        super(googleApiClient);
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* bridge */ /* synthetic */ Result createFailedResult(Status status) {
        return status;
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    public final void doExecute(zbe zbeVar) throws RemoteException {
        zbe zbeVar2 = zbeVar;
        zbs zbsVar = (zbs) zbeVar2.getService();
        BinderC24883a binderC24883a = new BinderC24883a(this);
        GoogleSignInOptions googleSignInOptions = zbeVar2.f5569a;
        Parcel zba = zbsVar.zba();
        zbc.zbc(zba, binderC24883a);
        zbc.zbb(zba, googleSignInOptions);
        zbsVar.zbb(102, zba);
    }
}
