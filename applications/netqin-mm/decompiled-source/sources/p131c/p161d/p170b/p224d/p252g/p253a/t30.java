package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzdzz;
import com.google.android.gms.internal.ads.zzeai;
import com.google.android.gms.internal.ads.zzeei;
import com.google.android.gms.internal.ads.zzeel;
import com.google.android.gms.internal.ads.zzeep;
import com.google.android.gms.internal.ads.zzegr;
import com.google.android.gms.internal.ads.zzegy;
import com.google.android.gms.internal.ads.zzeha;
import com.google.android.gms.internal.ads.zzehb;
import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.interfaces.ECPrivateKey;
import java.security.spec.ECPrivateKeySpec;
/* renamed from: c.d.b.d.g.a.t30 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/t30.class */
public final class t30 extends zzeai<zzdzz, zzeel> {
    public t30(Class cls) {
        super(cls);
    }

    @Override // com.google.android.gms.internal.ads.zzeai
    /* renamed from: a */
    public final /* synthetic */ zzdzz mo12945a(zzeel zzeelVar) throws GeneralSecurityException {
        zzeel zzeelVar2 = zzeelVar;
        zzeei n = zzeelVar2.m12752o().m12736n();
        zzeep m = n.m12766m();
        zzeha a = y30.m26142a(m.m12726m());
        byte[] byteArray = zzeelVar2.m12753n().toByteArray();
        return new zzegr((ECPrivateKey) zzehb.f28027j.m12561a("EC").generatePrivate(new ECPrivateKeySpec(new BigInteger(1, byteArray), zzegy.m12568a(a))), m.m12724o().toByteArray(), y30.m26141a(m.m12725n()), y30.m26144a(n.m12764o()), new a40(n.m12765n().m12772m()));
    }
}
