package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzcxg;
import com.google.android.gms.internal.ads.zzdal;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzewp.class */
public final class zzewp<R extends zzdal<AdT>, AdT extends zzcxg> implements zzexo<R, zzfcl<R, AdT>> {
    private R zza;
    private final Executor zzb = zzfst.zza();

    public final R zza() {
        return this.zza;
    }

    public final zzfsm<zzfcl<R, AdT>> zzb(zzexp zzexpVar, zzexn<R> zzexnVar, R r) {
        zzdak<R> zza = zzexnVar.zza(zzexpVar.zzb);
        zza.zzh(new zzexu(true));
        R zzf = zza.zzf();
        this.zza = zzf;
        zzcyj zzP = zzf.zzP();
        zzfcl zzfclVar = new zzfcl();
        return zzfsd.zzj(zzfsd.zzi(zzfru.zzw((zzfsm) zzP.zzc()), new zzfrk(this, zzfclVar, zzP) { // from class: com.google.android.gms.internal.ads.zzewn
            private final zzewp zza;
            private final zzfcl zzb;
            private final zzcyj zzc;

            {
                this.zza = this;
                this.zzb = zzfclVar;
                this.zzc = zzP;
            }

            @Override // com.google.android.gms.internal.ads.zzfrk
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final com.google.android.gms.internal.ads.zzfsm zza(java.lang.Object r4) {
                /*
                    r3 = this;
                    r0 = r3
                    com.google.android.gms.internal.ads.zzfcl r0 = r0.zzb
                    r5 = r0
                    r0 = r3
                    com.google.android.gms.internal.ads.zzcyj r0 = r0.zzc
                    r6 = r0
                    r0 = r4
                    com.google.android.gms.internal.ads.zzfal r0 = (com.google.android.gms.internal.ads.zzfal) r0
                    r4 = r0
                    r0 = r5
                    r1 = r4
                    r0.zzb = r1
                    r0 = r4
                    com.google.android.gms.internal.ads.zzfak r0 = r0.zzb
                    java.util.List<com.google.android.gms.internal.ads.zzezz> r0 = r0.zza
                    java.util.Iterator r0 = r0.iterator()
                    r5 = r0
                    r0 = 0
                    r7 = r0
                L24:
                    r0 = r5
                    boolean r0 = r0.hasNext()
                    if (r0 == 0) goto L65
                    r0 = r5
                    java.lang.Object r0 = r0.next()
                    com.google.android.gms.internal.ads.zzezz r0 = (com.google.android.gms.internal.ads.zzezz) r0
                    java.util.List<java.lang.String> r0 = r0.zza
                    java.util.Iterator r0 = r0.iterator()
                    r8 = r0
                L40:
                    r0 = r8
                    boolean r0 = r0.hasNext()
                    if (r0 == 0) goto L24
                    r0 = r8
                    java.lang.Object r0 = r0.next()
                    java.lang.String r0 = (java.lang.String) r0
                    java.lang.String r1 = "FirstPartyRenderer"
                    boolean r0 = r0.contains(r1)
                    if (r0 != 0) goto L5f
                    goto L76
                L5f:
                    r0 = 1
                    r7 = r0
                    goto L40
                L65:
                    r0 = r7
                    if (r0 == 0) goto L76
                    r0 = r6
                    r1 = r4
                    com.google.android.gms.internal.ads.zzfsm r1 = com.google.android.gms.internal.ads.zzfsd.zza(r1)
                    com.google.android.gms.internal.ads.zzfsm r0 = r0.zzd(r1)
                    r4 = r0
                    goto L7b
                L76:
                    r0 = 0
                    com.google.android.gms.internal.ads.zzfsm r0 = com.google.android.gms.internal.ads.zzfsd.zza(r0)
                    r4 = r0
                L7b:
                    r0 = r4
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzewn.zza(java.lang.Object):com.google.android.gms.internal.ads.zzfsm");
            }
        }, this.zzb), new zzfln(zzfclVar) { // from class: com.google.android.gms.internal.ads.zzewo
            private final zzfcl zza;

            {
                this.zza = zzfclVar;
            }

            @Override // com.google.android.gms.internal.ads.zzfln
            public final Object apply(Object obj) {
                zzfcl zzfclVar2 = this.zza;
                zzfclVar2.zzc = (AdT) obj;
                return zzfclVar2;
            }
        }, this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzexo
    public final /* bridge */ /* synthetic */ zzfsm zzc(zzexp zzexpVar, zzexn zzexnVar, Object obj) {
        return zzb(zzexpVar, zzexnVar, null);
    }

    @Override // com.google.android.gms.internal.ads.zzexo
    public final /* bridge */ /* synthetic */ Object zzd() {
        return this.zza;
    }
}
