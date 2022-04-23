package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import com.mopub.common.Constants;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/bk.class */
public final class bk {
    private static final Uri f = new Uri.Builder().scheme(Constants.VAST_TRACKER_CONTENT).authority("com.google.android.gms.chimera").build();

    /* renamed from: a  reason: collision with root package name */
    final String f22861a;

    /* renamed from: b  reason: collision with root package name */
    final ComponentName f22862b;

    /* renamed from: c  reason: collision with root package name */
    final int f22863c;

    /* renamed from: d  reason: collision with root package name */
    private final String f22864d;
    private final boolean e;

    public bk(ComponentName componentName, int i) {
        this.f22864d = null;
        this.f22861a = null;
        o.a(componentName);
        this.f22862b = componentName;
        this.f22863c = i;
        this.e = false;
    }

    public bk(String str, String str2, int i) {
        this(str, "com.google.android.gms", i, false);
    }

    public bk(String str, String str2, int i, boolean z) {
        o.a(str);
        this.f22864d = str;
        o.a(str2);
        this.f22861a = str2;
        this.f22862b = null;
        this.f22863c = i;
        this.e = z;
    }

    public final Intent a(Context context) {
        Intent intent;
        Bundle bundle;
        if (this.f22864d != null) {
            intent = null;
            Intent intent2 = null;
            if (this.e) {
                Bundle bundle2 = new Bundle();
                bundle2.putString("serviceActionBundleKey", this.f22864d);
                try {
                    bundle = context.getContentResolver().call(f, "serviceIntentCall", (String) null, bundle2);
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
                    String valueOf2 = String.valueOf(this.f22864d);
                    Log.w("ConnectionStatusConfig", valueOf2.length() != 0 ? "Dynamic lookup for intent failed for action: ".concat(valueOf2) : new String("Dynamic lookup for intent failed for action: "));
                    intent = intent2;
                }
            }
            if (intent == null) {
                return new Intent(this.f22864d).setPackage(this.f22861a);
            }
        } else {
            intent = new Intent().setComponent(this.f22862b);
        }
        return intent;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof bk)) {
            return false;
        }
        bk bkVar = (bk) obj;
        return m.a(this.f22864d, bkVar.f22864d) && m.a(this.f22861a, bkVar.f22861a) && m.a(this.f22862b, bkVar.f22862b) && this.f22863c == bkVar.f22863c && this.e == bkVar.e;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f22864d, this.f22861a, this.f22862b, Integer.valueOf(this.f22863c), Boolean.valueOf(this.e)});
    }

    public final String toString() {
        String str = this.f22864d;
        String str2 = str;
        if (str == null) {
            o.a(this.f22862b);
            str2 = this.f22862b.flattenToString();
        }
        return str2;
    }
}
