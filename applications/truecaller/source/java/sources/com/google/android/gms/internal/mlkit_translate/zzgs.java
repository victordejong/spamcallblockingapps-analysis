package com.google.android.gms.internal.mlkit_translate;

import android.content.Context;
import android.content.res.Resources;
import android.support.p001v4.media.session.MediaSessionCompat;
import com.google.android.gms.common.internal.GmsLogger;
import com.google.android.gms.common.internal.LibraryVersion;
import com.google.android.gms.internal.mlkit_translate.zzbj;
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
import p1727n3.p1807k.p1816e.C26512d;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzgs.class */
public final class zzgs {
    public static final o<?> zza;
    private static List<String> zzb;
    private static boolean zzk = true;
    private static boolean zzl = true;
    private final String zzc;
    private final String zzd;
    private final zza zze;
    private final l zzf;
    private final Task<String> zzh;
    private final Map<zzbu, Long> zzi = new HashMap();
    private final Map<zzbu, Object> zzj = new HashMap();
    private final Task<String> zzg = f.a().b(zzgr.zza);

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzgs$zza.class */
    public interface zza {
        void zza(zzbj.zzad zzadVar);
    }

    static {
        o.b a = o.a(zzgs.class);
        a.a(new x(Context.class, 1, 0));
        a.a(new x(l.class, 1, 0));
        a.a(new x(zza.class, 1, 0));
        a.c(zzgv.zza);
        zza = a.b();
    }

    private zzgs(Context context, l lVar, zza zzaVar) {
        this.zzc = context.getPackageName();
        this.zzd = c.a(context);
        this.zzf = lVar;
        this.zze = zzaVar;
        f a = f.a();
        lVar.getClass();
        this.zzh = a.b(zzgu.zza(lVar));
    }

    public static final /* synthetic */ zzgs zza(p pVar) {
        return new zzgs((Context) pVar.a(Context.class), (l) pVar.a(l.class), (zza) pVar.a(zza.class));
    }

    public static final String zza() throws Exception {
        return LibraryVersion.f5980c.m38911a("translate");
    }

    private static List<String> zzb() {
        synchronized (zzgs.class) {
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

    public final void zza(zzbj.zzad.zza zzaVar, zzbu zzbuVar) {
        Object obj = f.b;
        f.a.a.execute(new Runnable(this, zzaVar, zzbuVar) { // from class: com.google.android.gms.internal.mlkit_translate.zzgt
            private final zzgs zza;
            private final zzbj.zzad.zza zzb;
            private final zzbu zzc;

            {
                this.zza = this;
                this.zzb = zzaVar;
                this.zzc = zzbuVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzb(this.zzb, this.zzc);
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x001a, code lost:
        if ("".equals(r0) != false) goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzb(com.google.android.gms.internal.mlkit_translate.zzbj.zzad.zza r4, com.google.android.gms.internal.mlkit_translate.zzbu r5) {
        /*
            r3 = this;
            r0 = r4
            com.google.android.gms.internal.mlkit_translate.zzbj$zzbh r0 = r0.zza()
            java.lang.String r0 = r0.zza()
            r6 = r0
            java.lang.String r0 = "NA"
            r1 = r6
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L1d
            r0 = r6
            r7 = r0
            java.lang.String r0 = ""
            r1 = r6
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L21
        L1d:
            java.lang.String r0 = "NA"
            r7 = r0
        L21:
            com.google.android.gms.internal.mlkit_translate.zzbj$zzbh$zza r0 = com.google.android.gms.internal.mlkit_translate.zzbj.zzbh.zzb()
            r1 = r3
            java.lang.String r1 = r1.zzc
            com.google.android.gms.internal.mlkit_translate.zzbj$zzbh$zza r0 = r0.zza(r1)
            r1 = r3
            java.lang.String r1 = r1.zzd
            com.google.android.gms.internal.mlkit_translate.zzbj$zzbh$zza r0 = r0.zzb(r1)
            r1 = r7
            com.google.android.gms.internal.mlkit_translate.zzbj$zzbh$zza r0 = r0.zzd(r1)
            java.util.List r1 = zzb()
            com.google.android.gms.internal.mlkit_translate.zzbj$zzbh$zza r0 = r0.zza(r1)
            r1 = 1
            com.google.android.gms.internal.mlkit_translate.zzbj$zzbh$zza r0 = r0.zzb(r1)
            r6 = r0
            r0 = r3
            com.google.android.gms.tasks.Task<java.lang.String> r0 = r0.zzg
            boolean r0 = r0.m38519s()
            if (r0 == 0) goto L5b
            r0 = r3
            com.google.android.gms.tasks.Task<java.lang.String> r0 = r0.zzg
            java.lang.Object r0 = r0.m38523o()
            java.lang.String r0 = (java.lang.String) r0
            r7 = r0
            goto L65
        L5b:
            com.google.android.gms.common.internal.LibraryVersion r0 = com.google.android.gms.common.internal.LibraryVersion.f5980c
            java.lang.String r1 = "translate"
            java.lang.String r0 = r0.m38911a(r1)
            r7 = r0
        L65:
            r0 = r6
            r1 = r7
            com.google.android.gms.internal.mlkit_translate.zzbj$zzbh$zza r0 = r0.zzc(r1)
            r6 = r0
            boolean r0 = com.google.android.gms.internal.mlkit_translate.zzgs.zzl
            if (r0 == 0) goto L9b
            r0 = r3
            com.google.android.gms.tasks.Task<java.lang.String> r0 = r0.zzh
            boolean r0 = r0.m38519s()
            if (r0 == 0) goto L8b
            r0 = r3
            com.google.android.gms.tasks.Task<java.lang.String> r0 = r0.zzh
            java.lang.Object r0 = r0.m38523o()
            java.lang.String r0 = (java.lang.String) r0
            r7 = r0
            goto L94
        L8b:
            r0 = r3
            e.m.h.a.d.l r0 = r0.zzf
            java.lang.String r0 = r0.d()
            r7 = r0
        L94:
            r0 = r6
            r1 = r7
            com.google.android.gms.internal.mlkit_translate.zzbj$zzbh$zza r0 = r0.zze(r1)
        L9b:
            r0 = r4
            r1 = r5
            com.google.android.gms.internal.mlkit_translate.zzbj$zzad$zza r0 = r0.zza(r1)
            r1 = r6
            com.google.android.gms.internal.mlkit_translate.zzbj$zzad$zza r0 = r0.zza(r1)
            r0 = r3
            com.google.android.gms.internal.mlkit_translate.zzgs$zza r0 = r0.zze
            r1 = r4
            com.google.android.gms.internal.mlkit_translate.zzlk r1 = r1.zzh()
            com.google.android.gms.internal.mlkit_translate.zzkc r1 = (com.google.android.gms.internal.mlkit_translate.zzkc) r1
            com.google.android.gms.internal.mlkit_translate.zzbj$zzad r1 = (com.google.android.gms.internal.mlkit_translate.zzbj.zzad) r1
            r0.zza(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.mlkit_translate.zzgs.zzb(com.google.android.gms.internal.mlkit_translate.zzbj$zzad$zza, com.google.android.gms.internal.mlkit_translate.zzbu):void");
    }
}
