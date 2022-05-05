package com.google.android.gms.analytics.internal;

import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Pair;
import com.asus.updatesdk.BuildConfig;
import com.google.android.gms.common.internal.b;
import java.util.UUID;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/internal/zzai.class */
public class zzai extends zzd {

    /* renamed from: a  reason: collision with root package name */
    private SharedPreferences f3828a;

    /* renamed from: b  reason: collision with root package name */
    private long f3829b;
    private long c = -1;
    private final zza d = new zza(this, "monitoring", zzlS().zznC(), (byte) 0);

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/internal/zzai$zza.class */
    public final class zza {

        /* renamed from: b  reason: collision with root package name */
        private final String f3831b;
        private final long c;

        private zza(String str, long j) {
            b.a(str);
            b.a(j > 0);
            this.f3831b = str;
            this.c = j;
        }

        /* synthetic */ zza(zzai zzaiVar, String str, long j, byte b2) {
            this(str, j);
        }

        private void a() {
            long a2 = zzai.this.zzlQ().a();
            SharedPreferences.Editor edit = zzai.this.f3828a.edit();
            edit.remove(d());
            edit.remove(zzot());
            edit.putLong(c(), a2);
            edit.commit();
        }

        private long b() {
            return zzai.this.f3828a.getLong(c(), 0L);
        }

        private String c() {
            return String.valueOf(this.f3831b).concat(":start");
        }

        private String d() {
            return String.valueOf(this.f3831b).concat(":count");
        }

        public final void zzbU(String str) {
            if (b() == 0) {
                a();
            }
            String str2 = str;
            if (str == null) {
                str2 = BuildConfig.FLAVOR;
            }
            synchronized (this) {
                long j = zzai.this.f3828a.getLong(d(), 0L);
                if (j <= 0) {
                    SharedPreferences.Editor edit = zzai.this.f3828a.edit();
                    edit.putString(zzot(), str2);
                    edit.putLong(d(), 1L);
                    edit.apply();
                    return;
                }
                boolean z = (UUID.randomUUID().getLeastSignificantBits() & Long.MAX_VALUE) < Long.MAX_VALUE / (j + 1);
                SharedPreferences.Editor edit2 = zzai.this.f3828a.edit();
                if (z) {
                    edit2.putString(zzot(), str2);
                }
                edit2.putLong(d(), j + 1);
                edit2.apply();
            }
        }

        public final Pair<String, Long> zzop() {
            Pair<String, Long> pair;
            long b2 = b();
            long abs = b2 == 0 ? 0L : Math.abs(b2 - zzai.this.zzlQ().a());
            if (abs < this.c) {
                pair = null;
            } else if (abs > this.c * 2) {
                a();
                pair = null;
            } else {
                String string = zzai.this.f3828a.getString(zzot(), null);
                long j = zzai.this.f3828a.getLong(d(), 0L);
                a();
                pair = (string == null || j <= 0) ? null : new Pair<>(string, Long.valueOf(j));
            }
            return pair;
        }

        protected final String zzot() {
            return String.valueOf(this.f3831b).concat(":value");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public zzai(zzf zzfVar) {
        super(zzfVar);
    }

    public void zzbT(String str) {
        zzkN();
        zzma();
        SharedPreferences.Editor edit = this.f3828a.edit();
        if (TextUtils.isEmpty(str)) {
            edit.remove("installation_campaign");
        } else {
            edit.putString("installation_campaign", str);
        }
        if (!edit.commit()) {
            zzbJ("Failed to commit campaign data");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.analytics.internal.zzd
    public void zzkO() {
        this.f3828a = getContext().getSharedPreferences("com.google.android.gms.analytics.prefs", 0);
    }

    public long zzoh() {
        zzkN();
        zzma();
        if (this.f3829b == 0) {
            long j = this.f3828a.getLong("first_run", 0L);
            if (j != 0) {
                this.f3829b = j;
            } else {
                long a2 = zzlQ().a();
                SharedPreferences.Editor edit = this.f3828a.edit();
                edit.putLong("first_run", a2);
                if (!edit.commit()) {
                    zzbJ("Failed to commit first run time");
                }
                this.f3829b = a2;
            }
        }
        return this.f3829b;
    }

    public c zzoi() {
        return new c(zzlQ(), zzoh());
    }

    public long zzoj() {
        zzkN();
        zzma();
        if (this.c == -1) {
            this.c = this.f3828a.getLong("last_dispatch", 0L);
        }
        return this.c;
    }

    public void zzok() {
        zzkN();
        zzma();
        long a2 = zzlQ().a();
        SharedPreferences.Editor edit = this.f3828a.edit();
        edit.putLong("last_dispatch", a2);
        edit.apply();
        this.c = a2;
    }

    public String zzol() {
        String str = null;
        zzkN();
        zzma();
        String string = this.f3828a.getString("installation_campaign", null);
        if (!TextUtils.isEmpty(string)) {
            str = string;
        }
        return str;
    }

    public zza zzom() {
        return this.d;
    }
}
