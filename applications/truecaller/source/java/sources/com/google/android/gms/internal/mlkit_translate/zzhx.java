package com.google.android.gms.internal.mlkit_translate;

import android.content.Context;
import com.google.android.gms.internal.mlkit_translate.zzbj;
import com.google.android.gms.internal.mlkit_translate.zzhk;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import e.m.d.m.o;
import e.m.d.m.p;
import e.m.d.m.x;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzhx.class */
public class zzhx {
    public static final zzq<o<?>> zza;
    private static final o<?> zzc;
    private static final o<?> zzd;
    private final Context zzf;
    private final Executor zzg;
    private final zzhf zzh;
    private final zzhs zzi;
    private final zzb zzj;
    private volatile zzu<String, String> zzk;
    private volatile zzu<String, String> zzl;
    private final Map<String, String> zzm;
    private final zzig zzn;
    private final zzih zzo;
    private static final ExecutorService zze = Executors.newSingleThreadExecutor();
    public static final long zzb = TimeUnit.HOURS.toSeconds(12);

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzhx$zza.class */
    public final class zza implements zzim {
        private final String zza;
        private final Date zzb;
        private final zzhl zzc;
        private zzu<String, String> zzd;
        private zzhr zze;

        public zza(String str, Date date, zzhl zzhlVar) {
            zzhx.this = r4;
            this.zza = str;
            this.zzb = date;
            this.zzc = zzhlVar;
        }

        @Override // com.google.android.gms.internal.mlkit_translate.zzim
        public final boolean zza() throws zzie {
            try {
                zzhr zza = zzhx.this.zzi.zza(zzhx.this.zzj.zza(zzhx.this.zzi), zzhx.this.zzh.zzb().zza(), this.zza, zzu.zza(), null, zzu.zza(), this.zzb, "o:a:mlkit:1.0.0", this.zzc).zza();
                this.zze = zza;
                JSONObject zza2 = zza.zza();
                try {
                    this.zzd = zzhx.zzc(zza2);
                    return true;
                } catch (JSONException e) {
                    this.zzc.zzc(zzbj.zzbg.zza.RPC_RETURNED_MALFORMED_RESULT);
                    String.valueOf(zza2).length();
                    return false;
                }
            } catch (zzie e2) {
                this.zzc.zzc(zzbj.zzbg.zza.NO_CONNECTION);
                return false;
            }
        }

        public final zzhr zzb() {
            return this.zze;
        }

