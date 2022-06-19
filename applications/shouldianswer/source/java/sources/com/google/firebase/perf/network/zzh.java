package com.google.firebase.perf.network;

import com.google.android.gms.internal.firebase-perf.zzam;
import com.google.android.gms.internal.firebase-perf.zzaz;
import com.google.firebase.perf.internal.zzf;
import java.io.IOException;
import okhttp3.AbstractC1966e;
import okhttp3.AbstractC1967f;
import okhttp3.C1955ab;
import okhttp3.C2089s;
import okhttp3.C2104z;
/* loaded from: classes-dex2jar.jar:com/google/firebase/perf/network/zzh.class */
public final class zzh implements AbstractC1967f {
    private final zzaz zzfv;
    private final zzam zzgb;
    private final AbstractC1967f zzgl;
    private final long zzgm;

    public zzh(AbstractC1967f abstractC1967f, zzf zzfVar, zzaz zzazVar, long j) {
        this.zzgl = abstractC1967f;
        this.zzgb = com.google.android.gms.internal.firebase_perf.zzam.zzb(zzfVar);
        this.zzgm = j;
        this.zzfv = zzazVar;
    }

    @Override // okhttp3.AbstractC1967f
    public final void onFailure(AbstractC1966e abstractC1966e, IOException iOException) {
        C2104z mo1837a = abstractC1966e.mo1837a();
        if (mo1837a != null) {
            C2089s m1823a = mo1837a.m1823a();
            if (m1823a != null) {
                this.zzgb.zza(m1823a.m1955a().toString());
            }
            if (mo1837a.m1821b() != null) {
                this.zzgb.zzb(mo1837a.m1821b());
            }
        }
        this.zzgb.zze(this.zzgm);
        this.zzgb.zzh(this.zzfv.zzby());
        zzg.zza(this.zzgb);
        this.zzgl.onFailure(abstractC1966e, iOException);
    }

    @Override // okhttp3.AbstractC1967f
    public final void onResponse(AbstractC1966e abstractC1966e, C1955ab c1955ab) {
        FirebasePerfOkHttpClient.zza(c1955ab, this.zzgb, this.zzgm, this.zzfv.zzby());
        this.zzgl.onResponse(abstractC1966e, c1955ab);
    }
}
