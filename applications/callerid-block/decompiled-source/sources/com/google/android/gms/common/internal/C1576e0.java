package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
/* renamed from: com.google.android.gms.common.internal.e0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/e0.class */
public final class C1576e0 {

    /* renamed from: f */
    private static final Uri f5852f = new Uri.Builder().scheme("content").authority("com.google.android.gms.chimera").build();

    /* renamed from: a */
    private final String f5853a;

    /* renamed from: b */
    private final String f5854b;

    /* renamed from: c */
    private final ComponentName f5855c = null;

    /* renamed from: d */
    private final int f5856d;

    /* renamed from: e */
    private final boolean f5857e;

    public C1576e0(String str, String str2, int i, boolean z) {
        C1581h.m8351d(str);
        this.f5853a = str;
        C1581h.m8351d(str2);
        this.f5854b = str2;
        this.f5856d = i;
        this.f5857e = z;
    }

    /* renamed from: a */
    public final String m8363a() {
        return this.f5854b;
    }

    /* renamed from: b */
    public final ComponentName m8362b() {
        return this.f5855c;
    }

    /* renamed from: c */
    public final int m8361c() {
        return this.f5856d;
    }

    /* renamed from: d */
    public final Intent m8360d(Context context) {
        Intent intent;
        Bundle bundle;
        if (this.f5853a != null) {
            intent = null;
            Intent intent2 = null;
            if (this.f5857e) {
                Bundle bundle2 = new Bundle();
                bundle2.putString("serviceActionBundleKey", this.f5853a);
                try {
                    bundle = context.getContentResolver().call(f5852f, "serviceIntentCall", (String) null, bundle2);
                } catch (IllegalArgumentException e) {
                    String valueOf = String.valueOf(e);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 34);
                    sb.append("Dynamic intent resolution failed: ");
                    sb.append(valueOf);
                    Log.w("ConnectionStatusConfig", sb.toString());
                    bundle = null;
                }
                if (bundle != null) {
                    intent2 = (Intent) bundle.getParcelable("serviceResponseIntentKey");
                }
                intent = intent2;
                if (intent2 == null) {
                    String valueOf2 = String.valueOf(this.f5853a);
                    Log.w("ConnectionStatusConfig", valueOf2.length() != 0 ? "Dynamic lookup for intent failed for action: ".concat(valueOf2) : new String("Dynamic lookup for intent failed for action: "));
                    intent = intent2;
                }
            }
            if (intent == null) {
                return new Intent(this.f5853a).setPackage(this.f5854b);
            }
        } else {
            intent = new Intent().setComponent(this.f5855c);
        }
        return intent;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1576e0)) {
            return false;
        }
        C1576e0 e0Var = (C1576e0) obj;
        return C1579g.m8358a(this.f5853a, e0Var.f5853a) && C1579g.m8358a(this.f5854b, e0Var.f5854b) && C1579g.m8358a(this.f5855c, e0Var.f5855c) && this.f5856d == e0Var.f5856d && this.f5857e == e0Var.f5857e;
    }

    public final int hashCode() {
        return C1579g.m8357b(this.f5853a, this.f5854b, this.f5855c, Integer.valueOf(this.f5856d), Boolean.valueOf(this.f5857e));
    }

    public final String toString() {
        String str = this.f5853a;
        String str2 = str;
        if (str == null) {
            C1581h.m8347h(this.f5855c);
            str2 = this.f5855c.flattenToString();
        }
        return str2;
    }
}
