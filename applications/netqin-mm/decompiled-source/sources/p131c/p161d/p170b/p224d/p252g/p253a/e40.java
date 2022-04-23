package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzeaf;
import com.google.android.gms.internal.ads.zzecp;
import com.google.android.gms.internal.ads.zzeet;
import com.google.android.gms.internal.ads.zzeex;
import com.google.android.gms.internal.ads.zzehs;
import com.google.android.gms.internal.ads.zzeip;
import com.google.android.gms.internal.ads.zzejm;
import com.google.android.gms.internal.ads.zzejz;
import com.google.android.gms.internal.ads.zzekj;
import java.security.GeneralSecurityException;
/* renamed from: c.d.b.d.g.a.e40 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/e40.class */
public final class e40 extends zzeaf<zzeex, zzeet> {
    public e40(zzecp zzecpVar, Class cls) {
        super(cls);
    }

    @Override // com.google.android.gms.internal.ads.zzeaf
    /* renamed from: a */
    public final /* synthetic */ zzeex mo12955a(zzeip zzeipVar) throws zzekj {
        return zzeex.m12705a(zzeipVar, zzejm.m12419a());
    }

    @Override // com.google.android.gms.internal.ads.zzeaf
    /* renamed from: a */
    public final /* synthetic */ void mo12954a(zzeex zzeexVar) throws GeneralSecurityException {
        zzeex zzeexVar2 = zzeexVar;
        if (zzeexVar2.m12704m() >= 16) {
            zzecp.m12896a(zzeexVar2.m12703n());
            return;
        }
        throw new GeneralSecurityException("key too short");
    }

    @Override // com.google.android.gms.internal.ads.zzeaf
    /* renamed from: b */
    public final /* synthetic */ zzeet mo12953b(zzeex zzeexVar) throws GeneralSecurityException {
        zzeex zzeexVar2 = zzeexVar;
        zzeet.zza p = zzeet.m12711p();
        p.m12708a(0);
        p.m12707a(zzeexVar2.m12703n());
        p.m12706a(zzeip.zzu(zzehs.m12550a(zzeexVar2.m12704m())));
        return (zzeet) ((zzejz) p.mo12342K());
    }
}
