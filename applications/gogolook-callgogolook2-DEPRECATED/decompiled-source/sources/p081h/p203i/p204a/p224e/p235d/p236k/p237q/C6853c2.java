package p081h.p203i.p204a.p224e.p235d.p236k.p237q;

import android.os.DeadObjectException;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Status;
import p081h.p203i.p204a.p224e.p235d.p236k.C6805a;
import p081h.p203i.p204a.p224e.p235d.p236k.p237q.C6858e;
import p081h.p203i.p204a.p224e.p293r.C9145i;
/* renamed from: h.i.a.e.d.k.q.c2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/q/c2.class */
public final class C6853c2<ResultT> extends AbstractC6903n1 {

    /* renamed from: a */
    public final AbstractC6905o<C6805a.AbstractC6807b, ResultT> f16776a;

    /* renamed from: b */
    public final C9145i<ResultT> f16777b;

    /* renamed from: c */
    public final AbstractC6897m f16778c;

    public C6853c2(int i, AbstractC6905o<C6805a.AbstractC6807b, ResultT> oVar, C9145i<ResultT> iVar, AbstractC6897m mVar) {
        super(i);
        this.f16777b = iVar;
        this.f16776a = oVar;
        this.f16778c = mVar;
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6918r0
    /* renamed from: a */
    public final void mo21588a(@NonNull Status status) {
        this.f16777b.m16005b(this.f16778c.mo21654a(status));
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6918r0
    /* renamed from: a */
    public final void mo21587a(C6858e.C6859a<?> aVar) throws DeadObjectException {
        Status a;
        try {
            this.f16776a.mo17695a(aVar.m21713f(), this.f16777b);
        } catch (DeadObjectException e) {
            throw e;
        } catch (RemoteException e2) {
            a = AbstractC6918r0.m21589a(e2);
            mo21588a(a);
        } catch (RuntimeException e3) {
            mo21585a(e3);
        }
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6918r0
    /* renamed from: a */
    public final void mo21586a(@NonNull C6921s sVar, boolean z) {
        sVar.m21577a(this.f16777b, z);
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6918r0
    /* renamed from: a */
    public final void mo21585a(@NonNull RuntimeException runtimeException) {
        this.f16777b.m16005b(runtimeException);
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6903n1
    @Nullable
    /* renamed from: b */
    public final Feature[] mo21627b(C6858e.C6859a<?> aVar) {
        return this.f16776a.m21624b();
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6903n1
    /* renamed from: c */
    public final boolean mo21626c(C6858e.C6859a<?> aVar) {
        return this.f16776a.m21625a();
    }
}
