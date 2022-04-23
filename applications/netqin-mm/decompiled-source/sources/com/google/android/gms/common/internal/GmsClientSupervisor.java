package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepForSdk;
import p131c.p161d.p170b.p224d.p238d.p243d.C3302j;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/GmsClientSupervisor.class */
public abstract class GmsClientSupervisor {

    /* renamed from: a */
    public static int f23443a = 129;

    /* renamed from: b */
    public static final Object f23444b = new Object();

    /* renamed from: c */
    public static GmsClientSupervisor f23445c;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/GmsClientSupervisor$zza.class */
    public static final class zza {

        /* renamed from: f */
        public static final Uri f23446f = new Uri.Builder().scheme("content").authority("com.google.android.gms.chimera").build();

        /* renamed from: a */
        public final String f23447a;

        /* renamed from: b */
        public final String f23448b;

        /* renamed from: c */
        public final ComponentName f23449c = null;

        /* renamed from: d */
        public final int f23450d;

        /* renamed from: e */
        public final boolean f23451e;

        public zza(String str, String str2, int i, boolean z) {
            Preconditions.m17281b(str);
            this.f23447a = str;
            Preconditions.m17281b(str2);
            this.f23448b = str2;
            this.f23450d = i;
            this.f23451e = z;
        }

        /* renamed from: a */
        public final Intent m17302a(Context context) {
            Intent intent;
            if (this.f23447a != null) {
                Intent b = this.f23451e ? m17300b(context) : null;
                intent = b;
                if (b == null) {
                    intent = new Intent(this.f23447a).setPackage(this.f23448b);
                }
            } else {
                intent = new Intent().setComponent(this.f23449c);
            }
            return intent;
        }

        /* renamed from: a */
        public final String m17303a() {
            return this.f23448b;
        }

        /* renamed from: b */
        public final ComponentName m17301b() {
            return this.f23449c;
        }

        /* renamed from: b */
        public final Intent m17300b(Context context) {
            Bundle bundle;
            Bundle bundle2 = new Bundle();
            bundle2.putString("serviceActionBundleKey", this.f23447a);
            Intent intent = null;
            try {
                bundle = context.getContentResolver().call(f23446f, "serviceIntentCall", (String) null, bundle2);
            } catch (IllegalArgumentException e) {
                String valueOf = String.valueOf(e);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 34);
                sb.append("Dynamic intent resolution failed: ");
                sb.append(valueOf);
                Log.w("ConnectionStatusConfig", sb.toString());
                bundle = null;
            }
            if (bundle != null) {
                intent = (Intent) bundle.getParcelable("serviceResponseIntentKey");
            }
            if (intent == null) {
                String valueOf2 = String.valueOf(this.f23447a);
                Log.w("ConnectionStatusConfig", valueOf2.length() != 0 ? "Dynamic lookup for intent failed for action: ".concat(valueOf2) : new String("Dynamic lookup for intent failed for action: "));
            }
            return intent;
        }

        /* renamed from: c */
        public final int m17299c() {
            return this.f23450d;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof zza)) {
                return false;
            }
            zza zzaVar = (zza) obj;
            return Objects.m17295a(this.f23447a, zzaVar.f23447a) && Objects.m17295a(this.f23448b, zzaVar.f23448b) && Objects.m17295a(this.f23449c, zzaVar.f23449c) && this.f23450d == zzaVar.f23450d && this.f23451e == zzaVar.f23451e;
        }

        public final int hashCode() {
            return Objects.m17294a(this.f23447a, this.f23448b, this.f23449c, Integer.valueOf(this.f23450d), Boolean.valueOf(this.f23451e));
        }

        public final String toString() {
            String str = this.f23447a;
            String str2 = str;
            if (str == null) {
                Preconditions.m17288a(this.f23449c);
                str2 = this.f23449c.flattenToString();
            }
            return str2;
        }
    }

    @KeepForSdk
    /* renamed from: a */
    public static int m17308a() {
        return f23443a;
    }

    @KeepForSdk
    /* renamed from: a */
    public static GmsClientSupervisor m17307a(Context context) {
        synchronized (f23444b) {
            if (f23445c == null) {
                f23445c = new C3302j(context.getApplicationContext());
            }
        }
        return f23445c;
    }

    /* renamed from: a */
    public final void m17305a(String str, String str2, int i, ServiceConnection serviceConnection, String str3, boolean z) {
        mo17304b(new zza(str, str2, i, z), serviceConnection, str3);
    }

    /* renamed from: a */
    public abstract boolean mo17306a(zza zzaVar, ServiceConnection serviceConnection, String str);

    /* renamed from: b */
    public abstract void mo17304b(zza zzaVar, ServiceConnection serviceConnection, String str);
}
