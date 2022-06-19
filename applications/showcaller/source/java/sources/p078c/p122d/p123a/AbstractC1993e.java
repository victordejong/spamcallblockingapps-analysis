package p078c.p122d.p123a;

import com.liulishuo.filedownloader.event.AbstractC9364b;
import com.liulishuo.filedownloader.event.AbstractC9365c;
import com.liulishuo.filedownloader.event.DownloadServiceConnectChangedEvent;
/* renamed from: c.d.a.e */
/* loaded from: classes2-dex2jar.jar:c/d/a/e.class */
public abstract class AbstractC1993e extends AbstractC9365c {

    /* renamed from: a */
    private DownloadServiceConnectChangedEvent.ConnectStatus f7113a;

    @Override // com.liulishuo.filedownloader.event.AbstractC9365c
    /* renamed from: d */
    public boolean mo905d(AbstractC9364b abstractC9364b) {
        if (abstractC9364b instanceof DownloadServiceConnectChangedEvent) {
            DownloadServiceConnectChangedEvent.ConnectStatus m911b = ((DownloadServiceConnectChangedEvent) abstractC9364b).m911b();
            this.f7113a = m911b;
            if (m911b == DownloadServiceConnectChangedEvent.ConnectStatus.connected) {
                mo28107e();
                return false;
            }
            mo28106f();
            return false;
        }
        return false;
    }

    /* renamed from: e */
    public abstract void mo28107e();

    /* renamed from: f */
    public abstract void mo28106f();

    /* renamed from: g */
    public DownloadServiceConnectChangedEvent.ConnectStatus m28350g() {
        return this.f7113a;
    }
}
