package com.google.android.gms.internal.mlkit_language_id;

import android.content.Context;
import android.content.res.Resources;
import android.os.SystemClock;
import android.support.p001v4.media.session.MediaSessionCompat;
import com.google.android.gms.common.internal.GmsLogger;
import com.google.android.gms.common.internal.LibraryVersion;
import com.google.android.gms.internal.mlkit_language_id.zzy;
import com.google.android.gms.tasks.Task;
import e.m.d.m.o;
import e.m.d.m.p;
import e.m.d.m.x;
import e.m.h.a.d.c;
import e.m.h.a.d.f;
import e.m.h.a.d.l;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import p1727n3.p1807k.p1816e.C26512d;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzcv.class */
public final class zzcv {
    public static final o<?> zza;
    private static List<String> zzb;
    private static boolean zzk = true;
    private static boolean zzl = true;
    private final String zzc;
    private final String zzd;
    private final zzb zze;
    private final l zzf;
    private final Task<String> zzh;
    private final Map<zzaj, Long> zzi = new HashMap();
    private final Map<zzaj, Object> zzj = new HashMap();
    private final Task<String> zzg = f.a().b(zzcu.zza);

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzcv$zza.class */
    public interface zza {
        zzy.zzad.zza zza();
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzcv$zzb.class */
    public interface zzb {
        void zza(zzy.zzad zzadVar);
    }

    static {
        o.b a = o.a(zzcv.class);
        a.a(new x(Context.class, 1, 0));
        a.a(new x(l.class, 1, 0));
        a.a(new x(zzb.class, 1, 0));
        a.c(zzcy.zza);
        zza = a.b();
    }

    private zzcv(Context context, l lVar, zzb zzbVar) {
        this.zzc = context.getPackageName();
        this.zzd = c.a(context);
        this.zzf = lVar;
        this.zze = zzbVar;
        f a = f.a();
        lVar.getClass();
        this.zzh = a.b(zzcx.zza(lVar));
    }

    public static final /* synthetic */ zzcv zza(p pVar) {
        return new zzcv((Context) pVar.a(Context.class), (l) pVar.a(l.class), (zzb) pVar.a(zzb.class));
    }

    public static final String zza() throws Exception {
        return LibraryVersion.f5980c.m38911a("language-id");
    }

