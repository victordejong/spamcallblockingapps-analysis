package com.google.android.gms.internal.firebase_remote_config;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.util.Log;
import com.google.android.gms.common.util.AndroidUtilsLight;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.Hex;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.firebase.analytics.connector.AnalyticsConnector;
import com.google.firebase.iid.FirebaseInstanceId;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigClientException;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigServerException;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Random;
import java.util.TimeZone;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzes.class */
public final class zzes {
    public static final long zzla = TimeUnit.HOURS.toSeconds(12);
    private static final int[] zzlb = {2, 4, 8, 16, 32, 64, 128, 256};
    private static final Pattern zzlg = Pattern.compile("^[^:]+:([0-9]+):(android|ios|web):([0-9a-f]+)");
    private final String appId;
    private final Executor executor;
    private final String namespace;
    private final Context zzja;
    private final zzei zzjd;
    private final zzev zzji;
    private final FirebaseInstanceId zzjy;
    private final AnalyticsConnector zzjz;
    private final Clock zzlc;
    private final Random zzld;
    private final zzcy zzle;
    private final String zzlf;

    public zzes(Context context, String str, FirebaseInstanceId firebaseInstanceId, AnalyticsConnector analyticsConnector, String str2, Executor executor, Clock clock, Random random, zzei zzeiVar, zzcy zzcyVar, zzev zzevVar) {
        this.zzja = context;
        this.appId = str;
        this.zzjy = firebaseInstanceId;
        this.zzjz = analyticsConnector;
        this.namespace = str2;
        this.executor = executor;
        this.zzlc = clock;
        this.zzld = random;
        this.zzjd = zzeiVar;
        this.zzle = zzcyVar;
        this.zzji = zzevVar;
        Matcher matcher = zzlg.matcher(str);
        this.zzlf = matcher.matches() ? matcher.group(1) : null;
    }

    private static zzen zza(zzdf zzdfVar, Date date) {
        try {
            zzep zza = zzen.zzct().zza(date);
            Map<String, String> entries = zzdfVar.getEntries();
            if (entries != null) {
                zza.zzd(entries);
            }
            List<zzdd> zzcf = zzdfVar.zzcf();
            if (zzcf != null) {
                zza.zzb(zzcf);
            }
            return zza.zzcv();
        } catch (JSONException e) {
            throw new FirebaseRemoteConfigClientException("Fetch failed: fetch response could not be parsed.", e);
        }
    }

