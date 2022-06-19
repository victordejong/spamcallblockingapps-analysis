package p000;

import android.content.Intent;
import com.facebook.Profile;
/* renamed from: fj0 */
/* loaded from: classes-dex2jar.jar:fj0.class */
public final class fj0 {

    /* renamed from: d */
    public static volatile fj0 f6638d;

    /* renamed from: a */
    public final nf f6639a;

    /* renamed from: b */
    public final ej0 f6640b;

    /* renamed from: c */
    public Profile f6641c;

    public fj0(nf nfVar, ej0 ej0Var) {
        gn0.l(nfVar, "localBroadcastManager");
        gn0.l(ej0Var, "profileCache");
        this.f6639a = nfVar;
        this.f6640b = ej0Var;
    }

    /* renamed from: b */
    public static fj0 m1725b() {
        if (f6638d == null) {
            synchronized (fj0.class) {
                try {
                    if (f6638d == null) {
                        f6638d = new fj0(nf.b(ui0.e()), new ej0());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f6638d;
    }

    /* renamed from: a */
    public Profile m1726a() {
        return this.f6641c;
    }

    /* renamed from: c */
    public boolean m1724c() {
        Profile m2147b = this.f6640b.m2147b();
        if (m2147b != null) {
            m1721f(m2147b, false);
            return true;
        }
        return false;
    }

    /* renamed from: d */
    public final void m1723d(Profile profile, Profile profile2) {
        Intent intent = new Intent("com.facebook.sdk.ACTION_CURRENT_PROFILE_CHANGED");
        intent.putExtra("com.facebook.sdk.EXTRA_OLD_PROFILE", profile);
        intent.putExtra("com.facebook.sdk.EXTRA_NEW_PROFILE", profile2);
        this.f6639a.d(intent);
    }

    /* renamed from: e */
    public void m1722e(Profile profile) {
        m1721f(profile, true);
    }

    /* renamed from: f */
    public final void m1721f(Profile profile, boolean z) {
        Profile profile2 = this.f6641c;
        this.f6641c = profile;
        if (z) {
            ej0 ej0Var = this.f6640b;
            if (profile != null) {
                ej0Var.m2146c(profile);
            } else {
                ej0Var.m2148a();
            }
        }
        if (!fn0.b(profile2, profile)) {
            m1723d(profile2, profile);
        }
    }
}
