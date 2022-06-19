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
import p092e.p096e.p097a.AbstractC3089t;
import p092e.p096e.p097a.C3037f;
import p092e.p096e.p097a.p102h0.C3062d;
import p092e.p096e.p097a.p102h0.C3066f;
/* renamed from: com.liulishuo.filedownloader.services.a */
/* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/services/a.class */
public abstract class AbstractServiceConnectionC2776a<CALLBACK extends Binder, INTERFACE extends IInterface> implements AbstractC3089t, ServiceConnection {

    /* renamed from: b */
    private volatile INTERFACE f11528b;

    /* renamed from: c */
    private final Class<?> f11529c;

    /* renamed from: d */
    protected boolean f11530d = false;

    /* renamed from: e */
    private final List<Context> f11531e = new ArrayList();

    /* renamed from: f */
    private final ArrayList<Runnable> f11532f = new ArrayList<>();

    /* renamed from: a */
    private final CALLBACK f11527a = mo316c();

    public AbstractServiceConnectionC2776a(Class<?> cls) {
        new HashMap();
        this.f11529c = cls;
    }

    /* renamed from: f */
    private void m1771f(boolean z) {
        if (!z && this.f11528b != null) {
            try {
                mo314g(this.f11528b, this.f11527a);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        if (C3062d.f12682a) {
            C3062d.m414a(this, "release connect resources %s", this.f11528b);
        }
        this.f11528b = null;
        C3037f.m471e().m1863b(new DownloadServiceConnectChangedEvent(z ? DownloadServiceConnectChangedEvent.ConnectStatus.lost : DownloadServiceConnectChangedEvent.ConnectStatus.disconnected, this.f11529c));
    }

    /* renamed from: a */
    protected abstract INTERFACE mo317a(IBinder iBinder);

    /* renamed from: b */
    public void m1773b(Context context, Runnable runnable) {
        if (!C3066f.m393J(context)) {
            if (C3062d.f12682a) {
                C3062d.m414a(this, "bindStartByContext %s", context.getClass().getSimpleName());
            }
            Intent intent = new Intent(context, this.f11529c);
            if (runnable != null && !this.f11532f.contains(runnable)) {
                this.f11532f.add(runnable);
            }
            if (!this.f11531e.contains(context)) {
                this.f11531e.add(context);
            }
            boolean m387P = C3066f.m387P(context);
            this.f11530d = m387P;
            intent.putExtra("is_foreground", m387P);
            context.bindService(intent, this, 1);
            if (!this.f11530d) {
                context.startService(intent);
                return;
            }
            if (C3062d.f12682a) {
                C3062d.m414a(this, "start foreground service", new Object[0]);
            }
            if (Build.VERSION.SDK_INT < 26) {
                return;
            }
            context.startForegroundService(intent);
            return;
        }
        throw new IllegalStateException("Fatal-Exception: You can't bind the FileDownloadService in :filedownloader process.\n It's the invalid operation and is likely to cause unexpected problems.\n Maybe you want to use non-separate process mode for FileDownloader, More detail about non-separate mode, please move to wiki manually: https://github.com/lingochamp/FileDownloader/wiki/filedownloader.properties");
    }

    /* renamed from: c */
    protected abstract CALLBACK mo316c();

    /* renamed from: d */
    public INTERFACE m1772d() {
        return this.f11528b;
    }

    /* renamed from: e */
    protected abstract void mo315e(INTERFACE r1, CALLBACK callback);

    /* renamed from: g */
    protected abstract void mo314g(INTERFACE r1, CALLBACK callback);

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.f11528b = mo317a(iBinder);
        if (C3062d.f12682a) {
            C3062d.m414a(this, "onServiceConnected %s %s", componentName, this.f11528b);
        }
        try {
            mo315e(this.f11528b, this.f11527a);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
        List<Runnable> list = (List) this.f11532f.clone();
        this.f11532f.clear();
        for (Runnable runnable : list) {
            runnable.run();
        }
        C3037f.m471e().m1863b(new DownloadServiceConnectChangedEvent(DownloadServiceConnectChangedEvent.ConnectStatus.connected, this.f11529c));
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        if (C3062d.f12682a) {
            C3062d.m414a(this, "onServiceDisconnected %s %s", componentName, this.f11528b);
        }
        m1771f(true);
    }

    @Override // p092e.p096e.p097a.AbstractC3089t
    /* renamed from: w0 */
    public boolean mo272w0() {
        return m1772d() != null;
    }

    @Override // p092e.p096e.p097a.AbstractC3089t
    /* renamed from: x0 */
    public boolean mo271x0() {
        return this.f11530d;
    }

    @Override // p092e.p096e.p097a.AbstractC3089t
    /* renamed from: y0 */
    public void mo270y0(Context context) {
        m1773b(context, null);
    }
}
