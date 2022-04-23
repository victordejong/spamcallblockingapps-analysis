package com.liulishuo.filedownloader.services;

import android.app.Notification;
import android.content.Intent;
import android.os.IBinder;
import com.liulishuo.filedownloader.model.FileDownloadHeader;
import java.lang.ref.WeakReference;
import p092e.p096e.p097a.C3075m;
import p092e.p096e.p097a.p100f0.AbstractC3040a;
import p092e.p096e.p097a.p100f0.AbstractC3043b;
/* renamed from: com.liulishuo.filedownloader.services.e */
/* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/services/e.class */
public class BinderC2781e extends AbstractC3043b.AbstractBinderC3044a implements AbstractC2789j {

    /* renamed from: b */
    private final C2784g f11544b;

    /* renamed from: c */
    private final WeakReference<FileDownloadService> f11545c;

    /* renamed from: com.liulishuo.filedownloader.services.e$a */
    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/services/e$a.class */
    public interface AbstractC2782a {
        /* renamed from: a */
        void mo319a(BinderC2781e eVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BinderC2781e(WeakReference<FileDownloadService> weakReference, C2784g gVar) {
        this.f11545c = weakReference;
        this.f11544b = gVar;
    }

    @Override // p092e.p096e.p097a.p100f0.AbstractC3043b
    /* renamed from: E3 */
    public long mo468E3(int i) {
        return this.f11544b.m1752e(i);
    }

    @Override // com.liulishuo.filedownloader.services.AbstractC2789j
    /* renamed from: M1 */
    public void mo1721M1(Intent intent, int i, int i2) {
        C3075m.m322a().mo319a(this);
    }

    @Override // p092e.p096e.p097a.p100f0.AbstractC3043b
    /* renamed from: N4 */
    public boolean mo467N4(int i) {
        return this.f11544b.m1744m(i);
    }

    @Override // p092e.p096e.p097a.p100f0.AbstractC3043b
    /* renamed from: O0 */
    public boolean mo466O0(int i) {
        return this.f11544b.m1753d(i);
    }

    @Override // p092e.p096e.p097a.p100f0.AbstractC3043b
    /* renamed from: P2 */
    public void mo459P2(AbstractC3040a aVar) {
    }

    @Override // p092e.p096e.p097a.p100f0.AbstractC3043b
    /* renamed from: P3 */
    public void mo465P3() {
        this.f11544b.m1754c();
    }

    @Override // p092e.p096e.p097a.p100f0.AbstractC3043b
    /* renamed from: U1 */
    public long mo464U1(int i) {
        return this.f11544b.m1750g(i);
    }

    @Override // p092e.p096e.p097a.p100f0.AbstractC3043b
    /* renamed from: W2 */
    public boolean mo463W2() {
        return this.f11544b.m1747j();
    }

    @Override // p092e.p096e.p097a.p100f0.AbstractC3043b
    /* renamed from: f0 */
    public byte mo458f0(int i) {
        return this.f11544b.m1751f(i);
    }

    @Override // p092e.p096e.p097a.p100f0.AbstractC3043b
    /* renamed from: f2 */
    public void mo457f2(AbstractC3040a aVar) {
    }

    @Override // p092e.p096e.p097a.p100f0.AbstractC3043b
    /* renamed from: f6 */
    public void mo456f6() {
        this.f11544b.m1745l();
    }

    @Override // com.liulishuo.filedownloader.services.AbstractC2789j
    /* renamed from: h0 */
    public IBinder mo1720h0(Intent intent) {
        return null;
    }

    @Override // p092e.p096e.p097a.p100f0.AbstractC3043b
    /* renamed from: i0 */
    public void mo455i0(String str, String str2, boolean z, int i, int i2, int i3, boolean z2, FileDownloadHeader fileDownloadHeader, boolean z3) {
        this.f11544b.m1743n(str, str2, z, i, i2, i3, z2, fileDownloadHeader, z3);
    }

    @Override // p092e.p096e.p097a.p100f0.AbstractC3043b
    /* renamed from: n0 */
    public void mo454n0(boolean z) {
        WeakReference<FileDownloadService> weakReference = this.f11545c;
        if (weakReference != null && weakReference.get() != null) {
            this.f11545c.get().stopForeground(z);
        }
    }

    @Override // p092e.p096e.p097a.p100f0.AbstractC3043b
    /* renamed from: t5 */
    public void mo462t5(int i, Notification notification) {
        WeakReference<FileDownloadService> weakReference = this.f11545c;
        if (weakReference != null && weakReference.get() != null) {
            this.f11545c.get().startForeground(i, notification);
        }
    }

    @Override // p092e.p096e.p097a.p100f0.AbstractC3043b
    /* renamed from: v0 */
    public boolean mo453v0(int i) {
        return this.f11544b.m1746k(i);
    }

    @Override // p092e.p096e.p097a.p100f0.AbstractC3043b
    /* renamed from: x4 */
    public boolean mo461x4(String str, String str2) {
        return this.f11544b.m1748i(str, str2);
    }
}
