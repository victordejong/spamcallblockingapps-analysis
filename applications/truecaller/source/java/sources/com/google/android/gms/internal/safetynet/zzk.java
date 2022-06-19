package com.google.android.gms.internal.safetynet;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.safetynet.HarmfulAppsData;
import com.google.android.gms.safetynet.SafeBrowsingData;
import com.google.android.gms.safetynet.SafeBrowsingThreat;
import com.google.android.gms.safetynet.SafetyNet;
import com.google.android.gms.safetynet.SafetyNetApi;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/safetynet/zzk.class */
public class zzk implements SafetyNetApi {
    private static final String TAG = "zzk";

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/safetynet/zzk$zza.class */
    public static final class zza implements SafetyNetApi.zza {
        private final Status zzad;
        private final com.google.android.gms.safetynet.zza zzae;

        public zza(Status status, com.google.android.gms.safetynet.zza zzaVar) {
            this.zzad = status;
            this.zzae = zzaVar;
        }

        public final String getJwsResult() {
            com.google.android.gms.safetynet.zza zzaVar = this.zzae;
            if (zzaVar == null) {
                return null;
            }
            return zzaVar.a;
        }

        public final Status getStatus() {
            return this.zzad;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/safetynet/zzk$zzb.class */
    public static abstract class zzb extends com.google.android.gms.internal.safetynet.zzf<SafetyNetApi.zza> {
        public com.google.android.gms.internal.safetynet.zzg zzaf = new zzs(this);

        public zzb(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.common.api.Result, com.google.android.gms.internal.safetynet.zzk$zza] */
        @Override // com.google.android.gms.common.api.internal.BasePendingResult
        public /* synthetic */ Result createFailedResult(Status status) {
            return new zza(status, null);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/safetynet/zzk$zzc.class */
    public static abstract class zzc extends com.google.android.gms.internal.safetynet.zzf<SafetyNetApi.zzc> {
        public com.google.android.gms.internal.safetynet.zzg zzaf = new zzt(this);

        public zzc(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.safetynet.zzk$zzj, com.google.android.gms.common.api.Result] */
        @Override // com.google.android.gms.common.api.internal.BasePendingResult
        public /* synthetic */ Result createFailedResult(Status status) {
            return new zzj(status, false);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/safetynet/zzk$zzd.class */
    public static abstract class zzd extends com.google.android.gms.internal.safetynet.zzf<SafetyNetApi.zzb> {
        public final com.google.android.gms.internal.safetynet.zzg zzaf = new zzu(this);

        public zzd(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.safetynet.zzk$zzg, com.google.android.gms.common.api.Result] */
        @Override // com.google.android.gms.common.api.internal.BasePendingResult
        public /* synthetic */ Result createFailedResult(Status status) {
            return new zzg(status, null);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/safetynet/zzk$zze.class */
    public static abstract class zze extends com.google.android.gms.internal.safetynet.zzf<SafetyNetApi.RecaptchaTokenResult> {
        public com.google.android.gms.internal.safetynet.zzg zzaf = new zzv(this);

        public zze(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.safetynet.zzk$zzh, com.google.android.gms.common.api.Result] */
        @Override // com.google.android.gms.common.api.internal.BasePendingResult
        public /* synthetic */ Result createFailedResult(Status status) {
            return new zzh(status, null);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/safetynet/zzk$zzf.class */
    public static abstract class zzf extends com.google.android.gms.internal.safetynet.zzf<SafetyNetApi.SafeBrowsingResult> {
        public com.google.android.gms.internal.safetynet.zzg zzaf = new zzw(this);

        public zzf(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.safetynet.zzk$zzi, com.google.android.gms.common.api.Result] */
        @Override // com.google.android.gms.common.api.internal.BasePendingResult
        public /* synthetic */ Result createFailedResult(Status status) {
            return new zzi(status, null);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/safetynet/zzk$zzg.class */
    public static final class zzg implements SafetyNetApi.zzb {
        private final Status zzad;
        private final com.google.android.gms.safetynet.zzd zzal;

        public zzg(Status status, com.google.android.gms.safetynet.zzd zzdVar) {
            this.zzad = status;
            this.zzal = zzdVar;
        }

        public final List<HarmfulAppsData> getHarmfulAppsList() {
            com.google.android.gms.safetynet.zzd zzdVar = this.zzal;
            return zzdVar == null ? Collections.emptyList() : Arrays.asList(zzdVar.b);
        }

        public final int getHoursSinceLastScanWithHarmfulApp() {
            com.google.android.gms.safetynet.zzd zzdVar = this.zzal;
            if (zzdVar == null) {
                return -1;
            }
            return zzdVar.c;
        }

        public final long getLastScanTimeMs() {
            com.google.android.gms.safetynet.zzd zzdVar = this.zzal;
            if (zzdVar == null) {
                return 0L;
            }
            return zzdVar.a;
        }

        public final Status getStatus() {
            return this.zzad;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/safetynet/zzk$zzh.class */
    public static final class zzh implements SafetyNetApi.RecaptchaTokenResult {
        private final Status zzad;
        private final com.google.android.gms.safetynet.zzf zzam;

        public zzh(Status status, com.google.android.gms.safetynet.zzf zzfVar) {
            this.zzad = status;
            this.zzam = zzfVar;
        }

        public final Status getStatus() {
            return this.zzad;
        }

        public final String getTokenResult() {
            com.google.android.gms.safetynet.zzf zzfVar = this.zzam;
            if (zzfVar == null) {
                return null;
            }
            return zzfVar.a;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/safetynet/zzk$zzi.class */
    public static final class zzi implements SafetyNetApi.SafeBrowsingResult {
        private Status zzad;
        private final SafeBrowsingData zzan;
        private String zzm;
        private long zzp;
        private byte[] zzq;

        public zzi(Status status, SafeBrowsingData safeBrowsingData) {
            this.zzad = status;
            this.zzan = safeBrowsingData;
            this.zzm = null;
            if (safeBrowsingData != null) {
                this.zzm = safeBrowsingData.a;
                this.zzp = safeBrowsingData.d;
                this.zzq = safeBrowsingData.e;
            } else if (!status.m39042q2()) {
            } else {
                this.zzad = new Status(8, null);
            }
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x005c -> B:11:0x0050). Please submit an issue!!! */
        public final List<SafeBrowsingThreat> getDetectedThreats() {
            ArrayList arrayList = new ArrayList();
            if (this.zzm == null) {
                return arrayList;
            }
            try {
                JSONArray jSONArray = new JSONObject(this.zzm).getJSONArray("matches");
                for (int i = 0; i < jSONArray.length(); i++) {
                    try {
                        arrayList.add(new SafeBrowsingThreat(Integer.parseInt(jSONArray.getJSONObject(i).getString("threat_type"))));
                    } catch (NumberFormatException | JSONException e) {
                    }
                }
            } catch (JSONException e2) {
            }
            return arrayList;
        }

        public final long getLastUpdateTimeMs() {
            return this.zzp;
        }

        public final String getMetadata() {
            return this.zzm;
        }

        public final byte[] getState() {
            return this.zzq;
        }

        public final Status getStatus() {
            return this.zzad;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/safetynet/zzk$zzj.class */
    public static final class zzj implements SafetyNetApi.zzc {
        private Status zzad;
        private boolean zzao;

        public zzj() {
        }

        public zzj(Status status, boolean z) {
            this.zzad = status;
            this.zzao = z;
        }

        public final Status getStatus() {
            return this.zzad;
        }

        public final boolean isVerifyAppsEnabled() {
            Status status = this.zzad;
            if (status == null || !status.m39042q2()) {
                return false;
            }
            return this.zzao;
        }
    }

    public static PendingResult<SafetyNetApi.SafeBrowsingResult> zza(GoogleApiClient googleApiClient, String str, int i, String str2, int... iArr) {
        if (iArr.length != 0) {
            if (TextUtils.isEmpty(str)) {
                throw new IllegalArgumentException("Null or empty uri in lookupUri");
            }
            return googleApiClient.mo38957h(new zzn(googleApiClient, iArr, i, str, str2));
        }
        throw new IllegalArgumentException("Null threatTypes in lookupUri");
    }

    public static PendingResult<SafetyNetApi.zza> zza(GoogleApiClient googleApiClient, byte[] bArr, String str) {
        return googleApiClient.mo38957h(new zzl(googleApiClient, bArr, str));
    }

    public PendingResult<SafetyNetApi.zza> attest(GoogleApiClient googleApiClient, byte[] bArr) {
        return zza(googleApiClient, bArr, null);
    }

    public PendingResult<SafetyNetApi.zzc> enableVerifyApps(GoogleApiClient googleApiClient) {
        return googleApiClient.mo38957h(new zzp(this, googleApiClient));
    }

    public PendingResult<SafetyNetApi.zzc> isVerifyAppsEnabled(GoogleApiClient googleApiClient) {
        return googleApiClient.mo38957h(new zzo(this, googleApiClient));
    }

    /* JADX WARN: Finally extract failed */
    public boolean isVerifyAppsEnabled(Context context) {
        GoogleApiClient.Builder builder = new GoogleApiClient.Builder(context);
        Api<Api.ApiOptions.NoOptions> api = SafetyNet.f6460c;
        Preconditions.m38897k(api, "Api must not be null");
        builder.f5710g.put(api, null);
        Api.AbstractClientBuilder<?, Api.ApiOptions.NoOptions> abstractClientBuilder = api.f5689a;
        Preconditions.m38897k(abstractClientBuilder, "Base client builder must not be null");
        List<Scope> impliedScopes = abstractClientBuilder.getImpliedScopes(null);
        builder.f5705b.addAll(impliedScopes);
        builder.f5704a.addAll(impliedScopes);
        GoogleApiClient m39050b = builder.m39050b();
        try {
            TimeUnit timeUnit = TimeUnit.SECONDS;
            if (!m39050b.mo39001d(3L, timeUnit).m39076p2()) {
                m39050b.mo38999f();
                return false;
            }
            SafetyNetApi.zzc await = isVerifyAppsEnabled(m39050b).await(3L, timeUnit);
            boolean z = false;
            if (await != null) {
                z = false;
                if (await.isVerifyAppsEnabled()) {
                    z = true;
                }
            }
            m39050b.mo38999f();
            return z;
        } catch (Throwable th) {
            m39050b.mo38999f();
            throw th;
        }
    }

    public PendingResult<SafetyNetApi.zzb> listHarmfulApps(GoogleApiClient googleApiClient) {
        return googleApiClient.mo38957h(new zzq(this, googleApiClient));
    }

    public PendingResult<SafetyNetApi.SafeBrowsingResult> lookupUri(GoogleApiClient googleApiClient, String str, String str2, int... iArr) {
        return zza(googleApiClient, str, 1, str2, iArr);
    }

    public PendingResult<SafetyNetApi.SafeBrowsingResult> lookupUri(GoogleApiClient googleApiClient, List<Integer> list, String str) {
        if (list != null) {
            if (TextUtils.isEmpty(str)) {
                throw new IllegalArgumentException("Null or empty uri in lookupUri");
            }
            return googleApiClient.mo38957h(new zzm(this, googleApiClient, list, str, null));
        }
        throw new IllegalArgumentException("Null threatTypes in lookupUri");
    }

    @Override // com.google.android.gms.safetynet.SafetyNetApi
    public PendingResult<SafetyNetApi.RecaptchaTokenResult> verifyWithRecaptcha(GoogleApiClient googleApiClient, String str) {
        if (!TextUtils.isEmpty(str)) {
            return googleApiClient.mo38957h(new zzr(this, googleApiClient, str));
        }
        throw new IllegalArgumentException("Null or empty site key in verifyWithRecaptcha");
    }
}
