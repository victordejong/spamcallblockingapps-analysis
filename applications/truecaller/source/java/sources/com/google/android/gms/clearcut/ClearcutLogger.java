package com.google.android.gms.clearcut;

import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.StatusPendingResult;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.clearcut.zzaa;
import com.google.android.gms.internal.clearcut.zze;
import com.google.android.gms.internal.clearcut.zzge;
import com.google.android.gms.internal.clearcut.zzha;
import com.google.android.gms.internal.clearcut.zzj;
import com.google.android.gms.internal.clearcut.zzp;
import com.google.android.gms.internal.clearcut.zzr;
import java.util.TimeZone;
import p193e.p1577m.p1578a.p1642f.p1651c.C24897a;
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/clearcut/ClearcutLogger.class */
public final class ClearcutLogger {

    /* renamed from: m */
    public static final Api.ClientKey<zzj> f5578m;

    /* renamed from: n */
    public static final Api.AbstractClientBuilder<zzj, Api.ApiOptions.NoOptions> f5579n;
    @Deprecated

    /* renamed from: o */
    public static final Api<Api.ApiOptions.NoOptions> f5580o;

    /* renamed from: a */
    public final Context f5581a;

    /* renamed from: b */
    public final String f5582b;

    /* renamed from: c */
    public final int f5583c;

    /* renamed from: d */
    public String f5584d;

    /* renamed from: e */
    public int f5585e;

    /* renamed from: f */
    public String f5586f;

    /* renamed from: g */
    public final boolean f5587g;

    /* renamed from: h */
    public zzge.zzv.zzb f5588h;

    /* renamed from: i */
    public final com.google.android.gms.clearcut.zzb f5589i;

    /* renamed from: j */
    public final Clock f5590j;

    /* renamed from: k */
    public zzc f5591k;

    /* renamed from: l */
    public final zza f5592l;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder.class */
    public class LogEventBuilder {

        /* renamed from: a */
        public int f5593a;

        /* renamed from: b */
        public String f5594b;

        /* renamed from: c */
        public String f5595c;

        /* renamed from: d */
        public zzge.zzv.zzb f5596d;

        /* renamed from: f */
        public final zzha f5598f;

        /* renamed from: e */
        public boolean f5597e = true;

        /* renamed from: g */
        public boolean f5599g = false;

        public LogEventBuilder(byte[] bArr, C24897a c24897a) {
            ClearcutLogger.this = r6;
            this.f5593a = r6.f5585e;
            this.f5594b = r6.f5584d;
            this.f5595c = r6.f5586f;
            this.f5596d = r6.f5588h;
            zzha zzhaVar = new zzha();
            this.f5598f = zzhaVar;
            this.f5595c = r6.f5586f;
            zzhaVar.zzbkc = zzaa.zze(r6.f5581a);
            zzhaVar.zzbjf = r6.f5590j.mo38787c();
            zzhaVar.zzbjg = r6.f5590j.mo38789a();
            zzhaVar.zzbju = TimeZone.getDefault().getOffset(zzhaVar.zzbjf) / 1000;
            if (bArr != null) {
                zzhaVar.zzbjp = bArr;
            }
        }

        @KeepForSdk
        /* renamed from: a */
        public void m39089a() {
            if (!this.f5599g) {
                this.f5599g = true;
                ClearcutLogger clearcutLogger = ClearcutLogger.this;
                zzr zzrVar = new zzr(clearcutLogger.f5582b, clearcutLogger.f5583c, this.f5593a, this.f5594b, this.f5595c, null, clearcutLogger.f5587g, this.f5596d);
                zzha zzhaVar = this.f5598f;
                Api.ClientKey<zzj> clientKey = ClearcutLogger.f5578m;
                zze zzeVar = new zze(zzrVar, zzhaVar, null, null, null, this.f5597e);
                if (ClearcutLogger.this.f5592l.zza(zzeVar)) {
                    ClearcutLogger.this.f5589i.zzb(zzeVar);
                    return;
                }
                Status status = Status.f5722f;
                Preconditions.m38897k(status, "Result must not be null");
                new StatusPendingResult(null).setResult(status);
                return;
            }
            throw new IllegalStateException("do not reuse LogEventBuilder");
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/clearcut/ClearcutLogger$zza.class */
    public interface zza {
        boolean zza(zze zzeVar);
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/clearcut/ClearcutLogger$zzb.class */
    public interface zzb {
        byte[] zza();
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/clearcut/ClearcutLogger$zzc.class */
    public static final class zzc {
    }

    static {
        Api.ClientKey<zzj> clientKey = new Api.ClientKey<>();
        f5578m = clientKey;
        C24897a c24897a = new C24897a();
        f5579n = c24897a;
        f5580o = new Api<>("ClearcutLogger.API", c24897a, clientKey);
    }

    @VisibleForTesting
    public ClearcutLogger(Context context, String str, String str2, boolean z, com.google.android.gms.clearcut.zzb zzbVar, Clock clock, zza zzaVar) {
        int i;
        this.f5585e = -1;
        this.f5588h = zzge.zzv.zzb.DEFAULT;
        this.f5581a = context;
        this.f5582b = context.getPackageName();
        try {
            i = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            Log.wtf("ClearcutLogger", "This can't happen.", e);
            i = 0;
        }
        this.f5583c = i;
        this.f5585e = -1;
        this.f5584d = str;
        this.f5586f = str2;
        this.f5587g = z;
        this.f5589i = zzbVar;
        this.f5590j = clock;
        this.f5591k = new zzc();
        this.f5588h = zzge.zzv.zzb.DEFAULT;
        this.f5592l = zzaVar;
        if (z) {
            Preconditions.m38906b(str2 == null, "can't be anonymous with an upload account");
        }
    }

    @KeepForSdk
    /* renamed from: a */
    public static ClearcutLogger m39091a(Context context, String str) {
        return new ClearcutLogger(context, str, null, true, zze.zzb(context), DefaultClock.f6131a, new zzp(context));
    }

    @KeepForSdk
    /* renamed from: b */
    public final LogEventBuilder m39090b(byte[] bArr) {
        return new LogEventBuilder(bArr, null);
    }
}
