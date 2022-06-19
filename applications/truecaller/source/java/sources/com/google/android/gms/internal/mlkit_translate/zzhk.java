package com.google.android.gms.internal.mlkit_translate;

import android.content.Context;
import android.content.res.Resources;
import android.support.p001v4.media.session.MediaSessionCompat;
import com.google.android.gms.common.internal.GmsLogger;
import com.google.android.gms.internal.mlkit_translate.zzbj;
import e.m.h.a.d.c;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import p1727n3.p1807k.p1816e.C26512d;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzhk.class */
public class zzhk {
    private static ExecutorService zza = Executors.newSingleThreadExecutor();
    private static List<String> zzb;
    private final zza zzc;
    private final Context zzd;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzhk$zza.class */
    public interface zza {
        void zza(zzbj.zzad zzadVar);
    }

    public zzhk(Context context, zza zzaVar) {
        this.zzd = context;
        this.zzc = zzaVar;
    }

    private static List<String> zza() {
        synchronized (zzhk.class) {
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

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0027, code lost:
        if ("".equals(r0) != false) goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ void zza(com.google.android.gms.internal.mlkit_translate.zzbj.zzad.zza r4, java.lang.String r5, com.google.android.gms.internal.mlkit_translate.zzbu r6) {
        /*
            r3 = this;
            r0 = r3
            android.content.Context r0 = r0.zzd
            java.lang.String r0 = r0.getPackageName()
            r7 = r0
            r0 = r4
            com.google.android.gms.internal.mlkit_translate.zzbj$zzbh r0 = r0.zza()
            java.lang.String r0 = r0.zza()
            r8 = r0
            java.lang.String r0 = "NA"
            r1 = r8
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L2a
            r0 = r8
            r9 = r0
            java.lang.String r0 = ""
            r1 = r8
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L2e
        L2a:
            java.lang.String r0 = "NA"
            r9 = r0
        L2e:
            com.google.android.gms.internal.mlkit_translate.zzbj$zzbh$zza r0 = com.google.android.gms.internal.mlkit_translate.zzbj.zzbh.zzb()
            r1 = r7
            com.google.android.gms.internal.mlkit_translate.zzbj$zzbh$zza r0 = r0.zza(r1)
            r1 = r5
            com.google.android.gms.internal.mlkit_translate.zzbj$zzbh$zza r0 = r0.zzb(r1)
            r1 = r9
            com.google.android.gms.internal.mlkit_translate.zzbj$zzbh$zza r0 = r0.zzd(r1)
            java.util.List r1 = zza()
            com.google.android.gms.internal.mlkit_translate.zzbj$zzbh$zza r0 = r0.zza(r1)
            java.lang.String r1 = "o:a:mlkit:1.0.0"
            com.google.android.gms.internal.mlkit_translate.zzbj$zzbh$zza r0 = r0.zzc(r1)
            com.google.android.gms.internal.mlkit_translate.zzlk r0 = r0.zzh()
            com.google.android.gms.internal.mlkit_translate.zzkc r0 = (com.google.android.gms.internal.mlkit_translate.zzkc) r0
            com.google.android.gms.internal.mlkit_translate.zzbj$zzbh r0 = (com.google.android.gms.internal.mlkit_translate.zzbj.zzbh) r0
            r5 = r0
            r0 = r4
            r1 = r6
            com.google.android.gms.internal.mlkit_translate.zzbj$zzad$zza r0 = r0.zza(r1)
            r1 = r5
            com.google.android.gms.internal.mlkit_translate.zzbj$zzad$zza r0 = r0.zza(r1)
            r0 = r3
            com.google.android.gms.internal.mlkit_translate.zzhk$zza r0 = r0.zzc
            r1 = r4
            com.google.android.gms.internal.mlkit_translate.zzlk r1 = r1.zzh()
            com.google.android.gms.internal.mlkit_translate.zzkc r1 = (com.google.android.gms.internal.mlkit_translate.zzkc) r1
            com.google.android.gms.internal.mlkit_translate.zzbj$zzad r1 = (com.google.android.gms.internal.mlkit_translate.zzbj.zzad) r1
            r0.zza(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.mlkit_translate.zzhk.zza(com.google.android.gms.internal.mlkit_translate.zzbj$zzad$zza, java.lang.String, com.google.android.gms.internal.mlkit_translate.zzbu):void");
    }

    public final void zza(zzbu zzbuVar, zzhl zzhlVar) {
        zza.execute(new Runnable(this, zzbj.zzad.zzb().zza(zzhlVar.zzd()), c.a(this.zzd), zzbuVar) { // from class: com.google.android.gms.internal.mlkit_translate.zzhj
            private final zzhk zza;
            private final zzbj.zzad.zza zzb;
            private final String zzc;
            private final zzbu zzd;

            {
                this.zza = this;
                this.zzb = zza2;
                this.zzc = a;
                this.zzd = zzbuVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zza(this.zzb, this.zzc, this.zzd);
            }
        });
    }

    public final void zza(zzhl zzhlVar) {
        zza(zzbu.INSTALLATION_ID_INIT, zzhlVar);
    }

    public final void zzb(zzhl zzhlVar) {
        zza(zzbu.INSTALLATION_ID_REGISTER_NEW_ID, zzhlVar);
    }

    public final void zzc(zzhl zzhlVar) {
        zza(zzbu.INSTALLATION_ID_REFRESH_TEMPORARY_TOKEN, zzhlVar);
    }

    public final void zzd(zzhl zzhlVar) {
        zza(zzbu.INSTALLATION_ID_FIS_CREATE_INSTALLATION, zzhlVar);
    }

    public final void zze(zzhl zzhlVar) {
        zza(zzbu.INSTALLATION_ID_FIS_GENERATE_AUTH_TOKEN, zzhlVar);
    }
}
