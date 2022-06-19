package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdav;
import com.google.android.gms.internal.ads.zzdea;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfad.class */
public final class zzfad<R extends zzdea<AdT>, AdT extends zzdav> implements zzfbc<R, zzffw<R, AdT>> {
    private R zza;
    private final Executor zzb = zzfxh.zzb();

    public final R zza() {
        return this.zza;
    }

    public final zzfxa<zzffw<R, AdT>> zzb(zzfbd zzfbdVar, zzfbb<R> zzfbbVar, R r) {
        zzddz<R> zza = zzfbbVar.zza(zzfbdVar.zzb);
        zza.zzb(new zzfbi(true));
        R zzh = zza.zzh();
        this.zza = zzh;
        final zzdby zzb = zzh.zzb();
        final zzffw zzffwVar = new zzffw();
        return zzfwq.zzm(zzfwq.zzn(zzfwh.zzw(zzb.zzi()), new zzfvx() { // from class: com.google.android.gms.internal.ads.zzfac
            @Override // com.google.android.gms.internal.ads.zzfvx
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final com.google.android.gms.internal.ads.zzfxa zza(java.lang.Object r4) {
                /*
                    r3 = this;
                    r0 = r3
                    com.google.android.gms.internal.ads.zzffw r0 = r5
                    r5 = r0
                    r0 = r3
                    com.google.android.gms.internal.ads.zzdby r0 = r6
                    r6 = r0
                    r0 = r4
                    com.google.android.gms.internal.ads.zzfdz r0 = (com.google.android.gms.internal.ads.zzfdz) r0
                    r4 = r0
                    r0 = r5
                    r1 = r4
                    r0.zzb = r1
                    r0 = r4
                    com.google.android.gms.internal.ads.zzfdy r0 = r0.zzb
                    java.util.List<com.google.android.gms.internal.ads.zzfdn> r0 = r0.zza
                    java.util.Iterator r0 = r0.iterator()
                    r7 = r0
                    r0 = 0
                    r8 = r0
                L25:
                    r0 = r7
                    boolean r0 = r0.hasNext()
                    if (r0 == 0) goto L65
                    r0 = r7
                    java.lang.Object r0 = r0.next()
                    com.google.android.gms.internal.ads.zzfdn r0 = (com.google.android.gms.internal.ads.zzfdn) r0
                    java.util.List<java.lang.String> r0 = r0.zza
                    java.util.Iterator r0 = r0.iterator()
                    r5 = r0
                L42:
                    r0 = r5
                    boolean r0 = r0.hasNext()
                    if (r0 == 0) goto L25
                    r0 = r5
                    java.lang.Object r0 = r0.next()
                    java.lang.String r0 = (java.lang.String) r0
                    java.lang.String r1 = "FirstPartyRenderer"
                    boolean r0 = r0.contains(r1)
                    if (r0 != 0) goto L5f
                    goto L76
                L5f:
                    r0 = 1
                    r8 = r0
                    goto L42
                L65:
                    r0 = r8
                    if (r0 == 0) goto L76
                    r0 = r6
                    r1 = r4
                    com.google.android.gms.internal.ads.zzfxa r1 = com.google.android.gms.internal.ads.zzfwq.zzi(r1)
                    com.google.android.gms.internal.ads.zzfxa r0 = r0.zzh(r1)
                    r4 = r0
                    goto L7b
                L76:
                    r0 = 0
                    com.google.android.gms.internal.ads.zzfxa r0 = com.google.android.gms.internal.ads.zzfwq.zzi(r0)
                    r4 = r0
                L7b:
                    r0 = r4
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfac.zza(java.lang.Object):com.google.android.gms.internal.ads.zzfxa");
            }
        }, this.zzb), new zzfpv() { // from class: com.google.android.gms.internal.ads.zzfab
            @Override // com.google.android.gms.internal.ads.zzfpv
            public final Object apply(Object obj) {
                zzffw zzffwVar2 = zzffw.this;
                zzffwVar2.zzc = (AdT) obj;
                return zzffwVar2;
            }
        }, this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzfbc
    public final /* bridge */ /* synthetic */ zzfxa zzc(zzfbd zzfbdVar, zzfbb zzfbbVar, Object obj) {
        return zzb(zzfbdVar, zzfbbVar, null);
    }

    @Override // com.google.android.gms.internal.ads.zzfbc
    public final /* synthetic */ Object zzd() {
        return this.zza;
    }
}
