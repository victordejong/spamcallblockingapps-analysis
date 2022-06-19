package com.google.firebase.perf.network;

import com.google.android.gms.internal.firebase-perf.zzam;
import com.google.android.gms.internal.firebase_perf.zzaz;
import com.google.firebase.perf.internal.zzf;
import java.io.IOException;
import okhttp3.AbstractC1957ac;
import okhttp3.AbstractC1966e;
import okhttp3.AbstractC1967f;
import okhttp3.C1955ab;
import okhttp3.C2089s;
import okhttp3.C2094u;
import okhttp3.C2104z;
/* loaded from: classes-dex2jar.jar:com/google/firebase/perf/network/FirebasePerfOkHttpClient.class */
public class FirebasePerfOkHttpClient {
    private FirebasePerfOkHttpClient() {
    }

    public static void enqueue(AbstractC1966e abstractC1966e, AbstractC1967f abstractC1967f) {
        zzaz zzazVar = new zzaz();
        abstractC1966e.mo1836a(new zzh(abstractC1967f, zzf.zzal(), zzazVar, zzazVar.zzbx()));
    }

    public static C1955ab execute(AbstractC1966e abstractC1966e) {
        zzam zzb = com.google.android.gms.internal.firebase_perf.zzam.zzb(zzf.zzal());
        zzaz zzazVar = new zzaz();
        long zzbx = zzazVar.zzbx();
        try {
            C1955ab mo1833b = abstractC1966e.mo1833b();
            zza(mo1833b, zzb, zzbx, zzazVar.zzby());
            return mo1833b;
        } catch (IOException e) {
            C2104z mo1837a = abstractC1966e.mo1837a();
            if (mo1837a != null) {
                C2089s m1823a = mo1837a.m1823a();
                if (m1823a != null) {
                    zzb.zza(m1823a.m1955a().toString());
                }
                if (mo1837a.m1821b() != null) {
                    zzb.zzb(mo1837a.m1821b());
                }
            }
            zzb.zze(zzbx);
            zzb.zzh(zzazVar.zzby());
            zzg.zza(zzb);
            throw e;
        }
    }

    public static void zza(C1955ab c1955ab, zzam zzamVar, long j, long j2) {
        C2104z m2494a = c1955ab.m2494a();
        if (m2494a == null) {
            return;
        }
        zzamVar.zza(m2494a.m1823a().m1955a().toString());
        zzamVar.zzb(m2494a.m1821b());
        if (m2494a.m1819d() != null) {
            long mo1889b = m2494a.m1819d().mo1889b();
            if (mo1889b != -1) {
                zzamVar.zzd(mo1889b);
            }
        }
        AbstractC1957ac m2486g = c1955ab.m2486g();
        if (m2486g != null) {
            long mo2371b = m2486g.mo2371b();
            if (mo2371b != -1) {
                zzamVar.zzi(mo2371b);
            }
            C2094u mo2372a = m2486g.mo2372a();
            if (mo2372a != null) {
                zzamVar.zzc(mo2372a.toString());
            }
        }
        zzamVar.zzc(c1955ab.m2491b());
        zzamVar.zze(j);
        zzamVar.zzh(j2);
        zzamVar.zzz();
    }
}
