package com.android.p061a.p062a;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.android.p061a.p063b.C1329a;
import com.google.android.p115a.p116a.AbstractC2237a;
import java.util.List;
/* renamed from: com.android.a.a.b */
/* loaded from: classes-dex2jar.jar:com/android/a/a/b.class */
public class C1324b extends AbstractC1321a {

    /* renamed from: a */
    private int f4387a = 0;

    /* renamed from: b */
    private final Context f4388b;

    /* renamed from: c */
    private AbstractC2237a f4389c;

    /* renamed from: d */
    private ServiceConnection f4390d;

    /* renamed from: com.android.a.a.b$a */
    /* loaded from: classes-dex2jar.jar:com/android/a/a/b$a.class */
    private final class ServiceConnectionC1326a implements ServiceConnection {

        /* renamed from: b */
        private final AbstractC1327c f4392b;

        private ServiceConnectionC1326a(AbstractC1327c abstractC1327c) {
            C1324b.this = r5;
            if (abstractC1327c == null) {
                throw new RuntimeException("Please specify a listener to know when setup is done.");
            }
            this.f4392b = abstractC1327c;
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            C1329a.m17488a("InstallReferrerClient", "Install Referrer service connected.");
            C1324b.this.f4389c = AbstractC2237a.AbstractBinderC2238a.m14913a(iBinder);
            C1324b.this.f4387a = 2;
            this.f4392b.mo15560a(0);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            C1329a.m17487b("InstallReferrerClient", "Install Referrer service disconnected.");
            C1324b.this.f4389c = null;
            C1324b.this.f4387a = 0;
            this.f4392b.mo15561a();
        }
    }

    public C1324b(Context context) {
        this.f4388b = context.getApplicationContext();
    }

    /* renamed from: c */
    private boolean m17490c() {
        boolean z = false;
        try {
            if (this.f4388b.getPackageManager().getPackageInfo("com.android.vending", 128).versionCode >= 80837300) {
                z = true;
            }
        } catch (PackageManager.NameNotFoundException e) {
        }
        return z;
    }

    @Override // com.android.p061a.p062a.AbstractC1321a
    /* renamed from: a */
    public C1328d mo17495a() {
        if (!m17491b()) {
            throw new IllegalStateException("Service not connected. Please start a connection before using the service.");
        }
        Bundle bundle = new Bundle();
        bundle.putString("package_name", this.f4388b.getPackageName());
        try {
            return new C1328d(this.f4389c.mo14912a(bundle));
        } catch (RemoteException e) {
            C1329a.m17487b("InstallReferrerClient", "RemoteException getting install referrer information");
            this.f4387a = 0;
            throw e;
        }
    }

    @Override // com.android.p061a.p062a.AbstractC1321a
    /* renamed from: a */
    public void mo17492a(AbstractC1327c abstractC1327c) {
        if (m17491b()) {
            C1329a.m17488a("InstallReferrerClient", "Service connection is valid. No need to re-initialize.");
            abstractC1327c.mo15560a(0);
        } else if (this.f4387a == 1) {
            C1329a.m17487b("InstallReferrerClient", "Client is already in the process of connecting to the service.");
            abstractC1327c.mo15560a(3);
        } else if (this.f4387a == 3) {
            C1329a.m17487b("InstallReferrerClient", "Client was already closed and can't be reused. Please create another instance.");
            abstractC1327c.mo15560a(3);
        } else {
            C1329a.m17488a("InstallReferrerClient", "Starting install referrer service setup.");
            this.f4390d = new ServiceConnectionC1326a(abstractC1327c);
            Intent intent = new Intent("com.google.android.finsky.BIND_GET_INSTALL_REFERRER_SERVICE");
            intent.setComponent(new ComponentName("com.android.vending", "com.google.android.finsky.externalreferrer.GetInstallReferrerService"));
            List<ResolveInfo> queryIntentServices = this.f4388b.getPackageManager().queryIntentServices(intent, 0);
            if (queryIntentServices != null && !queryIntentServices.isEmpty()) {
                ResolveInfo resolveInfo = queryIntentServices.get(0);
                if (resolveInfo.serviceInfo != null) {
                    String str = resolveInfo.serviceInfo.packageName;
                    String str2 = resolveInfo.serviceInfo.name;
                    if (!"com.android.vending".equals(str) || str2 == null || !m17490c()) {
                        C1329a.m17487b("InstallReferrerClient", "Play Store missing or incompatible. Version 8.3.73 or later required.");
                        this.f4387a = 0;
                        abstractC1327c.mo15560a(2);
                        return;
                    }
                    if (this.f4388b.bindService(new Intent(intent), this.f4390d, 1)) {
                        C1329a.m17488a("InstallReferrerClient", "Service was bonded successfully.");
                        return;
                    }
                    C1329a.m17487b("InstallReferrerClient", "Connection to service is blocked.");
                    this.f4387a = 0;
                    abstractC1327c.mo15560a(1);
                    return;
                }
            }
            this.f4387a = 0;
            C1329a.m17488a("InstallReferrerClient", "Install Referrer service unavailable on device.");
            abstractC1327c.mo15560a(2);
        }
    }

    /* renamed from: b */
    public boolean m17491b() {
        return (this.f4387a != 2 || this.f4389c == null || this.f4390d == null) ? false : true;
    }
}
