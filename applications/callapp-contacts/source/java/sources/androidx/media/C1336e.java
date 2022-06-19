package androidx.media;

import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.PackageManager;
import android.provider.Settings;
import android.text.TextUtils;
import androidx.core.p036e.C0827a;
import androidx.media.C1329b;
/* renamed from: androidx.media.e */
/* loaded from: classes-dex2jar.jar:androidx/media/e.class */
public class C1336e implements C1329b.AbstractC1330a {

    /* renamed from: a */
    private static final boolean f4997a = C1329b.f4990a;

    /* renamed from: b */
    Context f4998b;

    /* renamed from: c */
    ContentResolver f4999c;

    /* renamed from: androidx.media.e$a */
    /* loaded from: classes-dex2jar.jar:androidx/media/e$a.class */
    public static class C1337a implements C1329b.AbstractC1332c {

        /* renamed from: a */
        private String f5000a;

        /* renamed from: b */
        private int f5001b;

        /* renamed from: c */
        private int f5002c;

        public C1337a(String str, int i, int i2) {
            this.f5000a = str;
            this.f5001b = i;
            this.f5002c = i2;
        }

        @Override // androidx.media.C1329b.AbstractC1332c
        /* renamed from: a */
        public final String mo43212a() {
            return this.f5000a;
        }

        @Override // androidx.media.C1329b.AbstractC1332c
        /* renamed from: b */
        public final int mo43211b() {
            return this.f5001b;
        }

        @Override // androidx.media.C1329b.AbstractC1332c
        /* renamed from: c */
        public final int mo43210c() {
            return this.f5002c;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C1337a)) {
                return false;
            }
            C1337a c1337a = (C1337a) obj;
            return (this.f5001b < 0 || c1337a.f5001b < 0) ? TextUtils.equals(this.f5000a, c1337a.f5000a) && this.f5002c == c1337a.f5002c : TextUtils.equals(this.f5000a, c1337a.f5000a) && this.f5001b == c1337a.f5001b && this.f5002c == c1337a.f5002c;
        }

        public int hashCode() {
            return C0827a.m44413a(this.f5000a, Integer.valueOf(this.f5002c));
        }
    }

    public C1336e(Context context) {
        this.f4998b = context;
        this.f4999c = context.getContentResolver();
    }

    /* renamed from: a */
    private boolean m43214a(C1329b.AbstractC1332c abstractC1332c, String str) {
        return abstractC1332c.mo43211b() < 0 ? this.f4998b.getPackageManager().checkPermission(str, abstractC1332c.mo43212a()) == 0 : this.f4998b.checkPermission(str, abstractC1332c.mo43211b(), abstractC1332c.mo43210c()) == 0;
    }

    /* renamed from: b */
    private boolean m43213b(C1329b.AbstractC1332c abstractC1332c) {
        String string = Settings.Secure.getString(this.f4999c, "enabled_notification_listeners");
        if (string != null) {
            for (String str : string.split(":")) {
                ComponentName unflattenFromString = ComponentName.unflattenFromString(str);
                if (unflattenFromString != null && unflattenFromString.getPackageName().equals(abstractC1332c.mo43212a())) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    @Override // androidx.media.C1329b.AbstractC1330a
    /* renamed from: a */
    public boolean mo43215a(C1329b.AbstractC1332c abstractC1332c) {
        try {
            if (this.f4998b.getPackageManager().getApplicationInfo(abstractC1332c.mo43212a(), 0) == null) {
                return false;
            }
            return m43214a(abstractC1332c, "android.permission.STATUS_BAR_SERVICE") || m43214a(abstractC1332c, "android.permission.MEDIA_CONTENT_CONTROL") || abstractC1332c.mo43210c() == 1000 || m43213b(abstractC1332c);
        } catch (PackageManager.NameNotFoundException e) {
            if (!f4997a) {
                return false;
            }
            StringBuilder sb = new StringBuilder("Package ");
            sb.append(abstractC1332c.mo43212a());
            sb.append(" doesn't exist");
            return false;
        }
    }
}
