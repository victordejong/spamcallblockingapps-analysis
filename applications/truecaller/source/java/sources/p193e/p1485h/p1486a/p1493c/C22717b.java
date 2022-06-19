package p193e.p1485h.p1486a.p1493c;

import android.os.RemoteException;
import com.android.installreferrer.api.InstallReferrerClient;
import com.android.installreferrer.api.InstallReferrerStateListener;
import com.android.installreferrer.api.ReferrerDetails;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.h.a.c.b */
/* loaded from: classes-dex2jar.jar:e/h/a/c/b.class */
public class C22717b implements InstallReferrerStateListener {

    /* renamed from: a */
    public final /* synthetic */ InstallReferrerClient f62867a;

    /* renamed from: b */
    public final /* synthetic */ C22709a f62868b;

    public C22717b(C22709a c22709a, InstallReferrerClient installReferrerClient) {
        this.f62868b = c22709a;
        this.f62867a = installReferrerClient;
    }

    @Override // com.android.installreferrer.api.InstallReferrerStateListener
    public void onInstallReferrerServiceDisconnected() {
        C22709a c22709a = this.f62868b;
        if (!c22709a.f62835f.f63459i) {
            C22709a.m7930a(c22709a);
        }
    }

    @Override // com.android.installreferrer.api.InstallReferrerStateListener
    public void onInstallReferrerSetupFinished(int i) {
        if (i != 0) {
            if (i == 1) {
                this.f62868b.f62833d.m42081b().m7856a(this.f62868b.f62833d.f2240a, "Install Referrer data not set, connection to Play Store unavailable");
                return;
            } else if (i != 2) {
                return;
            } else {
                this.f62868b.f62833d.m42081b().m7856a(this.f62868b.f62833d.f2240a, "Install Referrer data not set, API not supported by Play Store on device");
                return;
            }
        }
        try {
            ReferrerDetails installReferrer = this.f62867a.getInstallReferrer();
            String installReferrer2 = installReferrer.getInstallReferrer();
            this.f62868b.f62835f.f63465o = installReferrer.getReferrerClickTimestampSeconds();
            this.f62868b.f62835f.f63451a = installReferrer.getInstallBeginTimestampSeconds();
            this.f62868b.f62830a.m7879l(installReferrer2);
            C22709a c22709a = this.f62868b;
            c22709a.f62835f.f63459i = true;
            C22735g0 m42081b = c22709a.f62833d.m42081b();
            String str = this.f62868b.f62833d.f2240a;
            m42081b.m7856a(str, "Install Referrer data set [Referrer URL-" + installReferrer2 + "]");
        } catch (RemoteException e) {
            C22735g0 m42081b2 = this.f62868b.f62833d.m42081b();
            String str2 = this.f62868b.f62833d.f2240a;
            StringBuilder m8728C = C22128a.m8728C("Remote exception caused by Google Play Install Referrer library - ");
            m8728C.append(e.getMessage());
            m42081b2.m7856a(str2, m8728C.toString());
            this.f62867a.endConnection();
            this.f62868b.f62835f.f63459i = false;
        } catch (NullPointerException e2) {
            C22735g0 m42081b3 = this.f62868b.f62833d.m42081b();
            String str3 = this.f62868b.f62833d.f2240a;
            StringBuilder m8728C2 = C22128a.m8728C("Install referrer client null pointer exception caused by Google Play Install Referrer library - ");
            m8728C2.append(e2.getMessage());
            m42081b3.m7856a(str3, m8728C2.toString());
            this.f62867a.endConnection();
            this.f62868b.f62835f.f63459i = false;
        }
    }
}
