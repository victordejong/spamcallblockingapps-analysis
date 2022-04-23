package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzboq;
import com.google.android.gms.internal.ads.zzbqo;
import com.google.android.gms.internal.ads.zzbqp;
import com.google.android.gms.internal.ads.zzbqu;
import com.google.android.gms.internal.ads.zzcdx;
import com.google.android.gms.internal.ads.zzcep;
import com.google.android.gms.internal.ads.zzcta;
import com.google.android.gms.internal.ads.zzcvl;
import com.google.android.gms.internal.ads.zzeph;
import java.util.Map;
/* renamed from: c.d.b.d.g.a.dh */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/dh.class */
public final class C3471dh implements zzbqp<zzbqu> {

    /* renamed from: a */
    public final Map<String, zzcta<zzbqu>> f12748a;

    /* renamed from: b */
    public final Map<String, zzcta<zzcdx>> f12749b;

    /* renamed from: c */
    public final Map<String, zzcvl<zzcdx>> f12750c;

    /* renamed from: d */
    public final zzeph<zzbqp<zzboq>> f12751d;

    /* renamed from: e */
    public final zzcep f12752e;

    public C3471dh(Map<String, zzcta<zzbqu>> map, Map<String, zzcta<zzcdx>> map2, Map<String, zzcvl<zzcdx>> map3, zzeph<zzbqp<zzboq>> zzephVar, zzcep zzcepVar) {
        this.f12748a = map;
        this.f12749b = map2;
        this.f12750c = map3;
        this.f12751d = zzephVar;
        this.f12752e = zzcepVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbqp
    /* renamed from: a */
    public final zzcta<zzbqu> mo15155a(int i, String str) {
        zzcta<zzboq> a;
        zzcta<zzbqu> zzctaVar = this.f12748a.get(str);
        if (zzctaVar != null) {
            return zzctaVar;
        }
        if (i != 1) {
            if (i != 4) {
                return null;
            }
            zzcvl<zzcdx> zzcvlVar = this.f12750c.get(str);
            if (zzcvlVar != null) {
                return zzbqu.m15153a((zzcvl<? extends zzbqo>) zzcvlVar);
            }
            zzcta<zzcdx> zzctaVar2 = this.f12749b.get(str);
            if (zzctaVar2 != null) {
                return zzbqu.m15154a(zzctaVar2);
            }
            return null;
        } else if (this.f12752e.m14657d() == null || (a = this.f12751d.get().mo15155a(i, str)) == null) {
            return null;
        } else {
            return zzbqu.m15154a(a);
        }
    }
}