        public final zzu<String, String> zzc() {
            return this.zzd;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzhx$zzb.class */
    public interface zzb {
        HttpURLConnection zza(zzhs zzhsVar) throws zzie;
    }

    static {
        o.b a = o.a(zzhx.class);
        a.a(new x(Context.class, 1, 0));
        a.a(new x(zzhf.class, 1, 0));
        a.a(new x(zzih.class, 1, 0));
        a.a(new x(zzhg.class, 1, 0));
        a.c(zzid.zza);
        o<?> b = a.b();
        zzc = b;
        o.b a2 = o.a(zzih.class);
        a2.a(new x(Context.class, 1, 0));
        a2.a(new x(zzhk.zza.class, 1, 0));
        a2.c(zzic.zza);
        o<?> b2 = a2.b();
        zzd = b2;
        zza = zzq.zza(b, b2, zzhf.zza);
    }

    private zzhx(Context context, zzhf zzhfVar, zzih zzihVar, zzhg zzhgVar) {
        this(context, zzhfVar, zze, zzihVar, zzhgVar);
    }

    private zzhx(Context context, zzhf zzhfVar, ExecutorService executorService, zzb zzbVar, zzih zzihVar, zzhg zzhgVar) {
        this.zzm = new TreeMap();
        this.zzf = context;
        this.zzh = zzhfVar;
        this.zzg = executorService;
        this.zzj = zzbVar;
        this.zzo = zzihVar;
        this.zzi = new zzhs(context, zzhgVar.zzc(), zzhgVar.zzb(), "firebase", 5L, 5L, zzihVar);
        this.zzn = new zzig(context);
    }

    private zzhx(Context context, zzhf zzhfVar, ExecutorService executorService, zzih zzihVar, zzhg zzhgVar) {
        this(context, zzhfVar, executorService, zzhw.zza, zzihVar, zzhgVar);
    }

    public static final /* synthetic */ zzih zza(p pVar) {
        return new zzih((Context) pVar.a(Context.class), (zzhk.zza) pVar.a(zzhk.zza.class));
    }

    private final zzu<String, String> zza(Date date, zzhl zzhlVar) throws zzie, InterruptedException {
        try {
            this.zzh.zza();
            zza zzaVar = new zza(this.zzh.zzc(), date, zzhlVar);
            if (!zzil.zza(zzaVar)) {
                zzhlVar.zza(zzbj.zzbg.zza.RPC_EXPONENTIAL_BACKOFF_FAILED);
                return null;
            }
            zzu<String, String> zzc2 = zzaVar.zzc();
            String.valueOf(zzc2).length();
            this.zzn.zza(zzaVar.zzb(), zzhlVar);
            this.zzl = zzc2;
            return zzc2;
        } catch (IOException e) {
            zzhlVar.zza(zzbj.zzbg.zza.UNKNOWN_ERROR);
            return null;
        }
    }

    public static final /* synthetic */ zzhx zzb(p pVar) {
        return new zzhx((Context) pVar.a(Context.class), (zzhf) pVar.a(zzhf.class), (zzih) pVar.a(zzih.class), (zzhg) pVar.a(zzhg.class));
    }

    private final zzu<String, String> zzb(Date date, long j, zzhl zzhlVar) {
        zzhr zza2 = this.zzn.zza(zzhlVar);
        if (zza2 == null) {
            return null;
        }
        JSONObject zza3 = zza2.zza();
        try {
            zzu<String, String> zzc2 = zzc(zza3);
            this.zzl = zzc2;
            zzhlVar.zzc();
            if (!date.after(new Date(TimeUnit.SECONDS.toMillis(j) + zza2.zzb().getTime()))) {
                return zzc2;
            }
            return null;
        } catch (JSONException e) {
            zzhlVar.zzb(zzbj.zzbg.zza.FILE_READ_RETURNED_MALFORMED_DATA);
            String.valueOf(zza3).length();
            return null;
        }
    }

    public static zzu<String, String> zzc(JSONObject jSONObject) throws JSONException {
        String str;
        Iterable<String> iterable = new Iterable(jSONObject) { // from class: com.google.android.gms.internal.mlkit_translate.zzia
            private final JSONObject zza;

            {
                this.zza = jSONObject;
            }

            @Override // java.lang.Iterable
            public final Iterator iterator() {
                Iterator keys;
                keys = this.zza.keys();
                return keys;
            }
        };
        zzt zztVar = new zzt();
        for (String str2 : iterable) {
            try {
                String string = jSONObject.getString(str2);
                if (string == null) {
                    str = null;
                } else if (string.isEmpty()) {
                    str = "";
                } else {
                    StringBuilder sb = new StringBuilder(string.length() + 13);
                    sb.append("{ \"value\": ");
                    sb.append(string);
                    sb.append(" }");
                    str = new JSONObject(sb.toString()).getString("value");
                }
                zztVar.zza(str2, str);
            } catch (JSONException e) {
                String.valueOf(str2).length();
                throw e;
            }
        }
        return zztVar.zza();
    }

    public final /* synthetic */ zzu zza(Date date, long j, zzhl zzhlVar) throws Exception {
        zzu<String, String> zzb2 = zzb(date, j, zzhlVar);
        return zzb2 != null ? zzb2 : zza(date, zzhlVar);
    }

    public final Task<Void> zza(long j) {
        Date date = new Date(System.currentTimeMillis());
        zzhl zzhlVar = new zzhl();
        zzhlVar.zza();
        return Tasks.m38512c(this.zzg, new Callable(this, date, j, zzhlVar) { // from class: com.google.android.gms.internal.mlkit_translate.zzhy
            private final zzhx zza;
            private final Date zzb;
            private final long zzc;
            private final zzhl zzd;

            {
                this.zza = this;
                this.zzb = date;
                this.zzc = j;
                this.zzd = zzhlVar;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zza.zza(this.zzb, this.zzc, this.zzd);
            }
        }).m38527k(this.zzg, new Continuation(this, zzhlVar) { // from class: com.google.android.gms.internal.mlkit_translate.zzib
            private final zzhx zza;
            private final zzhl zzb;

            {
                this.zza = this;
                this.zzb = zzhlVar;
            }

            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task) {
                return this.zza.zza(this.zzb, task);
            }
        }).m38517u(this.zzg, new SuccessContinuation(this) { // from class: com.google.android.gms.internal.mlkit_translate.zzhz
            private final zzhx zza;

            {
                this.zza = this;
            }

            @Override // com.google.android.gms.tasks.SuccessContinuation
            public final Task then(Object obj) {
                return this.zza.zza((Void) obj);
            }
        });
    }

    public final /* synthetic */ Task zza(Void r4) throws Exception {
        zzhl zzhlVar = new zzhl();
        zzhlVar.zza();
        this.zzk = this.zzl;
        zzhlVar.zzb();
        this.zzo.zzg(zzhlVar);
        return Tasks.m38509f(null);
    }

    public final String zza(String str) {
        String str2;
        zzu<String, String> zzuVar = this.zzk;
        if (zzuVar != null) {
            return zzuVar.get(str);
        }
        synchronized (this.zzm) {
            str2 = this.zzm.get(str);
        }
        return str2;
    }

    public final /* synthetic */ Void zza(zzhl zzhlVar, Task task) throws Exception {
        zzhlVar.zzb();
        this.zzo.zzf(zzhlVar);
        if (!task.m38519s()) {
            task.m38524n();
        }
        zzu zzuVar = (zzu) task.m38523o();
        return null;
    }

    public final void zza(int i) {
        Map<String, String> zza2 = zzhv.zza(this.zzf, i);
        synchronized (this.zzm) {
            this.zzm.putAll(zza2);
        }
    }
}
