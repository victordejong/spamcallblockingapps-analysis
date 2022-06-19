package com.google.android.gms.internal.mlkit_translate;

import android.content.Context;
import com.google.android.gms.clearcut.ClearcutLogger;
import com.google.android.gms.common.internal.GmsLogger;
import com.google.android.gms.internal.mlkit_translate.zzbj;
import com.google.android.gms.internal.mlkit_translate.zzgs;
import e.m.d.m.o;
import e.m.d.m.x;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzgo.class */
public class zzgo implements zzgs.zza {
    public static final o<?> zza;
    private static final GmsLogger zzb = new GmsLogger("ClearcutTransport", "");
    private final ClearcutLogger zzc;

    static {
        o.b a = o.a(zzgo.class);
        a.a(new x(Context.class, 1, 0));
        a.c(zzgn.zza);
        zza = a.b();
    }

    public zzgo(Context context) {
        this.zzc = ClearcutLogger.m39091a(context, "FIREBASE_ML_SDK");
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzgs.zza
    public final void zza(zzbj.zzad zzadVar) {
        GmsLogger gmsLogger = zzb;
        String valueOf = String.valueOf(zzadVar);
        StringBuilder sb = new StringBuilder(valueOf.length() + 30);
        sb.append("Logging FirebaseMlSdkLogEvent ");
        sb.append(valueOf);
        gmsLogger.m38916b("ClearcutTransport", sb.toString());
        try {
            this.zzc.m39090b(zzadVar.zzf()).m39089a();
        } catch (SecurityException e) {
            zzb.m38914d("ClearcutTransport", "Exception thrown from the logging side", e);
        }
    }
}
