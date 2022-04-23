package p131c.p161d.p170b.p224d.p252g.p253a;

import android.content.Context;
import com.google.android.gms.internal.ads.zzbjv;
import com.google.android.gms.internal.ads.zzcjg;
import com.google.android.gms.internal.ads.zzcjj;
import com.google.android.gms.internal.ads.zzdlv;
import com.google.android.gms.internal.ads.zzdma;
import com.google.android.gms.internal.ads.zzdmc;
import com.google.android.gms.internal.ads.zzdmz;
import com.google.android.gms.internal.ads.zzdnb;
import com.google.android.gms.internal.ads.zzdng;
import com.google.android.gms.internal.ads.zzdnj;
import com.google.android.gms.internal.ads.zzdnk;
import com.google.android.gms.internal.ads.zzdnn;
import com.google.android.gms.internal.ads.zzdnp;
import com.google.android.gms.internal.ads.zzdnq;
import com.google.android.gms.internal.ads.zzdoi;
import com.google.android.gms.internal.ads.zzdoj;
import com.google.android.gms.internal.ads.zzdop;
import com.google.android.gms.internal.ads.zzeov;
import com.google.android.gms.internal.ads.zzeox;
import com.google.android.gms.internal.ads.zzeoy;
import com.google.android.gms.internal.ads.zzeph;
/* renamed from: c.d.b.d.g.a.ob */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/ob.class */
public final class C3873ob implements zzdnn {

    /* renamed from: a */
    public zzeph<Context> f14310a;

    /* renamed from: b */
    public zzeph<zzdlv<zzcjj, zzcjg>> f14311b;

    /* renamed from: c */
    public zzeph<zzdmc> f14312c;

    /* renamed from: d */
    public zzeph<zzdoj> f14313d;

    /* renamed from: e */
    public zzeph<zzdnb> f14314e;

    /* renamed from: f */
    public zzeph<zzdnp> f14315f;

    /* renamed from: g */
    public zzeph<String> f14316g;

    /* renamed from: h */
    public zzeph<zzdnj> f14317h;

    /* renamed from: i */
    public final /* synthetic */ zzbjv f14318i;

    public C3873ob(zzbjv zzbjvVar, Context context, String str) {
        zzeph zzephVar;
        zzeph zzephVar2;
        zzeph zzephVar3;
        zzeph zzephVar4;
        zzeph zzephVar5;
        this.f14318i = zzbjvVar;
        zzeoy a = zzeox.m12195a(context);
        this.f14310a = a;
        zzephVar = this.f14318i.f25088c0;
        zzephVar2 = this.f14318i.f25090d0;
        this.f14311b = new zzdma(a, zzephVar, zzephVar2);
        zzephVar3 = this.f14318i.f25088c0;
        this.f14312c = zzeov.m12198a(new zzdmz(zzephVar3));
        this.f14313d = zzeov.m12198a(zzdoi.m13443a());
        zzeph<Context> zzephVar6 = this.f14310a;
        zzephVar4 = this.f14318i.f25089d;
        zzephVar5 = this.f14318i.f25112y;
        zzeph<zzdnb> a2 = zzeov.m12198a(new zzdng(zzephVar6, zzephVar4, zzephVar5, this.f14311b, this.f14312c, zzdop.m13404a(), this.f14313d));
        this.f14314e = a2;
        this.f14315f = zzeov.m12198a(new zzdnq(a2, this.f14312c, this.f14313d));
        zzeoy b = zzeox.m12194b(str);
        this.f14316g = b;
        this.f14317h = zzeov.m12198a(new zzdnk(b, this.f14314e, this.f14310a, this.f14312c, this.f14313d));
    }

    @Override // com.google.android.gms.internal.ads.zzdnn
    /* renamed from: a */
    public final zzdnp mo13478a() {
        return this.f14315f.get();
    }

    @Override // com.google.android.gms.internal.ads.zzdnn
    /* renamed from: b */
    public final zzdnj mo13477b() {
        return this.f14317h.get();
    }
}
