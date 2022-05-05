package p081h.p203i.p204a.p224e.p235d.p236k.p237q;

import android.os.DeadObjectException;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BasePendingResult;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6835k;
import p081h.p203i.p204a.p224e.p235d.p236k.C6805a;
import p081h.p203i.p204a.p224e.p235d.p236k.C6805a.AbstractC6807b;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p235d.p240n.C7025v;
/* renamed from: h.i.a.e.d.k.q.c */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/q/c.class */
public abstract class AbstractC6850c<R extends AbstractC6835k, A extends C6805a.AbstractC6807b> extends BasePendingResult<R> implements AbstractC6854d<R> {

    /* renamed from: q */
    public final C6805a.C6808c<A> f16772q;

    /* renamed from: r */
    public final C6805a<?> f16773r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractC6850c(@NonNull C6805a<?> aVar, @NonNull AbstractC6825f fVar) {
        super(fVar);
        C7021t.m21289a(fVar, "GoogleApiClient must not be null");
        C7021t.m21289a(aVar, "Api must not be null");
        this.f16772q = (C6805a.C6808c<A>) aVar.m21866a();
        this.f16773r = aVar;
    }

    /* renamed from: a */
    public final void m21773a(@NonNull RemoteException remoteException) {
        m21771c(new Status(8, remoteException.getLocalizedMessage(), null));
    }

    /* renamed from: a */
    public abstract void mo17881a(@NonNull A a) throws RemoteException;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6854d
    /* renamed from: a */
    public /* bridge */ /* synthetic */ void mo21767a(Object obj) {
        super.m31984a((AbstractC6850c<R, A>) ((AbstractC6835k) obj));
    }

    /* renamed from: b */
    public final void m21772b(@NonNull A a) throws DeadObjectException {
        A a2 = a;
        if (a instanceof C7025v) {
            a2 = ((C7025v) a).m21276E();
        }
        try {
            mo17881a((AbstractC6850c<R, A>) a2);
        } catch (DeadObjectException e) {
            m21773a((RemoteException) e);
            throw e;
        } catch (RemoteException e2) {
            m21773a(e2);
        }
    }

    /* renamed from: c */
    public final void m21771c(@NonNull Status status) {
        C7021t.m21285a(!status.m31991J(), "Failed result must not be success");
        R a = mo17894a(status);
        m31984a((AbstractC6850c<R, A>) a);
        m21770d(a);
    }

    /* renamed from: d */
    public void m21770d(@NonNull R r) {
    }

    /* renamed from: h */
    public final C6805a<?> m21769h() {
        return this.f16773r;
    }

    /* renamed from: i */
    public final C6805a.C6808c<A> m21768i() {
        return this.f16772q;
    }
}