    private static List<String> zzb() {
        synchronized (zzcv.class) {
            try {
                List<String> list = zzb;
                if (list != null) {
                    return list;
                }
                C26512d m43225k0 = MediaSessionCompat.m43225k0(Resources.getSystem().getConfiguration());
                zzb = new ArrayList(m43225k0.m1717c());
                for (int i = 0; i < m43225k0.m1717c(); i++) {
                    Locale m1718b = m43225k0.m1718b(i);
                    List<String> list2 = zzb;
                    GmsLogger gmsLogger = c.a;
                    list2.add(m1718b.toLanguageTag());
                }
                return zzb;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zza(zza zzaVar, zzaj zzajVar) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        boolean z = true;
        if (this.zzi.get(zzajVar) != null && elapsedRealtime - this.zzi.get(zzajVar).longValue() <= TimeUnit.SECONDS.toMillis(30L)) {
            z = false;
        }
        if (!z) {
            return;
        }
        this.zzi.put(zzajVar, Long.valueOf(elapsedRealtime));
        zza(zzaVar.zza(), zzajVar);
    }

    public final void zza(zzy.zzad.zza zzaVar, zzaj zzajVar) {
        Object obj = f.b;
        f.a.a.execute(new Runnable(this, zzaVar, zzajVar) { // from class: com.google.android.gms.internal.mlkit_language_id.zzcw
            private final zzcv zza;
            private final zzy.zzad.zza zzb;
            private final zzaj zzc;

            {
                this.zza = this;
                this.zzb = zzaVar;
                this.zzc = zzajVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzb(this.zzb, this.zzc);
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x001c, code lost:
        if ("".equals(r0) != false) goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzb(com.google.android.gms.internal.mlkit_language_id.zzy.zzad.zza r4, com.google.android.gms.internal.mlkit_language_id.zzaj r5) {
        /*
            r3 = this;
            r0 = r4
            com.google.android.gms.internal.mlkit_language_id.zzy$zzbh r0 = r0.zza()
            java.lang.String r0 = r0.zza()
            r6 = r0
            java.lang.String r0 = "NA"
            r1 = r6
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L1f
            r0 = r6
            r7 = r0
            java.lang.String r0 = ""
            r1 = r6
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L24
        L1f:
            java.lang.String r0 = "NA"
            r7 = r0
        L24:
            com.google.android.gms.internal.mlkit_language_id.zzy$zzbh$zza r0 = com.google.android.gms.internal.mlkit_language_id.zzy.zzbh.zzb()
            r1 = r3
            java.lang.String r1 = r1.zzc
            com.google.android.gms.internal.mlkit_language_id.zzy$zzbh$zza r0 = r0.zza(r1)
            r1 = r3
            java.lang.String r1 = r1.zzd
            com.google.android.gms.internal.mlkit_language_id.zzy$zzbh$zza r0 = r0.zzb(r1)
            r1 = r7
            com.google.android.gms.internal.mlkit_language_id.zzy$zzbh$zza r0 = r0.zzd(r1)
            java.util.List r1 = zzb()
            com.google.android.gms.internal.mlkit_language_id.zzy$zzbh$zza r0 = r0.zza(r1)
            r1 = 1
            com.google.android.gms.internal.mlkit_language_id.zzy$zzbh$zza r0 = r0.zzb(r1)
            r6 = r0
            r0 = r3
            com.google.android.gms.tasks.Task<java.lang.String> r0 = r0.zzg
            boolean r0 = r0.m38519s()
            if (r0 == 0) goto L5e
            r0 = r3
            com.google.android.gms.tasks.Task<java.lang.String> r0 = r0.zzg
            java.lang.Object r0 = r0.m38523o()
            java.lang.String r0 = (java.lang.String) r0
            r7 = r0
            goto L68
        L5e:
            com.google.android.gms.common.internal.LibraryVersion r0 = com.google.android.gms.common.internal.LibraryVersion.f5980c
            java.lang.String r1 = "language-id"
            java.lang.String r0 = r0.m38911a(r1)
            r7 = r0
        L68:
            r0 = r6
            r1 = r7
            com.google.android.gms.internal.mlkit_language_id.zzy$zzbh$zza r0 = r0.zzc(r1)
            r6 = r0
            boolean r0 = com.google.android.gms.internal.mlkit_language_id.zzcv.zzl
            if (r0 == 0) goto L9e
            r0 = r3
            com.google.android.gms.tasks.Task<java.lang.String> r0 = r0.zzh
            boolean r0 = r0.m38519s()
            if (r0 == 0) goto L8e
            r0 = r3
            com.google.android.gms.tasks.Task<java.lang.String> r0 = r0.zzh
            java.lang.Object r0 = r0.m38523o()
            java.lang.String r0 = (java.lang.String) r0
            r7 = r0
            goto L97
        L8e:
            r0 = r3
            e.m.h.a.d.l r0 = r0.zzf
            java.lang.String r0 = r0.d()
            r7 = r0
        L97:
            r0 = r6
            r1 = r7
            com.google.android.gms.internal.mlkit_language_id.zzy$zzbh$zza r0 = r0.zze(r1)
        L9e:
            r0 = r4
            r1 = r5
            com.google.android.gms.internal.mlkit_language_id.zzy$zzad$zza r0 = r0.zza(r1)
            r1 = r6
            com.google.android.gms.internal.mlkit_language_id.zzy$zzad$zza r0 = r0.zza(r1)
            r0 = r3
            com.google.android.gms.internal.mlkit_language_id.zzcv$zzb r0 = r0.zze
            r1 = r4
            com.google.android.gms.internal.mlkit_language_id.zzfz r1 = r1.zzg()
            com.google.android.gms.internal.mlkit_language_id.zzeo r1 = (com.google.android.gms.internal.mlkit_language_id.zzeo) r1
            com.google.android.gms.internal.mlkit_language_id.zzy$zzad r1 = (com.google.android.gms.internal.mlkit_language_id.zzy.zzad) r1
            r0.zza(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.mlkit_language_id.zzcv.zzb(com.google.android.gms.internal.mlkit_language_id.zzy$zzad$zza, com.google.android.gms.internal.mlkit_language_id.zzaj):void");
    }
}
