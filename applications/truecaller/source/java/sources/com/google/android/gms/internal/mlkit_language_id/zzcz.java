package com.google.android.gms.internal.mlkit_language_id;

import com.google.android.gms.common.internal.GmsLogger;
import e.m.d.m.o;
import e.m.d.m.p;
import e.m.d.m.x;
import e.m.h.a.c.b;
import e.m.h.a.d.e;
import e.m.h.a.d.l;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzcz.class */
public final class zzcz {
    public static final o<?> zza;
    private static final GmsLogger zzb = new GmsLogger("ModelDownloadLogger", "");
    private final zzcv zzc;
    private final b zzd;
    private final l zze;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzcz$zza.class */
    public static class zza extends e<b, zzcz> {
        private final zzcv zza;
        private final l zzb;

        private zza(zzcv zzcvVar, l lVar) {
            this.zza = zzcvVar;
            this.zzb = lVar;
        }

        public /* synthetic */ Object create(Object obj) {
            return new zzcz(this.zza, this.zzb, (b) obj);
        }
    }

    static {
        o.b a = o.a(zza.class);
        a.a(new x(zzcv.class, 1, 0));
        a.a(new x(l.class, 1, 0));
        a.c(zzdb.zza);
        zza = a.b();
    }

    private zzcz(zzcv zzcvVar, l lVar, b bVar) {
        this.zzc = zzcvVar;
        this.zzd = bVar;
        this.zze = lVar;
    }

    public static final /* synthetic */ zza zza(p pVar) {
        return new zza((zzcv) pVar.a(zzcv.class), (l) pVar.a(l.class));
    }
}
