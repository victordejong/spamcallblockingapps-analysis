package p081h.p203i.p325c.p371w;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import androidx.core.content.ContextCompat;
import p081h.p203i.p325c.p362r.AbstractC9856c;
/* renamed from: h.i.c.w.a */
/* loaded from: classes2-dex2jar.jar:h/i/c/w/a.class */
public class C9976a {

    /* renamed from: a */
    public final Context f22572a;

    /* renamed from: b */
    public final SharedPreferences f22573b;

    /* renamed from: c */
    public boolean f22574c = m13786b();

    public C9976a(Context context, String str, AbstractC9856c cVar) {
        this.f22572a = m13787a(context);
        Context context2 = this.f22572a;
        this.f22573b = context2.getSharedPreferences("com.google.firebase.common.prefs:" + str, 0);
    }

    /* renamed from: a */
    public static Context m13787a(Context context) {
        return Build.VERSION.SDK_INT < 24 ? context : ContextCompat.createDeviceProtectedStorageContext(context);
    }

    /* renamed from: a */
    public boolean m13788a() {
        boolean z;
        synchronized (this) {
            z = this.f22574c;
        }
        return z;
    }

    /* renamed from: b */
    public final boolean m13786b() {
        return this.f22573b.contains("firebase_data_collection_default_enabled") ? this.f22573b.getBoolean("firebase_data_collection_default_enabled", true) : m13785c();
    }

    /* renamed from: c */
    public final boolean m13785c() {
        ApplicationInfo applicationInfo;
        try {
            PackageManager packageManager = this.f22572a.getPackageManager();
            if (packageManager == null || (applicationInfo = packageManager.getApplicationInfo(this.f22572a.getPackageName(), 128)) == null || applicationInfo.metaData == null || !applicationInfo.metaData.containsKey("firebase_data_collection_default_enabled")) {
                return true;
            }
            return applicationInfo.metaData.getBoolean("firebase_data_collection_default_enabled");
        } catch (PackageManager.NameNotFoundException e) {
            return true;
        }
    }
}
