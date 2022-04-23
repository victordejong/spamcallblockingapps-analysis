package p081h.p203i.p204a.p224e.p235d.p240n;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.Nullable;
/* renamed from: h.i.a.e.d.n.j */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/n/j.class */
public abstract class AbstractC6996j {

    /* renamed from: a */
    public static int f17129a = 129;

    /* renamed from: b */
    public static final Object f17130b = new Object();

    /* renamed from: c */
    public static AbstractC6996j f17131c;

    /* renamed from: h.i.a.e.d.n.j$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/d/n/j$a.class */
    public static final class C6997a {

        /* renamed from: f */
        public static final Uri f17132f = new Uri.Builder().scheme("content").authority("com.google.android.gms.chimera").build();
        @Nullable

        /* renamed from: a */
        public final String f17133a;
        @Nullable

        /* renamed from: b */
        public final String f17134b;
        @Nullable

        /* renamed from: c */
        public final ComponentName f17135c;

        /* renamed from: d */
        public final int f17136d;

        /* renamed from: e */
        public final boolean f17137e;

        public C6997a(ComponentName componentName, int i) {
            this.f17133a = null;
            this.f17134b = null;
            C7021t.m21290a(componentName);
            this.f17135c = componentName;
            this.f17136d = i;
            this.f17137e = false;
        }

        public C6997a(String str, String str2, int i, boolean z) {
            C7021t.m21283b(str);
            this.f17133a = str;
            C7021t.m21283b(str2);
            this.f17134b = str2;
            this.f17135c = null;
            this.f17136d = i;
            this.f17137e = z;
        }

        @Nullable
        /* renamed from: a */
        public final ComponentName m21346a() {
            return this.f17135c;
        }

        /* renamed from: a */
        public final Intent m21345a(Context context) {
            Intent intent;
            if (this.f17133a != null) {
                Intent b = this.f17137e ? m21343b(context) : null;
                intent = b;
                if (b == null) {
                    intent = new Intent(this.f17133a).setPackage(this.f17134b);
                }
            } else {
                intent = new Intent().setComponent(this.f17135c);
            }
            return intent;
        }

        @Nullable
        /* renamed from: b */
        public final Intent m21343b(Context context) {
            Bundle bundle;
            Bundle bundle2 = new Bundle();
            bundle2.putString("serviceActionBundleKey", this.f17133a);
            Intent intent = null;
            try {
                bundle = context.getContentResolver().call(f17132f, "serviceIntentCall", (String) null, bundle2);
            } catch (IllegalArgumentException e) {
                String valueOf = String.valueOf(e);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 34);
                sb.append("Dynamic intent resolution failed: ");
                sb.append(valueOf);
                sb.toString();
                bundle = null;
            }
            if (bundle != null) {
                intent = (Intent) bundle.getParcelable("serviceResponseIntentKey");
            }
            if (intent == null) {
                String valueOf2 = String.valueOf(this.f17133a);
                if (valueOf2.length() != 0) {
                    "Dynamic lookup for intent failed for action: ".concat(valueOf2);
                } else {
                    new String("Dynamic lookup for intent failed for action: ");
                }
            }
            return intent;
        }

        @Nullable
        /* renamed from: b */
        public final String m21344b() {
            return this.f17134b;
        }

        /* renamed from: c */
        public final int m21342c() {
            return this.f17136d;
        }

        public final boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C6997a)) {
                return false;
            }
            C6997a aVar = (C6997a) obj;
            return C7018s.m21297a(this.f17133a, aVar.f17133a) && C7018s.m21297a(this.f17134b, aVar.f17134b) && C7018s.m21297a(this.f17135c, aVar.f17135c) && this.f17136d == aVar.f17136d && this.f17137e == aVar.f17137e;
        }

        public final int hashCode() {
            return C7018s.m21296a(this.f17133a, this.f17134b, this.f17135c, Integer.valueOf(this.f17136d), Boolean.valueOf(this.f17137e));
        }

        public final String toString() {
            String str = this.f17133a;
            String str2 = str;
            if (str == null) {
                C7021t.m21290a(this.f17135c);
                str2 = this.f17135c.flattenToString();
            }
            return str2;
        }
    }

    /* renamed from: a */
    public static int m21351a() {
        return f17129a;
    }

    /* renamed from: a */
    public static AbstractC6996j m21349a(Context context) {
        synchronized (f17130b) {
            if (f17131c == null) {
                f17131c = new C7011o0(context.getApplicationContext());
            }
        }
        return f17131c;
    }

    /* renamed from: a */
    public final void m21348a(String str, String str2, int i, ServiceConnection serviceConnection, String str3, boolean z) {
        mo21313b(new C6997a(str, str2, i, z), serviceConnection, str3);
    }

    /* renamed from: a */
    public boolean m21350a(ComponentName componentName, ServiceConnection serviceConnection, String str) {
        return mo21315a(new C6997a(componentName, m21351a()), serviceConnection, str);
    }

    /* renamed from: a */
    public abstract boolean mo21315a(C6997a aVar, ServiceConnection serviceConnection, String str);

    /* renamed from: b */
    public void m21347b(ComponentName componentName, ServiceConnection serviceConnection, String str) {
        mo21313b(new C6997a(componentName, m21351a()), serviceConnection, str);
    }

    /* renamed from: b */
    public abstract void mo21313b(C6997a aVar, ServiceConnection serviceConnection, String str);
}
