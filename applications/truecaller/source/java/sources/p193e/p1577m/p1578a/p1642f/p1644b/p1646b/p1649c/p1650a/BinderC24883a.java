package p193e.p1577m.p1578a.p1642f.p1644b.p1646b.p1649c.p1650a;

import android.os.RemoteException;
import com.google.android.gms.auth.api.signin.internal.zba;
import com.google.android.gms.common.api.Status;
/* renamed from: e.m.a.f.b.b.c.a.a */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/b/b/c/a/a.class */
public final class BinderC24883a extends zba {

    /* renamed from: a */
    public final /* synthetic */ C24884b f69782a;

    public BinderC24883a(C24884b c24884b) {
        this.f69782a = c24884b;
    }

    @Override // com.google.android.gms.auth.api.signin.internal.zba, com.google.android.gms.auth.api.signin.internal.zbr
    public final void zbc(Status status) throws RemoteException {
        this.f69782a.setResult((C24884b) status);
    }
}
