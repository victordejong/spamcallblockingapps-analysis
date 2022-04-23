package com.google.android.gms.measurement.internal;

import android.util.Pair;
import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.internal.measurement.zzmj;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzjo.class */
public final class zzjo extends zzkj {

    /* renamed from: d */
    private String f9611d;

    /* renamed from: e */
    private boolean f9612e;

    /* renamed from: f */
    private long f9613f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzjo(zzki zzkiVar) {
        super(zzkiVar);
    }

    @NonNull
    @Deprecated
    @WorkerThread
    /* renamed from: v */
    private final Pair<String, Boolean> m11161v(String str) {
        mo11316e();
        long b = mo11085a().mo14334b();
        if (this.f9611d != null && b < this.f9613f) {
            return new Pair<>(this.f9611d, Boolean.valueOf(this.f9612e));
        }
        this.f9613f = b + m11311l().m10872z(str);
        AdvertisingIdClient.m15182d(true);
        try {
            AdvertisingIdClient.Info b2 = AdvertisingIdClient.m15184b(mo11075f());
            if (b2 != null) {
                this.f9611d = b2.m15176a();
                this.f9612e = b2.m15175b();
            }
            if (this.f9611d == null) {
                this.f9611d = "";
            }
        } catch (Exception e) {
            mo11081c().m11553K().m11539b("Unable to get advertising id", e);
            this.f9611d = "";
        }
        AdvertisingIdClient.m15182d(false);
        return new Pair<>(this.f9611d, Boolean.valueOf(this.f9612e));
    }

    @Override // com.google.android.gms.measurement.internal.zzkj
    /* renamed from: s */
    protected final boolean mo10928s() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    @WorkerThread
    /* renamed from: t */
    public final Pair<String, Boolean> m11163t(String str, zzad zzadVar) {
        return (!zzmj.m11898a() || !m11311l().m10880r(zzat.f8906J0) || zzadVar.m11723o()) ? m11161v(str) : new Pair<>("", Boolean.FALSE);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Deprecated
    @WorkerThread
    /* renamed from: u */
    public final String m11162u(String str) {
        mo11316e();
        String str2 = (String) m11161v(str).first;
        MessageDigest H0 = zzkw.m10988H0();
        if (H0 == null) {
            return null;
        }
        return String.format(Locale.US, "%032X", new BigInteger(1, H0.digest(str2.getBytes())));
    }
}
