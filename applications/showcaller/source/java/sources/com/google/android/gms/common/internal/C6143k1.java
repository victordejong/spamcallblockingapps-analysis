package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
/* renamed from: com.google.android.gms.common.internal.k1 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/k1.class */
public final class C6143k1 {

    /* renamed from: a */
    private static final Uri f19564a = new Uri.Builder().scheme("content").authority("com.google.android.gms.chimera").build();

    /* renamed from: b */
    private final String f19565b;

    /* renamed from: c */
    private final String f19566c;

    /* renamed from: d */
    private final ComponentName f19567d;

    /* renamed from: e */
    private final int f19568e;

    /* renamed from: f */
    private final boolean f19569f;

    public C6143k1(ComponentName componentName, int i) {
        this.f19565b = null;
        this.f19566c = null;
        C6155o.m17018j(componentName);
        this.f19567d = componentName;
        this.f19568e = i;
        this.f19569f = false;
    }

    public C6143k1(String str, String str2, int i, boolean z) {
        C6155o.m17022f(str);
        this.f19565b = str;
        C6155o.m17022f(str2);
        this.f19566c = str2;
        this.f19567d = null;
        this.f19568e = i;
        this.f19569f = z;
    }

    /* renamed from: a */
    public final String m17048a() {
        return this.f19566c;
    }

    /* renamed from: b */
    public final ComponentName m17047b() {
        return this.f19567d;
    }

    /* renamed from: c */
    public final int m17046c() {
        return this.f19568e;
    }

    /* renamed from: d */
    public final Intent m17045d(Context context) {
        Intent intent;
        Bundle bundle;
        if (this.f19565b != null) {
            intent = null;
            if (this.f19569f) {
                Bundle bundle2 = new Bundle();
                bundle2.putString("serviceActionBundleKey", this.f19565b);
                try {
                    bundle = context.getContentResolver().call(f19564a, "serviceIntentCall", (String) null, bundle2);
                } catch (IllegalArgumentException e) {
                    String valueOf = String.valueOf(e);
                    StringBuilder sb = new StringBuilder(valueOf.length() + 34);
                    sb.append("Dynamic intent resolution failed: ");
                    sb.append(valueOf);
                    Log.w("ConnectionStatusConfig", sb.toString());
                    bundle = null;
                }
                Intent intent2 = bundle == null ? null : (Intent) bundle.getParcelable("serviceResponseIntentKey");
                intent = intent2;
                if (intent2 == null) {
                    String valueOf2 = String.valueOf(this.f19565b);
                    Log.w("ConnectionStatusConfig", valueOf2.length() != 0 ? "Dynamic lookup for intent failed for action: ".concat(valueOf2) : new String("Dynamic lookup for intent failed for action: "));
                    intent = intent2;
                }
            }
            if (intent == null) {
                return new Intent(this.f19565b).setPackage(this.f19566c);
            }
        } else {
            intent = new Intent().setComponent(this.f19567d);
        }
        return intent;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C6143k1)) {
            return false;
        }
        C6143k1 c6143k1 = (C6143k1) obj;
        return C6147m.m17044a(this.f19565b, c6143k1.f19565b) && C6147m.m17044a(this.f19566c, c6143k1.f19566c) && C6147m.m17044a(this.f19567d, c6143k1.f19567d) && this.f19568e == c6143k1.f19568e && this.f19569f == c6143k1.f19569f;
    }

    public final int hashCode() {
        return C6147m.m17043b(this.f19565b, this.f19566c, this.f19567d, Integer.valueOf(this.f19568e), Boolean.valueOf(this.f19569f));
    }

    public final String toString() {
        String str = this.f19565b;
        String str2 = str;
        if (str == null) {
            C6155o.m17018j(this.f19567d);
            str2 = this.f19567d.flattenToString();
        }
        return str2;
    }
}
