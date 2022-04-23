package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzeaf;
import com.google.android.gms.internal.ads.zzecb;
import com.google.android.gms.internal.ads.zzeeh;
import com.google.android.gms.internal.ads.zzeel;
import com.google.android.gms.internal.ads.zzeem;
import com.google.android.gms.internal.ads.zzegy;
import com.google.android.gms.internal.ads.zzeip;
import com.google.android.gms.internal.ads.zzejm;
import com.google.android.gms.internal.ads.zzejz;
import com.google.android.gms.internal.ads.zzekj;
import java.security.GeneralSecurityException;
import java.security.KeyPair;
import java.security.interfaces.ECPrivateKey;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECPoint;
/* renamed from: c.d.b.d.g.a.v30 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/v30.class */
public final class v30 extends zzeaf<zzeeh, zzeel> {
    public v30(zzecb zzecbVar, Class cls) {
        super(cls);
    }

    @Override // com.google.android.gms.internal.ads.zzeaf
    /* renamed from: a */
    public final /* synthetic */ zzeeh mo12955a(zzeip zzeipVar) throws zzekj {
        return zzeeh.m12769a(zzeipVar, zzejm.m12419a());
    }

    @Override // com.google.android.gms.internal.ads.zzeaf
    /* renamed from: a */
    public final /* synthetic */ void mo12954a(zzeeh zzeehVar) throws GeneralSecurityException {
        y30.m26143a(zzeehVar.m12768m());
    }

    @Override // com.google.android.gms.internal.ads.zzeaf
    /* renamed from: b */
    public final /* synthetic */ zzeel mo12953b(zzeeh zzeehVar) throws GeneralSecurityException {
        zzeeh zzeehVar2 = zzeehVar;
        KeyPair a = zzegy.m12564a(zzegy.m12568a(y30.m26142a(zzeehVar2.m12768m().m12766m().m12726m())));
        ECPublicKey eCPublicKey = (ECPublicKey) a.getPublic();
        ECPrivateKey eCPrivateKey = (ECPrivateKey) a.getPrivate();
        ECPoint w = eCPublicKey.getW();
        zzeem.zza q = zzeem.m12733q();
        q.m12730a(0);
        q.m12729a(zzeehVar2.m12768m());
        q.m12728a(zzeip.zzu(w.getAffineX().toByteArray()));
        q.m12727b(zzeip.zzu(w.getAffineY().toByteArray()));
        zzeem zzeemVar = (zzeem) ((zzejz) q.mo12342K());
        zzeel.zza p = zzeel.m12751p();
        p.m12749a(0);
        p.m12748a(zzeemVar);
        p.m12747a(zzeip.zzu(eCPrivateKey.getS().toByteArray()));
        return (zzeel) ((zzejz) p.mo12342K());
    }
}
