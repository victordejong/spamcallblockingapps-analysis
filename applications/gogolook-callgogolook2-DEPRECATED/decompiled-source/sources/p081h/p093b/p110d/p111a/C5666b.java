package p081h.p093b.p110d.p111a;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.List;
import p081h.p093b.p110d.p112b.C5671a;
import p081h.p203i.p204a.p221c.p222a.AbstractC6700a;
/* renamed from: h.b.d.a.b */
/* loaded from: classes-dex2jar.jar:h/b/d/a/b.class */
public class C5666b extends AbstractC5663a {

    /* renamed from: a */
    public int f14174a = 0;

    /* renamed from: b */
    public final Context f14175b;
    @Nullable

    /* renamed from: c */
    public AbstractC6700a f14176c;
    @Nullable

    /* renamed from: d */
    public ServiceConnection f14177d;

    /* renamed from: h.b.d.a.b$b */
    /* loaded from: classes-dex2jar.jar:h/b/d/a/b$b.class */
    public final class ServiceConnectionC5668b implements ServiceConnection {

        /* renamed from: a */
        public final AbstractC5669c f14178a;

        public ServiceConnectionC5668b(@NonNull AbstractC5669c cVar) {
            if (cVar != null) {
                this.f14178a = cVar;
                return;
            }
            throw new RuntimeException("Please specify a listener to know when setup is done.");
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            C5671a.m24842a("InstallReferrerClient", "Install Referrer service connected.");
            C5666b.this.f14176c = AbstractC6700a.AbstractBinderC6701a.m22062a(iBinder);
            C5666b.this.f14174a = 2;
            this.f14178a.onInstallReferrerSetupFinished(0);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            C5671a.m24841b("InstallReferrerClient", "Install Referrer service disconnected.");
            C5666b.this.f14176c = null;
            C5666b.this.f14174a = 0;
            this.f14178a.onInstallReferrerServiceDisconnected();
        }
    }

    public C5666b(@NonNull Context context) {
        this.f14175b = context.getApplicationContext();
    }

    @Override // p081h.p093b.p110d.p111a.AbstractC5663a
    /* renamed from: a */
    public void mo24853a() {
        this.f14174a = 3;
        if (this.f14177d != null) {
            C5671a.m24842a("InstallReferrerClient", "Unbinding from service.");
            this.f14175b.unbindService(this.f14177d);
            this.f14177d = null;
        }
        this.f14176c = null;
    }

    @Override // p081h.p093b.p110d.p111a.AbstractC5663a
    /* renamed from: a */
    public void mo24850a(@NonNull AbstractC5669c cVar) {
        ResolveInfo resolveInfo;
        ServiceInfo serviceInfo;
        if (mo24848c()) {
            C5671a.m24842a("InstallReferrerClient", "Service connection is valid. No need to re-initialize.");
            cVar.onInstallReferrerSetupFinished(0);
            return;
        }
        int i = this.f14174a;
        if (i == 1) {
            C5671a.m24841b("InstallReferrerClient", "Client is already in the process of connecting to the service.");
            cVar.onInstallReferrerSetupFinished(3);
        } else if (i == 3) {
            C5671a.m24841b("InstallReferrerClient", "Client was already closed and can't be reused. Please create another instance.");
            cVar.onInstallReferrerSetupFinished(3);
        } else {
            C5671a.m24842a("InstallReferrerClient", "Starting install referrer service setup.");
            Intent intent = new Intent("com.google.android.finsky.BIND_GET_INSTALL_REFERRER_SERVICE");
            intent.setComponent(new ComponentName("com.android.vending", "com.google.android.finsky.externalreferrer.GetInstallReferrerService"));
            List<ResolveInfo> queryIntentServices = this.f14175b.getPackageManager().queryIntentServices(intent, 0);
            if (queryIntentServices == null || queryIntentServices.isEmpty() || (serviceInfo = (resolveInfo = queryIntentServices.get(0)).serviceInfo) == null) {
                this.f14174a = 0;
                C5671a.m24842a("InstallReferrerClient", "Install Referrer service unavailable on device.");
                cVar.onInstallReferrerSetupFinished(2);
                return;
            }
            String str = serviceInfo.packageName;
            String str2 = resolveInfo.serviceInfo.name;
            if (!"com.android.vending".equals(str) || str2 == null || !m24847d()) {
                C5671a.m24841b("InstallReferrerClient", "Play Store missing or incompatible. Version 8.3.73 or later required.");
                this.f14174a = 0;
                cVar.onInstallReferrerSetupFinished(2);
                return;
            }
            Intent intent2 = new Intent(intent);
            this.f14177d = new ServiceConnectionC5668b(cVar);
            if (this.f14175b.bindService(intent2, this.f14177d, 1)) {
                C5671a.m24842a("InstallReferrerClient", "Service was bonded successfully.");
                return;
            }
            C5671a.m24841b("InstallReferrerClient", "Connection to service is blocked.");
            this.f14174a = 0;
            cVar.onInstallReferrerSetupFinished(1);
        }
    }

    @Override // p081h.p093b.p110d.p111a.AbstractC5663a
    /* renamed from: b */
    public C5670d mo24849b() throws RemoteException {
        if (mo24848c()) {
            Bundle bundle = new Bundle();
            bundle.putString("package_name", this.f14175b.getPackageName());
            try {
                return new C5670d(this.f14176c.mo22061e(bundle));
            } catch (RemoteException e) {
                C5671a.m24841b("InstallReferrerClient", "RemoteException getting install referrer information");
                this.f14174a = 0;
                throw e;
            }
        } else {
            throw new IllegalStateException("Service not connected. Please start a connection before using the service.");
        }
    }

    @Override // p081h.p093b.p110d.p111a.AbstractC5663a
    /* renamed from: c */
    public boolean mo24848c() {
        return (this.f14174a != 2 || this.f14176c == null || this.f14177d == null) ? false : true;
    }

    /* renamed from: d */
    public final boolean m24847d() {
        boolean z = false;
        try {
            if (this.f14175b.getPackageManager().getPackageInfo("com.android.vending", 128).versionCode >= 80837300) {
                z = true;
            }
        } catch (PackageManager.NameNotFoundException e) {
        }
        return z;
    }
}
