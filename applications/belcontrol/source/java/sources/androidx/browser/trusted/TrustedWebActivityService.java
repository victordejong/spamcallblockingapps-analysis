package androidx.browser.trusted;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.Service;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import android.support.customtabs.trusted.ITrustedWebActivityService;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:androidx/browser/trusted/TrustedWebActivityService.class */
public abstract class TrustedWebActivityService extends Service {

    /* renamed from: a */
    public NotificationManager f621a;

    /* renamed from: b */
    public int f622b = -1;

    /* renamed from: c */
    public final ITrustedWebActivityService.Stub f623c = new a(this);

    /* renamed from: a */
    public static String m6916a(String str) {
        return str.toLowerCase(Locale.ROOT).replace(' ', '_') + "_channel_id";
    }

    /* renamed from: b */
    public final void m6915b() {
        if (this.f621a != null) {
            return;
        }
        throw new IllegalStateException("TrustedWebActivityService has not been properly initialized. Did onCreate() call super.onCreate()?");
    }

    /* renamed from: c */
    public abstract m3 m6914c();

    /* renamed from: d */
    public boolean m6913d(String str) {
        m6915b();
        if (!C0290c8.m5434d(this).m5437a()) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 26) {
            return k3.b(this.f621a, m6916a(str));
        }
        return true;
    }

    /* renamed from: e */
    public void m6912e(String str, int i) {
        m6915b();
        this.f621a.cancel(str, i);
    }

    /* renamed from: f */
    public Bundle m6911f(String str, Bundle bundle, n3 n3Var) {
        return null;
    }

    /* renamed from: g */
    public Parcelable[] m6910g() {
        m6915b();
        if (Build.VERSION.SDK_INT >= 23) {
            return j3.a(this.f621a);
        }
        throw new IllegalStateException("onGetActiveNotifications cannot be called pre-M.");
    }

    /* renamed from: h */
    public Bundle m6909h() {
        int m6908i = m6908i();
        Bundle bundle = new Bundle();
        if (m6908i == -1) {
            return bundle;
        }
        bundle.putParcelable("android.support.customtabs.trusted.SMALL_ICON_BITMAP", BitmapFactory.decodeResource(getResources(), m6908i));
        return bundle;
    }

    /* renamed from: i */
    public int m6908i() {
        Bundle bundle;
        int i = -1;
        try {
            bundle = getPackageManager().getServiceInfo(new ComponentName(this, getClass()), 128).metaData;
        } catch (PackageManager.NameNotFoundException e) {
        }
        if (bundle == null) {
            return -1;
        }
        i = bundle.getInt("android.support.customtabs.trusted.SMALL_ICON", -1);
        return i;
    }

    /* renamed from: j */
    public boolean m6907j(String str, int i, Notification notification, String str2) {
        m6915b();
        if (!C0290c8.m5434d(this).m5437a()) {
            return false;
        }
        Notification notification2 = notification;
        if (Build.VERSION.SDK_INT >= 26) {
            String m6916a = m6916a(str2);
            notification2 = k3.a(this, this.f621a, notification, m6916a, str2);
            if (!k3.b(this.f621a, m6916a)) {
                return false;
            }
        }
        this.f621a.notify(str, i, notification2);
        return true;
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return this.f623c;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.f621a = (NotificationManager) getSystemService("notification");
    }

    @Override // android.app.Service
    public final boolean onUnbind(Intent intent) {
        this.f622b = -1;
        return super.onUnbind(intent);
    }
}
