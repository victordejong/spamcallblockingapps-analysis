package p092e.p096e.p097a;

import android.os.IBinder;
import android.os.RemoteException;
import com.liulishuo.filedownloader.message.C2764b;
import com.liulishuo.filedownloader.message.MessageSnapshot;
import com.liulishuo.filedownloader.model.FileDownloadHeader;
import com.liulishuo.filedownloader.services.AbstractServiceConnectionC2776a;
import com.liulishuo.filedownloader.services.FileDownloadService;
import p092e.p096e.p097a.p100f0.AbstractC3040a;
import p092e.p096e.p097a.p100f0.AbstractC3043b;
import p092e.p096e.p097a.p102h0.C3053a;
/* renamed from: e.e.a.o */
/* loaded from: classes2-dex2jar.jar:e/e/a/o.class */
class C3079o extends AbstractServiceConnectionC2776a<BinderC3080a, AbstractC3043b> {

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: e.e.a.o$a */
    /* loaded from: classes2-dex2jar.jar:e/e/a/o$a.class */
    public static class BinderC3080a extends AbstractC3040a.AbstractBinderC3041a {
        protected BinderC3080a() {
        }

        @Override // p092e.p096e.p097a.p100f0.AbstractC3040a
        /* renamed from: j2 */
        public void mo309j2(MessageSnapshot messageSnapshot) {
            C2764b.m1840a().m1839b(messageSnapshot);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3079o() {
        super(FileDownloadService.SeparateProcessService.class);
    }

    @Override // p092e.p096e.p097a.AbstractC3089t
    /* renamed from: f0 */
    public byte mo276f0(int i) {
        if (!mo272w0()) {
            return C3053a.m434a(i);
        }
        byte b = 0;
        try {
            b = m1772d().mo458f0(i);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
        return b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: h */
    public AbstractC3043b mo317a(IBinder iBinder) {
        return AbstractC3043b.AbstractBinderC3044a.m460g3(iBinder);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: i */
    public BinderC3080a mo316c() {
        return new BinderC3080a();
    }

    @Override // p092e.p096e.p097a.AbstractC3089t
    /* renamed from: i0 */
    public boolean mo275i0(String str, String str2, boolean z, int i, int i2, int i3, boolean z2, FileDownloadHeader fileDownloadHeader, boolean z3) {
        if (!mo272w0()) {
            return C3053a.m431d(str, str2, z);
        }
        try {
            m1772d().mo455i0(str, str2, z, i, i2, i3, z2, fileDownloadHeader, z3);
            return true;
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: j */
    public void mo315e(AbstractC3043b bVar, BinderC3080a aVar) {
        bVar.mo457f2(aVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: k */
    public void mo314g(AbstractC3043b bVar, BinderC3080a aVar) {
        bVar.mo459P2(aVar);
    }

    @Override // p092e.p096e.p097a.AbstractC3089t
    /* renamed from: n0 */
    public void mo274n0(boolean z) {
        if (!mo272w0()) {
            C3053a.m430e(z);
            return;
        }
        try {
            try {
                m1772d().mo454n0(z);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        } finally {
            this.f11530d = false;
        }
    }

    @Override // p092e.p096e.p097a.AbstractC3089t
    /* renamed from: v0 */
    public boolean mo273v0(int i) {
        if (!mo272w0()) {
            return C3053a.m432c(i);
        }
        try {
            return m1772d().mo453v0(i);
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }
}
