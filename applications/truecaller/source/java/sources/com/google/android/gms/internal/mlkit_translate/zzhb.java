package com.google.android.gms.internal.mlkit_translate;

import com.google.android.gms.internal.mlkit_translate.zzbj;
import com.razorpay.AnalyticsConstants;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import s1.z.c.l;
import u3.c0;
import u3.e0;
import u3.g0;
import u3.j0;
import u3.k0;
import u3.l0;
import u3.p0.c;
import u3.z;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzhb.class */
public final class zzhb {
    private static final c0 zzg = c0.a.b("application/json; charset=utf-8");
    private zzhg zza;
    private final e0 zzb;
    private final zzhk zze;
    private final zzdz zzc = new zzdz();
    private zzhp zzd = null;
    private final String zzf = "https://firebaseinstallations.googleapis.com/v1";

    static {
        c0.a aVar = c0.f;
    }

    public zzhb(zzhg zzhgVar, zzhk zzhkVar) {
        e0.a aVar = new e0.a();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        l.f(timeUnit, "unit");
        aVar.y = c.b("timeout", 10000L, timeUnit);
        l.f(timeUnit, "unit");
        aVar.z = c.b("timeout", 10000L, timeUnit);
        l.f(timeUnit, "unit");
        aVar.A = c.b("timeout", 10000L, timeUnit);
        this.zzb = new e0(aVar);
        this.zza = zzhgVar;
        this.zze = zzhkVar;
    }

    private static long zza(long j, String str) {
        return (Long.parseLong(str.replaceFirst("s$", "")) * 1000) + j;
    }

    private final String zza(z zVar, String str, String str2, zzhl zzhlVar, zzhl zzhlVar2) {
        String str3;
        j0 c = j0.a.c(zzg, str2);
        g0.a aVar = new g0.a();
        aVar.d(zVar);
        aVar.i(str);
        aVar.f(c);
        try {
            k0 execute = this.zzb.a(aVar.b()).execute();
            int i = execute.e;
            zzhlVar2.zza(i);
            if (i >= 200 && i < 300) {
                try {
                    l0 l0Var = execute.h;
                    String s = l0Var.s();
                    l0Var.close();
                    return s;
                } catch (IOException e) {
                    str.length();
                    zzbj.zzbg.zza zzaVar = zzbj.zzbg.zza.RPC_ERROR;
                    zzhlVar2.zza(zzaVar);
                    zzhlVar.zzc(zzaVar);
                    return null;
                }
            }
            str.length();
            try {
                l0 l0Var2 = execute.h;
                str3 = l0Var2.s();
                l0Var2.close();
            } catch (IOException e2) {
                str3 = "<none>";
            }
            String valueOf = String.valueOf(str3);
            if (valueOf.length() != 0) {
                "HTTP Response Body:\n".concat(valueOf);
            } else {
                new String("HTTP Response Body:\n");
            }
            zzbj.zzbg.zza zzaVar2 = zzbj.zzbg.zza.RPC_ERROR;
            zzhlVar2.zza(zzaVar2);
            zzhlVar.zzc(zzaVar2);
            return null;
        } catch (IOException e3) {
            str.length();
            zzhlVar2.zza(zzbj.zzbg.zza.NO_CONNECTION);
            zzhlVar.zzc(zzbj.zzbg.zza.NO_CONNECTION);
            return null;
        }
    }

    /* renamed from: zzb */
    public final boolean zza(zzhc zzhcVar, zzhl zzhlVar) {
        String format = String.format("%s/projects/%s/installations", this.zzf, this.zza.zza());
        z.a aVar = new z.a();
        aVar.a("x-goog-api-key", this.zza.zzb());
        z d = aVar.d();
        String format2 = String.format("{fid: '%s', appId: '%s', authVersion: '%s', sdkVersion: '%s'}", zzhcVar.zza(), this.zza.zzc(), "FIS_v2", "o:a:mlkit:1.0.0");
        long currentTimeMillis = System.currentTimeMillis();
        zzhl zzhlVar2 = new zzhl();
        zzhlVar2.zza();
        String zza = zza(d, format, format2, zzhlVar, zzhlVar2);
        zzhlVar2.zzb();
        try {
            if (zza == null) {
                this.zze.zzd(zzhlVar2);
                return false;
            }
            try {
                zzdx zza2 = zzdz.zza(zza).zza();
                try {
                    String zze = zza2.zzc(AnalyticsConstants.NAME).zze();
                    zzhc zzhcVar2 = new zzhc(zza2.zzc("fid").zze());
                    String zze2 = zza2.zzc("refreshToken").zze();
                    zzdx zzd = zza2.zzd("authToken");
                    String zze3 = zzd.zzc(AnalyticsConstants.TOKEN).zze();
                    String zze4 = zzd.zzc("expiresIn").zze();
                    long zza3 = zza(currentTimeMillis, zze4);
                    String valueOf = String.valueOf(zze);
                    if (valueOf.length() != 0) {
                        "installation name: ".concat(valueOf);
                    } else {
                        new String("installation name: ");
                    }
                    String valueOf2 = String.valueOf(zzhcVar2.zza());
                    if (valueOf2.length() != 0) {
                        "fid: ".concat(valueOf2);
                    } else {
                        new String("fid: ");
                    }
                    String valueOf3 = String.valueOf(zze2);
                    if (valueOf3.length() != 0) {
                        "refresh_token: ".concat(valueOf3);
                    } else {
                        new String("refresh_token: ");
                    }
                    String.valueOf(zzd).length();
                    String valueOf4 = String.valueOf(zze4);
                    if (valueOf4.length() != 0) {
                        "auth token expires in: ".concat(valueOf4);
                    } else {
                        new String("auth token expires in: ");
                    }
                    this.zzd = new zzhp(zzhcVar2, zze2, zze3, zza3);
                    this.zze.zzd(zzhlVar2);
                    return true;
                } catch (ClassCastException | IllegalStateException | NullPointerException e) {
                    String valueOf5 = String.valueOf(zza2);
                    String.valueOf(format).length();
                    zza.length();
                    valueOf5.length();
                    zzbj.zzbg.zza zzaVar = zzbj.zzbg.zza.RPC_RETURNED_INVALID_RESULT;
                    zzhlVar2.zza(zzaVar);
                    zzhlVar.zzc(zzaVar);
                    this.zze.zzd(zzhlVar2);
                    return false;
                }
            } catch (zzeb | IllegalStateException | NullPointerException e2) {
                String.valueOf(format).length();
                zza.length();
                zzbj.zzbg.zza zzaVar2 = zzbj.zzbg.zza.RPC_RETURNED_MALFORMED_RESULT;
                zzhlVar2.zza(zzaVar2);
                zzhlVar.zzc(zzaVar2);
                this.zze.zzd(zzhlVar2);
                return false;
            }
        } catch (Throwable th) {
            this.zze.zzd(zzhlVar2);
            throw th;
        }
    }

