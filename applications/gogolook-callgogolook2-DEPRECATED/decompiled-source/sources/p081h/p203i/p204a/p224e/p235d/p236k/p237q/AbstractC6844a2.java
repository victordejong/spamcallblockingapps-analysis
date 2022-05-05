package p081h.p203i.p204a.p224e.p235d.p236k.p237q;

import android.os.DeadObjectException;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.Status;
import p081h.p203i.p204a.p224e.p235d.p236k.C6819b;
import p081h.p203i.p204a.p224e.p235d.p236k.p237q.C6858e;
import p081h.p203i.p204a.p224e.p293r.C9145i;
/* renamed from: h.i.a.e.d.k.q.a2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/q/a2.class */
public abstract class AbstractC6844a2<T> extends AbstractC6903n1 {

    /* renamed from: a */
    public final C9145i<T> f16743a;

    public AbstractC6844a2(int i, C9145i<T> iVar) {
        super(i);
        this.f16743a = iVar;
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6918r0
    /* renamed from: a */
    public void mo21588a(@NonNull Status status) {
        this.f16743a.m16005b(new C6819b(status));
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6918r0
    /* renamed from: a */
    public final void mo21587a(C6858e.C6859a<?> aVar) throws DeadObjectException {
        Status a;
        Status a2;
        try {
            mo21765d(aVar);
        } catch (DeadObjectException e) {
            a = AbstractC6918r0.m21589a(e);
            mo21588a(a);
            throw e;
        } catch (RemoteException e2) {
            a2 = AbstractC6918r0.m21589a(e2);
            mo21588a(a2);
        } catch (RuntimeException e3) {
            mo21585a(e3);
        }
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6918r0
    /* renamed from: a */
    public void mo21585a(@NonNull RuntimeException runtimeException) {
        this.f16743a.m16005b(runtimeException);
    }

    /* renamed from: d */
    public abstract void mo21765d(C6858e.C6859a<?> aVar) throws RemoteException;
}
