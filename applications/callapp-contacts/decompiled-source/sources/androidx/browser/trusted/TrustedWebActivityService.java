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
import android.support.a.a.a;
import android.support.a.a.b;
import androidx.browser.trusted.g;
import androidx.core.app.j;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:androidx/browser/trusted/TrustedWebActivityService.class */
public abstract class TrustedWebActivityService extends Service {

    /* renamed from: a  reason: collision with root package name */
    NotificationManager f1249a;

    /* renamed from: b  reason: collision with root package name */
    int f1250b = -1;

    /* renamed from: c  reason: collision with root package name */
    private final b.a f1251c = new b.a() { // from class: androidx.browser.trusted.TrustedWebActivityService.1
        private void d() {
            if (TrustedWebActivityService.this.f1250b == -1) {
                String[] packagesForUid = TrustedWebActivityService.this.getPackageManager().getPackagesForUid(getCallingUid());
                int i = 0;
                String[] strArr = packagesForUid;
                if (packagesForUid == null) {
                    strArr = new String[0];
                }
                c a2 = TrustedWebActivityService.this.b().a();
                PackageManager packageManager = TrustedWebActivityService.this.getPackageManager();
                if (a2 != null) {
                    int length = strArr.length;
                    while (true) {
                        if (i >= length) {
                            break;
                        } else if (a2.a(strArr[i], packageManager)) {
                            TrustedWebActivityService.this.f1250b = getCallingUid();
                            break;
                        } else {
                            i++;
                        }
                    }
                }
            }
            if (TrustedWebActivityService.this.f1250b != getCallingUid()) {
                throw new SecurityException("Caller is not verified as Trusted Web Activity provider.");
            }
        }

        @Override // android.support.a.a.b
        public final Bundle a() {
            d();
            TrustedWebActivityService trustedWebActivityService = TrustedWebActivityService.this;
            trustedWebActivityService.c();
            if (Build.VERSION.SDK_INT >= 23) {
                g.a aVar = new g.a(trustedWebActivityService.f1249a.getActiveNotifications());
                Bundle bundle = new Bundle();
                bundle.putParcelableArray("android.support.customtabs.trusted.ACTIVE_NOTIFICATIONS", aVar.f1260a);
                return bundle;
            }
            throw new IllegalStateException("onGetActiveNotifications cannot be called pre-M.");
        }

        @Override // android.support.a.a.b
        public final Bundle a(Bundle bundle) {
            d();
            g.a(bundle, "android.support.customtabs.trusted.CHANNEL_NAME");
            g.c cVar = new g.c(bundle.getString("android.support.customtabs.trusted.CHANNEL_NAME"));
            TrustedWebActivityService trustedWebActivityService = TrustedWebActivityService.this;
            String str = cVar.f1263a;
            trustedWebActivityService.c();
            return new g.e(!j.a(trustedWebActivityService).a() ? false : Build.VERSION.SDK_INT < 26 ? true : a.a(trustedWebActivityService.f1249a, TrustedWebActivityService.a(str))).a();
        }

        @Override // android.support.a.a.b
        public final Bundle a(IBinder iBinder) {
            a aVar;
            d();
            if (iBinder == null || iBinder == null) {
                aVar = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("android.support.customtabs.trusted.ITrustedWebActivityCallback");
                aVar = (queryLocalInterface == null || !(queryLocalInterface instanceof a)) ? new a.AbstractBinderC0003a.C0004a(iBinder) : (a) queryLocalInterface;
            }
            if (aVar == null) {
                return null;
            }
            new f(aVar);
            return null;
        }

        @Override // android.support.a.a.b
        public final int b() {
            d();
            return TrustedWebActivityService.this.a();
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x00c7, code lost:
            if (androidx.browser.trusted.a.a(r0.f1249a, r0) == false) goto L_0x00db;
         */
        @Override // android.support.a.a.b
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final android.os.Bundle b(android.os.Bundle r9) {
            /*
                Method dump skipped, instructions count: 232
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.browser.trusted.TrustedWebActivityService.AnonymousClass1.b(android.os.Bundle):android.os.Bundle");
        }

        @Override // android.support.a.a.b
        public final Bundle c() {
            d();
            TrustedWebActivityService trustedWebActivityService = TrustedWebActivityService.this;
            int a2 = trustedWebActivityService.a();
            Bundle bundle = new Bundle();
            if (a2 == -1) {
                return bundle;
            }
            bundle.putParcelable("android.support.customtabs.trusted.SMALL_ICON_BITMAP", BitmapFactory.decodeResource(trustedWebActivityService.getResources(), a2));
            return bundle;
        }

        @Override // android.support.a.a.b
        public final void c(Bundle bundle) {
            d();
            g.a(bundle, "android.support.customtabs.trusted.PLATFORM_TAG");
            g.a(bundle, "android.support.customtabs.trusted.PLATFORM_ID");
            g.b bVar = new g.b(bundle.getString("android.support.customtabs.trusted.PLATFORM_TAG"), bundle.getInt("android.support.customtabs.trusted.PLATFORM_ID"));
            TrustedWebActivityService trustedWebActivityService = TrustedWebActivityService.this;
            String str = bVar.f1261a;
            int i = bVar.f1262b;
            trustedWebActivityService.c();
            trustedWebActivityService.f1249a.cancel(str, i);
        }
    };

    static String a(String str) {
        return str.toLowerCase(Locale.ROOT).replace(' ', '_') + "_channel_id";
    }

    public final int a() {
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

    public abstract e b();

    final void c() {
        if (this.f1249a == null) {
            throw new IllegalStateException("TrustedWebActivityService has not been properly initialized. Did onCreate() call super.onCreate()?");
        }
    }
}
