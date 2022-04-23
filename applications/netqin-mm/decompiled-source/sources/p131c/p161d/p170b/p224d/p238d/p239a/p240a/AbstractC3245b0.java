package p131c.p161d.p170b.p224d.p238d.p239a.p240a;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.GoogleApiManager;
import com.google.android.gms.common.api.internal.zab;
import com.google.android.gms.common.api.internal.zad;
import com.google.android.gms.tasks.TaskCompletionSource;
/* renamed from: c.d.b.d.d.a.a.b0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/d/a/a/b0.class */
public abstract class AbstractC3245b0<T> extends zad {

    /* renamed from: b */
    public final TaskCompletionSource<T> f11933b;

    public AbstractC3245b0(int i, TaskCompletionSource<T> taskCompletionSource) {
        super(i);
        this.f11933b = taskCompletionSource;
    }

    @Override // com.google.android.gms.common.api.internal.zab
    /* renamed from: a */
    public void mo17487a(Status status) {
        this.f11933b.m8597b(new ApiException(status));
    }

    @Override // com.google.android.gms.common.api.internal.zab
    /* renamed from: a */
    public final void mo17486a(GoogleApiManager.zaa<?> zaaVar) throws DeadObjectException {
        Status b;
        Status b2;
        try {
            mo17488d(zaaVar);
        } catch (DeadObjectException e) {
            b = zab.m17526b(e);
            mo17487a(b);
            throw e;
        } catch (RemoteException e2) {
            b2 = zab.m17526b(e2);
            mo17487a(b2);
        } catch (RuntimeException e3) {
            mo17484a(e3);
        }
    }

    @Override // com.google.android.gms.common.api.internal.zab
    /* renamed from: a */
    public void mo17484a(Exception exc) {
        this.f11933b.m8597b(exc);
    }

    /* renamed from: d */
    public abstract void mo17488d(GoogleApiManager.zaa<?> zaaVar) throws RemoteException;
}
