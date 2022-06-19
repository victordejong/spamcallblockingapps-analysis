package androidx.browser.trusted;

import android.app.NotificationManager;
import android.app.Service;
import android.content.ComponentName;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.support.p006a.p007a.AbstractC0009a;
import android.support.p006a.p007a.AbstractC0012b;
import androidx.browser.trusted.C0475g;
import androidx.core.app.C0760j;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:androidx/browser/trusted/TrustedWebActivityService.class */
public abstract class TrustedWebActivityService extends Service {

    /* renamed from: a */
    NotificationManager f1818a;

    /* renamed from: b */
    int f1819b = -1;

    /* renamed from: c */
    private final AbstractC0012b.AbstractBinderC0013a f1820c = new AbstractC0012b.AbstractBinderC0013a() { // from class: androidx.browser.trusted.TrustedWebActivityService.1
        /* renamed from: d */
        private void m45445d() {
            if (TrustedWebActivityService.this.f1819b == -1) {
                String[] packagesForUid = TrustedWebActivityService.this.getPackageManager().getPackagesForUid(getCallingUid());
                int i = 0;
                String[] strArr = packagesForUid;
                if (packagesForUid == null) {
                    strArr = new String[0];
                }
                C0471c m45434a = TrustedWebActivityService.this.m45454b().m45434a();
                PackageManager packageManager = TrustedWebActivityService.this.getPackageManager();
                if (m45434a != null) {
                    int length = strArr.length;
                    while (true) {
                        if (i >= length) {
                            break;
                        } else if (m45434a.m45440a(strArr[i], packageManager)) {
                            TrustedWebActivityService.this.f1819b = getCallingUid();
                            break;
                        } else {
                            i++;
                        }
                    }
                }
            }
            if (TrustedWebActivityService.this.f1819b == getCallingUid()) {
                return;
            }
            throw new SecurityException("Caller is not verified as Trusted Web Activity provider.");
        }

        @Override // android.support.p006a.p007a.AbstractC0012b
        /* renamed from: a */
        public final Bundle mo45452a() {
            m45445d();
            TrustedWebActivityService trustedWebActivityService = TrustedWebActivityService.this;
            trustedWebActivityService.m45453c();
            if (Build.VERSION.SDK_INT >= 23) {
                C0475g.C0476a c0476a = new C0475g.C0476a(trustedWebActivityService.f1818a.getActiveNotifications());
                Bundle bundle = new Bundle();
                bundle.putParcelableArray("android.support.customtabs.trusted.ACTIVE_NOTIFICATIONS", c0476a.f1829a);
                return bundle;
            }
            throw new IllegalStateException("onGetActiveNotifications cannot be called pre-M.");
        }

        @Override // android.support.p006a.p007a.AbstractC0012b
        /* renamed from: a */
        public final Bundle mo45451a(Bundle bundle) {
            m45445d();
            C0475g.m45433a(bundle, "android.support.customtabs.trusted.CHANNEL_NAME");
            C0475g.C0478c c0478c = new C0475g.C0478c(bundle.getString("android.support.customtabs.trusted.CHANNEL_NAME"));
            TrustedWebActivityService trustedWebActivityService = TrustedWebActivityService.this;
            String str = c0478c.f1832a;
            trustedWebActivityService.m45453c();
            return new C0475g.C0480e(!C0760j.m44538a(trustedWebActivityService).m44539a() ? false : Build.VERSION.SDK_INT < 26 ? true : C0466a.m45444a(trustedWebActivityService.f1818a, TrustedWebActivityService.m45455a(str))).m45432a();
        }

        @Override // android.support.p006a.p007a.AbstractC0012b
        /* renamed from: a */
        public final Bundle mo45450a(IBinder iBinder) {
            AbstractC0009a.AbstractBinderC0010a.C0011a c0011a;
            m45445d();
            if (iBinder == null || iBinder == null) {
                c0011a = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("android.support.customtabs.trusted.ITrustedWebActivityCallback");
                c0011a = (queryLocalInterface == null || !(queryLocalInterface instanceof AbstractC0009a)) ? new AbstractC0009a.AbstractBinderC0010a.C0011a(iBinder) : (AbstractC0009a) queryLocalInterface;
            }
            if (c0011a != null) {
                new C0474f(c0011a);
                return null;
            }
            return null;
        }

        @Override // android.support.p006a.p007a.AbstractC0012b
        /* renamed from: b */
        public final int mo45449b() {
            m45445d();
            return TrustedWebActivityService.this.m45456a();
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x00c7, code lost:
            if (androidx.browser.trusted.C0466a.m45444a(r0.f1818a, r0) == false) goto L13;
         */
        @Override // android.support.p006a.p007a.AbstractC0012b
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final android.os.Bundle mo45448b(android.os.Bundle r9) {
            /*
                Method dump skipped, instructions count: 232
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.browser.trusted.TrustedWebActivityService.BinderC04651.mo45448b(android.os.Bundle):android.os.Bundle");
        }

        @Override // android.support.p006a.p007a.AbstractC0012b
        /* renamed from: c */
        public final Bundle mo45447c() {
            m45445d();
            TrustedWebActivityService trustedWebActivityService = TrustedWebActivityService.this;
            int m45456a = trustedWebActivityService.m45456a();
            Bundle bundle = new Bundle();
            if (m45456a == -1) {
                return bundle;
            }
            bundle.putParcelable("android.support.customtabs.trusted.SMALL_ICON_BITMAP", BitmapFactory.decodeResource(trustedWebActivityService.getResources(), m45456a));
            return bundle;
        }

        @Override // android.support.p006a.p007a.AbstractC0012b
        /* renamed from: c */
        public final void mo45446c(Bundle bundle) {
            m45445d();
            C0475g.m45433a(bundle, "android.support.customtabs.trusted.PLATFORM_TAG");
            C0475g.m45433a(bundle, "android.support.customtabs.trusted.PLATFORM_ID");
            C0475g.C0477b c0477b = new C0475g.C0477b(bundle.getString("android.support.customtabs.trusted.PLATFORM_TAG"), bundle.getInt("android.support.customtabs.trusted.PLATFORM_ID"));
            TrustedWebActivityService trustedWebActivityService = TrustedWebActivityService.this;
            String str = c0477b.f1830a;
            int i = c0477b.f1831b;
            trustedWebActivityService.m45453c();
            trustedWebActivityService.f1818a.cancel(str, i);
        }
    };

    /* renamed from: a */
    static String m45455a(String str) {
        return str.toLowerCase(Locale.ROOT).replace(' ', '_') + "_channel_id";
    }

    /* renamed from: a */
    public final int m45456a() {
        ServiceInfo serviceInfo;
        int i = -1;
        try {
            serviceInfo = getPackageManager().getServiceInfo(new ComponentName(this, getClass()), 128);
        } catch (PackageManager.NameNotFoundException e) {
        }
        if (serviceInfo.metaData == null) {
            return -1;
        }
        i = serviceInfo.metaData.getInt("android.support.customtabs.trusted.SMALL_ICON", -1);
        return i;
    }

    /* renamed from: b */
    public abstract AbstractC0473e m45454b();

    /* renamed from: c */
    final void m45453c() {
        if (this.f1818a != null) {
            return;
        }
        throw new IllegalStateException("TrustedWebActivityService has not been properly initialized. Did onCreate() call super.onCreate()?");
    }
}