    public final zzhp zza() {
        return this.zzd;
    }

    public final boolean zza(zzhl zzhlVar) throws InterruptedException {
        if (this.zzd == null) {
            return false;
        }
        boolean zza = zzil.zza(new zzim(this, zzhlVar) { // from class: com.google.android.gms.internal.mlkit_translate.zzhd
            private final zzhb zza;
            private final zzhl zzb;

            {
                this.zza = this;
                this.zzb = zzhlVar;
            }

            @Override // com.google.android.gms.internal.mlkit_translate.zzim
            public final boolean zza() {
                return this.zza.zzb(this.zzb);
            }
        });
        if (!zza) {
            zzhlVar.zzb(zzbj.zzbg.zza.RPC_EXPONENTIAL_BACKOFF_FAILED);
        }
        return zza;
    }

    public final boolean zzb(zzhl zzhlVar) {
        String format = String.format("%s/projects/%s/installations/%s/authTokens:generate", this.zzf, this.zza.zza(), this.zzd.zza().zza());
        z.a aVar = new z.a();
        String valueOf = String.valueOf(this.zzd.zzb());
        aVar.a("authorization", valueOf.length() != 0 ? "FIS_v2 ".concat(valueOf) : new String("FIS_v2 "));
        aVar.a("x-goog-api-key", this.zza.zzb());
        z d = aVar.d();
        String format2 = String.format("{installation:{sdkVersion:'%s'}}", "o:a:mlkit:1.0.0");
        long currentTimeMillis = System.currentTimeMillis();
        zzhl zzhlVar2 = new zzhl();
        zzhlVar2.zza();
        String zza = zza(d, format, format2, zzhlVar, zzhlVar2);
        zzhlVar2.zzb();
        try {
            if (zza == null) {
                this.zze.zze(zzhlVar2);
                return false;
            }
            try {
                zzdx zza2 = zzdz.zza(zza).zza();
                try {
                    String zze = zza2.zzc(AnalyticsConstants.TOKEN).zze();
                    String zze2 = zza2.zzc("expiresIn").zze();
                    long zza3 = zza(currentTimeMillis, zze2);
                    String valueOf2 = String.valueOf(zze);
                    if (valueOf2.length() != 0) {
                        "refreshed auth token: ".concat(valueOf2);
                    } else {
                        new String("refreshed auth token: ");
                    }
                    String valueOf3 = String.valueOf(zze2);
                    if (valueOf3.length() != 0) {
                        "auth token expires in: ".concat(valueOf3);
                    } else {
                        new String("auth token expires in: ");
                    }
                    this.zzd = new zzhp(this.zzd.zza(), this.zzd.zzb(), zze, zza3);
                    this.zze.zze(zzhlVar2);
                    return true;
                } catch (ClassCastException | IllegalStateException | NullPointerException e) {
                    zzbj.zzbg.zza zzaVar = zzbj.zzbg.zza.RPC_RETURNED_INVALID_RESULT;
                    zzhlVar2.zza(zzaVar);
                    zzhlVar.zzc(zzaVar);
                    String valueOf4 = String.valueOf(zza2);
                    String.valueOf(format).length();
                    zza.length();
                    valueOf4.length();
                    this.zze.zze(zzhlVar2);
                    return false;
                }
            } catch (zzeb e2) {
                String.valueOf(format).length();
                zza.length();
                zzbj.zzbg.zza zzaVar2 = zzbj.zzbg.zza.RPC_RETURNED_MALFORMED_RESULT;
                zzhlVar2.zza(zzaVar2);
                zzhlVar.zzc(zzaVar2);
                this.zze.zze(zzhlVar2);
                return false;
            }
        } catch (Throwable th) {
            this.zze.zze(zzhlVar2);
            throw th;
        }
    }
}
