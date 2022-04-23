package p012b.p074r;

import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.PackageManager;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import p012b.p042i.p053o.C0943c;
import p012b.p074r.C1141c;
/* renamed from: b.r.f */
/* loaded from: classes-dex2jar.jar:b/r/f.class */
public class C1148f implements C1141c.AbstractC1142a {

    /* renamed from: c */
    public static final boolean f4657c = C1141c.f4652b;

    /* renamed from: a */
    public Context f4658a;

    /* renamed from: b */
    public ContentResolver f4659b;

    /* renamed from: b.r.f$a */
    /* loaded from: classes-dex2jar.jar:b/r/f$a.class */
    public static class C1149a implements C1141c.AbstractC1144c {

        /* renamed from: a */
        public String f4660a;

        /* renamed from: b */
        public int f4661b;

        /* renamed from: c */
        public int f4662c;

        public C1149a(String str, int i, int i2) {
            this.f4660a = str;
            this.f4661b = i;
            this.f4662c = i2;
        }

        @Override // p012b.p074r.C1141c.AbstractC1144c
        /* renamed from: a */
        public int mo34577a() {
            return this.f4662c;
        }

        @Override // p012b.p074r.C1141c.AbstractC1144c
        /* renamed from: b */
        public int mo34576b() {
            return this.f4661b;
        }

        @Override // p012b.p074r.C1141c.AbstractC1144c
        /* renamed from: c */
        public String mo34575c() {
            return this.f4660a;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            boolean z2 = true;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C1149a)) {
                return false;
            }
            C1149a aVar = (C1149a) obj;
            if (this.f4661b == -1 || aVar.f4661b == -1) {
                if (!TextUtils.equals(this.f4660a, aVar.f4660a) || this.f4662c != aVar.f4662c) {
                    z = false;
                }
                return z;
            }
            if (!(TextUtils.equals(this.f4660a, aVar.f4660a) && this.f4661b == aVar.f4661b && this.f4662c == aVar.f4662c)) {
                z2 = false;
            }
            return z2;
        }

        public int hashCode() {
            return C0943c.m35447a(this.f4660a, Integer.valueOf(this.f4662c));
        }
    }

    public C1148f(Context context) {
        this.f4658a = context;
        this.f4659b = context.getContentResolver();
    }

    /* renamed from: a */
    public Context m34581a() {
        return this.f4658a;
    }

    @Override // p012b.p074r.C1141c.AbstractC1142a
    /* renamed from: a */
    public boolean mo34580a(C1141c.AbstractC1144c cVar) {
        boolean z = false;
        try {
            if (this.f4658a.getPackageManager().getApplicationInfo(cVar.mo34575c(), 0) == null) {
                return false;
            }
            if (m34579a(cVar, "android.permission.STATUS_BAR_SERVICE") || m34579a(cVar, "android.permission.MEDIA_CONTENT_CONTROL") || cVar.mo34577a() == 1000 || m34578b(cVar)) {
                z = true;
            }
            return z;
        } catch (PackageManager.NameNotFoundException e) {
            if (!f4657c) {
                return false;
            }
            Log.d("MediaSessionManager", "Package " + cVar.mo34575c() + " doesn't exist");
            return false;
        }
    }

    /* renamed from: a */
    public final boolean m34579a(C1141c.AbstractC1144c cVar, String str) {
        boolean z = true;
        boolean z2 = true;
        if (cVar.mo34576b() < 0) {
            if (this.f4658a.getPackageManager().checkPermission(str, cVar.mo34575c()) != 0) {
                z2 = false;
            }
            return z2;
        }
        if (this.f4658a.checkPermission(str, cVar.mo34576b(), cVar.mo34577a()) != 0) {
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    public boolean m34578b(C1141c.AbstractC1144c cVar) {
        String string = Settings.Secure.getString(this.f4659b, "enabled_notification_listeners");
        if (string == null) {
            return false;
        }
        for (String str : string.split(":")) {
            ComponentName unflattenFromString = ComponentName.unflattenFromString(str);
            if (unflattenFromString != null && unflattenFromString.getPackageName().equals(cVar.mo34575c())) {
                return true;
            }
        }
        return false;
    }
}
