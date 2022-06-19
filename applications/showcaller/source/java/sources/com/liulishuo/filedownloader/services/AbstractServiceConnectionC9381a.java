package com.liulishuo.filedownloader.services;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Binder;
import android.os.Build;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.liulishuo.filedownloader.event.DownloadServiceConnectChangedEvent;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import p078c.p122d.p123a.AbstractC2063u;
import p078c.p122d.p123a.C2000f;
import p078c.p122d.p123a.p128i0.C2036d;
import p078c.p122d.p123a.p128i0.C2040f;
/* renamed from: com.liulishuo.filedownloader.services.a */
/* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/services/a.class */
public abstract class AbstractServiceConnectionC9381a<CALLBACK extends Binder, INTERFACE extends IInterface> implements AbstractC2063u, ServiceConnection {

    /* renamed from: b */
    private volatile INTERFACE f40125b;

    /* renamed from: c */
    private final Class<?> f40126c;

    /* renamed from: d */
    protected boolean f40127d = false;

    /* renamed from: e */
    private final HashMap<String, Object> f40128e = new HashMap<>();

    /* renamed from: f */
    private final List<Context> f40129f = new ArrayList();

    /* renamed from: g */
    private final ArrayList<Runnable> f40130g = new ArrayList<>();

    /* renamed from: a */
    private final CALLBACK f40124a = mo813d();

    public AbstractServiceConnectionC9381a(Class<?> cls) {
        this.f40126c = cls;
    }

    /* renamed from: g */
    private void m810g(boolean z) {
        if (!z && this.f40125b != null) {
            try {
                mo809h(this.f40125b, this.f40124a);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        if (C2036d.f7151a) {
            C2036d.m28253a(this, "release connect resources %s", this.f40125b);
        }
        this.f40125b = null;
        C2000f.m28336e().m909b(new DownloadServiceConnectChangedEvent(z ? DownloadServiceConnectChangedEvent.ConnectStatus.lost : DownloadServiceConnectChangedEvent.ConnectStatus.disconnected, this.f40126c));
    }

    @Override // p078c.p122d.p123a.AbstractC2063u
    /* renamed from: B0 */
    public void mo818B0(Context context) {
        m814c(context, null);
    }

    @Override // p078c.p122d.p123a.AbstractC2063u
    /* renamed from: C0 */
    public boolean mo817C0() {
        return this.f40127d;
    }

    /* renamed from: a */
    protected abstract INTERFACE mo816a(IBinder iBinder);

    @Override // p078c.p122d.p123a.AbstractC2063u
    /* renamed from: b */
    public boolean mo815b() {
        return m812e() != null;
    }

    /* renamed from: c */
    public void m814c(Context context, Runnable runnable) {
        if (!C2040f.m28232J(context)) {
            if (C2036d.f7151a) {
                C2036d.m28253a(this, "bindStartByContext %s", context.getClass().getSimpleName());
            }
            Intent intent = new Intent(context, this.f40126c);
            if (runnable != null && !this.f40130g.contains(runnable)) {
                this.f40130g.add(runnable);
            }
            if (!this.f40129f.contains(context)) {
                this.f40129f.add(context);
            }
            boolean m28226P = C2040f.m28226P(context);
            this.f40127d = m28226P;
            intent.putExtra("is_foreground", m28226P);
            context.bindService(intent, this, 1);
            if (!this.f40127d) {
                context.startService(intent);
                return;
            }
            if (C2036d.f7151a) {
                C2036d.m28253a(this, "start foreground service", new Object[0]);
            }
            if (Build.VERSION.SDK_INT < 26) {
                return;
            }
            context.startForegroundService(intent);
            return;
        }
        throw new IllegalStateException("Fatal-Exception: You can't bind the FileDownloadService in :filedownloader process.\n It's the invalid operation and is likely to cause unexpected problems.\n Maybe you want to use non-separate process mode for FileDownloader, More detail about non-separate mode, please move to wiki manually: https://github.com/lingochamp/FileDownloader/wiki/filedownloader.properties");
    }

    /* renamed from: d */
    protected abstract CALLBACK mo813d();

    /* renamed from: e */
    public INTERFACE m812e() {
        return this.f40125b;
    }

    /* renamed from: f */
    protected abstract void mo811f(INTERFACE r1, CALLBACK callback);

    /* renamed from: h */
    protected abstract void mo809h(INTERFACE r1, CALLBACK callback);

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.f40125b = mo816a(iBinder);
        if (C2036d.f7151a) {
            C2036d.m28253a(this, "onServiceConnected %s %s", componentName, this.f40125b);
        }
        try {
            mo811f(this.f40125b, this.f40124a);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
        List<Runnable> list = (List) this.f40130g.clone();
        this.f40130g.clear();
        for (Runnable runnable : list) {
            runnable.run();
        }
        C2000f.m28336e().m909b(new DownloadServiceConnectChangedEvent(DownloadServiceConnectChangedEvent.ConnectStatus.connected, this.f40126c));
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        if (C2036d.f7151a) {
            C2036d.m28253a(this, "onServiceDisconnected %s %s", componentName, this.f40125b);
        }
        m810g(true);
    }
}
