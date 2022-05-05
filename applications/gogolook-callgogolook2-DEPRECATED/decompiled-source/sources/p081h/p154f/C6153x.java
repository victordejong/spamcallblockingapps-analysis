package p081h.p154f;

import android.content.Intent;
import androidx.annotation.Nullable;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.facebook.Profile;
import com.facebook.internal.C2408g0;
import com.facebook.internal.C2416h0;
/* renamed from: h.f.x */
/* loaded from: classes-dex2jar.jar:h/f/x.class */
public final class C6153x {

    /* renamed from: d */
    public static volatile C6153x f15298d;

    /* renamed from: a */
    public final LocalBroadcastManager f15299a;

    /* renamed from: b */
    public final C6152w f15300b;

    /* renamed from: c */
    public Profile f15301c;

    public C6153x(LocalBroadcastManager localBroadcastManager, C6152w wVar) {
        C2416h0.m34791a(localBroadcastManager, "localBroadcastManager");
        C2416h0.m34791a(wVar, "profileCache");
        this.f15299a = localBroadcastManager;
        this.f15300b = wVar;
    }

    /* renamed from: c */
    public static C6153x m23681c() {
        if (f15298d == null) {
            synchronized (C6153x.class) {
                try {
                    if (f15298d == null) {
                        f15298d = new C6153x(LocalBroadcastManager.getInstance(C6135n.m23746e()), new C6152w());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f15298d;
    }

    /* renamed from: a */
    public Profile m23686a() {
        return this.f15301c;
    }

    /* renamed from: a */
    public void m23685a(@Nullable Profile profile) {
        m23683a(profile, true);
    }

    /* renamed from: a */
    public final void m23684a(Profile profile, Profile profile2) {
        Intent intent = new Intent("com.facebook.sdk.ACTION_CURRENT_PROFILE_CHANGED");
        intent.putExtra("com.facebook.sdk.EXTRA_OLD_PROFILE", profile);
        intent.putExtra("com.facebook.sdk.EXTRA_NEW_PROFILE", profile2);
        this.f15299a.sendBroadcast(intent);
    }

    /* renamed from: a */
    public final void m23683a(@Nullable Profile profile, boolean z) {
        Profile profile2 = this.f15301c;
        this.f15301c = profile;
        if (z) {
            if (profile != null) {
                this.f15300b.m23688a(profile);
            } else {
                this.f15300b.m23689a();
            }
        }
        if (!C2408g0.m34858a(profile2, profile)) {
            m23684a(profile2, profile);
        }
    }

    /* renamed from: b */
    public boolean m23682b() {
        Profile b = this.f15300b.m23687b();
        if (b == null) {
            return false;
        }
        m23683a(b, false);
        return true;
    }
}
