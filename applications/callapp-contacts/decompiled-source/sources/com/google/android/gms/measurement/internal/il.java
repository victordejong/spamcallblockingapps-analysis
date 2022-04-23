package com.google.android.gms.measurement.internal;

import android.util.Pair;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.internal.measurement.jy;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/il.class */
public final class il extends je {

    /* renamed from: a  reason: collision with root package name */
    public final ea f29845a;

    /* renamed from: b  reason: collision with root package name */
    public final ea f29846b;

    /* renamed from: c  reason: collision with root package name */
    public final ea f29847c;

    /* renamed from: d  reason: collision with root package name */
    public final ea f29848d;
    public final ea e;
    private String g;
    private boolean h;
    private long i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public il(jo joVar) {
        super(joVar);
        ee b2 = this.t.b();
        b2.getClass();
        this.f29845a = new ea(b2, "last_delete_stale", 0L);
        ee b3 = this.t.b();
        b3.getClass();
        this.f29846b = new ea(b3, "backoff", 0L);
        ee b4 = this.t.b();
        b4.getClass();
        this.f29847c = new ea(b4, "last_upload", 0L);
        ee b5 = this.t.b();
        b5.getClass();
        this.f29848d = new ea(b5, "last_upload_attempt", 0L);
        ee b6 = this.t.b();
        b6.getClass();
        this.e = new ea(b6, "midnight_offset", 0L);
    }

    @Deprecated
    private Pair<String, Boolean> b(String str) {
        S_();
        long b2 = this.t.j.b();
        String str2 = this.g;
        if (str2 != null && b2 < this.i) {
            return new Pair<>(str2, Boolean.valueOf(this.h));
        }
        this.i = b2 + this.t.g.a(str, dc.f29481a);
        AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(true);
        try {
            AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(this.t.f29583a);
            this.g = "";
            String id = advertisingIdInfo.getId();
            if (id != null) {
                this.g = id;
            }
            this.h = advertisingIdInfo.isLimitAdTrackingEnabled();
        } catch (Exception e) {
            this.t.c().j.a("Unable to get advertising id", e);
            this.g = "";
        }
        AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(false);
        return new Pair<>(this.g, Boolean.valueOf(this.h));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Pair<String, Boolean> a(String str, f fVar) {
        jy.b();
        return (!this.t.g.d(null, dc.aw) || fVar.b()) ? b(str) : new Pair<>("", Boolean.FALSE);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Deprecated
    public final String a(String str) {
        S_();
        String str2 = (String) b(str).first;
        MessageDigest m = ju.m();
        if (m == null) {
            return null;
        }
        return String.format(Locale.US, "%032X", new BigInteger(1, m.digest(str2.getBytes())));
    }

    @Override // com.google.android.gms.measurement.internal.je
    protected final boolean a() {
        return false;
    }
}