    private static String zza(Context context, String str) {
        try {
            byte[] packageCertificateHashBytes = AndroidUtilsLight.getPackageCertificateHashBytes(context, str);
            if (packageCertificateHashBytes != null) {
                return Hex.bytesToStringUppercase(packageCertificateHashBytes, false);
            }
            String valueOf = String.valueOf(str);
            Log.e("FirebaseRemoteConfig", valueOf.length() != 0 ? "Could not get fingerprint hash for package: ".concat(valueOf) : new String("Could not get fingerprint hash for package: "));
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            String valueOf2 = String.valueOf(str);
            Log.e("FirebaseRemoteConfig", valueOf2.length() != 0 ? "No such package: ".concat(valueOf2) : new String("No such package: "), e);
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0027 A[Catch: FirebaseRemoteConfigException -> 0x004a, TRY_ENTER, TryCatch #0 {FirebaseRemoteConfigException -> 0x004a, blocks: (B:2:0x0000, B:4:0x000d, B:11:0x0027, B:14:0x0030), top: B:19:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x002f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final com.google.android.gms.tasks.Task<com.google.android.gms.internal.firebase_remote_config.zzet> zzb(java.util.Date r5) {
        /*
            r4 = this;
            r0 = r4
            r1 = r5
            com.google.android.gms.internal.firebase_remote_config.zzdf r0 = r0.zzc(r1)     // Catch: com.google.firebase.remoteconfig.FirebaseRemoteConfigException -> L4a
            r6 = r0
            r0 = r6
            java.lang.String r0 = r0.getState()     // Catch: com.google.firebase.remoteconfig.FirebaseRemoteConfigException -> L4a
            if (r0 == 0) goto L21
            r0 = r6
            java.lang.String r0 = r0.getState()     // Catch: com.google.firebase.remoteconfig.FirebaseRemoteConfigException -> L4a
            java.lang.String r1 = "NO_CHANGE"
            boolean r0 = r0.equals(r1)     // Catch: com.google.firebase.remoteconfig.FirebaseRemoteConfigException -> L4a
            if (r0 != 0) goto L1c
            goto L21
        L1c:
            r0 = 0
            r7 = r0
            goto L23
        L21:
            r0 = 1
            r7 = r0
        L23:
            r0 = r7
            if (r0 != 0) goto L2f
            r0 = r5
            com.google.android.gms.internal.firebase_remote_config.zzet r0 = com.google.android.gms.internal.firebase_remote_config.zzet.zzd(r0)     // Catch: com.google.firebase.remoteconfig.FirebaseRemoteConfigException -> L4a
            com.google.android.gms.tasks.Task r0 = com.google.android.gms.tasks.Tasks.forResult(r0)     // Catch: com.google.firebase.remoteconfig.FirebaseRemoteConfigException -> L4a
            return r0
        L2f:
            r0 = r6
            r1 = r5
            com.google.android.gms.internal.firebase_remote_config.zzen r0 = zza(r0, r1)     // Catch: com.google.firebase.remoteconfig.FirebaseRemoteConfigException -> L4a
            r5 = r0
            r0 = r4
            com.google.android.gms.internal.firebase_remote_config.zzei r0 = r0.zzjd     // Catch: com.google.firebase.remoteconfig.FirebaseRemoteConfigException -> L4a
            r1 = r5
            com.google.android.gms.tasks.Task r0 = r0.zzc(r1)     // Catch: com.google.firebase.remoteconfig.FirebaseRemoteConfigException -> L4a
            r1 = r4
            java.util.concurrent.Executor r1 = r1.executor     // Catch: com.google.firebase.remoteconfig.FirebaseRemoteConfigException -> L4a
            com.google.android.gms.tasks.SuccessContinuation r2 = com.google.android.gms.internal.firebase_remote_config.zzeu.zzjk     // Catch: com.google.firebase.remoteconfig.FirebaseRemoteConfigException -> L4a
            com.google.android.gms.tasks.Task r0 = r0.onSuccessTask(r1, r2)     // Catch: com.google.firebase.remoteconfig.FirebaseRemoteConfigException -> L4a
            r5 = r0
            r0 = r5
            return r0
        L4a:
            r5 = move-exception
            r0 = r5
            com.google.android.gms.tasks.Task r0 = com.google.android.gms.tasks.Tasks.forException(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.firebase_remote_config.zzes.zzb(java.util.Date):com.google.android.gms.tasks.Task");
    }

    private final zzdf zzc(Date date) {
        try {
            zzdc zza = new zzcz(new zzda(this.zzle)).zza(this.zzlf, this.namespace, zzcw());
            zzw zzg = zza.zzg();
            zzg.zzr(this.zzji.zzcz());
            zzg.zzb("X-Android-Package", this.zzja.getPackageName());
            zzg.zzb("X-Android-Cert", zza(this.zzja, this.zzja.getPackageName()));
            zzdf zzi = zza.zzi();
            this.zzji.zzbd(zza.zzh().zzq());
            this.zzji.zza(0, zzev.zzlj);
            return zzi;
        } catch (zzaf e) {
            Log.e("FirebaseRemoteConfig", "Fetch failed! Server responded with an error.", e);
            int statusCode = e.getStatusCode();
            if (statusCode == 429 || statusCode == 503 || statusCode == 504) {
                int zzdd = this.zzji.zzda().zzdd() + 1;
                TimeUnit timeUnit = TimeUnit.MINUTES;
                int[] iArr = zzlb;
                long millis = timeUnit.toMillis(iArr[Math.min(zzdd, iArr.length) - 1]);
                this.zzji.zza(zzdd, new Date(date.getTime() + (millis / 2) + this.zzld.nextInt((int) millis)));
            }
            int statusCode2 = e.getStatusCode();
            throw new FirebaseRemoteConfigServerException(statusCode2, String.format("Fetch failed: %s", statusCode2 != 401 ? statusCode2 != 403 ? statusCode2 != 429 ? statusCode2 != 500 ? (statusCode2 == 503 || statusCode2 == 504) ? "The server is unavailable. Please try again later." : "The server returned an unexpected error." : "There was an internal server error." : "You have reached the throttle limit for your project. Please wait before making more requests." : "The user is not authorized to access the project. Please make sure you are using the API key that corresponds to your Firebase project." : "The request did not have the required credentials. Please make sure your google-services.json is valid."));
        } catch (IOException e2) {
            throw new FirebaseRemoteConfigClientException("Fetch failed due to an unexpected error! Check logs for details.", e2);
        }
    }

    private final zzdg zzcw() {
        String id = this.zzjy.getId();
        if (id != null) {
            String token = this.zzjy.getToken();
            zzdg zzdgVar = new zzdg();
            zzdgVar.zzas(id);
            if (token != null) {
                zzdgVar.zzat(token);
            }
            zzdgVar.zzar(this.appId);
            Locale locale = this.zzja.getResources().getConfiguration().locale;
            zzdgVar.zzav(locale.getCountry());
            zzdgVar.zzaw(locale.toString());
            zzdgVar.zzay(Integer.toString(Build.VERSION.SDK_INT));
            zzdgVar.zzba(TimeZone.getDefault().getID());
            try {
                PackageInfo packageInfo = this.zzja.getPackageManager().getPackageInfo(this.zzja.getPackageName(), 0);
                if (packageInfo != null) {
                    zzdgVar.zzau(packageInfo.versionName);
                }
            } catch (PackageManager.NameNotFoundException e) {
            }
            zzdgVar.zzax(this.zzja.getPackageName());
            zzdgVar.zzaz("17.0.0");
            HashMap hashMap = new HashMap();
            AnalyticsConnector analyticsConnector = this.zzjz;
            if (analyticsConnector != null) {
                for (Map.Entry<String, Object> entry : analyticsConnector.getUserProperties(false).entrySet()) {
                    hashMap.put(entry.getKey(), entry.getValue().toString());
                }
            }
            zzdgVar.zza(hashMap);
            return zzdgVar;
        }
        throw new FirebaseRemoteConfigClientException("Fetch request could not be created: Firebase instance id is null.");
    }

    public final Task<zzet> zza(boolean z) {
        return zza(z, this.zzji.getMinimumFetchIntervalInSeconds());
    }

    public final Task<zzet> zza(boolean z, long j) {
        return this.zzjd.zzcp().continueWithTask(this.executor, new Continuation(this, z, j) { // from class: com.google.android.gms.internal.firebase_remote_config.zzer
            private final boolean zzkm;
            private final zzes zzky;
            private final long zzkz;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzky = this;
                this.zzkm = z;
                this.zzkz = j;
            }

            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task) {
                return this.zzky.zza(this.zzkm, this.zzkz, task);
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0058  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ com.google.android.gms.tasks.Task zza(boolean r13, long r14, com.google.android.gms.tasks.Task r16) {
        /*
            r12 = this;
            java.util.Date r0 = new java.util.Date
            r1 = r0
            r2 = r12
            com.google.android.gms.common.util.Clock r2 = r2.zzlc
            long r2 = r2.currentTimeMillis()
            r1.<init>(r2)
            r17 = r0
            r0 = r16
            boolean r0 = r0.isSuccessful()
            if (r0 == 0) goto L61
            r0 = r13
            if (r0 == 0) goto L23
        L1e:
            r0 = 0
            r13 = r0
            goto L54
        L23:
            r0 = r12
            com.google.android.gms.internal.firebase_remote_config.zzev r0 = r0.zzji
            java.util.Date r0 = r0.zzcy()
            r16 = r0
            r0 = r16
            java.util.Date r1 = com.google.android.gms.internal.firebase_remote_config.zzev.zzli
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L3a
            goto L1e
        L3a:
            r0 = r17
            java.util.Date r1 = new java.util.Date
            r2 = r1
            r3 = r16
            long r3 = r3.getTime()
            java.util.concurrent.TimeUnit r4 = java.util.concurrent.TimeUnit.SECONDS
            r5 = r14
            long r4 = r4.toMillis(r5)
            long r3 = r3 + r4
            r2.<init>(r3)
            boolean r0 = r0.before(r1)
            r13 = r0
        L54:
            r0 = r13
            if (r0 == 0) goto L61
            r0 = r17
            com.google.android.gms.internal.firebase_remote_config.zzet r0 = com.google.android.gms.internal.firebase_remote_config.zzet.zze(r0)
            com.google.android.gms.tasks.Task r0 = com.google.android.gms.tasks.Tasks.forResult(r0)
            return r0
        L61:
            r0 = r12
            com.google.android.gms.internal.firebase_remote_config.zzev r0 = r0.zzji
            com.google.android.gms.internal.firebase_remote_config.zzey r0 = r0.zzda()
            java.util.Date r0 = r0.zzde()
            r16 = r0
            r0 = r17
            r1 = r16
            boolean r0 = r0.before(r1)
            if (r0 == 0) goto L7a
            goto L7d
        L7a:
            r0 = 0
            r16 = r0
        L7d:
            r0 = r16
            if (r0 == 0) goto Lb9
            r0 = r16
            long r0 = r0.getTime()
            r14 = r0
            r0 = r17
            long r0 = r0.getTime()
            r18 = r0
            com.google.firebase.remoteconfig.FirebaseRemoteConfigFetchThrottledException r0 = new com.google.firebase.remoteconfig.FirebaseRemoteConfigFetchThrottledException
            r1 = r0
            java.lang.String r2 = "Fetch is throttled. Please wait before calling fetch again: %s"
            r3 = 1
            java.lang.Object[] r3 = new java.lang.Object[r3]
            r4 = r3
            r5 = 0
            java.util.concurrent.TimeUnit r6 = java.util.concurrent.TimeUnit.MILLISECONDS
            r7 = r14
            r8 = r18
            long r7 = r7 - r8
            long r6 = r6.toSeconds(r7)
            java.lang.String r6 = android.text.format.DateUtils.formatElapsedTime(r6)
            r4[r5] = r6
            java.lang.String r2 = java.lang.String.format(r2, r3)
            r3 = r16
            long r3 = r3.getTime()
            r1.<init>(r2, r3)
            com.google.android.gms.tasks.Task r0 = com.google.android.gms.tasks.Tasks.forException(r0)
            return r0
        Lb9:
            r0 = r12
            r1 = r17
            com.google.android.gms.tasks.Task r0 = r0.zzb(r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.firebase_remote_config.zzes.zza(boolean, long, com.google.android.gms.tasks.Task):com.google.android.gms.tasks.Task");
    }
}
