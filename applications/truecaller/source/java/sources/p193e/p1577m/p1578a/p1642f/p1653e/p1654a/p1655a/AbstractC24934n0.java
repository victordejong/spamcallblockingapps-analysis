package p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.zabl;
import com.google.android.gms.common.api.internal.zac;
import com.google.android.gms.common.api.internal.zai;
import com.google.android.gms.tasks.TaskCompletionSource;
/* renamed from: e.m.a.f.e.a.a.n0 */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/e/a/a/n0.class */
public abstract class AbstractC24934n0<T> extends zac {

    /* renamed from: b */
    public final TaskCompletionSource<T> f69855b;

    public AbstractC24934n0(int i, TaskCompletionSource<T> taskCompletionSource) {
        super(i);
        this.f69855b = taskCompletionSource;
    }

    @Override // com.google.android.gms.common.api.internal.zai
    /* renamed from: a */
    public final void mo4286a(Status status) {
        this.f69855b.m38516a(new ApiException(status));
    }

    @Override // com.google.android.gms.common.api.internal.zai
    /* renamed from: b */
    public final void mo4285b(Exception exc) {
        this.f69855b.m38516a(exc);
    }

    @Override // com.google.android.gms.common.api.internal.zai
    /* renamed from: d */
    public final void mo4284d(zabl<?> zablVar) throws DeadObjectException {
        try {
            mo4283h(zablVar);
        } catch (DeadObjectException e) {
            this.f69855b.m38516a(new ApiException(zai.m38938e(e)));
            throw e;
        } catch (RemoteException e2) {
            this.f69855b.m38516a(new ApiException(zai.m38938e(e2)));
        } catch (RuntimeException e3) {
            this.f69855b.m38516a(e3);
        }
    }

    /* renamed from: h */
    public abstract void mo4283h(zabl<?> zablVar) throws RemoteException;
}
