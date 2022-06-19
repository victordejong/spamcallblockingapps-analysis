package com.google.firebase.remoteconfig;

import android.content.Context;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.internal.firebase_remote_config.zzab;
import com.google.android.gms.internal.firebase_remote_config.zzad;
import com.google.android.gms.internal.firebase_remote_config.zzas;
import com.google.android.gms.internal.firebase_remote_config.zzbf;
import com.google.android.gms.internal.firebase_remote_config.zzcx;
import com.google.android.gms.internal.firebase_remote_config.zzcy;
import com.google.android.gms.internal.firebase_remote_config.zzde;
import com.google.android.gms.internal.firebase_remote_config.zzei;
import com.google.android.gms.internal.firebase_remote_config.zzes;
import com.google.android.gms.internal.firebase_remote_config.zzev;
import com.google.android.gms.internal.firebase_remote_config.zzew;
import com.google.android.gms.internal.firebase_remote_config.zzex;
import com.google.android.gms.internal.firebase_remote_config.zzfd;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.FirebaseApp;
import com.google.firebase.abt.FirebaseABTesting;
import com.google.firebase.analytics.connector.AnalyticsConnector;
import com.google.firebase.iid.FirebaseInstanceId;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/firebase/remoteconfig/RemoteConfigComponent.class */
public class RemoteConfigComponent {
    private static final ExecutorService zzju = Executors.newCachedThreadPool();
    private static final Clock zzjv = DefaultClock.getInstance();
    private static final Random zzjw = new Random();
    private final String appId;
    private String zzg;
    private final Context zzja;
    private final FirebaseApp zzjb;
    private final FirebaseABTesting zzjc;
    private final Map<String, FirebaseRemoteConfig> zzjx;
    private final FirebaseInstanceId zzjy;
    private final AnalyticsConnector zzjz;
    private Map<String, String> zzka;

    public RemoteConfigComponent(Context context, FirebaseApp firebaseApp, FirebaseInstanceId firebaseInstanceId, FirebaseABTesting firebaseABTesting, AnalyticsConnector analyticsConnector) {
        this(context, zzju, firebaseApp, firebaseInstanceId, firebaseABTesting, analyticsConnector, new zzfd(context, firebaseApp.getOptions().getApplicationId()));
    }

    private RemoteConfigComponent(Context context, Executor executor, FirebaseApp firebaseApp, FirebaseInstanceId firebaseInstanceId, FirebaseABTesting firebaseABTesting, AnalyticsConnector analyticsConnector, zzfd zzfdVar) {
        this.zzjx = new HashMap();
        this.zzka = new HashMap();
        this.zzg = "https://firebaseremoteconfig.googleapis.com/";
        this.zzja = context;
        this.zzjb = firebaseApp;
        this.zzjy = firebaseInstanceId;
        this.zzjc = firebaseABTesting;
        this.zzjz = analyticsConnector;
        this.appId = firebaseApp.getOptions().getApplicationId();
        Tasks.call(executor, new Callable(this) { // from class: com.google.firebase.remoteconfig.zzo
            private final RemoteConfigComponent zzjt;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzjt = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zzjt.get("firebase");
            }
        });
        zzfdVar.getClass();
        Tasks.call(executor, zzq.zza(zzfdVar));
    }

    private final zzcy zza(String str, zzev zzevVar) {
        zzcy zzce;
        zzde zzdeVar = new zzde(str);
        synchronized (this) {
            zzce = ((zzcx) new zzcx(new zzas(), zzbf.zzbq(), new zzad(this, zzevVar) { // from class: com.google.firebase.remoteconfig.zzp
                private final RemoteConfigComponent zzjt;
                private final zzev zzkb;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zzjt = this;
                    this.zzkb = zzevVar;
                }

                @Override // com.google.android.gms.internal.firebase_remote_config.zzad
                public final void zza(zzab zzabVar) {
                    this.zzjt.zza(this.zzkb, zzabVar);
                }
            }).zzc(this.zzg)).zza(zzdeVar).zzce();
        }
        return zzce;
    }

    public static zzei zza(Context context, String str, String str2, String str3) {
        return zzei.zza(zzju, zzex.zzb(context, String.format("%s_%s_%s_%s.json", "frc", str, str2, str3)));
    }

    private final FirebaseRemoteConfig zza(FirebaseApp firebaseApp, String str, FirebaseABTesting firebaseABTesting, Executor executor, zzei zzeiVar, zzei zzeiVar2, zzei zzeiVar3, zzes zzesVar, zzew zzewVar, zzev zzevVar) {
        FirebaseRemoteConfig firebaseRemoteConfig;
        synchronized (this) {
            if (!this.zzjx.containsKey(str)) {
                Context context = this.zzja;
                if (!str.equals("firebase")) {
                    firebaseABTesting = null;
                }
                FirebaseRemoteConfig firebaseRemoteConfig2 = new FirebaseRemoteConfig(context, firebaseApp, firebaseABTesting, executor, zzeiVar, zzeiVar2, zzeiVar3, zzesVar, zzewVar, zzevVar);
                firebaseRemoteConfig2.zzcm();
                this.zzjx.put(str, firebaseRemoteConfig2);
            }
            firebaseRemoteConfig = this.zzjx.get(str);
        }
        return firebaseRemoteConfig;
    }

    private final zzei zzd(String str, String str2) {
        return zza(this.zzja, this.appId, str, str2);
    }

    public FirebaseRemoteConfig get(String str) {
        FirebaseRemoteConfig zza;
        synchronized (this) {
            zzei zzd = zzd(str, "fetch");
            zzei zzd2 = zzd(str, "activate");
            zzei zzd3 = zzd(str, "defaults");
            zzev zzevVar = new zzev(this.zzja.getSharedPreferences(String.format("%s_%s_%s_%s", "frc", this.appId, str, "settings"), 0));
            zza = zza(this.zzjb, str, this.zzjc, zzju, zzd, zzd2, zzd3, new zzes(this.zzja, this.zzjb.getOptions().getApplicationId(), this.zzjy, this.zzjz, str, zzju, zzjv, zzjw, zzd, zza(this.zzjb.getOptions().getApiKey(), zzevVar), zzevVar), new zzew(zzd2, zzd3), zzevVar);
        }
        return zza;
    }

    public final /* synthetic */ void zza(zzev zzevVar, zzab zzabVar) {
        zzabVar.zza((int) TimeUnit.SECONDS.toMillis(zzevVar.getFetchTimeoutInSeconds()));
        zzabVar.zzb((int) TimeUnit.SECONDS.toMillis(5L));
        synchronized (this) {
            for (Map.Entry<String, String> entry : this.zzka.entrySet()) {
                zzabVar.zzx().zzb(entry.getKey(), entry.getValue());
            }
        }
    }
}
