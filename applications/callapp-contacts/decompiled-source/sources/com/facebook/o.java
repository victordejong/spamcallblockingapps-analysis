package com.facebook;

import android.content.Intent;
import androidx.i.a.a;
import com.facebook.internal.ae;
import com.facebook.internal.af;
/* loaded from: classes3-dex2jar.jar:com/facebook/o.class */
public final class o {

    /* renamed from: c  reason: collision with root package name */
    private static volatile o f20095c;

    /* renamed from: a  reason: collision with root package name */
    final n f20096a;

    /* renamed from: b  reason: collision with root package name */
    Profile f20097b;

    /* renamed from: d  reason: collision with root package name */
    private final a f20098d;

    o(a aVar, n nVar) {
        af.a(aVar, "localBroadcastManager");
        af.a(nVar, "profileCache");
        this.f20098d = aVar;
        this.f20096a = nVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static o a() {
        if (f20095c == null) {
            synchronized (o.class) {
                try {
                    if (f20095c == null) {
                        f20095c = new o(a.a(g.i()), new n());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f20095c;
    }

    private void a(Profile profile, Profile profile2) {
        Intent intent = new Intent("com.facebook.sdk.ACTION_CURRENT_PROFILE_CHANGED");
        intent.putExtra("com.facebook.sdk.EXTRA_OLD_PROFILE", profile);
        intent.putExtra("com.facebook.sdk.EXTRA_NEW_PROFILE", profile2);
        this.f20098d.a(intent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Profile profile, boolean z) {
        Profile profile2 = this.f20097b;
        this.f20097b = profile;
        if (z) {
            if (profile != null) {
                this.f20096a.a(profile);
            } else {
                this.f20096a.b();
            }
        }
        if (!ae.a(profile2, profile)) {
            a(profile2, profile);
        }
    }
}
