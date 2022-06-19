package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
/* renamed from: com.google.android.gms.common.internal.i */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/i.class */
public abstract class AbstractC2643i {

    /* renamed from: a */
    private static final Object f7398a = new Object();

    /* renamed from: b */
    private static AbstractC2643i f7399b;

    /* renamed from: com.google.android.gms.common.internal.i$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/i$a.class */
    public static final class C2644a {

        /* renamed from: f */
        private static final Uri f7400f = new Uri.Builder().scheme("content").authority("com.google.android.gms.chimera").build();

        /* renamed from: a */
        private final String f7401a;

        /* renamed from: b */
        private final String f7402b;

        /* renamed from: c */
        private final ComponentName f7403c = null;

        /* renamed from: d */
        private final int f7404d;

        /* renamed from: e */
        private final boolean f7405e;

        public C2644a(String str, String str2, int i, boolean z) {
            this.f7401a = C2662s.m13979a(str);
            this.f7402b = C2662s.m13979a(str2);
            this.f7404d = i;
            this.f7405e = z;
        }

        /* renamed from: a */
        public final Intent m14012a(Context context) {
            Intent component;
            Intent intent = null;
            if (this.f7401a != null) {
                if (this.f7405e) {
                    Bundle bundle = new Bundle();
                    bundle.putString("serviceActionBundleKey", this.f7401a);
                    Bundle call = context.getContentResolver().call(f7400f, "serviceIntentCall", (String) null, bundle);
                    Intent intent2 = call == null ? null : (Intent) call.getParcelable("serviceResponseIntentKey");
                    if (intent2 == null) {
                        String valueOf = String.valueOf(this.f7401a);
                        Log.w("ConnectionStatusConfig", valueOf.length() != 0 ? "Dynamic lookup for intent failed for action: ".concat(valueOf) : new String("Dynamic lookup for intent failed for action: "));
                    }
                    intent = intent2;
                }
                component = intent;
                if (intent == null) {
                    component = new Intent(this.f7401a).setPackage(this.f7402b);
                }
            } else {
                component = new Intent().setComponent(this.f7403c);
            }
            return component;
        }

        /* renamed from: a */
        public final String m14013a() {
            return this.f7402b;
        }

        /* renamed from: b */
        public final ComponentName m14011b() {
            return this.f7403c;
        }

        /* renamed from: c */
        public final int m14010c() {
            return this.f7404d;
        }

        public final boolean equals(Object obj) {
            boolean z = true;
            if (this != obj) {
                if (!(obj instanceof C2644a)) {
                    z = false;
                } else {
                    C2644a c2644a = (C2644a) obj;
                    if (!C2657q.m13992a(this.f7401a, c2644a.f7401a) || !C2657q.m13992a(this.f7402b, c2644a.f7402b) || !C2657q.m13992a(this.f7403c, c2644a.f7403c) || this.f7404d != c2644a.f7404d || this.f7405e != c2644a.f7405e) {
                        z = false;
                    }
                }
            }
            return z;
        }

        public final int hashCode() {
            return C2657q.m13991a(this.f7401a, this.f7402b, this.f7403c, Integer.valueOf(this.f7404d), Boolean.valueOf(this.f7405e));
        }

        public final String toString() {
            return this.f7401a == null ? this.f7403c.flattenToString() : this.f7401a;
        }
    }

    /* renamed from: a */
    public static AbstractC2643i m14017a(Context context) {
        synchronized (f7398a) {
            if (f7399b == null) {
                f7399b = new C2607aj(context.getApplicationContext());
            }
        }
        return f7399b;
    }

    /* renamed from: a */
    public final void m14015a(String str, String str2, int i, ServiceConnection serviceConnection, String str3, boolean z) {
        mo14014b(new C2644a(str, str2, i, z), serviceConnection, str3);
    }

    /* renamed from: a */
    public abstract boolean mo14016a(C2644a c2644a, ServiceConnection serviceConnection, String str);

    /* renamed from: b */
    protected abstract void mo14014b(C2644a c2644a, ServiceConnection serviceConnection, String str);
}
