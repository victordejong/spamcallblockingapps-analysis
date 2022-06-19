package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import com.mopub.common.Constants;
import java.util.Arrays;
/* renamed from: com.google.android.gms.common.internal.bk */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/bk.class */
public final class C12012bk {

    /* renamed from: f */
    private static final Uri f39513f = new Uri.Builder().scheme(Constants.VAST_TRACKER_CONTENT).authority("com.google.android.gms.chimera").build();

    /* renamed from: a */
    final String f39514a;

    /* renamed from: b */
    final ComponentName f39515b;

    /* renamed from: c */
    final int f39516c;

    /* renamed from: d */
    private final String f39517d;

    /* renamed from: e */
    private final boolean f39518e;

    public C12012bk(ComponentName componentName, int i) {
        this.f39517d = null;
        this.f39514a = null;
        C12045o.m19162a(componentName);
        this.f39515b = componentName;
        this.f39516c = i;
        this.f39518e = false;
    }

    public C12012bk(String str, String str2, int i) {
        this(str, "com.google.android.gms", i, false);
    }

    public C12012bk(String str, String str2, int i, boolean z) {
        C12045o.m19160a(str);
        this.f39517d = str;
        C12045o.m19160a(str2);
        this.f39514a = str2;
        this.f39515b = null;
        this.f39516c = i;
        this.f39518e = z;
    }

    /* renamed from: a */
    public final Intent m19205a(Context context) {
        Intent intent;
        Bundle bundle;
        if (this.f39517d != null) {
            intent = null;
            if (this.f39518e) {
                Bundle bundle2 = new Bundle();
                bundle2.putString("serviceActionBundleKey", this.f39517d);
                try {
                    bundle = context.getContentResolver().call(f39513f, "serviceIntentCall", (String) null, bundle2);
                } catch (IllegalArgumentException e) {
                    String valueOf = String.valueOf(e);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 34);
                    sb.append("Dynamic intent resolution failed: ");
                    sb.append(valueOf);
                    Log.w("ConnectionStatusConfig", sb.toString());
                    bundle = null;
                }
                Intent intent2 = bundle == null ? null : (Intent) bundle.getParcelable("serviceResponseIntentKey");
                intent = intent2;
                if (intent2 == null) {
                    String valueOf2 = String.valueOf(this.f39517d);
                    Log.w("ConnectionStatusConfig", valueOf2.length() != 0 ? "Dynamic lookup for intent failed for action: ".concat(valueOf2) : new String("Dynamic lookup for intent failed for action: "));
                    intent = intent2;
                }
            }
            if (intent == null) {
                return new Intent(this.f39517d).setPackage(this.f39514a);
            }
        } else {
            intent = new Intent().setComponent(this.f39515b);
        }
        return intent;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C12012bk)) {
            return false;
        }
        C12012bk c12012bk = (C12012bk) obj;
        return C12041m.m19168a(this.f39517d, c12012bk.f39517d) && C12041m.m19168a(this.f39514a, c12012bk.f39514a) && C12041m.m19168a(this.f39515b, c12012bk.f39515b) && this.f39516c == c12012bk.f39516c && this.f39518e == c12012bk.f39518e;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f39517d, this.f39514a, this.f39515b, Integer.valueOf(this.f39516c), Boolean.valueOf(this.f39518e)});
    }

    public final String toString() {
        String str = this.f39517d;
        String str2 = str;
        if (str == null) {
            C12045o.m19162a(this.f39515b);
            str2 = this.f39515b.flattenToString();
        }
        return str2;
    }
}
