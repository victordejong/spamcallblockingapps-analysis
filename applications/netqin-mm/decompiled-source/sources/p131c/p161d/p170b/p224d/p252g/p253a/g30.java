package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzeaf;
import com.google.android.gms.internal.ads.zzebg;
import com.google.android.gms.internal.ads.zzedp;
import com.google.android.gms.internal.ads.zzedq;
import com.google.android.gms.internal.ads.zzehs;
import com.google.android.gms.internal.ads.zzeht;
import com.google.android.gms.internal.ads.zzeip;
import com.google.android.gms.internal.ads.zzejm;
import com.google.android.gms.internal.ads.zzejz;
import com.google.android.gms.internal.ads.zzekj;
import java.security.GeneralSecurityException;
/* renamed from: c.d.b.d.g.a.g30 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/g30.class */
public final class g30 extends zzeaf<zzedq, zzedp> {
    public g30(zzebg zzebgVar, Class cls) {
        super(cls);
    }

    @Override // com.google.android.gms.internal.ads.zzeaf
    /* renamed from: a */
    public final /* synthetic */ zzedq mo12955a(zzeip zzeipVar) throws zzekj {
        return zzedq.m12806a(zzeipVar, zzejm.m12419a());
    }

    @Override // com.google.android.gms.internal.ads.zzeaf
    /* renamed from: a */
    public final /* synthetic */ void mo12954a(zzedq zzedqVar) throws GeneralSecurityException {
        zzedq zzedqVar2 = zzedqVar;
        zzeht.m12548a(zzedqVar2.m12805m());
        if (zzedqVar2.m12804n().m12802m() != 12 && zzedqVar2.m12804n().m12802m() != 16) {
            throw new GeneralSecurityException("invalid IV size; acceptable values have 12 or 16 bytes");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeaf
    /* renamed from: b */
    public final /* synthetic */ zzedp mo12953b(zzedq zzedqVar) throws GeneralSecurityException {
        zzedq zzedqVar2 = zzedqVar;
        zzedp.zza p = zzedp.m12811p();
        p.m12807a(zzeip.zzu(zzehs.m12550a(zzedqVar2.m12805m())));
        p.m12808a(zzedqVar2.m12804n());
        p.m12809a(0);
        return (zzedp) ((zzejz) p.mo12342K());
    }
}
