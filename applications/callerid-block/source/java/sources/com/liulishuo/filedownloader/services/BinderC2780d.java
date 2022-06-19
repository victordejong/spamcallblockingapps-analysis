package com.liulishuo.filedownloader.services;

import android.app.Notification;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import com.liulishuo.filedownloader.message.C2764b;
import com.liulishuo.filedownloader.message.MessageSnapshot;
import com.liulishuo.filedownloader.model.FileDownloadHeader;
import java.lang.ref.WeakReference;
import p092e.p096e.p097a.p100f0.AbstractC3040a;
import p092e.p096e.p097a.p100f0.AbstractC3043b;
import p092e.p096e.p097a.p102h0.C3062d;
/* renamed from: com.liulishuo.filedownloader.services.d */
/* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/services/d.class */
public class BinderC2780d extends AbstractC3043b.AbstractBinderC3044a implements C2764b.AbstractC2766b, AbstractC2789j {

    /* renamed from: b */
    private final RemoteCallbackList<AbstractC3040a> f11541b = new RemoteCallbackList<>();

    /* renamed from: c */
    private final C2784g f11542c;

    /* renamed from: d */
    private final WeakReference<FileDownloadService> f11543d;

    public BinderC2780d(WeakReference<FileDownloadService> weakReference, C2784g c2784g) {
        this.f11543d = weakReference;
        this.f11542c = c2784g;
        C2764b.m1840a().m1838c(this);
    }

    /* renamed from: w4 */
    private int m1756w4(MessageSnapshot messageSnapshot) {
        int beginBroadcast;
        RemoteCallbackList<AbstractC3040a> remoteCallbackList;
        synchronized (this) {
            beginBroadcast = this.f11541b.beginBroadcast();
            for (int i = 0; i < beginBroadcast; i++) {
                try {
                    this.f11541b.getBroadcastItem(i).mo309j2(messageSnapshot);
                } catch (RemoteException e) {
                    C3062d.m412c(this, e, "callback error", new Object[0]);
                    remoteCallbackList = this.f11541b;
                }
            }
            remoteCallbackList = this.f11541b;
            remoteCallbackList.finishBroadcast();
        }
        return beginBroadcast;
    }

    @Override // p092e.p096e.p097a.p100f0.AbstractC3043b
    /* renamed from: E3 */
    public long mo468E3(int i) {
        return this.f11542c.m1752e(i);
    }

    @Override // com.liulishuo.filedownloader.services.AbstractC2789j
    /* renamed from: M1 */
    public void mo1721M1(Intent intent, int i, int i2) {
    }

    @Override // p092e.p096e.p097a.p100f0.AbstractC3043b
    /* renamed from: N4 */
    public boolean mo467N4(int i) {
        return this.f11542c.m1744m(i);
    }

    @Override // p092e.p096e.p097a.p100f0.AbstractC3043b
    /* renamed from: O0 */
    public boolean mo466O0(int i) {
        return this.f11542c.m1753d(i);
    }

    @Override // p092e.p096e.p097a.p100f0.AbstractC3043b
    /* renamed from: P2 */
    public void mo459P2(AbstractC3040a abstractC3040a) {
        this.f11541b.unregister(abstractC3040a);
    }

    @Override // p092e.p096e.p097a.p100f0.AbstractC3043b
    /* renamed from: P3 */
    public void mo465P3() {
        this.f11542c.m1754c();
    }

    @Override // p092e.p096e.p097a.p100f0.AbstractC3043b
    /* renamed from: U1 */
    public long mo464U1(int i) {
        return this.f11542c.m1750g(i);
    }

    @Override // p092e.p096e.p097a.p100f0.AbstractC3043b
    /* renamed from: W2 */
    public boolean mo463W2() {
        return this.f11542c.m1747j();
    }

    @Override // p092e.p096e.p097a.p100f0.AbstractC3043b
    /* renamed from: f0 */
    public byte mo458f0(int i) {
        return this.f11542c.m1751f(i);
    }

    @Override // p092e.p096e.p097a.p100f0.AbstractC3043b
    /* renamed from: f2 */
    public void mo457f2(AbstractC3040a abstractC3040a) {
        this.f11541b.register(abstractC3040a);
    }

    @Override // p092e.p096e.p097a.p100f0.AbstractC3043b
    /* renamed from: f6 */
    public void mo456f6() {
        this.f11542c.m1745l();
    }

    @Override // com.liulishuo.filedownloader.services.AbstractC2789j
    /* renamed from: h0 */
    public IBinder mo1720h0(Intent intent) {
        return this;
    }

    @Override // p092e.p096e.p097a.p100f0.AbstractC3043b
    /* renamed from: i0 */
    public void mo455i0(String str, String str2, boolean z, int i, int i2, int i3, boolean z2, FileDownloadHeader fileDownloadHeader, boolean z3) {
        this.f11542c.m1743n(str, str2, z, i, i2, i3, z2, fileDownloadHeader, z3);
    }

    @Override // p092e.p096e.p097a.p100f0.AbstractC3043b
    /* renamed from: n0 */
    public void mo454n0(boolean z) {
        WeakReference<FileDownloadService> weakReference = this.f11543d;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.f11543d.get().stopForeground(z);
    }

    @Override // com.liulishuo.filedownloader.message.C2764b.AbstractC2766b
    /* renamed from: r1 */
    public void mo244r1(MessageSnapshot messageSnapshot) {
        m1756w4(messageSnapshot);
    }

    @Override // p092e.p096e.p097a.p100f0.AbstractC3043b
    /* renamed from: t5 */
    public void mo462t5(int i, Notification notification) {
        WeakReference<FileDownloadService> weakReference = this.f11543d;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.f11543d.get().startForeground(i, notification);
    }

    @Override // p092e.p096e.p097a.p100f0.AbstractC3043b
    /* renamed from: v0 */
    public boolean mo453v0(int i) {
        return this.f11542c.m1746k(i);
    }

    @Override // p092e.p096e.p097a.p100f0.AbstractC3043b
    /* renamed from: x4 */
    public boolean mo461x4(String str, String str2) {
        return this.f11542c.m1748i(str, str2);
    }
}
