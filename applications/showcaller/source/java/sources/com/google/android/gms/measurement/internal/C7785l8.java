package com.google.android.gms.measurement.internal;

import android.util.Pair;
import com.google.android.gms.ads.p263v.C5852a;
import com.google.android.gms.internal.measurement.C7382g9;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.Locale;
/* renamed from: com.google.android.gms.measurement.internal.l8 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/l8.class */
public final class C7785l8 extends AbstractC7702e9 {

    /* renamed from: d */
    private String f35434d;

    /* renamed from: e */
    private boolean f35435e;

    /* renamed from: f */
    private long f35436f;

    /* renamed from: g */
    public final C7649a4 f35437g;

    /* renamed from: h */
    public final C7649a4 f35438h;

    /* renamed from: i */
    public final C7649a4 f35439i;

    /* renamed from: j */
    public final C7649a4 f35440j;

    /* renamed from: k */
    public final C7649a4 f35441k;

    public C7785l8(C7819o9 c7819o9) {
        super(c7819o9);
        C7697e4 m6005z = this.f35460a.m6005z();
        m6005z.getClass();
        this.f35437g = new C7649a4(m6005z, "last_delete_stale", 0L);
        C7697e4 m6005z2 = this.f35460a.m6005z();
        m6005z2.getClass();
        this.f35438h = new C7649a4(m6005z2, "backoff", 0L);
        C7697e4 m6005z3 = this.f35460a.m6005z();
        m6005z3.getClass();
        this.f35439i = new C7649a4(m6005z3, "last_upload", 0L);
        C7697e4 m6005z4 = this.f35460a.m6005z();
        m6005z4.getClass();
        this.f35440j = new C7649a4(m6005z4, "last_upload_attempt", 0L);
        C7697e4 m6005z5 = this.f35460a.m6005z();
        m6005z5.getClass();
        this.f35441k = new C7649a4(m6005z5, "midnight_offset", 0L);
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7702e9
    /* renamed from: i */
    protected final boolean mo6003i() {
        return false;
    }

    /* renamed from: k */
    public final Pair<String, Boolean> m6224k(String str, C7704f c7704f) {
        C7382g9.m7385a();
        return (!this.f35460a.m6006y().m6471u(null, C7672c3.f35111y0) || c7704f.m6445f()) ? m6223l(str) : new Pair<>("", Boolean.FALSE);
    }

    @Deprecated
    /* renamed from: l */
    final Pair<String, Boolean> m6223l(String str) {
        mo6113f();
        long mo16806b = this.f35460a.mo6007x().mo16806b();
        String str2 = this.f35434d;
        if (str2 == null || mo16806b >= this.f35436f) {
            this.f35436f = mo16806b + this.f35460a.m6006y().m6475q(str, C7672c3.f35066c);
            C5852a.m17750e(true);
            try {
                C5852a.C5853a m17753b = C5852a.m17753b(this.f35460a.mo6030a());
                this.f35434d = "";
                String m17742a = m17753b.m17742a();
                if (m17742a != null) {
                    this.f35434d = m17742a;
                }
                this.f35435e = m17753b.m17741b();
            } catch (Exception e) {
                this.f35460a.mo6047C().m6188t().m6215b("Unable to get advertising id", e);
                this.f35434d = "";
            }
            C5852a.m17750e(false);
            return new Pair<>(this.f35434d, Boolean.valueOf(this.f35435e));
        }
        return new Pair<>(str2, Boolean.valueOf(this.f35435e));
    }

    @Deprecated
    /* renamed from: m */
    public final String m6222m(String str) {
        mo6113f();
        String str2 = (String) m6223l(str).first;
        MessageDigest m6000A = C7885u9.m6000A();
        if (m6000A == null) {
            return null;
        }
        return String.format(Locale.US, "%032X", new BigInteger(1, m6000A.digest(str2.getBytes())));
    }
}
