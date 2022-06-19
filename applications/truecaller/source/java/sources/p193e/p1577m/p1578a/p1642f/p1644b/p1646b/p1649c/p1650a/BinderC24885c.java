package p193e.p1577m.p1578a.p1642f.p1644b.p1646b.p1649c.p1650a;

import android.os.RemoteException;
import com.google.android.gms.auth.api.signin.internal.zba;
import com.google.android.gms.common.api.Status;
/* renamed from: e.m.a.f.b.b.c.a.c */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/b/b/c/a/c.class */
public final class BinderC24885c extends zba {

    /* renamed from: a */
    public final /* synthetic */ C24886d f69783a;

    public BinderC24885c(C24886d c24886d) {
        this.f69783a = c24886d;
    }

    @Override // com.google.android.gms.auth.api.signin.internal.zba, com.google.android.gms.auth.api.signin.internal.zbr
    /* renamed from: d0 */
    public final void mo4302d0(Status status) throws RemoteException {
        this.f69783a.setResult((C24886d) status);
    }
}
