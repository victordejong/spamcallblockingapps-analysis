package com.google.android.gms.clearcut;

import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.PendingResults;
import com.google.android.gms.common.api.Status;
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
import com.google.android.gms.phenotype.ExperimentTokens;
import java.util.ArrayList;
import java.util.TimeZone;
import p131c.p161d.p170b.p224d.p237c.C3241a;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/clearcut/ClearcutLogger.class */
public final class ClearcutLogger {

    /* renamed from: n */
    public static final Api.AbstractClientBuilder<zzj, Api.ApiOptions.NoOptions> f22966n;
    @Deprecated

    /* renamed from: o */
    public static final Api<Api.ApiOptions.NoOptions> f22967o;

    /* renamed from: a */
    public final Context f22969a;

    /* renamed from: b */
    public final String f22970b;

    /* renamed from: c */
    public final int f22971c;

    /* renamed from: d */
    public String f22972d;

    /* renamed from: e */
    public int f22973e;

    /* renamed from: f */
    public String f22974f;

    /* renamed from: g */
    public final boolean f22975g;

    /* renamed from: h */
    public zzge.zzv.zzb f22976h;

    /* renamed from: i */
    public final com.google.android.gms.clearcut.zzb f22977i;

    /* renamed from: j */
    public final Clock f22978j;

    /* renamed from: k */
    public zzc f22979k = new zzc();

    /* renamed from: l */
    public final zza f22980l;

    /* renamed from: m */
    public static final Api.ClientKey<zzj> f22965m = new Api.ClientKey<>();

    /* renamed from: p */
    public static final ExperimentTokens[] f22968p = new ExperimentTokens[0];

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder.class */
    public class LogEventBuilder {

        /* renamed from: a */
        public int f22981a;

        /* renamed from: b */
        public String f22982b;

        /* renamed from: c */
        public String f22983c;

        /* renamed from: d */
        public String f22984d;

        /* renamed from: e */
        public zzge.zzv.zzb f22985e;

        /* renamed from: f */
        public boolean f22986f;

        /* renamed from: g */
        public final zzha f22987g;

        /* renamed from: h */
        public boolean f22988h;

        public LogEventBuilder(ClearcutLogger clearcutLogger, byte[] bArr) {
            this(bArr, (zzb) null);
        }

        public /* synthetic */ LogEventBuilder(ClearcutLogger clearcutLogger, byte[] bArr, C3241a aVar) {
            this(clearcutLogger, bArr);
        }

        public LogEventBuilder(byte[] bArr, zzb zzbVar) {
            this.f22981a = ClearcutLogger.this.f22973e;
            this.f22982b = ClearcutLogger.this.f22972d;
            this.f22983c = ClearcutLogger.this.f22974f;
            ClearcutLogger clearcutLogger = ClearcutLogger.this;
            this.f22984d = null;
            this.f22985e = clearcutLogger.f22976h;
            this.f22986f = true;
            this.f22987g = new zzha();
            this.f22988h = false;
            this.f22983c = ClearcutLogger.this.f22974f;
            this.f22984d = null;
            this.f22987g.f29319v = zzaa.m10872a(ClearcutLogger.this.f22969a);
            this.f22987g.f29300c = ClearcutLogger.this.f22978j.mo17091b();
            this.f22987g.f29301d = ClearcutLogger.this.f22978j.mo17092a();
            zzha zzhaVar = this.f22987g;
            zzc unused = ClearcutLogger.this.f22979k;
            zzhaVar.f29313p = TimeZone.getDefault().getOffset(this.f22987g.f29300c) / 1000;
            if (bArr != null) {
                this.f22987g.f29308k = bArr;
            }
        }

        @KeepForSdk
        /* renamed from: a */
        public void m17836a() {
            if (!this.f22988h) {
                this.f22988h = true;
                zze zzeVar = new zze(new zzr(ClearcutLogger.this.f22970b, ClearcutLogger.this.f22971c, this.f22981a, this.f22982b, this.f22983c, this.f22984d, ClearcutLogger.this.f22975g, this.f22985e), this.f22987g, null, null, ClearcutLogger.m17850a((ArrayList<Integer>) null), null, ClearcutLogger.m17850a((ArrayList<Integer>) null), null, null, this.f22986f);
                if (ClearcutLogger.this.f22980l.mo10539a(zzeVar)) {
                    ClearcutLogger.this.f22977i.mo10673a(zzeVar);
                } else {
                    PendingResults.m17753a(Status.f23076e, null);
                }
            } else {
                throw new IllegalStateException("do not reuse LogEventBuilder");
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/clearcut/ClearcutLogger$zza.class */
    public interface zza {
        /* renamed from: a */
        boolean mo10539a(zze zzeVar);
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/clearcut/ClearcutLogger$zzb.class */
    public interface zzb {
        byte[] zza();
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/clearcut/ClearcutLogger$zzc.class */
    public static final class zzc {
    }

    static {
        C3241a aVar = new C3241a();
        f22966n = aVar;
        f22967o = new Api<>("ClearcutLogger.API", aVar, f22965m);
    }

    @VisibleForTesting
    public ClearcutLogger(Context context, int i, String str, String str2, String str3, boolean z, com.google.android.gms.clearcut.zzb zzbVar, Clock clock, zzc zzcVar, zza zzaVar) {
        this.f22973e = -1;
        this.f22976h = zzge.zzv.zzb.DEFAULT;
        this.f22969a = context;
        this.f22970b = context.getPackageName();
        this.f22971c = m17853a(context);
        this.f22973e = -1;
        this.f22972d = str;
        this.f22974f = str2;
        this.f22975g = z;
        this.f22977i = zzbVar;
        this.f22978j = clock;
        this.f22976h = zzge.zzv.zzb.DEFAULT;
        this.f22980l = zzaVar;
        if (z) {
            Preconditions.m17283a(str2 == null, "can't be anonymous with an upload account");
        }
    }

    /* renamed from: a */
    public static int m17853a(Context context) {
        int i = 0;
        try {
            i = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            Log.wtf("ClearcutLogger", "This can't happen.", e);
        }
        return i;
    }

    @KeepForSdk
    /* renamed from: a */
    public static ClearcutLogger m17852a(Context context, String str) {
        return new ClearcutLogger(context, -1, str, null, null, true, zze.m10674a(context), DefaultClock.m17089d(), null, new zzp(context));
    }

    /* renamed from: a */
    public static int[] m17850a(ArrayList<Integer> arrayList) {
        if (arrayList == null) {
            return null;
        }
        int[] iArr = new int[arrayList.size()];
        int size = arrayList.size();
        int i = 0;
        int i2 = 0;
        while (i < size) {
            Integer num = arrayList.get(i);
            i++;
            iArr[i2] = num.intValue();
            i2++;
        }
        return iArr;
    }

    @KeepForSdk
    /* renamed from: a */
    public final LogEventBuilder m17849a(byte[] bArr) {
        return new LogEventBuilder(this, bArr, (C3241a) null);
    }
}
