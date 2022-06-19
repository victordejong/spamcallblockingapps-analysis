package p078c.p122d.p123a;

import android.os.IBinder;
import android.os.RemoteException;
import com.liulishuo.filedownloader.message.C9369b;
import com.liulishuo.filedownloader.message.MessageSnapshot;
import com.liulishuo.filedownloader.model.FileDownloadHeader;
import com.liulishuo.filedownloader.services.AbstractServiceConnectionC9381a;
import com.liulishuo.filedownloader.services.FileDownloadService;
import p078c.p122d.p123a.p126g0.AbstractC2015a;
import p078c.p122d.p123a.p126g0.AbstractC2018b;
import p078c.p122d.p123a.p128i0.C2028a;
/* renamed from: c.d.a.o */
/* loaded from: classes2-dex2jar.jar:c/d/a/o.class */
class C2052o extends AbstractServiceConnectionC9381a<BinderC2053a, AbstractC2018b> {

    /* renamed from: c.d.a.o$a */
    /* loaded from: classes2-dex2jar.jar:c/d/a/o$a.class */
    public static class BinderC2053a extends AbstractC2015a.AbstractBinderC2016a {
        protected BinderC2053a() {
        }

        @Override // p078c.p122d.p123a.p126g0.AbstractC2015a
        /* renamed from: g4 */
        public void mo28164g4(MessageSnapshot messageSnapshot) {
            C9369b.m885a().m884b(messageSnapshot);
        }
    }

    public C2052o() {
        super(FileDownloadService.SeparateProcessService.class);
    }

    @Override // p078c.p122d.p123a.AbstractC2063u
    /* renamed from: A0 */
    public void mo28131A0(boolean z) {
        if (!mo815b()) {
            C2028a.m28266e(z);
            return;
        }
        try {
            try {
                m812e().mo790A0(z);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        } finally {
            this.f40127d = false;
        }
    }

    @Override // p078c.p122d.p123a.AbstractC2063u
    /* renamed from: e0 */
    public byte mo28130e0(int i) {
        byte b;
        if (!mo815b()) {
            return C2028a.m28270a(i);
        }
        try {
            b = m812e().mo784e0(i);
        } catch (RemoteException e) {
            e.printStackTrace();
            b = 0;
        }
        return b;
    }

    @Override // p078c.p122d.p123a.AbstractC2063u
    /* renamed from: f0 */
    public boolean mo28129f0(String str, String str2, boolean z, int i, int i2, int i3, boolean z2, FileDownloadHeader fileDownloadHeader, boolean z3) {
        if (!mo815b()) {
            return C2028a.m28267d(str, str2, z);
        }
        try {
            m812e().mo783f0(str, str2, z, i, i2, i3, z2, fileDownloadHeader, z3);
            return true;
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    /* renamed from: i */
    public AbstractC2018b mo816a(IBinder iBinder) {
        return AbstractC2018b.AbstractBinderC2019a.m28289m2(iBinder);
    }

    /* renamed from: j */
    public BinderC2053a mo813d() {
        return new BinderC2053a();
    }

    /* renamed from: k */
    public void mo811f(AbstractC2018b abstractC2018b, BinderC2053a binderC2053a) {
        abstractC2018b.mo781n1(binderC2053a);
    }

    /* renamed from: l */
    public void mo809h(AbstractC2018b abstractC2018b, BinderC2053a binderC2053a) {
        abstractC2018b.mo776z4(binderC2053a);
    }

    @Override // p078c.p122d.p123a.AbstractC2063u
    /* renamed from: l0 */
    public boolean mo28128l0(int i) {
        if (!mo815b()) {
            return C2028a.m28268c(i);
        }
        try {
            return m812e().mo782l0(i);
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }
}
