package p092e.p096e.p097a;

import com.liulishuo.filedownloader.event.AbstractC2759b;
import com.liulishuo.filedownloader.event.AbstractC2760c;
import com.liulishuo.filedownloader.event.DownloadServiceConnectChangedEvent;
/* renamed from: e.e.a.e */
/* loaded from: classes2-dex2jar.jar:e/e/a/e.class */
public abstract class AbstractC3025e extends AbstractC2760c {

    /* renamed from: a */
    private DownloadServiceConnectChangedEvent.ConnectStatus f12648a;

    @Override // com.liulishuo.filedownloader.event.AbstractC2760c
    /* renamed from: d */
    public boolean mo512d(AbstractC2759b bVar) {
        if (!(bVar instanceof DownloadServiceConnectChangedEvent)) {
            return false;
        }
        DownloadServiceConnectChangedEvent.ConnectStatus b = ((DownloadServiceConnectChangedEvent) bVar).m1865b();
        this.f12648a = b;
        if (b == DownloadServiceConnectChangedEvent.ConnectStatus.connected) {
            mo247e();
            return false;
        }
        mo246f();
        return false;
    }

    /* renamed from: e */
    public abstract void mo247e();

    /* renamed from: f */
    public abstract void mo246f();

    /* renamed from: g */
    public DownloadServiceConnectChangedEvent.ConnectStatus m511g() {
        return this.f12648a;
    }
}
