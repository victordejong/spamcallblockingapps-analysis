package p131c.p161d.p170b.p224d.p252g.p253a;

import com.android.volley.Request;
import com.google.android.gms.internal.ads.zzefb;
import com.google.android.gms.internal.ads.zzefc;
import com.google.android.gms.internal.ads.zzefj;
import com.google.android.gms.internal.ads.zzefm;
import com.google.android.gms.internal.ads.zzefv;
import com.google.android.gms.internal.ads.zzejz;
import java.nio.charset.Charset;
import java.security.GeneralSecurityException;
/* renamed from: c.d.b.d.g.a.z20 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/z20.class */
public final class z20 {
    static {
        Charset.forName(Request.DEFAULT_PARAMS_ENCODING);
    }

    /* renamed from: a */
    public static zzefm m26106a(zzefj zzefjVar) {
        zzefm.zzb m = zzefm.m12656m();
        m.m12640a(zzefjVar.m12670m());
        for (zzefj.zzb zzbVar : zzefjVar.m12669n()) {
            zzefm.zza.C10496zza m2 = zzefm.zza.m12646m();
            m2.m12641a(zzbVar.m12663p().m12690m());
            m2.m12643a(zzbVar.m12666m());
            m2.m12642a(zzbVar.m12665n());
            m2.m12644a(zzbVar.m12662q());
            m.m12639a((zzefm.zza) ((zzejz) m2.mo12342K()));
        }
        return (zzefm) ((zzejz) m.mo12342K());
    }

    /* renamed from: b */
    public static void m26105b(zzefj zzefjVar) throws GeneralSecurityException {
        int m = zzefjVar.m12670m();
        int i = 0;
        boolean z = false;
        boolean z2 = true;
        for (zzefj.zzb zzbVar : zzefjVar.m12669n()) {
            if (zzbVar.m12666m() == zzefc.ENABLED) {
                if (!zzbVar.m12664o()) {
                    throw new GeneralSecurityException(String.format("key %d has no key data", Integer.valueOf(zzbVar.m12662q())));
                } else if (zzbVar.m12665n() == zzefv.UNKNOWN_PREFIX) {
                    throw new GeneralSecurityException(String.format("key %d has unknown prefix", Integer.valueOf(zzbVar.m12662q())));
                } else if (zzbVar.m12666m() != zzefc.UNKNOWN_STATUS) {
                    z = z;
                    if (zzbVar.m12662q() == m) {
                        if (!z) {
                            z = true;
                        } else {
                            throw new GeneralSecurityException("keyset contains multiple primary keys");
                        }
                    }
                    if (zzbVar.m12663p().m12688o() != zzefb.zza.ASYMMETRIC_PUBLIC) {
                        z2 = false;
                    }
                    i++;
                } else {
                    throw new GeneralSecurityException(String.format("key %d has unknown status", Integer.valueOf(zzbVar.m12662q())));
                }
            }
        }
        if (i == 0) {
            throw new GeneralSecurityException("keyset must contain at least one ENABLED key");
        } else if (!z && !z2) {
            throw new GeneralSecurityException("keyset doesn't contain a valid primary key");
        }
    }
}
