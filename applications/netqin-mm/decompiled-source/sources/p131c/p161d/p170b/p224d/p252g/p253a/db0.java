package p131c.p161d.p170b.p224d.p252g.p253a;

import android.view.View;
import com.google.android.gms.internal.ads.zzcf;
import com.google.android.gms.internal.ads.zzdtd;
import com.google.android.gms.internal.ads.zzdtp;
import com.google.android.gms.internal.ads.zzdve;
import com.google.android.gms.internal.ads.zzev;
import com.google.android.gms.internal.ads.zzfi;
import com.inmobi.ads.C8310v;
import java.util.HashMap;
import java.util.Map;
/* renamed from: c.d.b.d.g.a.db0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/db0.class */
public final class db0 implements zzdve {

    /* renamed from: a */
    public final zzdtd f12727a;

    /* renamed from: b */
    public final zzdtp f12728b;

    /* renamed from: c */
    public final zzfi f12729c;

    /* renamed from: d */
    public final zzev f12730d;

    public db0(zzdtd zzdtdVar, zzdtp zzdtpVar, zzfi zzfiVar, zzev zzevVar) {
        this.f12727a = zzdtdVar;
        this.f12728b = zzdtpVar;
        this.f12729c = zzfiVar;
        this.f12730d = zzevVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdve
    /* renamed from: a */
    public final Map<String, Object> mo13113a() {
        Map<String, Object> d = m27068d();
        d.put("lts", Long.valueOf(this.f12729c.m12130c()));
        return d;
    }

    /* renamed from: a */
    public final void m27069a(View view) {
        this.f12729c.m12134a(view);
    }

    @Override // com.google.android.gms.internal.ads.zzdve
    /* renamed from: b */
    public final Map<String, Object> mo13112b() {
        return m27068d();
    }

    @Override // com.google.android.gms.internal.ads.zzdve
    /* renamed from: c */
    public final Map<String, Object> mo13111c() {
        Map<String, Object> d = m27068d();
        zzcf.zza a = this.f12728b.m13198a();
        d.put("gai", Boolean.valueOf(this.f12727a.mo13212b()));
        d.put("did", a.m14554p());
        d.put("dst", Integer.valueOf(a.m14551q().zzv()));
        d.put("doo", Boolean.valueOf(a.m14548r()));
        return d;
    }

    /* renamed from: d */
    public final Map<String, Object> m27068d() {
        HashMap hashMap = new HashMap();
        zzcf.zza d = this.f12728b.m13191d();
        hashMap.put(C8310v.f32322d, this.f12727a.mo13213a());
        hashMap.put("gms", Boolean.valueOf(this.f12727a.mo13211c()));
        hashMap.put("int", d.m14563m());
        hashMap.put("up", Boolean.valueOf(this.f12730d.m12178a()));
        hashMap.put("t", new Throwable());
        return hashMap;
    }
}
