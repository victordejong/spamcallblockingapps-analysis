package com.liulishuo.filedownloader.services;

import android.app.Notification;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import com.liulishuo.filedownloader.message.C9369b;
import com.liulishuo.filedownloader.message.MessageSnapshot;
import com.liulishuo.filedownloader.model.FileDownloadHeader;
import java.lang.ref.WeakReference;
import p078c.p122d.p123a.p126g0.AbstractC2015a;
import p078c.p122d.p123a.p126g0.AbstractC2018b;
import p078c.p122d.p123a.p128i0.C2036d;
/* renamed from: com.liulishuo.filedownloader.services.d */
/* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/services/d.class */
public class BinderC9385d extends AbstractC2018b.AbstractBinderC2019a implements C9369b.AbstractC9371b, AbstractC9394j {

    /* renamed from: d */
    private final RemoteCallbackList<AbstractC2015a> f40132d = new RemoteCallbackList<>();

    /* renamed from: e */
    private final C9389g f40133e;

    /* renamed from: f */
    private final WeakReference<FileDownloadService> f40134f;

    public BinderC9385d(WeakReference<FileDownloadService> weakReference, C9389g c9389g) {
        this.f40134f = weakReference;
        this.f40133e = c9389g;
        C9369b.m885a().m883c(this);
    }

    /* renamed from: a3 */
    private int m791a3(MessageSnapshot messageSnapshot) {
        int beginBroadcast;
        RemoteCallbackList<AbstractC2015a> remoteCallbackList;
        synchronized (this) {
            beginBroadcast = this.f40132d.beginBroadcast();
            for (int i = 0; i < beginBroadcast; i++) {
                try {
                    this.f40132d.getBroadcastItem(i).mo28164g4(messageSnapshot);
                } catch (RemoteException e) {
                    C2036d.m28251c(this, e, "callback error", new Object[0]);
                    remoteCallbackList = this.f40132d;
                }
            }
            remoteCallbackList = this.f40132d;
            remoteCallbackList.finishBroadcast();
        }
        return beginBroadcast;
    }

    @Override // p078c.p122d.p123a.p126g0.AbstractC2018b
    /* renamed from: A0 */
    public void mo790A0(boolean z) {
        WeakReference<FileDownloadService> weakReference = this.f40134f;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.f40134f.get().stopForeground(z);
    }

    @Override // com.liulishuo.filedownloader.message.C9369b.AbstractC9371b
    /* renamed from: D0 */
    public void mo792D0(MessageSnapshot messageSnapshot) {
        m791a3(messageSnapshot);
    }

    @Override // p078c.p122d.p123a.p126g0.AbstractC2018b
    /* renamed from: H4 */
    public boolean mo789H4() {
        return this.f40133e.m764j();
    }

    @Override // com.liulishuo.filedownloader.services.AbstractC9394j
    /* renamed from: J0 */
    public void mo738J0(Intent intent, int i, int i2) {
    }

    @Override // p078c.p122d.p123a.p126g0.AbstractC2018b
    /* renamed from: X3 */
    public long mo788X3(int i) {
        return this.f40133e.m767g(i);
    }

    @Override // p078c.p122d.p123a.p126g0.AbstractC2018b
    /* renamed from: Z5 */
    public void mo787Z5(int i, Notification notification) {
        WeakReference<FileDownloadService> weakReference = this.f40134f;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.f40134f.get().startForeground(i, notification);
    }

    @Override // p078c.p122d.p123a.p126g0.AbstractC2018b
    /* renamed from: a5 */
    public long mo786a5(int i) {
        return this.f40133e.m769e(i);
    }

    @Override // com.liulishuo.filedownloader.services.AbstractC9394j
    /* renamed from: c0 */
    public IBinder mo737c0(Intent intent) {
        return this;
    }

    @Override // p078c.p122d.p123a.p126g0.AbstractC2018b
    /* renamed from: d2 */
    public void mo785d2() {
        this.f40133e.m771c();
    }

    @Override // p078c.p122d.p123a.p126g0.AbstractC2018b
    /* renamed from: e0 */
    public byte mo784e0(int i) {
        return this.f40133e.m768f(i);
    }

    @Override // p078c.p122d.p123a.p126g0.AbstractC2018b
    /* renamed from: f0 */
    public void mo783f0(String str, String str2, boolean z, int i, int i2, int i3, boolean z2, FileDownloadHeader fileDownloadHeader, boolean z3) {
        this.f40133e.m760n(str, str2, z, i, i2, i3, z2, fileDownloadHeader, z3);
    }

    @Override // p078c.p122d.p123a.p126g0.AbstractC2018b
    /* renamed from: l0 */
    public boolean mo782l0(int i) {
        return this.f40133e.m763k(i);
    }

    @Override // p078c.p122d.p123a.p126g0.AbstractC2018b
    /* renamed from: n1 */
    public void mo781n1(AbstractC2015a abstractC2015a) {
        this.f40132d.register(abstractC2015a);
    }

    @Override // p078c.p122d.p123a.p126g0.AbstractC2018b
    /* renamed from: t2 */
    public boolean mo780t2(String str, String str2) {
        return this.f40133e.m765i(str, str2);
    }

    @Override // p078c.p122d.p123a.p126g0.AbstractC2018b
    /* renamed from: t6 */
    public void mo779t6() {
        this.f40133e.m762l();
    }

    @Override // p078c.p122d.p123a.p126g0.AbstractC2018b
    /* renamed from: y3 */
    public boolean mo778y3(int i) {
        return this.f40133e.m770d(i);
    }

    @Override // p078c.p122d.p123a.p126g0.AbstractC2018b
    /* renamed from: z2 */
    public boolean mo777z2(int i) {
        return this.f40133e.m761m(i);
    }

    @Override // p078c.p122d.p123a.p126g0.AbstractC2018b
    /* renamed from: z4 */
    public void mo776z4(AbstractC2015a abstractC2015a) {
        this.f40132d.unregister(abstractC2015a);
    }
}
