package androidx.media;

import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.PackageManager;
import android.provider.Settings;
import android.text.TextUtils;
import androidx.media.b;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/media/e.class */
public class e implements b.a {

    /* renamed from: a  reason: collision with root package name */
    private static final boolean f2714a = b.f2707a;

    /* renamed from: b  reason: collision with root package name */
    Context f2715b;

    /* renamed from: c  reason: collision with root package name */
    ContentResolver f2716c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media/e$a.class */
    public static class a implements b.c {

        /* renamed from: a  reason: collision with root package name */
        private String f2717a;

        /* renamed from: b  reason: collision with root package name */
        private int f2718b;

        /* renamed from: c  reason: collision with root package name */
        private int f2719c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(String str, int i, int i2) {
            this.f2717a = str;
            this.f2718b = i;
            this.f2719c = i2;
        }

        @Override // androidx.media.b.c
        public final String a() {
            return this.f2717a;
        }

        @Override // androidx.media.b.c
        public final int b() {
            return this.f2718b;
        }

        @Override // androidx.media.b.c
        public final int c() {
            return this.f2719c;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return (this.f2718b < 0 || aVar.f2718b < 0) ? TextUtils.equals(this.f2717a, aVar.f2717a) && this.f2719c == aVar.f2719c : TextUtils.equals(this.f2717a, aVar.f2717a) && this.f2718b == aVar.f2718b && this.f2719c == aVar.f2719c;
        }

        public int hashCode() {
            return androidx.core.e.a.a(this.f2717a, Integer.valueOf(this.f2719c));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(Context context) {
        this.f2715b = context;
        this.f2716c = context.getContentResolver();
    }

    private boolean a(b.c cVar, String str) {
        return cVar.b() < 0 ? this.f2715b.getPackageManager().checkPermission(str, cVar.a()) == 0 : this.f2715b.checkPermission(str, cVar.b(), cVar.c()) == 0;
    }

    private boolean b(b.c cVar) {
        String string = Settings.Secure.getString(this.f2716c, "enabled_notification_listeners");
        if (string == null) {
            return false;
        }
        for (String str : string.split(":")) {
            ComponentName unflattenFromString = ComponentName.unflattenFromString(str);
            if (unflattenFromString != null && unflattenFromString.getPackageName().equals(cVar.a())) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.media.b.a
    public boolean a(b.c cVar) {
        try {
            if (this.f2715b.getPackageManager().getApplicationInfo(cVar.a(), 0) == null) {
                return false;
            }
            return a(cVar, "android.permission.STATUS_BAR_SERVICE") || a(cVar, "android.permission.MEDIA_CONTENT_CONTROL") || cVar.c() == 1000 || b(cVar);
        } catch (PackageManager.NameNotFoundException e) {
            if (!f2714a) {
                return false;
            }
            StringBuilder sb = new StringBuilder("Package ");
            sb.append(cVar.a());
            sb.append(" doesn't exist");
            return false;
        }
    }
}
