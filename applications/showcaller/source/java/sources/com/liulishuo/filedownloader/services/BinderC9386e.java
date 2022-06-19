package com.liulishuo.filedownloader.services;

import android.app.Notification;
import android.content.Intent;
import android.os.IBinder;
import com.liulishuo.filedownloader.model.FileDownloadHeader;
import java.lang.ref.WeakReference;
import p078c.p122d.p123a.C2048m;
import p078c.p122d.p123a.p126g0.AbstractC2015a;
import p078c.p122d.p123a.p126g0.AbstractC2018b;
/* renamed from: com.liulishuo.filedownloader.services.e */
/* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/services/e.class */
public class BinderC9386e extends AbstractC2018b.AbstractBinderC2019a implements AbstractC9394j {

    /* renamed from: d */
    private final C9389g f40135d;

    /* renamed from: e */
    private final WeakReference<FileDownloadService> f40136e;

    /* renamed from: com.liulishuo.filedownloader.services.e$a */
    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/services/e$a.class */
    public interface AbstractC9387a {
        /* renamed from: a */
        void mo775a(BinderC9386e binderC9386e);
    }

    public BinderC9386e(WeakReference<FileDownloadService> weakReference, C9389g c9389g) {
        this.f40136e = weakReference;
        this.f40135d = c9389g;
    }

    @Override // p078c.p122d.p123a.p126g0.AbstractC2018b
    /* renamed from: A0 */
    public void mo790A0(boolean z) {
        WeakReference<FileDownloadService> weakReference = this.f40136e;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.f40136e.get().stopForeground(z);
    }

    @Override // p078c.p122d.p123a.p126g0.AbstractC2018b
    /* renamed from: H4 */
    public boolean mo789H4() {
        return this.f40135d.m764j();
    }

    @Override // com.liulishuo.filedownloader.services.AbstractC9394j
    /* renamed from: J0 */
    public void mo738J0(Intent intent, int i, int i2) {
        C2048m.m28172a().mo775a(this);
    }

    @Override // p078c.p122d.p123a.p126g0.AbstractC2018b
    /* renamed from: X3 */
    public long mo788X3(int i) {
        return this.f40135d.m767g(i);
    }

    @Override // p078c.p122d.p123a.p126g0.AbstractC2018b
    /* renamed from: Z5 */
    public void mo787Z5(int i, Notification notification) {
        WeakReference<FileDownloadService> weakReference = this.f40136e;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.f40136e.get().startForeground(i, notification);
    }

    @Override // p078c.p122d.p123a.p126g0.AbstractC2018b
    /* renamed from: a5 */
    public long mo786a5(int i) {
        return this.f40135d.m769e(i);
    }

    @Override // com.liulishuo.filedownloader.services.AbstractC9394j
    /* renamed from: c0 */
    public IBinder mo737c0(Intent intent) {
        return null;
    }

    @Override // p078c.p122d.p123a.p126g0.AbstractC2018b
    /* renamed from: d2 */
    public void mo785d2() {
        this.f40135d.m771c();
    }

    @Override // p078c.p122d.p123a.p126g0.AbstractC2018b
    /* renamed from: e0 */
    public byte mo784e0(int i) {
        return this.f40135d.m768f(i);
    }

    @Override // p078c.p122d.p123a.p126g0.AbstractC2018b
    /* renamed from: f0 */
    public void mo783f0(String str, String str2, boolean z, int i, int i2, int i3, boolean z2, FileDownloadHeader fileDownloadHeader, boolean z3) {
        this.f40135d.m760n(str, str2, z, i, i2, i3, z2, fileDownloadHeader, z3);
    }

    @Override // p078c.p122d.p123a.p126g0.AbstractC2018b
    /* renamed from: l0 */
    public boolean mo782l0(int i) {
        return this.f40135d.m763k(i);
    }

    @Override // p078c.p122d.p123a.p126g0.AbstractC2018b
    /* renamed from: n1 */
    public void mo781n1(AbstractC2015a abstractC2015a) {
    }

    @Override // p078c.p122d.p123a.p126g0.AbstractC2018b
    /* renamed from: t2 */
    public boolean mo780t2(String str, String str2) {
        return this.f40135d.m765i(str, str2);
    }

    @Override // p078c.p122d.p123a.p126g0.AbstractC2018b
    /* renamed from: t6 */
    public void mo779t6() {
        this.f40135d.m762l();
    }

    @Override // p078c.p122d.p123a.p126g0.AbstractC2018b
    /* renamed from: y3 */
    public boolean mo778y3(int i) {
        return this.f40135d.m770d(i);
    }

    @Override // p078c.p122d.p123a.p126g0.AbstractC2018b
    /* renamed from: z2 */
    public boolean mo777z2(int i) {
        return this.f40135d.m761m(i);
    }

    @Override // p078c.p122d.p123a.p126g0.AbstractC2018b
    /* renamed from: z4 */
    public void mo776z4(AbstractC2015a abstractC2015a) {
    }
}
