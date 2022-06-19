package com.google.android.gms.measurement.internal;

import android.util.Pair;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.internal.measurement.C13620jy;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.Locale;
/* renamed from: com.google.android.gms.measurement.internal.il */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/il.class */
public final class C14080il extends AbstractC14100je {

    /* renamed from: a */
    public final C13960ea f51896a;

    /* renamed from: b */
    public final C13960ea f51897b;

    /* renamed from: c */
    public final C13960ea f51898c;

    /* renamed from: d */
    public final C13960ea f51899d;

    /* renamed from: e */
    public final C13960ea f51900e;

    /* renamed from: g */
    private String f51901g;

    /* renamed from: h */
    private boolean f51902h;

    /* renamed from: i */
    private long f51903i;

    public C14080il(C14110jo c14110jo) {
        super(c14110jo);
        C13964ee m11991b = this.f51637t.m11991b();
        m11991b.getClass();
        this.f51896a = new C13960ea(m11991b, "last_delete_stale", 0L);
        C13964ee m11991b2 = this.f51637t.m11991b();
        m11991b2.getClass();
        this.f51897b = new C13960ea(m11991b2, "backoff", 0L);
        C13964ee m11991b3 = this.f51637t.m11991b();
        m11991b3.getClass();
        this.f51898c = new C13960ea(m11991b3, "last_upload", 0L);
        C13964ee m11991b4 = this.f51637t.m11991b();
        m11991b4.getClass();
        this.f51899d = new C13960ea(m11991b4, "last_upload_attempt", 0L);
        C13964ee m11991b5 = this.f51637t.m11991b();
        m11991b5.getClass();
        this.f51900e = new C13960ea(m11991b5, "midnight_offset", 0L);
    }

    @Deprecated
    /* renamed from: b */
    private Pair<String, Boolean> m11728b(String str) {
        mo11884S_();
        long mo19038b = this.f51637t.f51532j.mo19038b();
        String str2 = this.f51901g;
        if (str2 == null || mo19038b >= this.f51903i) {
            this.f51903i = mo19038b + this.f51637t.f51529g.m12069a(str, C13935dc.f51304a);
            AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(true);
            try {
                AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(this.f51637t.f51523a);
                this.f51901g = "";
                String id = advertisingIdInfo.getId();
                if (id != null) {
                    this.f51901g = id;
                }
                this.f51902h = advertisingIdInfo.isLimitAdTrackingEnabled();
            } catch (Exception e) {
                this.f51637t.mo11661c().f51402j.m12091a("Unable to get advertising id", e);
                this.f51901g = "";
            }
            AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(false);
            return new Pair<>(this.f51901g, Boolean.valueOf(this.f51902h));
        }
        return new Pair<>(str2, Boolean.valueOf(this.f51902h));
    }

    /* renamed from: a */
    public final Pair<String, Boolean> m11729a(String str, C13987f c13987f) {
        C13620jy.m12411b();
        return (!this.f51637t.f51529g.m12061d(null, C13935dc.f51335aw) || c13987f.m11962b()) ? m11728b(str) : new Pair<>("", Boolean.FALSE);
    }

    @Deprecated
    /* renamed from: a */
    public final String m11730a(String str) {
        mo11884S_();
        String str2 = (String) m11728b(str).first;
        MessageDigest m11553m = C14116ju.m11553m();
        if (m11553m == null) {
            return null;
        }
        return String.format(Locale.US, "%032X", new BigInteger(1, m11553m.digest(str2.getBytes())));
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC14100je
    /* renamed from: a */
    protected final boolean mo11531a() {
        return false;
    }
}
