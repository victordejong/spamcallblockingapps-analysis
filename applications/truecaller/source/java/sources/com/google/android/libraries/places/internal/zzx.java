package com.google.android.libraries.places.internal;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.CancellationToken;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Map;
import org.json.JSONObject;
import p193e.p1432d.p1443e.C22188p;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/internal/zzx.class */
public final class zzx {
    private final C22188p zza;
    private final zzal zzb;

    public zzx(C22188p c22188p, zzal zzalVar) {
        this.zza = c22188p;
        this.zzb = zzalVar;
    }

    public final <HttpJsonResponseT extends zzam<Object, ? extends Object>> Task<HttpJsonResponseT> zza(zzaj<Object, ? extends zzdc> zzajVar, Class<HttpJsonResponseT> cls) {
        String zzd = zzajVar.zzd();
        Map<String, String> zzc = zzajVar.zzc();
        CancellationToken zzb = zzajVar.zzb();
        TaskCompletionSource taskCompletionSource = zzb != null ? new TaskCompletionSource(zzb) : new TaskCompletionSource();
        zzab zzabVar = new zzab(this, 0, zzd, (JSONObject) null, new zzaa(this, cls, taskCompletionSource), new zzz(taskCompletionSource), zzc);
        if (zzb != null) {
            zzb.m38539b(zzac.zza(zzabVar));
        }
        this.zza.m8486a(zzabVar);
        return taskCompletionSource.f6493a;
    }

    public final /* synthetic */ void zza(Class cls, TaskCompletionSource taskCompletionSource, JSONObject jSONObject) {
        try {
            try {
                taskCompletionSource.m38515b((zzam) this.zzb.zza(jSONObject.toString(), cls));
            } catch (zzao e) {
                taskCompletionSource.m38516a(new ApiException(new Status(8, e.getMessage())));
            }
        } catch (Error | RuntimeException e2) {
            zzdk.zza(e2);
            throw e2;
        }
    }
}
