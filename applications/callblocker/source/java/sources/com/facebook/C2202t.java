package com.facebook;

import android.content.Intent;
import androidx.p040h.p041a.C0735a;
import com.facebook.internal.C2079x;
import com.facebook.internal.C2084y;
/* renamed from: com.facebook.t */
/* loaded from: classes-dex2jar.jar:com/facebook/t.class */
public final class C2202t {

    /* renamed from: a */
    private static volatile C2202t f6443a;

    /* renamed from: b */
    private final C0735a f6444b;

    /* renamed from: c */
    private final C2201s f6445c;

    /* renamed from: d */
    private C2198r f6446d;

    C2202t(C0735a c0735a, C2201s c2201s) {
        C2084y.m15417a(c0735a, "localBroadcastManager");
        C2084y.m15417a(c2201s, "profileCache");
        this.f6444b = c0735a;
        this.f6445c = c2201s;
    }

    /* renamed from: a */
    public static C2202t m14958a() {
        if (f6443a == null) {
            synchronized (C2202t.class) {
                try {
                    if (f6443a == null) {
                        f6443a = new C2202t(C0735a.m19534a(C2095j.m15360h()), new C2201s());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f6443a;
    }

    /* renamed from: a */
    private void m14956a(C2198r c2198r, C2198r c2198r2) {
        Intent intent = new Intent("com.facebook.sdk.ACTION_CURRENT_PROFILE_CHANGED");
        intent.putExtra("com.facebook.sdk.EXTRA_OLD_PROFILE", c2198r);
        intent.putExtra("com.facebook.sdk.EXTRA_NEW_PROFILE", c2198r2);
        this.f6444b.m19533a(intent);
    }

    /* renamed from: a */
    private void m14955a(C2198r c2198r, boolean z) {
        C2198r c2198r2 = this.f6446d;
        this.f6446d = c2198r;
        if (z) {
            if (c2198r != null) {
                this.f6445c.m14960a(c2198r);
            } else {
                this.f6445c.m14959b();
            }
        }
        if (!C2079x.m15475a(c2198r2, c2198r)) {
            m14956a(c2198r2, c2198r);
        }
    }

    /* renamed from: a */
    public void m14957a(C2198r c2198r) {
        m14955a(c2198r, true);
    }

    /* renamed from: b */
    public C2198r m14954b() {
        return this.f6446d;
    }

    /* renamed from: c */
    public boolean m14953c() {
        boolean z = false;
        C2198r m14961a = this.f6445c.m14961a();
        if (m14961a != null) {
            m14955a(m14961a, false);
            z = true;
        }
        return z;
    }
}
