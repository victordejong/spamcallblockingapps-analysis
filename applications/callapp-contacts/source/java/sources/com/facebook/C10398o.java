package com.facebook;

import android.content.Intent;
import androidx.p052i.p053a.C1179a;
import com.facebook.internal.C10213ae;
import com.facebook.internal.C10218af;
/* renamed from: com.facebook.o */
/* loaded from: classes3-dex2jar.jar:com/facebook/o.class */
public final class C10398o {

    /* renamed from: c */
    private static volatile C10398o f34035c;

    /* renamed from: a */
    final C10397n f34036a;

    /* renamed from: b */
    Profile f34037b;

    /* renamed from: d */
    private final C1179a f34038d;

    C10398o(C1179a c1179a, C10397n c10397n) {
        C10218af.m23179a(c1179a, "localBroadcastManager");
        C10218af.m23179a(c10397n, "profileCache");
        this.f34038d = c1179a;
        this.f34036a = c10397n;
    }

    /* renamed from: a */
    public static C10398o m22870a() {
        if (f34035c == null) {
            synchronized (C10398o.class) {
                try {
                    if (f34035c == null) {
                        f34035c = new C10398o(C1179a.m43410a(C10181g.m23290i()), new C10397n());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f34035c;
    }

    /* renamed from: a */
    private void m22869a(Profile profile, Profile profile2) {
        Intent intent = new Intent("com.facebook.sdk.ACTION_CURRENT_PROFILE_CHANGED");
        intent.putExtra("com.facebook.sdk.EXTRA_OLD_PROFILE", profile);
        intent.putExtra("com.facebook.sdk.EXTRA_NEW_PROFILE", profile2);
        this.f34038d.m43409a(intent);
    }

    /* renamed from: a */
    public final void m22868a(Profile profile, boolean z) {
        Profile profile2 = this.f34037b;
        this.f34037b = profile;
        if (z) {
            if (profile != null) {
                this.f34036a.m22872a(profile);
            } else {
                this.f34036a.m22871b();
            }
        }
        if (!C10213ae.m23233a(profile2, profile)) {
            m22869a(profile2, profile);
        }
    }
}
